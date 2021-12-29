----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:14:30 11/29/2021 
-- Design Name: 
-- Module Name:    Full_Adder - Behavioral 
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
entity Full_Adder is
port (X : in std_logic;
	Y : in std_logic;
	C_in : in std_logic;
	Sum : out std_logic ;
	C_out : out std_logic);
end;
------------------------------------------------------
architecture struc of Full_Adder is
begin
	Sum <= X xor Y xor C_in;
	C_out <= (X and Y) or (X and C_in) or (Y and C_in);
end struc;
