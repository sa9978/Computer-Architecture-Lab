----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:37:35 10/12/2021 
-- Design Name: 
-- Module Name:    comparator_4bit - structure 
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

entity comparator_4bit is
port(
A3,A2,A1,A0,B3,B2,B1,B0 : in std_logic;
e,g,l : out std_logic
);
end comparator_4bit;

architecture structure of comparator_4bit is


component and_gate is
port(
A, B: in std_logic;
o :out std_logic
);
End Component and_gate;

component xnor_gate is
port(
A, B: in std_logic;
C :out std_logic
);
End Component xnor_gate;

component not_gate is
port(
A: in std_logic;
B :out std_logic
);
End Component not_gate;

component and_gate_5 is
port(
A, B, C, D, E: in std_logic;
o :out std_logic
);
End Component and_gate_5;

component and_gate_4 is
port(
A, B, C, D: in std_logic;
o :out std_logic
);
End Component and_gate_4;

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

signal S0,S1,S2,S3 : std_logic;
signal G0,G1,G2,G3 : std_logic;
signal L0,L1,L2,L3 : std_logic;
signal a3_not,a2_not,a1_not,a0_not : std_logic;
signal b3_not,b2_not,b1_not,b0_not : std_logic;

begin

xnor_0 : xnor_gate port map ( A=>A0, B=>B0, C=>S0);
xnor_1 : xnor_gate port map ( A=>A1, B=>B1, C=>S1);
xnor_2 : xnor_gate port map ( A=>A2, B=>B2, C=>S2);
xnor_3 : xnor_gate port map ( A=>A3, B=>B3, C=>S3);

and_0 : and_gate_4 port map ( A=>S0, B=>S1, C=>S2, D=>S3, o=>e);

not_0 : not_gate port map ( A=>A3, B=>a3_not);
not_1 : not_gate port map ( A=>A2, B=>a2_not);
not_2 : not_gate port map ( A=>A1, B=>a1_not);
not_3 : not_gate port map ( A=>A0, B=>a0_not);
not_4 : not_gate port map ( A=>B3, B=>b3_not);
not_5 : not_gate port map ( A=>B2, B=>b2_not);
not_6 : not_gate port map ( A=>B1, B=>b1_not);
not_7 : not_gate port map ( A=>B0, B=>b0_not);

and_1 : and_gate port map ( A=>A3, B=>b3_not, o=>G0);
and_2 : and_gate_3 port map ( A=>S3, B=>A2, C=>b2_not, o=>G1);
and_3 : and_gate_4 port map ( A=>S3, B=>S2, C=>A1, D=>b1_not, o=>G2);
and_5 : and_gate_5 port map ( A=>S3, B=>S2, C=>S1, D=>A0, E=>b0_not, o=>G3);

or_0 : or_gate_4 port map (A=>G0, B=>G1, C=>G2, D=>G3, o=>g);

and_6 : and_gate port map ( A=>B3, B=>a3_not, o=>L0);
and_7 : and_gate_3 port map ( A=>S3, B=>B2, C=>a2_not, o=>L1);
and_8 : and_gate_4 port map ( A=>S3, B=>S2, C=>B1, D=>a1_not, o=>L2);
and_9 : and_gate_5 port map ( A=>S3, B=>S2, C=>S1, D=>B0, E=>a0_not, o=>L3);

or_1 : or_gate_4 port map (A=>L0, B=>L1, C=>L2, D=>L3, o=>l);



end structure;

