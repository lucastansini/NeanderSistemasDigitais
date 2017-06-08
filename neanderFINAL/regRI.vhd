----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:46:50 06/05/2017 
-- Design Name: 
-- Module Name:    regRI - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity regRI is
    Port ( entradaRI : in  STD_LOGIC_VECTOR (3 downto 0);
           saidaRI : out  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
			  cargaRi : in STD_LOGIC;
           reset : in  STD_LOGIC);
end regRI;

architecture Behavioral of regRI is

signal ri : STD_LOGIC_VECTOR (3 downto 0);

begin

	process (clk,reset)
	begin
	
		if reset = '1' then 
			ri <= "0000";
		elsif clk'event and clk ='1' then
			if cargaRI = '1' then
				ri <= entradaRI;
			end if;
		end if;
	end process;

saidaRI <= ri;
	
end Behavioral;

