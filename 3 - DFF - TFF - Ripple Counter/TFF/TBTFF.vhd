--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:02:33 10/22/2021
-- Design Name:   
-- Module Name:   C:/Users/LATITUDE/Documents/term5/computerArchitecture/Az.architecture/3/session03codes/TFF/TBTFF.vhd
-- Project Name:  TFF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TFF
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TBTFF IS
END TBTFF;
 
ARCHITECTURE behavior OF TBTFF IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TFF
    PORT(
         T : IN  std_logic;
         async_reset : IN  std_logic;
         CLK : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal T : std_logic := '0';
   signal async_reset : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   --constant CLK_period : time := 10 ns;
   --constant CLK_enable_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TFF PORT MAP (
          T => T,
          async_reset => async_reset,
          CLK => CLK,
          Q => Q
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for 60 ns;
		CLK <= '1';
		wait for 60 ns;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 90 ns;
      -- insert stimulus here 
		async_reset <= '1';
		T <= '1';
		
		wait for 120 ns;
		T <= '0';
		wait for 60 ns;
		async_reset <= '0';
		wait for 15 ns;
		async_reset <= '1';
		wait for 30 ns;
		T <= '1';
		wait for 240 ns;
		T <= '0';
      wait;
   end process;

END;
