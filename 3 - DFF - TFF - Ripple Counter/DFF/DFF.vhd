----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:19:58 10/20/2021 
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
Library IEEE;
USE IEEE.Std_logic_1164.all;
entity RisingEdge_DFF_AsyncResetLow is
	port(
	Q : out std_logic;
	Clk : in std_logic;
	async_reset : in std_logic;
	D : in std_logic);
end RisingEdge_DFF_AsyncResetLow;

architecture Behavioral of RisingEdge_DFF_AsyncResetLow is
begin
	process(Clk, async_reset)
		begin
		if (async_reset = '0') then Q <= '0';
		elsif (rising_edge(Clk)) then Q <= D;
		end if;
	end process;
end Behavioral;