----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:12:10 10/01/2021 
-- Design Name: 
-- Module Name:    HalfAdder - structure 
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

Entity HalfAdder is
Port (
	ha , hb : in std_logic;
	o1 , o2 : out std_logic
);
End Entity HalfAdder;
Architecture structure of HalfAdder is

component Gxor is
port(
	a , b : in std_logic;
	c :out std_logic
);
End Component Gxor;

component Gand is
port(
	a , b : in std_logic;
	c :out std_logic
);
End Component Gand;
Begin
	Gxor_instance0 : Gxor port map (A => ha , B => hb , C => o1);
	Gand_instance0 : Gand port map (A => ha , B=>hb , C=>o2);
End structure; 

