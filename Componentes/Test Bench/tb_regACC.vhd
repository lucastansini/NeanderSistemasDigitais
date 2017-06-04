--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:41:44 06/04/2017
-- Design Name:   
-- Module Name:   C:/Users/Lucas/Desktop/Pastas/UFRGS/2017/01/Sistemas Digitais/Trabalho/componentes_neander/tb_regACC.vhd
-- Project Name:  componentes_neander
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: regACC
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
 
ENTITY tb_regACC IS
END tb_regACC;
 
ARCHITECTURE behavior OF tb_regACC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT regACC
    PORT(
         cargaAC : IN  std_logic;
         entradaAC : IN  std_logic_vector(7 downto 0);
         saidaAC : OUT  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal cargaAC : std_logic := '0';
   signal entradaAC : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal saidaAC : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: regACC PORT MAP (
          cargaAC => cargaAC,
          entradaAC => entradaAC,
          saidaAC => saidaAC,
          clk => clk,
          reset => reset
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

		reset <= '1';
	
      wait for clk_period*10;

		reset <= '0';
		entradaAC <= "11110000";
		
		wait for clk_period*2;
		
		entradaAC <= "11111111";
		cargaAC <= '1';
		
		wait for clk_period*2;
		
		entradaAC <= "11100011";
		
		cargaAC <= '0';
		
		entradaAC <= "00001111";
		
		reset <= '1';
		

      -- insert stimulus here 

      wait;
   end process;

END;
