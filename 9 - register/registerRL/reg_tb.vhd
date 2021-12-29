--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:01:13 12/17/2021
-- Design Name:   
-- Module Name:   C:/Users/LATITUDE/Documents/term5/computerArchitecture/Az.architecture/9/register/registerRL/reg_tb.vhd
-- Project Name:  registerRL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registerController
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
 
ENTITY reg_tb IS
END reg_tb;
 
ARCHITECTURE behavior OF reg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registerController
    PORT(
         input : IN  std_logic_vector(3 downto 0);
         output : OUT  std_logic_vector(3 downto 0);
         clr : IN  std_logic;
         clk : IN  std_logic;
         shift : IN  std_logic_vector(1 downto 0);
         load : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(3 downto 0) := (others => '0');
   signal clr : std_logic := '0';
   signal clk : std_logic := '0';
   signal shift : std_logic_vector(1 downto 0) := (others => '0');
   signal load : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registerController PORT MAP (
          input => input,
          output => output,
          clr => clr,
          clk => clk,
          shift => shift,
          load => load
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	
		clr <= '1';
      wait for 10 ns;
		clr <= '0';
		load <= '1';
		input <= "1111";
		wait for 50 ns;
		load <= '0';
		wait for clk_period*2;
		shift <= "10";
		
      wait for 300 ns ;
		shift <= "00";
		load <= '1';
		wait for 50 ns;
		load <= '0';
		wait for clk_period*2;
		shift <= "01";
		

      -- insert stimulus here 

      wait;
   end process;

END;
