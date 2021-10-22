----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:04:03 10/22/2021 
-- Design Name: 
-- Module Name:    counter - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
       port( CLK : std_logic;
			    Q : std_logic_vector(3 downto 0)
				 );   
end counter;

architecture structure of counter is

component TFF is
port ( T,async_reset,CLK : in std_logic;
		 Q : out std_logic );
end component TFF;
begin
		tff_0 : TFF port map ( T => '1', async_reset => '0', CLK => CLK, Q => Q(0));
		tff_1 : TFF port map ( T => '1', async_reset => '0', CLK => CLK, Q => Q(1));
		tff_2 : TFF port map ( T => '1', async_reset => '0', CLK => CLK, Q => Q(2));
		tff_3 : TFF port map ( T => '1', async_reset => '0', CLK => CLK, Q => Q(3));
   process(Clk)
	   begin
		if (rising_edge(Clk)) then
		tff_4 : TFF port map ( T => '1', async_reset => '1', CLK => CLK, Q => Q(0));
		tff_5 : TFF port map ( T => '1', async_reset => '1', CLK => not Q(0), Q => Q(1));
		tff_6 : TFF port map ( T => '1', async_reset => '1', CLK => not Q(1), Q => Q(2));
		tff_7 : TFF port map ( T => '1', async_reset => '1', CLK => not Q(2), Q => Q(3));
		end if;
end process;
end structure;

