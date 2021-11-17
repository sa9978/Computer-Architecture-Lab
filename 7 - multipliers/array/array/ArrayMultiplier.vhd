----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:19:22 11/17/2021 
-- Design Name: 
-- Module Name:    ArrayMultiplier - Behavioral 
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

entity ArrayMultiplier is
	port(
	A : in Std_logic_vector(3 downto 0);
	B : in Std_logic_vector(3 downto 0);
	M : out Std_logic_vector(7 downto 0)
	);
end ArrayMultiplier;

architecture Behavioral of ArrayMultiplier is
component FullAdder is
	port(
		A : in STD_LOGIC;
		B : in STD_LOGIC;
		Cin : in STD_LOGIC;
		S : out STD_LOGIC;
		Cout : out STD_LOGIC
		);
end component FullAdder;

component HalfAdder is
	Port (
	A : in STD_LOGIC;
	B : in STD_LOGIC;
	S : out STD_LOGIC;
	Cout : out STD_LOGIC
	);
end component HalfAdder;

signal sAnd : STD_LOGIC_VECTOR(15 downto 1);
signal sC : STD_LOGIC_VECTOR(10 downto 0);
signal sS : STD_LOGIC_VECTOR(6 downto 1);

begin
	M(0) <= A(0) and B(0);
	sAnd(1) <= A(1) and B(0);
	sAnd(2) <= A(2) and B(0);
	sAnd(3) <= A(3) and B(0);
	sAnd(4) <= A(0) and B(1);
	sAnd(5) <= A(1) and B(1);
	sAnd(6) <= A(2) and B(1);
	sAnd(7) <= A(3) and B(1);
	sAnd(8) <= A(0) and B(2);
	sAnd(9) <= A(1) and B(2);
	sAnd(10) <= A(2) and B(2);
	sAnd(11) <= A(3) and B(2);
	sAnd(12) <= A(0) and B(3);
	sAnd(13) <= A(1) and B(3);
	sAnd(14) <= A(2) and B(3);
	sAnd(15) <= A(3) and B(3);


	HalfAdder1 : HalfAdder port map (
		A => sAnd(4), 
		B => sAnd(1), 
		S => M(1), 
		Cout => sC(0)
	);
	
	FullAdder1 : FullAdder port map (
		A => sAnd(2), 
		B => sAnd(5), 
		Cin => sC(0), 
		S => sS(1), 
		Cout => sC(1)
	);
	
	FullAdder2 : FullAdder port map (
		A => sAnd(3), 
		B => sAnd(6), 
		Cin => sC(1), 
		S => sS(2), 
		Cout => sC(2)
	);
	
	HalfAdder2 : HalfAdder port map (
		A => sAnd(7), 
		B => sC(2), 
		S => sS(3), 
		Cout => sC(3)
	);
------------
	
	HalfAdder3 : HalfAdder port map (
		A => sAnd(8), 
		B => sS(1), 
		S => M(2), 
		Cout => sC(4)
	);
	
	FullAdder3 : FullAdder port map (
		A => sAnd(9), 
		B => sS(1), 
		Cin => sC(4), 
		S => sS(4), 
		Cout => sC(5)
	);
	
	
	FullAdder4 : FullAdder port map (
		A => sAnd(10), 
		B => sS(3), 
		Cin => sC(5), 
		S => sS(5), 
		Cout => sC(6)
	);
	
	FullAdder5 : FullAdder port map (
		A => sAnd(11), 
		B => sC(3), 
		Cin => sC(6),
		S => sS(6), 
		Cout => sC(7)
	);
	
	-------------------------
	
	HalfAdder4 : HalfAdder port map (
		A => sAnd(12), 
		B => sS(4), 
		S => M(3), 
		Cout => sC(8)
	);
	
	FullAdder6 : FullAdder port map (
		A =>sAnd(13), 
		B => sS(5), 
		Cin => sC(8),
		S => M(4), 
		Cout => sC(9)
	);
	
	FullAdder7 : FullAdder port map (
		A => sAnd(14), 
		B => sS(6), 
		Cin => sC(9),
		S => M(5), 
		Cout => sC(10)
	);
	
	FullAdder8 : FullAdder port map (
		A => sAnd(15), 
		B => sC(7), 
		Cin => sC(10),
		S => M(6), 
		Cout => M(7)
	);
	
end Behavioral;