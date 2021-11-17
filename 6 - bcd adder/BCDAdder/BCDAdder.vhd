----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:25:56 11/09/2021 
-- Design Name: 
-- Module Name:    BCDAdder - Behavioral 
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

entity BCDAdder is
	port(
	A : in Std_logic_vector(3 downto 0);
	B : in Std_logic_vector(3 downto 0);
	Cin : in Std_logic;
	S : out Std_logic_vector(3 downto 0);
	Cout : out Std_logic
	);
end BCDAdder;

architecture Behavioral of BCDAdder is
component FullAdder is
	port(
		A : in STD_LOGIC;
		B : in STD_LOGIC;
		Cin : in STD_LOGIC;
		S : out STD_LOGIC;
		Cout : out STD_LOGIC
		);
end component FullAdder;

signal sig : STD_LOGIC_VECTOR(2 downto 0);
signal c : STD_LOGIC_VECTOR(3 downto 0);
signal a1 , a2, co, c1, c2 : STD_LOGIC;

begin
	FullAdder1 : FullAdder port map (
		A => A(0), 
		B => B(0), 
		Cin => Cin, 
		S => S(0), 
		Cout => c(0)
	);
	FullAdder2 : FullAdder port map (
		A => A(1), 
		B => B(1), 
		Cin => c(0), 
		S => sig(0), 
		Cout => c(1)
	);
	FullAdder3 : FullAdder port map (
		A => A(2), 
		B => B(2), 
		Cin => c(1), 
		S => sig(1), 
		Cout => c(2)
	);
	FullAdder4 : FullAdder port map (
		A => A(3), 
		B => B(3), 
		Cin => c(2), 
		S => sig(2), 
		Cout => c(3)
	);
	
	a1 <= sig(1) and sig(2);
	a2 <= sig(0) and sig(2);
	co <= a1 or a2 or c(3);
	Cout <= co; 
	
	FullAdder5 : FullAdder port map (
		A => sig(0), 
		B => co, 
		Cin => '0', 
		S =>S(1), 
		Cout => c1
	);
	FullAdder6 : FullAdder port map (
		A => sig(1), 
		B => co, 
		Cin => c1, 
		S =>S(2), 
		Cout => c2
	);
	S(3) <= c2 xor sig(2);
end Behavioral;

