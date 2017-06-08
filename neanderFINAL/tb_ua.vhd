--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:05:35 06/06/2017
-- Design Name:   
-- Module Name:   C:/Users/Lucas/Desktop/Pastas/UFRGS/2017/01/Sistemas Digitais/Trabalho/neanderFINAL/tb_ua.vhd
-- Project Name:  neanderFINAL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UAL
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
 
ENTITY tb_ua IS
END tb_ua;
 
ARCHITECTURE behavior OF tb_ua IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UAL
    PORT(
         X : IN  std_logic_vector(7 downto 0);
         Y : IN  std_logic_vector(7 downto 0);
         outputUAL : OUT  std_logic_vector(7 downto 0);
         N : OUT  std_logic;
         Z : OUT  std_logic;
         selUAL : IN  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(7 downto 0) := (others => '0');
   signal Y : std_logic_vector(7 downto 0) := (others => '0');
   signal selUAL : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal outputUAL : std_logic_vector(7 downto 0);
   signal N : std_logic;
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UAL PORT MAP (
          X => X,
          Y => Y,
          outputUAL => outputUAL,
          N => N,
          Z => Z,
          selUAL => selUAL
        );
		  process
		   begin		
      -- hold reset state for 100 ns.


		X <= "00001111";
		Y <= "11110110"; 
		selUAL <= "000";

	
		selUAL <= "001";
		

	
		selUAL <= "010";
		

	
		selUAL <= "011";
		

	
		selUAL <= "100";
		
   
	
		selUAL <= "110";
	
	
		selUAL <= "111";
	
				--when "000" => output <= X + Y;
				--when "001" => output <= X and Y;
				--when "010" => output <= X or Y;
				--when "011" => output <= not X;
				--when "100" => output <=  Y;
				--instruções novas aqui em baixo.
				--when "110" => output <= X * Y;   --Multiplicação
      -- insert stimulus here 
   end process;

END;
