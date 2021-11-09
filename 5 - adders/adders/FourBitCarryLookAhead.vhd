----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:56:35 11/05/2021 
-- Design Name: 
-- Module Name:    FourBitCarryLookAhead - Behavioral 
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

entity FourBitCarryLookAhead is
port(
		a, b : in STD_LOGIC_VECTOR(3 downto 0);
		cin : in STD_LOGIC;
		s: out STD_LOGIC_VECTOR(3 downto 0);
		cout : out STD_LOGIC
	);
end FourBitCarryLookAhead;

architecture Behavioral of FourBitCarryLookAhead is

	signal G : STD_LOGIC_VECTOR(3 downto 0);
	signal P : STD_LOGIC_VECTOR(3 downto 0);
	signal C : STD_LOGIC_VECTOR(3 downto 0);
	signal H : STD_LOGIC_VECTOR(3 downto 0);
	
begin

G(0) <= a(0) and b(0);
G(1) <= a(1) and b(1);
G(2) <= a(2) and b(2);
G(3) <= a(3) and b(3);

P(0) <= a(0) xor b(0);
P(1) <= a(1) xor b(1);
P(2) <= a(2) xor b(2);
P(3) <= a(3) xor b(3);

C(0) <= cin;
C(1) <= G(0) or H(0) ;
C(2) <= G(1) or  H(1);
C(3) <= G(2) or  H(2);

H(0) <= C(0) and P(0);
H(1) <= C(1) and P(1);
H(2) <= C(2) and P(2);
H(3) <= C(3) and P(3);


s(0) <= P(0) xor C(0);
s(1) <= P(1) xor C(1);
s(2) <= P(2) xor C(2);
s(3) <= P(3) xor C(3);

cout <= G(3) or  H(3);


end Behavioral;

