--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:34:28 06/03/2017
-- Design Name:   
-- Module Name:   C:/Users/Lucas/Desktop/Pastas/UFRGS/2017/01/Sistemas Digitais/Trabalho/componentes_neander/tb_UAL.vhd
-- Project Name:  componentes_neander
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
 
ENTITY tb_UAL IS
END tb_UAL;
 
ARCHITECTURE behavior OF tb_UAL IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UAL
    PORT(
         X : IN  std_logic_vector(7 downto 0);
         Y : IN  std_logic_vector(7 downto 0);
         outputUAL : OUT  std_logic_vector(7 downto 0);
         N : OUT  std_logic;
         Z : OUT  std_logic;
         selUAL : IN  std_logic_vector(2 downto 0);
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(7 downto 0) := (others => '0');
   signal Y : std_logic_vector(7 downto 0) := (others => '0');
   signal selUAL : std_logic_vector(2 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal outputUAL : std_logic_vector(7 downto 0);
   signal N : std_logic; 
   signal Z : std_logic; 

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN 
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UAL PORT MAP (
          X => X,
          Y => Y,
          outputUAL => outputUAL,
          N => N,
          Z => Z,
          selUAL => selUAL,
          clk => clk
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
      wait for 100 ns;	


		X <= "00001111";
		Y <= "11110110"; 
		selUAL <= "000";

       wait for clk_period*2;
	
		selUAL <= "001";
		
		
       wait for clk_period*2;
	
		selUAL <= "010";
		
        wait for clk_period*2;
	
		selUAL <= "011";
		
        wait for clk_period*2;
	
		selUAL <= "100";
		
      wait for clk_period;
	
		selUAL <= "110";
		wait for clk_period;
	
		selUAL <= "111";
		
		wait for clk_period; 
	
				--when "000" => output <= X + Y;
				--when "001" => output <= X and Y;
				--when "010" => output <= X or Y;
				--when "011" => output <= not X;
				--when "100" => output <=  Y;
				--instruções novas aqui em baixo.
				--when "110" => output <= X * Y;   --Multiplicação
      -- insert stimulus here 
      wait;
   end process;

END;
