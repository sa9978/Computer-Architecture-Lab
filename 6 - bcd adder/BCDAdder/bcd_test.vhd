--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:13:08 11/09/2021
-- Design Name:   
-- Module Name:   C:/Users/LATITUDE/Documents/term5/computerArchitecture/Az.architecture/6/6 - bcd adder/BCDAdder/bcd_test.vhd
-- Project Name:  BCDAdder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BCDAdder
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
 
ENTITY bcd_test IS
END bcd_test;
 
ARCHITECTURE behavior OF bcd_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BCDAdder
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BCDAdder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          Cout => Cout
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
wait for 100 ns;	

A <= "0001";
B <= "0010";

wait for 100 ns;

A <= "0101";
B <= "0100";

wait for 100 ns;

A <= "0101";
B <= "0111";

wait for 100 ns;

A <= "0110";
B <= "0110";

wait for 100 ns;

A <= "0110";
B <= "0001";

wait for 100 ns;

A <= "1001";
B <= "1001";


      -- insert stimulus here 

      wait;
   end process;

END;
