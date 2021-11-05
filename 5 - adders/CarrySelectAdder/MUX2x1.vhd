----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:53:45 11/05/2021 
-- Design Name: 
-- Module Name:    MUX2x1 - Behavioral 
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

entity MUX2x1 is

	port(
		i : in STD_LOGIC_VECTOR(1 downto 0);
		s : in STD_LOGIC;
		o : out STD_LOGIC
	);

end entity MUX2x1;

architecture structure of MUX2x1 is

signal sig1, sig2 : STD_LOGIC;

begin
	sig1 <= not s and i(0);
	sig2 <= s and i(1);
	o <= sig1 or sig2;
end structure;


