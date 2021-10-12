----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:12:01 10/13/2021 
-- Design Name: 
-- Module Name:    and_gate - gatelevel 
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

Library IEEE;
USE IEEE.std_logic_1164.ALL;
Entity and_gate is
Port (
	in1 , in2: in std_logic;
	out1: out std_logic
);
End Entity and_gate;
Architecture gatelevel of and_gate is
Begin
	out1 <= in1 and in2;
End gatelevel;
