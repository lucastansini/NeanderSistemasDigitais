----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:51:55 06/03/2017 
-- Design Name: 
-- Module Name:    mux21 - Behavioral 
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

entity mux21neander is
    Port ( entradaAMux21 : in  STD_LOGIC_VECTOR (7 downto 0);
           entradaBMux21 : in  STD_LOGIC_VECTOR (7 downto 0);
           selMux21 : in  STD_LOGIC;
           outputMux21 : out  STD_LOGIC_VECTOR (7 downto 0));
end mux21neander;

architecture Behavioral of mux21neander is

begin

	
	process(entradaAMux21,entradaBMux21,selMux21)
	begin
	
		case selMux21 is
				when '0' => outputMux21 <= entradaAMux21;
				when others => outputMux21 <= entradaBMux21;
		end case;
	end process;



end Behavioral;

