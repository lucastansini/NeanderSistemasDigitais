----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Lucas Augusto Tansini
-- 
-- Create Date:    00:15:59 06/04/2017 
-- Design Name: 
-- Module Name:    regPC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL; 
USE IEEE.STD_LOGIC_ARITH.ALL; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity regPC is
    Port ( saidaPC : out  STD_LOGIC_VECTOR (7 downto 0);
           cargaPC : in  STD_LOGIC;
			  entradaPC : in STD_LOGIC_VECTOR (7 downto 0);
           incrementaPC : in  STD_LOGIC;
			  clk,reset : in STD_LOGIC );
end regPC;

architecture Behavioral of regPC is

signal Pc : STD_LOGIC_VECTOR (7 downto 0);

begin

	process(clk,reset)
	begin
	
	if reset = '1' then 
		Pc <= "00000000";
   elsif clk'event and clk = '1' then
		if cargaPC = '1' then Pc <= entradaPC;
		elsif incrementaPC = '1' then
			Pc <= Pc + 1;
		end if;
	end if;
	
	end process;
		
		
	saidaPC <= Pc;

end Behavioral;

