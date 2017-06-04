--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:06:26 06/04/2017
-- Design Name:   
-- Module Name:   C:/Xilinx/trabalho1/neander/tb_fsm.vhd
-- Project Name:  neander
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fsm
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
 
ENTITY tb_fsm IS
END tb_fsm;
 
ARCHITECTURE behavior OF tb_fsm IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fsm
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         operacao : IN  std_logic_vector(15 downto 0);
         flagZ : IN  std_logic;
         flagN : IN  std_logic;
         sel : OUT  std_logic;
         ulaOP : OUT  std_logic_vector(2 downto 0);
         cargaREM : OUT  std_logic;
         sRead : OUT  std_logic;
         incPC : OUT  std_logic;
         cargaRI : OUT  std_logic;
         sWrite : OUT  std_logic;
         cargaPC : OUT  std_logic;
         cargaNZ : OUT  std_logic;
         cargaAcc : OUT  std_logic;
         cargaRDM : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal operacao : std_logic_vector(15 downto 0) := (others => '0');
   signal flagZ : std_logic := '0';
   signal flagN : std_logic := '0';

 	--Outputs
   signal sel : std_logic;
   signal ulaOP : std_logic_vector(2 downto 0);
   signal cargaREM : std_logic;
   signal sRead : std_logic;
   signal incPC : std_logic;
   signal cargaRI : std_logic;
   signal sWrite : std_logic;
   signal cargaPC : std_logic;
   signal cargaNZ : std_logic;
   signal cargaAcc : std_logic;
   signal cargaRDM : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fsm PORT MAP (
          clk => clk,
          rst => rst,
          operacao => operacao,
          flagZ => flagZ,
          flagN => flagN,
          sel => sel,
          ulaOP => ulaOP,
          cargaREM => cargaREM,
          sRead => sRead,
          incPC => incPC,
          cargaRI => cargaRI,
          sWrite => sWrite,
          cargaPC => cargaPC,
          cargaNZ => cargaNZ,
          cargaAcc => cargaAcc,
          cargaRDM => cargaRDM
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
      wait for 100 ns;	
			rst <= '1';
			operacao <= "0000000000000000";
			flagZ <= '0';
			flagN <= '0';
      wait for clk_period*10;
		   rst <= '0';
         operacao <= "1000000000000000"; --0
         flagZ <= '0';
         flagN <= '0';
			
		wait for clk_period*3;
			rst <= '0';
			operacao <= "0100000000000000"; --1
         flagZ <= '0';
         flagN <= '0';
			
		wait for clk_period*8;
		   rst <= '0';
			operacao <= "0010000000000000"; --2 
         flagZ <= '0';
         flagN <= '0';
			
		wait for clk_period*8;
		   rst <= '0';
			operacao <= "0001000000000000"; --3
         flagZ <=	'0';
         flagN <=	'0';
			
		wait for clk_period*8;
		   rst <= '0';		
			operacao <= "0000100000000000"; --4
         flagZ <= '0';
         flagN <= '0';
			
		wait for clk_period*8;
		   rst <= '0';
			operacao <= "0000010000000000"; --5
         flagZ <= '0';
         flagN <= '0';
			
		wait for clk_period*8;
		   rst <= '0';
			operacao <= "0000001000000000"; --6
         flagZ <= '0';
         flagN <= '0';
			
		wait for clk_period*8;
		   rst <= '0';		
			operacao <= "0000000100000000"; --7
         flagZ <= '0';
         flagN <= '0';
			
		wait for clk_period*8;
		   rst <= '0';		
			operacao <= "0000000010000000"; --8
         flagZ <= '0';
         flagN <= '0';
			
		wait for clk_period*6;
		   rst <= '0';
			operacao <= "0000000001000000"; --9
         flagZ <= '0';
         flagN <= '0';
			
		wait for clk_period*4;	
		   rst <= '0';		
			operacao <= "0000000001000000"; --9
         flagZ <= '0';
         flagN <= '1';
			
		wait for clk_period*6;		
		   rst <= '0';
			operacao <= "0000000000100000"; --10
         flagZ <= '0';
         flagN <= '0';
			
		wait for clk_period*4;	
		   rst <= '0';		
			operacao <= "0000000001000000"; --10
         flagZ <= '0';
         flagN <= '1';
			
		wait for clk_period*6;
		   rst <= '0';		
			operacao <= "0000000000100000"; --11
         flagZ <= '0';
         flagN <= '0';
			
		wait for clk_period*8;
		   rst <= '0';		
			operacao <= "0000000000000001"; --15
         flagZ <= '0';
         flagN <= '0';
		
      wait;
   end process;

END;
