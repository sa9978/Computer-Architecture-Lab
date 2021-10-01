----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:51:05 10/01/2021 
-- Design Name: 
-- Module Name:    FullAdder - structure 
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

Entity FullAdder is
Port (
	i0 , i1 , cin : in std_logic;
	s , cout : out std_logic
);
End Entity FullAdder;
architecture structure of FullAdder is

component HalfAdder is
port(
	ha , hb : in std_logic;
	o1 , o2 :out std_logic
); 
End Component HalfAdder;

component Gor is
port(
	a , b : in std_logic;
	c :out std_logic
);
End Component Gor;

signal s0 , s1 , s2 : std_logic;

begin
	HalfAdder_instance0 : HalfAdder port map (ha => i0 , hb  => i1 , o1 => s0 , o2 => s1 );
	HalfAdder_instance1 : HalfAdder port map (ha => s0 , hb => cin, o1 => s, o2 => s2 );
	Gor_instance0 : Gor port map (a => s1 , b => s2, c => cout);
end structure;

