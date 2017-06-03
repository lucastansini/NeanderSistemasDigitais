----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Lucas Augusto Tansini
-- 
-- Create Date:    15:44:49 06/03/2017 
-- Design Name: 
-- Module Name:    UAL - Behavioral 
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

entity UAL is
    Port ( X : in  STD_LOGIC_VECTOR (7 downto 0);
           Y : in  STD_LOGIC_VECTOR (7 downto 0);
           outputUAL : out  STD_LOGIC_VECTOR (7 downto 0);
           N : out  STD_LOGIC;
           Z : out  STD_LOGIC;
           selUAL : in  STD_LOGIC_VECTOR (2 downto 0);
			  clk: in STD_LOGIC );
end UAL;

architecture Behavioral of UAL is

signal isZERO,isNEGATIVE : STD_LOGIC; 
signal output: STD_LOGIC_VECTOR( 7 downto 0);
signal mult_aux, mult_aux2 : STD_LOGIC_VECTOR( 3 downto 0);

begin

	process (clk,X,Y,selUAL,output)
		begin
		
		mult_aux(0)<=X(0);
		mult_aux(1)<=X(1);
		mult_aux(2)<=X(2);
		mult_aux(3)<=X(3);
		mult_aux2(0)<=Y(0);
		mult_aux2(1)<=Y(1);
		mult_aux2(2)<=Y(2);
		mult_aux2(3)<=Y(3);
								  
		if clk'event and clk = '1' then
			case selUAL is
				when "000" => output <= X + Y;
				when "001" => output <= X and Y;
				when "010" => output <= X or Y;
				when "011" => output <= not X;
				when "100" => output <=  Y;
				--instruções novas aqui em baixo.
				when "110" =>  -- MULTIPLICAÇÃO! ACC RECEBERÁ LSBS DA MULTIPLICAÇÃO ! LINKAR PARA O ACC DEPOIS!
								  output <= mult_aux * mult_aux2;
						
			   when "111" => 	--SHIFT LEFT DO OPERANDO X!
									 output(7) <= X(6);
									 output(6) <= X(5);
									 output(5) <= X(4);
									 output(4) <= X(3);
									 output(3) <= X(2);
									 output(2) <= X(1);
									 output(1) <= X(0);
									 output(0) <= '0';
				when others => output <= "00000000";
			 end case;
		 end if;
		 
		 if output = "00000000" then 
			isZERO <= '1'; 
		 else isZERO <= '0';			
		 end if;
		 
		 if output(7) = '1' then isNEGATIVE <= '1';
		 else isNEGATIVE <= '0';
		 end if;
		 
	 end process;

outputUAL <= output;
N <= isNEGATIVE;
Z <= isZERO;
end Behavioral;



