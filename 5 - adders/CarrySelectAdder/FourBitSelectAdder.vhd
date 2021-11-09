----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:48:28 11/05/2021 
-- Design Name: 
-- Module Name:    FourBitSelectAdder - Behavioral 
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

entity FourBitSelectAdder is
	port(
		a, b : in STD_LOGIC_VECTOR(3 downto 0);
		cin : in STD_LOGIC;
		s: out STD_LOGIC_VECTOR(3 downto 0);
		cout : out STD_LOGIC
	);
end entity FourBitSelectAdder;

architecture structure of FourBitSelectAdder is

	component FourBitRippleCarryAdder is
	port(
		a, b : in STD_LOGIC_VECTOR(3 downto 0);
		cin : in STD_LOGIC;
		s: out STD_LOGIC_VECTOR(3 downto 0);
		cout : out STD_LOGIC
	);
	end component FourBitRippleCarryAdder;

	component MUX2x1 is
		port(
			i : in STD_LOGIC_VECTOR(1 downto 0);
			s : in STD_LOGIC;
			o : out STD_LOGIC
		);
	end component MUX2x1;

	signal s1, s2 : STD_LOGIC_VECTOR(3 downto 0); --sum row 1 and 2
	signal c1, c2 : STD_LOGIC_VECTOR(3 downto 0); -- carry row 1 and 2
	signal cout1, cout2 : STD_LOGIC;
	signal sumMUX1 : STD_LOGIC_VECTOR(1 downto 0);
	signal sumMUX2 : STD_LOGIC_VECTOR(1 downto 0);
	signal sumMUX3 : STD_LOGIC_VECTOR(1 downto 0);
	signal sumMUX4 : STD_LOGIC_VECTOR(1 downto 0);
	signal FinalMux : STD_LOGIC_VECTOR(1 downto 0);

begin

	FourBitRippleCarryAdder1 : FourBitRippleCarryAdder port map (
		a => a, 
		b => b, 
		cin => '0', 
		s => s1, 
		cout => cout1
	);
	
	FourBitRippleCarryAdder2 : FourBitRippleCarryAdder port map (
		a => a, 
		b => b, 
		cin => '1', 
		s => s2, 
		cout => cout2
	);
----------------
	
	sumMUX1(0) <= s1(0);
	sumMUX1(1) <= s2(0);
	MUX2x1_1 : MUX2x1 port map (
		i => sumMUX1,  
		s => cin, 
		o => s(0)
	);
	
	
	sumMUX2(0) <= s1(1);
	sumMUX2(1) <= s2(1);
	MUX2x1_2 : MUX2x1 port map (
		i => sumMUX2,  
		s => cin, 
		o => s(1)
	);
	sumMUX3(0) <= s1(2);
	sumMUX3(1) <= s2(2);
	MUX2x1_3 : MUX2x1 port map (
		i => sumMUX3,  
		s => cin, 
		o => s(2)
	);

	sumMUX4(0) <= s1(3);
	sumMUX4(1) <= s2(3);
	MUX2x1_4 : MUX2x1 port map (
		i => sumMUX4,  
		s => cin, 
		o => s(3)
	);
	
	-----------
	
	FinalMux(0) <= cout1;
	FinalMux(1) <= cout2;
	Final : MUX2x1 port map (
		i => FinalMux,  
		s => cin, 
		o => cout
	);
	
end structure;




