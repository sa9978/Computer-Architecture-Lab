----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:32:03 10/13/2021 
-- Design Name: 
-- Module Name:    mux_4to1 - structure 
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

entity mux_4to1 is
port (
S1,S0,I0,I1,I2,I3 : in std_logic;
Y : out std_logic
);
end mux_4to1;

architecture structure of mux_4to1 is

component not_gate is
port(
A: in std_logic;
B :out std_logic
);
End Component not_gate;

component and_gate_3 is
port(
A, B, C: in std_logic;
o :out std_logic
);
End Component and_gate_3;

component or_gate_4 is
port(
A, B, C, D: in std_logic;
o :out std_logic
);
End Component or_gate_4;

signal s0_not,s1_not : std_logic;
signal C0,C1,C2,C3 : std_logic;

begin

not_0 : not_gate port map ( A=>S0, B=>s0_not);
not_1 : not_gate port map ( A=>S1, B=>s1_not);

and_0 : and_gate_3 port map ( A=>I0, B=>s1_not, C=>s0_not, o=>C0);
and_1 : and_gate_3 port map ( A=>I1, B=>s1_not, C=>S0, o=>C1);
and_2 : and_gate_3 port map ( A=>I2, B=>S1, C=>s0_not, o=>C2);
and_3 : and_gate_3 port map ( A=>I3, B=>S1, C=>S0, o=>C3);

or_0 : or_gate_4 port map (A=>C0, B=>C1, C=>C2, D=>C3, o=>Y);

end structure;

