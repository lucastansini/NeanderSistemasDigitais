--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:24:48 06/04/2017
-- Design Name:   
-- Module Name:   C:/Users/Lucas/Desktop/Pastas/UFRGS/2017/01/Sistemas Digitais/Trabalho/componentes_neander/tb_regPC.vhd
-- Project Name:  componentes_neander
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: regPC
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
 
ENTITY tb_regPC IS
END tb_regPC;
 
ARCHITECTURE behavior OF tb_regPC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT regPC
    PORT(
         saidaPC : OUT  std_logic_vector(7 downto 0);
         cargaPC : IN  std_logic;
         entradaPC : IN  std_logic_vector(7 downto 0);
         incrementaPC : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal cargaPC : std_logic := '0';
   signal entradaPC : std_logic_vector(7 downto 0) := (others => '0');
   signal incrementaPC : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal saidaPC : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: regPC PORT MAP (
          saidaPC => saidaPC,
          cargaPC => cargaPC,
          entradaPC => entradaPC,
          incrementaPC => incrementaPC,
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

      wait for clk_period*10;
		
		reset <= '1';
		
		wait for clk_period;
		
		reset <= '0';
		incrementaPC <= '1';
		
		wait for clk_period*10;
		
		reset <= '1';
		
		wait for clk_period*10;
		
		reset <= '0';
		incrementaPC<='1';
		
		wait for clk_period*20;
		
		incrementaPC <= '0';
		
		wait for clk_period*5;
		
		entradaPC <= "10101010";
		cargaPC <= '1';
		
		wait for clk_period*2;
		
		incrementaPC <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
