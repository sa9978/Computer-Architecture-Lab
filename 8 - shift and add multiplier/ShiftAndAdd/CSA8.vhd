----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:17:55 11/29/2021 
-- Design Name: 
-- Module Name:    RCA4 - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;
entity RCA4 is
port (C_in : in std_logic;
 RA : in std_logic_vector (3 downto 0);
 RB : in std_logic_vector (3 downto 0);
 C_out : out std_logic ;
 Add_out : out std_logic_vector (3 downto 0));
8-by-8 Bit Shift/Add Multiplier
Giovanni DíAliesio
32
end;
------------------------------------------
architecture rtl of RCA4 is
signal c_temp : std_logic_vector(3 downto 1);
component Full_Adder
 port (
 X : in std_logic;
 Y : in std_logic;
 C_in : in std_logic;
 Sum : out std_logic;
 C_out : out std_logic
 );
end component;
begin
Adders: for i in 3 downto 0 generate
 Low: if i=0 generate
 FA:Full_Adder port map (RA(0), RB(0), C_in, Add_out(0), c_temp(i+1));
 end generate;
 Mid: if (i>0 and i<3) generate
 FA:Full_Adder port map (RA(i), RB(i), c_temp(i), Add_out(i), c_temp(i+1));
 end generate;
 High: if i=3 generate
 FA:Full_Adder port map (RA(3), RB(3), c_temp(i), Add_out(3), C_out);
 end generate;
end generate;
end rtl;
----------------------------------------------------
--
-- Library Name : DSD
-- Unit Name : CSA8
--
------------------------------------------------------
------------------------------------------
------------------------------------------
-- Date : Wed Sep 24 12:50:50 2003
--
-- Author : Giovanni D'Aliesio
--
-- Description : CSA8 is an 8 bit carry select adder
--
------------------------------------------
------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
entity CSA8 is
port (RA : in std_logic_vector (7 downto 0);
 RB : in std_logic_vector (7 downto 0);
 C_out : out std_logic ;
 Add_out : out std_logic_vector (7 downto 0));
end;
------------------------------------------
architecture rtl of CSA8 is
signal c_temp : std_logic_vector(5 downto 0);
signal add_temp0 : std_logic_vector(3 downto 0);
signal add_temp1 : std_logic_vector(3 downto 0);
component RCA4
	port (
	C_in : in std_logic;
	RA : in std_logic_vector(3 downto 0);
	RB : in std_logic_vector(3 downto 0);
	Add_out : out std_logic_vector(3 downto 0);
	C_out : out std_logic
	);
end component;
begin
	c_temp(0) <= '0';
	c_temp(2) <= '0';
	c_temp(3) <= '1';
	inst_RCA1: RCA4
	port map (
	C_in => c_temp(0),
	RA => RA(3 downto 0),
	RB => RB(3 downto 0),
	Add_out => Add_out(3 downto 0),
	C_out => c_temp(1)
	);
	inst_RCA2: RCA4
	port map (
	C_in => c_temp(2),
	RA => RA(7 downto 4),
	RB => RB(7 downto 4),
	Add_out => add_temp0,
	C_out => c_temp(4)
	);
	inst_RCA3: RCA4
	port map (
	C_in => c_temp(3),
	RA => RA(7 downto 4),
	RB => RB(7 downto 4),
	Add_out => add_temp1,
	C_out => c_temp(5)
	);
	Add_out (7 downto 4) <= add_temp0 when c_temp(1)='0' else
	add_temp1 when c_temp(1)='1' else
		"ZZZZ";
	C_out <= (c_temp(1) and C_temp(5)) or c_temp(4);
end rtl;