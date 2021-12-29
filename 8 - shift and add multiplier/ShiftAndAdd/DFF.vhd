----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:06:32 11/29/2021 
-- Design Name: 
-- Module Name:    DFF - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
library ieee;
use ieee.std_logic_1164.all;
entity DFF is
port (reset : in std_logic ;
	clk : in std_logic ;
	D : in std_logic ;
	Q : out std_logic);
end;
------------------------------------------------------
architecture struc of DFF is
signal NAND_temp : std_logic_vector(6 downto 1);
component NAND_2
	port (
	IN1 : in std_logic;
	IN2 : in std_logic;
	OUT1 : out std_logic
	);
end component;
component NAND_3
	port (
	IN1 : in std_logic;
	IN2 : in std_logic;
	IN3 : in std_logic;
	OUT1 : out std_logic
	);
end component;
begin
	NAND1: NAND_2 port map (NAND_temp(4), NAND_temp(2), NAND_temp(1));
	NAND2: NAND_3 port map (NAND_temp(1), clk, reset, NAND_temp(2));
	NAND3: NAND_3 port map (NAND_temp(2), clk, NAND_temp(4), NAND_temp(3));
	NAND4: NAND_3 port map (NAND_temp(3), D, reset, NAND_temp(4));
	NAND5: NAND_2 port map (NAND_temp(2), NAND_temp(6), NAND_temp(5));
	NAND6: NAND_3 port map (NAND_temp(5), NAND_temp(3), reset, NAND_temp(6));
	Q <= NAND_temp(5);
end struc;
------------------------------------------------------
--2 Input NAND
------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
entity NAND_2 is
port (IN1 : in std_logic ;
	IN2 : in std_logic ;
	OUT1 : out std_logic);
end;
------------------------------------------------------
architecture struc of NAND_2 is
begin
	OUT1 <= NOT(IN1 AND IN2);
end struc;
------------------------------------------------------
--3 Input NAND
------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
entity NAND_3 is
port (IN1 : in std_logic ;
	IN2 : in std_logic ;
	IN3 : in std_logic ;
	OUT1 : out std_logic);
end;
------------------------------------------------------
architecture struc of NAND_3 is
begin
	OUT1 <= NOT(IN1 AND IN2 AND IN3);
end struc;
