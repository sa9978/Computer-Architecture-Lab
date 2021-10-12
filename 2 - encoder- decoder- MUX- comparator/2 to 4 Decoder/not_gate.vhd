----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:22:38 10/13/2021 
-- Design Name: 
-- Module Name:    not_gate - gatelevel 
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
Entity not_gate is
Port (
	Nin : in std_logic;
	Nout : out std_logic
);
End Entity not_gate;
Architecture gatelevel of not_gate is
Begin
	Nout <= not Nin;
End gatelevel;
