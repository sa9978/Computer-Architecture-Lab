--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:24:45 10/20/2021
-- Design Name:   
-- Module Name:   D:/term 5/CA/lab/Computer-Architecture-Lab/3 - DFF - TFF - Ripple Counter - Sequence Detector/DFF/TBDFF.vhd
-- Project Name:  DFF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DFF
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TBDFF is
END ENTITY TBDFF;

architecture behavior of TBDFF is

COMPONENT RisingEdge_DFF_AsyncResetLow
    PORT(
         Q : out  std_logic;
         Clk : in  std_logic;
         async_reset : in  std_logic;
         D : in  std_logic
        );
    END COMPONENT;
       
   signal D : std_logic := '0';
   signal Clk : std_logic := '0';
   signal async_reset : std_logic := '1';
   signal Q : std_logic;
   --constant Clk_period : time := 4 ns;
 
begin
   uut: RisingEdge_DFF_AsyncResetLow PORT MAP (
          Q => Q,
          Clk => Clk,
          async_reset => async_reset,
          D => D
        );
		  
   Clk_process :process
   begin
		Clk <= '0';
		wait for 60 ns;
		Clk <= '1';
		wait for 60 ns;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 30 ns.
      wait for 30 ns;

      -- insert stimulus here 
		D <= '1';
		wait for 60 ns;
		D <= '0';
		wait for 60 ns;
		D <= '1';
		wait for 60 ns;
		async_reset <= '0';
		wait for 100 ns;
		async_reset <= '1';
		wait for 100 ns;
      wait;
   end process;

END;
