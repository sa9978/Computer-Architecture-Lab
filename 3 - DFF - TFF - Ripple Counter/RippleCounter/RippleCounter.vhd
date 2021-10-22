----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:24:52 10/22/2021 
-- Design Name: 
-- Module Name:    RippleCounter - Behavioral 
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



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RippleCounter is
    Port ( CLK : in  std_logic;
           async_reset : in  std_logic;
           count : out  std_logic_vector (3 downto 0)
	);
end RippleCounter;

architecture Behavioral of RippleCounter is
	component TFF
		 Port ( T,async_reset,CLK : in std_logic;
		 Q : out std_logic
			);
	end component;
	signal s : std_logic_vector (3 downto 0) := "0000";
begin
	T0: TFF port map(T=>'1', CLK=>CLK, async_reset => async_reset, Q=>s(0));
	T1: TFF port map(T=>'1', CLK=>s(0), async_reset => async_reset, Q=>s(1));
	T2: TFF port map(T=>'1', CLK=>s(1), async_reset => async_reset, Q=>s(2));
	T3: TFF port map(T=>'1', CLK=>s(2), async_reset => async_reset, Q=>s(3));
	count <= s;
end Behavioral;

