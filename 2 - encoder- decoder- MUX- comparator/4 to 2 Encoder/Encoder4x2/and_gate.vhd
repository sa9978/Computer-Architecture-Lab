----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:37:17 10/13/2021 
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

Entity and_gate is
Port (
	Iand0 , Iand1, Iand2, Iand3: in std_logic;
	Oand: out std_logic
);
End Entity and_gate;
Architecture gatelevel of and_gate is
Begin
	Oand <= Iand0 and Iand1 and Iand2 and Iand3;
End gatelevel;

