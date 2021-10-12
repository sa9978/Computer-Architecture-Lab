----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:35:08 10/13/2021 
-- Design Name: 
-- Module Name:    or_gate - gatelevel 
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

Entity or_gate is
Port (
	Ior1 , Ior2: in std_logic;
	Oor: out std_logic
);
End Entity or_gate;
Architecture gatelevel of or_gate is
Begin
	Oor <= Ior1 and Ior2;
End gatelevel;


