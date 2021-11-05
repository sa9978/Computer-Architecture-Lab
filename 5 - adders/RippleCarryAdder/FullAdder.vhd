----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:23:58 11/05/2021 
-- Design Name: 
-- Module Name:    FullAdder - Behavioral 
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

entity FullAdder is
	port(
		i0, i1, cin: in STD_LOGIC;
		Sum, Carry : out STD_LOGIC
	);
end entity FullAdder;

architecture structure of FullAdder is

	component Gor is
		Port(
			a, b : in STD_LOGIC;
			c : out STD_LOGIC
		);
	end component Gor;

	component HalfAdder is
		port(
			in1, in2: in STD_LOGIC;
			Sum, Carry : out STD_LOGIC
		);
	end component HalfAdder;

signal sig1, sig2, sig3: STD_LOGIC;

begin
	HalfAdder1: HalfAdder port map ( in1 => i0, in2 => i1, Sum => sig1, Carry => sig2);
	HalfAdder2: HalfAdder port map ( in1 => sig1, in2 => cin, Sum => Sum, Carry => sig3);
	OR1: Gor port map ( a => sig2, b => sig3, c => Carry );
end structure;
