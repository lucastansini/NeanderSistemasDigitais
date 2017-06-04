----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:22:10 05/14/2017 
-- Design Name: 
-- Module Name:    acc2bits - Behavioral 
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

entity acc2bits is
    Port ( clk : in std_logic;
			  Zin : in  STD_LOGIC;
           Nin : in  STD_LOGIC;
			  rst : in  STD_LOGIC;
           carga : in  STD_LOGIC;
           Zout : out  STD_LOGIC;
           Nout : out  STD_LOGIC);
end acc2bits;

architecture Behavioral of acc2bits is
signal fioZ, fioN : std_logic;
begin
	process(carga, clk,rst) begin
		if rst = '1' then fioz <= '0'; fioN <= '0';
		elsif clk' event and clk = '1' then 
			if carga = '1' then fioZ <= Zin; fioN <= Nin;
			else fioZ <= fioZ; fioN <= fioN;
			end if;
		end if;
	end process;
	
	Zout <= fioz; Nout <= fioN;

end Behavioral;

