--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:24:13 12/25/2021
-- Design Name:   
-- Module Name:   C:/Users/LATITUDE/Documents/term5/computerArchitecture/Az.architecture/10/memory/ROM/ROM_test.vhd
-- Project Name:  ROM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM_sevenSegment_visualTest
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
 
ENTITY ROM_test IS
END ROM_test;
 
ARCHITECTURE behavior OF ROM_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ROM_sevenSegment_visualTest
    PORT(
         SW : IN  std_logic_vector(3 downto 0);
         HEX0 : OUT  std_logic_vector(6 downto 0);
         LEDR : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal SW : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal HEX0 : std_logic_vector(6 downto 0);
   signal LEDR : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ROM_sevenSegment_visualTest PORT MAP (
          SW => SW,
          HEX0 => HEX0,
          LEDR => LEDR
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      SW <= "1111";
		wait for 100 ns;	
		SW <= "0111";
		wait for 100 ns;	
		SW <= "0011";
		wait for 100 ns;	
		wait for 100 ns;	
		SW <= "0001";
		wait for 100 ns;	
		SW <= "0000";    
      -- insert stimulus here 

      wait;
   end process;

END;
