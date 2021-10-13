----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:59:37 10/01/2021 
-- Design Name: 
-- Module Name:    and - gatelevel 
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

Library IEEE;
USE IEEE.std_logic_1164.ALL;
Entity not_gate is
Port (
A : in std_logic;
B : out std_logic
);
End Entity not_gate;
Architecture gatelevel of not_gate is
Begin
B <= not A;
End gatelevel;
