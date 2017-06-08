--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:01:49 06/06/2017
-- Design Name:   
-- Module Name:   C:/Users/Lucas/Desktop/Pastas/UFRGS/2017/01/Sistemas Digitais/Trabalho/neanderFINAL/tb_neanderr.vhd
-- Project Name:  neanderFINAL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: coreneander
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
 
ENTITY tb_neanderr IS
END tb_neanderr;
 
ARCHITECTURE behavior OF tb_neanderr IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT coreneander
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         rstmem : IN  std_logic;
         outZ : OUT  std_logic;
         outN : OUT  std_logic;
         outACC : OUT  std_logic_vector(7 downto 0);
         outPC : OUT  std_logic_vector(7 downto 0);
         outIR : OUT  std_logic_vector(3 downto 0);
         outSinalRI : OUT  std_logic;
         outsinalread : OUT  std_logic;
         outsinalREM : OUT  std_logic;
         outpccarga : OUT  std_logic;
         outmemoria : OUT  std_logic_vector(7 downto 0);
         saidaRDM : OUT  std_logic_vector(7 downto 0);
         selmuxrdm : OUT  std_logic;
         outRIcarga : OUT  std_logic;
         teste4bits : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal rstmem : std_logic := '0';

 	--Outputs
   signal outZ : std_logic;
   signal outN : std_logic;
   signal outACC : std_logic_vector(7 downto 0);
   signal outPC : std_logic_vector(7 downto 0);
   signal outIR : std_logic_vector(3 downto 0);
   signal outSinalRI : std_logic;
   signal outsinalread : std_logic;
   signal outsinalREM : std_logic;
   signal outpccarga : std_logic;
   signal outmemoria : std_logic_vector(7 downto 0);
   signal saidaRDM : std_logic_vector(7 downto 0);
   signal selmuxrdm : std_logic;
   signal outRIcarga : std_logic;
   signal teste4bits : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: coreneander PORT MAP (
          clk => clk,
          reset => reset,
          rstmem => rstmem,
          outZ => outZ,
          outN => outN,
          outACC => outACC,
          outPC => outPC,
          outIR => outIR,
          outSinalRI => outSinalRI,
          outsinalread => outsinalread,
          outsinalREM => outsinalREM,
          outpccarga => outpccarga,
          outmemoria => outmemoria,
          saidaRDM => saidaRDM,
          selmuxrdm => selmuxrdm,
          outRIcarga => outRIcarga,
          teste4bits => teste4bits
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


      -- insert stimulus here 

      wait;
   end process;

END;
