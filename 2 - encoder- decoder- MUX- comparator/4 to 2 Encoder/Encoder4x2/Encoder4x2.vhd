----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:40:00 10/13/2021 
-- Design Name: 
-- Module Name:    Encoder4x2 - structure 
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

entity Encoder4x2 is
Port (
	I0, I1, I2, I3: in std_logic;
	A, B: out std_logic
);
end Encoder4x2;

architecture structure of Encoder4x2 is

component and_gate is --and component
Port (
	Iand0 , Iand1, Iand2, Iand3: in std_logic;
	Oand: out std_logic
);
End component and_gate;

component not_gate is --not component
Port (
	Inot : in std_logic;
	Onot : out std_logic
);
End component not_gate;

component or_gate is --or component
Port (
	Ior1 , Ior2: in std_logic;
	Oor: out std_logic
);
End component or_gate;

signal NI0 , NI1, NI2, NI3 : std_logic; --not signals
signal a1 , a2, b1, b2 : std_logic; --and signals
signal outand : std_logic;

begin
	not_gate_instance0: not_gate port map (Inot=>I0, Onot=>NI0); --not instances
	not_gate_instance1: not_gate port map (Inot=>I1, Onot=>NI1);
	not_gate_instance2: not_gate port map (Inot=>I2, Onot=>NI2);
	not_gate_instance3: not_gate port map (Inot=>I3, Onot=>NI3);

	and_gate_instance0: and_gate port map (Iand0=>NI0, Iand1=>NI1, Iand2=>I2, Iand3=>NI3, Oand=>a1); --and instances
	and_gate_instance1: and_gate port map (Iand0=>NI0, Iand1=>NI1, Iand2=>NI2, Iand3=>I3, Oand=>outand);
	and_gate_instance2: and_gate port map (Iand0=>NI0, Iand1=>I1, Iand2=>I2, Iand3=>NI3, Oand=>b1);
	--and_gate_instance3: and_gate port map (Iand0=>NI0, Iand1=>NI1, Iand2=>NI2, Iand3=>I3, Oand=>b2);

	
	or_gate_instance0: or_gate port map (Ior1=>a1, Ior2=>outand, Oor=>A); --or_instances
	or_gate_instance1: or_gate port map (Ior1=>b1, Ior2=>outand, Oor=>B);

end structure;

