----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:57:14 10/12/2021 
-- Design Name: 
-- Module Name:    and_gate_3 - structure 
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

entity and_gate_5 is
port(
A,B,C,D,E : in std_logic;
o : out std_logic
);
end and_gate_5;

architecture structure of and_gate_5 is

component and_gate_4 is
port(
A, B, C, D: in std_logic;
o :out std_logic
);
End Component and_gate_4;

component and_gate is
port(
A, B: in std_logic;
o :out std_logic
);
End Component and_gate;
signal s1 : std_logic;

begin
and_0 : and_gate_4 port map (A=>A, B=>B, C=>C, D=>D, o=>s1);
and_1 : and_gate port map (A=>s1, B=>E, o=>o);

end structure;

