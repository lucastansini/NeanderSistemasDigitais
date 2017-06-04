----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Lucas Augusto Tansini
-- 
-- Create Date:    00:35:24 06/04/2017 
-- Design Name: 
-- Module Name:    regACC - Behavioral 
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

entity regACC is
    Port ( cargaAC : in  STD_LOGIC;
           entradaAC : in  STD_LOGIC_VECTOR (7 downto 0);
           saidaAC : out  STD_LOGIC_VECTOR (7 downto 0);
			  clk,reset : in STD_LOGIC);
end regACC;

architecture Behavioral of regACC is

signal acc : STD_LOGIC_VECTOR (7 downto 0);

begin

	process (clk,reset)
	begin
	
		if reset = '1' then 
			acc <= "00000000";
		elsif clk'event and clk ='1' then
			if cargaAC = '1' then
				acc <= entradaAC;
			end if;
		end if;
	end process;

saidaAC <= acc;

end Behavioral;

