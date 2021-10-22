----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:29:40 10/22/2021 
-- Design Name: 
-- Module Name:    TBRippleCounter - Behavioral 
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


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TBRippleCounter IS
end TBRippleCounter;
 
ARCHITECTURE behavior OF TBRippleCounter IS 
 
    COMPONENT RippleCounter
    PORT(
         Clk : in  std_logic;
         async_reset : in  std_logic;
         count : out  std_logic_vector(3 downto 0)
        );
    end COMPONENT;

   signal Clk : std_logic := '0';
   signal async_reset : std_logic := '1';

   signal count : std_logic_vector(3 downto 0);

   --constant Clk_period : time := 50 ns;
 
begin
 
   uut: RippleCounter PORT MAP (
          Clk => Clk,
          async_reset => async_reset,
          count => count
        );

   Clk_process :process
   begin
		Clk <= '0';
		wait for 25 ns;
		Clk <= '1';
		wait for 25 ns;
   end process;
 

   stim_proc: process
   begin	
	wait for 30 ns;	
      wait;
   end process;

end;


