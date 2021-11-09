--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:26:50 11/05/2021
-- Design Name:   
-- Module Name:   C:/Users/LATITUDE/Documents/term5/computerArchitecture/Az.architecture/5/5 - adders/adders/testAdders.vhd
-- Project Name:  adders
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adders
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
 
ENTITY testAdders IS
END testAdders;
 
ARCHITECTURE behavior OF testAdders IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adders
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         s_RCA : OUT  std_logic_vector(3 downto 0);
         cout_RCA : OUT  std_logic;
         s_CLA : OUT  std_logic_vector(3 downto 0);
         cout_CLA : OUT  std_logic;
         s_CSA : OUT  std_logic_vector(3 downto 0);
         cout_CSA : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
	signal cin : std_logic ;

 	--Outputs
   signal s_RCA : std_logic_vector(3 downto 0);
   signal cout_RCA : std_logic;
   signal s_CLA : std_logic_vector(3 downto 0);
   signal cout_CLA : std_logic;
   signal s_CSA : std_logic_vector(3 downto 0);
   signal cout_CSA : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adders PORT MAP (
          a => a,
          b => b,
          cin => cin,
          s_RCA => s_RCA,
          cout_RCA => cout_RCA,
          s_CLA => s_CLA,
          cout_CLA => cout_CLA,
          s_CSA => s_CSA,
          cout_CSA => cout_CSA
        );



   -- Stimulus process
stim_proc: process
begin
cin <= '0';
wait for 100 ns;
cin <= '0';
a <= "1001";
b <= "0010";

wait for 100 ns;
cin <= '1';
a <= "0001";
b <= "1010";

wait for 100 ns;
cin <= '1';
a <= "0101";
b <= "0111";

wait for 100 ns;
cin <= '0';
a <= "0001";
b <= "0010";

wait for 100 ns;
cin <= '1';
a <= "0110";
b <= "0001";

wait for 100 ns;
cin <= '1';
a <= "1100";
b <= "1001";

wait;
end process;
END;
