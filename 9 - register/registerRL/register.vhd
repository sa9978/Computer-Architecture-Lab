----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:23:12 12/17/2021 
-- Design Name: 
-- Module Name:    registerController - Behavioral 
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

entity registerController is
port (input		: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		output		: out STD_LOGIC_VECTOR(3 DOWNTO 0);
		clr     : in std_logic ;
      clk       : in std_logic ;
		shift      : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      load      : in std_logic 
		
		);
end registerController;

architecture Behavioral of registerController is
signal storage	: STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN

	process(clk, clr, shift)
	begin
	if clr = '1' then
		output <= "0000";
	elsif rising_edge(clk) then
		if load = '1' then
			storage <= input;
		else
	case shift is 
  when "01" =>   storage <= '0' & storage( 3 downto 1);

  when "10" =>  storage <= storage( 2 downto 0) & '0';

  when others => storage<= storage;
	end case;
		output <= storage;
		end if;
		
        end if;
    end process;

end Behavioral;

