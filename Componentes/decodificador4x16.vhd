----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Bernardo Lignati
-- 
-- Create Date:    19:55:25 06/03/2017 
-- Design Name: 
-- Module Name:    decodificador4x16 - Behavioral 
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

entity decodificador4x16 is
    Port ( entrada : in  STD_LOGIC_VECTOR (3 downto 0);
           saida : out  STD_LOGIC_VECTOR (15 downto 0));
end decodificador4x16;

architecture Behavioral of decodificador4x16 is
signal fioSaida: STD_LOGIC_VECTOR(15 downto 0);
begin
	process(entrada) begin
		case entrada is 
			when "0000" => fioSaida <= "0000000000000001"; --0
			when "0001" => fioSaida <= "0000000000000010"; --1
			when "0010" => fioSaida <= "0000000000000100"; --2
			when "0011" => fioSaida <= "0000000000001000"; --3
			when "0100" => fioSaida <= "0000000000010000"; --4
			when "0101" => fioSaida <= "0000000000100000"; --5
			when "0110" => fioSaida <= "0000000001000000"; --6
			when "0111" => fioSaida <= "0000000010000000"; --7
			when "1000" => fioSaida <= "0000000100000000"; --8
			when "1001" => fioSaida <= "0000001000000000"; --9
			when "1010" => fioSaida <= "0000010000000000"; --10
			when "1011" => fioSaida <= "0000100000000000"; --11
			when "1100" => fioSaida <= "0001000000000000"; --12
			when "1101" => fioSaida <= "0010000000000000"; --13
			when "1110" => fioSaida <= "0100000000000000"; --14
			when "1111" => fioSaida <= "1000000000000000"; --15
			when others => fioSaida <= "0000000000000000";
		end  case;
	end process;	
	saida <= fioSaida;

end Behavioral;

