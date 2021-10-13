----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:14:02 10/13/2021 
-- Design Name: 
-- Module Name:    decoder2x4 - structure 
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

entity decoder2x4 is
Port (
	A, B: in std_logic;
	C, D, E, F: out std_logic
);
end decoder2x4;

architecture structure of decoder2x4 is
component and_gate is --and component
Port (
	in1 , in2: in std_logic;
	out1: out std_logic
);
End component and_gate;

component not_gate is --not component
Port (
	Nin : in std_logic;
	Nout : out std_logic
);
End component not_gate;

signal NA , NB : std_logic;

begin
not_gate_instance0: not_gate port map (Nin=>A, Nout=>NA);
not_gate_instance1: not_gate port map (Nin=>B, Nout=>NB);

and_gate_instance0: and_gate port map (in1=>A, in2=>B, out1=>C);
and_gate_instance1: and_gate port map (in1=>A, in2=>NB, out1=>D);
and_gate_instance2: and_gate port map (in1=>NA, in2=>B, out1=>E);
and_gate_instance3: and_gate port map (in1=>NA, in2=>NB, out1=>F);

end structure;

