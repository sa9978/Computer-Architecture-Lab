----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:31:13 11/05/2021 
-- Design Name: 
-- Module Name:    FourBitRippleCarryAdder - Behavioral 
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

entity FourBitRippleCarryAdder is
	port(
		a, b : in STD_LOGIC_VECTOR(3 downto 0);
		cin : in STD_LOGIC;
		s: out STD_LOGIC_VECTOR(3 downto 0);
		cout : out STD_LOGIC
	);
end entity FourBitRippleCarryAdder;

architecture structure of FourBitRippleCarryAdder is

	component FullAdder is
		port(
			i0, i1, cin: in STD_LOGIC;
			Sum, Carry : out STD_LOGIC
		);
	end component FullAdder;

	signal c : STD_LOGIC_VECTOR(3 downto 0);

begin
	c(0) <= cin;
	FullAdder1 : FullAdder port map (
		i0 => a(0), 
		i1 => b(0), 
		cin => c(0), 
		Sum => s(0), 
		Carry => c(1)
	);

	FullAdder2 : FullAdder port map (
		i0 => a(1), 
		i1 => b(1), 
		cin => c(1), 
		Sum => s(1), 
		Carry => c(2)
	);

	FullAdder3 : FullAdder port map (
		i0 => a(2), 
		i1 => b(2), 
		cin => c(2), 
		Sum => s(2), 
		Carry => c(3)
	);

	FullAdder4 : FullAdder port map (
		i0 => a(3), 
		i1 => b(3), 
		cin => c(3), 
		Sum => s(3), 
		Carry => cout
	);


end structure;