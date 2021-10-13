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

entity or_gate_4 is
port(
A,B,C,D : in std_logic;
o : out std_logic
);
end or_gate_4;

architecture structure of or_gate_4 is

component or_gate is
port(
A, B: in std_logic;
o :out std_logic
);
End Component or_gate;


signal s1,s2 : std_logic;

begin
or_0 : or_gate port map (A=>A, B=>B, o=>s1);
or_1 : or_gate port map (A=>C, B=>D, o=>s2);
or_2 : or_gate port map (A=>s1, B=>s2, o=>o);

end structure;

