----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:12:21 11/05/2021 
-- Design Name: 
-- Module Name:    HalfAdder - Behavioral 
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

entity HalfAdder is
	port(
		in1, in2: in STD_LOGIC;
		Sum, Carry : out STD_LOGIC
	);
end entity HalfAdder;

architecture structure of HalfAdder is

	component Gxor is
		port(
			a, b: in STD_LOGIC;
			c : out STD_LOGIC
		);
	end component Gxor;
	
	component Gand is
		port(
			a, b: in STD_LOGIC;
			c : out STD_LOGIC
		);
	end component Gand;

begin

	SumOut: Gxor port map ( a => in1, b => in2, c=>Sum );
	CarryOut: Gand port map ( a => in1, b => in2, c=>Carry );

end structure;
