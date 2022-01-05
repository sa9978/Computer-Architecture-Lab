library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity scomp is
generic( address_width : integer := 8;
data_width : integer := 16);
	port(
	clock, reset : in std_logic:= '1';
program_counter_out : out std_logic_vector(address_width-1 downto 0);
register_ac_out : out std_logic_vector(data_width-1 downto 0);
memory_data_register_out : out std_logic_vector(data_width-1 downto 0);
memory_address_register_out : out std_logic_vector(address_width-1 downto 0);
memory_write_out : out std_logic
);
end scomp;
architecture rtl of scomp is
type ram is array(0 to 2 ** address_width-1) of unsigned(data_width-1 downto 0);
signal ram_block : ram;
attribute ram_init_file : string;
attribute ram_init_file of ram_block : signal is "program.mif";
type scomp_fsm is ( reset_pc, fetch, decode, execute_add, execute_load,
execute_jneg,execute_jneg2, execute_store,
execute_store2, execute_jump );
signal state : scomp_fsm;
signal instruction_register : unsigned(data_width-1 downto 0);
signal memory_data_register : unsigned(data_width-1 downto 0);
signal register_ac : signed(data_width-1 downto 0);
signal program_counter : unsigned(address_width-1 downto 0);
signal memory_address_register : unsigned(address_width-1 downto 0);
signal memory_write : std_logic;
begin
-- Output major signals
program_counter_out <= std_logic_vector(program_counter);
register_AC_out <= std_logic_vector(register_AC);
memory_data_register_out <= std_logic_vector(memory_data_register);
memory_address_register_out <= std_logic_vector(memory_address_register);
memory_write_out <= memory_write;
process (clock)
begin
if rising_edge(clock) then
if (memory_write = '1') then
ram_block(to_integer(memory_address_register)) <= unsigned(register_ac);
end if;
memory_data_register <= ram_block(to_integer(memory_address_register));
end if;
end process;
process (clock,reset)
begin
if reset = '1' then
state <= reset_pc;
elsif rising_edge(clock) then
case state is
-- reset the computer, need to clear some registers
when reset_pc =>
program_counter <= (others => '0');
register_ac <= (others => '0');
state <= fetch;
-- fetch instruction from memory and add 1 to pc
when fetch =>
instruction_register <= memory_data_register;
program_counter <= program_counter + 1;
state <= decode;
-- decode instruction and send out address of any data operands
when decode =>
case instruction_register( 15 downto 8 ) is
when "00000000" =>
state <= execute_add;
when "00000001" =>
state <= execute_store;
when "00000010" =>
state <= execute_load;
when "00000011" =>
state <= execute_jump;
when "00000100" =>
state <= execute_jneg;
when others =>
state <= fetch;
end case;
-- execute the add instruction
when execute_add =>
register_ac <= register_ac + signed(memory_data_register);
state <= fetch;
-- execute the store instruction
-- (needs two clock cycles for memory write and fetch mem setup)
when execute_store =>
-- enable memory write, write register_ac to memory
-- load memory address and data registers for memory write
state <= execute_store2;
-- finish memory write operation and load memory registers
-- for next fetch memory read operation
when execute_store2 =>
state <= fetch;
-- execute the load instruction
when execute_load =>
register_ac <= signed(memory_data_register);
state <= fetch;
-- execute the jump instruction
when execute_jump =>
program_counter <= instruction_register(address_width-1 downto 0);
state <= fetch;
when execute_jneg =>
if (register_ac < 0) then
program_counter <= instruction_register(address_width-1 downto 0);
end if;
state <= execute_jneg2;
when execute_jneg2 =>
state <= fetch;
when others =>
state <= fetch;
end case;
end if;
end process;
-- memory address register is already inside synchronous memory unit
-- need to load its value based on current state
-- (no second register is used - not inside a process here)
with state select
memory_address_register <= (others => '0') when reset_pc,
program_counter when fetch,
instruction_register(address_width-1 downto 0) when decode,
program_counter when execute_add,
instruction_register(address_width-1 downto 0) when execute_store,
program_counter when execute_store2,
program_counter when execute_load,
instruction_register(address_width-1 downto 0) when execute_jump,
program_counter when execute_jneg,
program_counter when execute_jneg2;
with state select
memory_write <= '1' when execute_store,
'0' when others;
end rtl;