----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:11:10 11/05/2021 
-- Design Name: 
-- Module Name:    adders - Behavioral 
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

entity adders is
port(
		a, b : in STD_LOGIC_VECTOR(3 downto 0);
		cin : in STD_LOGIC;
		s_RCA: out STD_LOGIC_VECTOR(3 downto 0);
		cout_RCA : out STD_LOGIC;
		s_CLA: out STD_LOGIC_VECTOR(3 downto 0);
		cout_CLA : out STD_LOGIC;
		s_CSA: out STD_LOGIC_VECTOR(3 downto 0);
		cout_CSA : out STD_LOGIC
	);
end adders;

architecture Behavioral of adders is

component FourBitRippleCarryAdder is
	port(
		a, b : in STD_LOGIC_VECTOR(3 downto 0);
		cin : in STD_LOGIC;
		s: out STD_LOGIC_VECTOR(3 downto 0);
		cout : out STD_LOGIC
	);
	end component FourBitRippleCarryAdder;
	
	component FourBitCarryLookAhead is
	port(
		a, b : in STD_LOGIC_VECTOR(3 downto 0);
		cin : in STD_LOGIC;
		s: out STD_LOGIC_VECTOR(3 downto 0);
		cout : out STD_LOGIC
	);
	end component FourBitCarryLookAhead;
	
	component FourBitSelectAdder is
	port(
		a, b : in STD_LOGIC_VECTOR(3 downto 0);
		cin : in STD_LOGIC;
		s: out STD_LOGIC_VECTOR(3 downto 0);
		cout : out STD_LOGIC
	);
	end component FourBitSelectAdder;


begin

    RCA : FourBitRippleCarryAdder port map (
		a => a, 
		b => b, 
		cin => cin, 
		s => s_RCA, 
		cout => cout_RCA
	);

	 CLA : FourBitCarryLookAhead port map (
		a => a, 
		b => b, 
		cin => cin, 
		s => s_CLA, 
		cout => cout_CLA
	);	

    CSA : FourBitSelectAdder port map (
		a => a, 
		b => b, 
		cin => cin, 
		s => s_CSA, 
		cout => cout_CSA
	);	
	
end Behavioral;

