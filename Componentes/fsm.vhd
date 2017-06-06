----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Bernardo Lignati
-- 
-- Create Date:    20:54:56 06/03/2017 
-- Design Name: 
-- Module Name:    fsm - Behavioral 
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
--use UNISIM.VCompone0nts.all;

entity fsm is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           operacao : in  STD_LOGIC_VECTOR (15 downto 0);
           flagZ : in  STD_LOGIC;
           flagN : in  STD_LOGIC;
           sel : out  STD_LOGIC;
           ulaOP : out  STD_LOGIC_VECTOR (2 downto 0);
           cargaREM : out  STD_LOGIC;
           sRead : out  STD_LOGIC;
           incPC : out  STD_LOGIC;
           cargaRI : out  STD_LOGIC;
           sWrite : out  STD_LOGIC;
           cargaPC : out  STD_LOGIC;
           cargaNZ : out  STD_LOGIC;
           cargaAcc : out  STD_LOGIC;
           cargaRDM : out  STD_LOGIC;
			  selRDM   : out  std_logic);
end fsm;

architecture Behavioral of fsm is
--auxiliares a maquina de estado
TYPE t_State is(s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s13,st);
signal estado, proxEstado : t_state;

-- auxiliares a saida da maquina de estados
signal fioSel      : STD_LOGIC;
signal fioUlaOP    : STD_LOGIC_VECTOR (2 downto 0);
signal fioCargaREM : STD_LOGIC;
signal fioRead     : STD_LOGIC;
signal fioIncPC    : STD_LOGIC;
signal fioCargaRI  : STD_LOGIC;
signal fioWrite    : STD_LOGIC;
signal fioCargaPC  : STD_LOGIC;
signal fioCargaNZ  : STD_LOGIC;
signal fioCargaAcc : STD_LOGIC;
signal fioCargaRDM : STD_LOGIC;
signal fioSelRDM   : STD_LOGIC;

