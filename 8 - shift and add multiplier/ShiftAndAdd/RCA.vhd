----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:15:43 11/29/2021 
-- Design Name: 
-- Module Name:    RCA - Behavioral 
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
entity RCA is
port (RA : in std_logic_vector (7 downto 0);
8-by-8 Bit Shift/Add Multiplier
Giovanni DÌAliesio
31
 RB : in std_logic_vector (7 downto 0);
 C_out : out std_logic ;
 Add_out : out std_logic_vector (7 downto 0));
end;
------------------------------------------------------
architecture struc of RCA is
signal c_temp : std_logic_vector(7 downto 0);
component Full_Adder
	port (
	X : in std_logic;
	Y : in std_logic;
	C_in : in std_logic;
	Sum : out std_logic;
	C_out : out std_logic
	);
end component;
begin
	c_temp(0) <= '0'; -- carry in of RCA is 0
Adders: for i in 7 downto 0 generate
-- assemble first 7 adders from 0 to 6
	Low: if i/=7 generate
	FA:Full_Adder port map (RA(i), RB(i), c_temp(i), Add_out(i), c_temp(i+1));
 end generate;
-- assemble last adder
	High: if i=7 generate
	FA:Full_Adder port map (RA(7), RB(7), c_temp(i), Add_out(7), C_out);
 end generate;
end generate;
end struc;