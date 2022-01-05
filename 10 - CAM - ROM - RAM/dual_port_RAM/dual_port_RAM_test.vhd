--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:45:58 12/24/2021
-- Design Name:   
-- Module Name:   C:/Users/LATITUDE/Documents/term5/computerArchitecture/Az.architecture/10/memory/dual_port_RAM/dual_port_RAM_test.vhd
-- Project Name:  dual_port_RAM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dual_port_RAM_visualTest
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
 
ENTITY dual_port_RAM_test IS
END dual_port_RAM_test;
 
ARCHITECTURE behavior OF dual_port_RAM_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dual_port_RAM_visualTest
    PORT(
         CLOCK_50 : IN  std_logic;
         SW : IN  std_logic_vector(16 downto 0);
         LEDR : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLOCK_50 : std_logic := '0';
   signal SW : std_logic_vector(16 downto 0) := (others => '0');

 	--Outputs
   signal LEDR : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant CLOCK_50_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dual_port_RAM_visualTest PORT MAP (
          CLOCK_50 => CLOCK_50,
          SW => SW,
          LEDR => LEDR
        );

   -- Clock process definitions
   CLOCK_50_process :process
   begin
		CLOCK_50 <= '0';
		wait for CLOCK_50_period/2;
		CLOCK_50 <= '1';
		wait for CLOCK_50_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      SW <="10011000000000001";
		wait for 200 ns;	
		SW <="11100000000000111";
		wait for 200 ns;	
		SW <="00011000000111011";
      wait for CLOCK_50_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