-- sinais que agrupam instrucoes em grupos
signal ula2op : std_logic;
signal ula1op : std_logic;
signal j      : std_logic;
signal nj     : std_logic;
begin
	--lda + add + or + and + mult
	ula2op <= operacao(2) or operacao (3) or operacao(4) or operacao(5) or operacao (7);
	
	-- not + shl
	ula1op <= operacao(6) or operacao(11);
	
	-- jmp + jn.n + jz.z
	j <= operacao(8) or (operacao(9) and flagN) or (operacao(10) and flagZ);
	
	-- jz./z + jn./n
	nj <= (operacao(9) and (not flagN)) or (operacao(10) and (not flagZ));
	
	-- inicio da descricao da fsm
	process(clk,rst) begin
		if rst = '1' then estado <= s0;
		elsif (clk'event and clk = '1') then estado <= proxEstado;
		end if;
	end process;
	process(estado,operacao,ula1op,ula2op,j,nj) begin
		case estado is
			   
			when s0 =>
				fioSel       <= '0';
				fioUlaOp     <= "000";
				fioCargaREM  <= '1';
				fioRead      <= '0';
				fioIncPC     <= '0';
				fioCargaRI   <= '0';
				fioWrite     <= '0';
				fioCargaPC   <= '0';
				fioCargaNZ   <= '0';
				fioCargaAcc  <= '0';
				fioCargaRDM  <= '0';
				fioSelRDM    <= '0';
				
				proxEstado   <= S1;
				
			when s1 =>
				fioSel       <= '0';
				fioUlaOp     <= "000";
				fioCargaREM  <= '0';
				fioRead      <= '1';
				fioIncPC     <= '1';
				fioCargaRI   <= '0';
				fioWrite     <= '0';
				fioCargaPC   <= '0';
				fioCargaNZ   <= '0';
				fioCargaAcc <= '0';
				fioCargaRDM  <= '0';
				fioSelRDM    <= '0';
				
				proxEstado   <= s2;
				
				
			when s2 =>
				fioSel       <= '0';
				fioUlaOp     <= "000";
				fioCargaREM  <= '0';
				fioRead      <= '0';
				fioIncPC     <= '0';
				fioCargaRI   <= '1';
				fioWrite     <= '0';
				fioCargaPC   <= '0';
				fioCargaNZ   <= '0';
				fioCargaAcc <= '0';
				fioCargaRDM  <= '0';
				fioSelRDM    <= '0';
				
				proxestado <= st;
				
			when st =>
			
				fioSel       <= '0';
				fioUlaOp     <= "000";
				fioCargaREM  <= '0';
				fioRead      <= '0';
				fioIncPC     <= '0';
				fioCargaRI   <= '0';
				fioWrite     <= '0';
				fioCargaPC   <= '0';
				fioCargaNZ   <= '0';
				fioCargaAcc <= '0';
				fioCargaRDM  <= '0';
				fioSelRDM    <= '0';

				if operacao = "0000000000000000"                  				 then proxEstado <= s0;
				elsif Ula1op = '1'                     			             then proxEstado <= s3;
				elsif (ula2op = '1' or j ='1' or operacao(1)= '1')           then proxEstado <= s4;
				elsif nj     = '1'                  			                then proxEstado <= s5;
				--elsif operacao = "0000000000000001"             			    then proxEstado <= estado;
				else proxEstado <= s4;
				end if;
				
			when s3 =>			
				fioSel       <= '0';
				if    operacao(6)  = '1' then fioUlaOp <= "011";
				elsif operacao(11) = '1' then fioUlaOP <= "111";
				else fioUlaOp <= "101";
				end if;
				fioCargaREM  <= '0';
				fioRead      <= '0';
				fioIncPC     <= '0';
				fioCargaRI   <= '0';
				fioWrite     <= '0';
				fioCargaPC   <= '0';
				fioCargaNZ   <= '1';
				fioCargaAcc <= '1';
				fioCargaRDM  <= '0';
				fioSelRDM    <= '0';
				
				proxEstado   <= s0;
				
			when s4 =>
				fioSel       <= '0';
				fioUlaOp     <= "000";
				fioCargaREM  <= '1';
				fioRead      <= '0';
				fioIncPC     <= '0';
				fioCargaRI   <= '0';
				fioWrite     <= '0';
				fioCargaPC   <= '0';
				fioCargaNZ   <= '0';
				fioCargaAcc <= '0';
				fioCargaRDM  <= '0';
				fioSelRDM    <= '0';
				
				if 	 j = '1' then proxEstado <= s10;
				elsif  (ula2op = '1' or operacao(10) = '1') then proxEstado <= s6;
				else proxEstado <= s0;
				end if;
				
			when s5 =>
				fioSel       <= '0';
				fioUlaOp     <= "000";
				fioCargaREM  <= '0';
				fioRead      <= '0';
				fioIncPC     <= '1';
				fioCargaRI   <= '0';
				fioWrite     <= '0';
				fioCargaPC   <= '0';
				fioCargaNZ   <= '0';
				fioCargaAcc <= '0';
				fioCargaRDM  <= '0';
				fioSelRDM    <= '0';
				
				proxEstado   <= s0;
				
			when s6 =>
				fioSel       <= '0';
				fioUlaOp     <= "000";
				fioCargaREM  <= '0';
				fioRead      <= '1';
				fioIncPC     <= '1';
				fioCargaRI   <= '0';
				fioWrite     <= '0';
				fioCargaPC   <= '0';
				fioCargaNZ   <= '0';
				fioCargaAcc <= '0';
				fioCargaRDM  <= '0';
				fioSelRDM    <= '0';
				
				proxEstado <= s7;
				
			when s7 =>
				fioSel       <= '1';
				fioUlaOp     <= "000";
				fioCargaREM  <= '1';
				fioRead      <= '0';
				fioIncPC     <= '0';
				fioCargaRI   <= '0';
				fioWrite     <= '0';
				fioCargaPC   <= '0';
				fioCargaNZ   <= '0';
				fioCargaAcc <= '0';
				fioCargaRDM  <= '0';
				fioSelRDM    <= '0';
				
				proxEstado   <= s8;
				
			when s8 =>
				fioSel       <= '0';
				fioUlaOp     <= "000";
				fioCargaREM  <= '0';
				fioRead      <= '0';
				fioIncPC     <= '0';
				fioCargaRI   <= '0';
				fioWrite     <= '0';
				fioCargaPC   <= '0';
				fioCargaNZ   <= '0';
				fioCargaAcc <= '0';
				fioCargaRDM  <= '1';
				fioSelRDM    <= '0';
				
				if     operacao(1) = '1' then proxEstado <= s9;
				elsif  ula2op      = '1' then proxEstado <= s13;
				else proxEstado <= s0;
				end if;
			
			when s9 =>
				fioSel       <= '0';
				fioUlaOp     <= "000";
				fioCargaREM  <= '0';
				fioRead      <= '0';
				fioIncPC     <= '0';
				fioCargaRI   <= '0';
				fioWrite     <= '1';
				fioCargaPC   <= '0';
				fioCargaNZ   <= '0';
				fioCargaAcc <= '0';
				fioCargaRDM  <= '0';
				fioSelRDM    <= '1';
				
				proxEstado <= s0;
	
			when s10 => 
				fioSel       <= '0';
				fioUlaOp     <= "000";
				fioCargaREM  <= '0';
				fioRead      <= '1';
				fioIncPC     <= '0';
				fioCargaRI   <= '0';
				fioWrite     <= '0';
				fioCargaPC   <= '0';
				fioCargaNZ   <= '0';
				fioCargaAcc  <= '0';
				fioCargaRDM  <= '0';
				fioSelRDM    <= '0';
				
				proxEstado <= s11;
				
			when s11 =>
			
				fioSel       <= '0';
				fioUlaOp     <= "000";
				fioCargaREM  <= '0';
				fioRead      <= '0';
				fioIncPC     <= '0';
				fioCargaRI   <= '0';
				fioWrite     <= '0';
				fioCargaPC   <= '1';
				fioCargaNZ   <= '0';
				fioCargaAcc <= '0';
				fioCargaRDM  <= '0';
				fioSelRDM    <= '0';
				
				proxEstado <= s0;
			
			when s13 =>
				fioSel       <= '0';
				if    operacao(2) = '1' then fioUlaOp     <= "100";
				elsif operacao(3) = '1' then fioUlaop <= "000";
				elsif operacao(4) = '1' then fioUlaop <= "010";
				elsif operacao(5) = '1' then fioUlaop <= "001";
				elsif operacao(7) = '1' then fioUlaop <= "110";
				else fioUlaOp <= "101";
				end if;
				fioCargaREM  <= '0';
				fioRead      <= '0';
				fioIncPC     <= '0';
				fioCargaRI   <= '0';
				fioWrite     <= '0';
				fioCargaPC   <= '0';
				fioCargaNZ   <= '1';
				fioCargaAcc  <= '1';
				fioCargaRDM  <= '0';
				fioSelRDM    <= '0';
				
				proxEstado <= s0;
			end case;
		end process;
		
			-- conecta os fios as respectivas saidas
				sel      <= fioSel;
				ulaOP    <= fioUlaOp;
				cargaREM <= fioCargaREM;
				sRead    <= fioRead;
				incPc    <= fioIncPC;
				cargaRi  <= fioCargaRI;
				sWrite   <= fioWrite;
				cargaPc  <= fioCargaPC;
				carganz  <= fioCargaNZ;
				cargaAcc <= fioCargaAcc;
				cargaRDM <= fioCargaRDM;
				selRDM   <=fioSelRDM;
		
end Behavioral;

