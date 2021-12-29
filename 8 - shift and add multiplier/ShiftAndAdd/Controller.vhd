----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:59:04 11/29/2021 
-- Design Name: 
-- Module Name:    Controller - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity Controller is
port (reset : in std_logic ;
 clk : in std_logic ;
 START : in std_logic ;
 LSB : in std_logic ;
 ADD_cmd : out std_logic ;
 SHIFT_cmd : out std_logic ;
 LOAD_cmd : out std_logic ;
 STOP : out std_logic);
end;
------------------------------------------------------
architecture rtl of Controller is
signal temp_count : std_logic_vector(2 downto 0);
-- declare states
type state_typ is (IDLE, INIT, TEST, ADD, SHIFT);
signal state : state_typ;
begin
process (clk, reset)
	begin
		if reset='0' then
			state <= IDLE;
			temp_count <= "000";
		elsif (clk'event and clk='1') then
			case state is
				when IDLE =>
					if START = '1' then
						state <= INIT;
					else
						state <= IDLE;
					end if;
				when INIT =>
					state <= TEST;
				when TEST =>
					if LSB = '0' then
						state <= SHIFT;
					else
						state <= ADD;
					end if;
				when ADD =>
						state <= SHIFT;
				when SHIFT =>
						if temp_count = "111" then -- verify if finished
							temp_count <= "000"; -- re-initialize counter
							state <= IDLE; -- ready for next multiply
						else
							temp_count <= temp_count + 1; -- increment counter
							state <= TEST;
						end if;
					end case;
				end if;
			end process;
		STOP <= '1' when state = IDLE else '0';
		ADD_cmd <= '1' when state = ADD else '0';
		SHIFT_cmd <= '1' when state = SHIFT else '0';
		LOAD_cmd <= '1' when state = INIT else '0';
end rtl;

