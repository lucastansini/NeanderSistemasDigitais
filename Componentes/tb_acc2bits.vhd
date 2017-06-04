--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:45:50 05/14/2017
-- Design Name:   
-- Module Name:   C:/Xilinx/trabalho1/neander/tb_acc2bits.vhd
-- Project Name:  neander
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: acc2bits
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
 
ENTITY tb_acc2bits IS
END tb_acc2bits;
 
ARCHITECTURE behavior OF tb_acc2bits IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT acc2bits
    PORT(
         clk : IN  std_logic;
         Zin : IN  std_logic;
         Nin : IN  std_logic;
         rst : IN  std_logic;
         carga : IN  std_logic;
         Zout : OUT  std_logic;
         Nout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal Zin : std_logic := '0';
   signal Nin : std_logic := '0';
   signal rst : std_logic := '0';
   signal carga : std_logic := '0';

 	--Outputs
   signal Zout : std_logic;
   signal Nout : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: acc2bits PORT MAP (
          clk => clk,
          Zin => Zin,
          Nin => Nin,
          rst => rst,
          carga => carga,
          Zout => Zout,
          Nout => Nout
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
      rst <= '1';
      wait for 100 ns;	

      wait for clk_period*10;

      rst <= '0';
		carga <= '1';
		Nin <= '1';
		Zin <= '1';
		
      wait for clk_period*10;
	   rst <= '0';
		carga <= '0';
		Nin <= '0';
		Zin <= '0';
	   wait for clk_period*10;
		rst <= '0';
		carga <= '1';
		Nin <= '0';
		Zin <= '0';
		 wait for clk_period*10;
		rst <= '0';
		carga <= '0';
		Nin <= '1';
		Zin <= '1';
      wait;
   end process;

END;
