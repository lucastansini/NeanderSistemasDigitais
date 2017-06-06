----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Bernardo Lignati, Lucas Tansini.
-- 
-- Create Date:    16:24:06 06/05/2017 
-- Design Name: 
-- Module Name:    coreneander - Behavioral 
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

entity coreneander is
    Port ( clk : in  STD_LOGIC;
           reset,rstmem : in  STD_LOGIC;
			  
           outZ : out  STD_LOGIC;
           outN : out  STD_LOGIC;
           outACC : out  STD_LOGIC_VECTOR (7 downto 0);
           outPC : out  STD_LOGIC_VECTOR (7 downto 0);
			  outIR: out std_logic_vector (3 downto 0);
			  outSinalRI:out std_logic;
			  outsinalread:out std_logic;
			  outsinalREM: out std_logic;
			  outpccarga : out std_logic;
			   outmemoria: OUT STD_LOGIC_VECTOR (7 downto 0);
				saidaRDM: OUT STd_logic_Vector (7 downto 0);
				selmuxrdm : out std_logic;
				outRIcarga: OUT std_logic;
				teste4bits: OUT STD_LOGIC_VECTOR (3 downto 0)
			  );
end coreneander;

architecture Behavioral of coreneander is

--Component area



--MEMORY 
COMPONENT memoryNeander IS
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    clkb : IN STD_LOGIC;
    rstb : IN STD_LOGIC;
    addrb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT memoryNeander;
 
 
 



--FINITE STATE MACHINE
COMPONENT fsm 
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
			  selRDM : out STD_LOGIC);
end COMPONENT;


--ALU
COMPONENT UAL
    Port ( X : in  STD_LOGIC_VECTOR (7 downto 0);
           Y : in  STD_LOGIC_VECTOR (7 downto 0);
           outputUAL : out  STD_LOGIC_VECTOR (7 downto 0);
           N : out  STD_LOGIC;
           Z : out  STD_LOGIC;
           selUAL : in  STD_LOGIC_VECTOR (2 downto 0)
			  );
end COMPONENT;


--ACC


COMPONENT regACC 
    Port ( cargaAC : in  STD_LOGIC;
           entradaAC : in  STD_LOGIC_VECTOR (7 downto 0);
           saidaAC : out  STD_LOGIC_VECTOR (7 downto 0);
			  clk,reset : in STD_LOGIC);
end COMPONENT;

--FLAG N Z

component acc2bits is
    Port (  clk : in std_logic;
			  Zin : in  STD_LOGIC;
           Nin : in  STD_LOGIC;
			  rst : in  STD_LOGIC;
           carga : in  STD_LOGIC;
           Zout : out  STD_LOGIC;
           Nout : out  STD_LOGIC);
end component;


--RI


COMPONENT regRI is
   Port ( entradaRI : in  STD_LOGIC_VECTOR (7 downto 0);
           saidaRI : out  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
			  cargaRi : in STD_LOGIC;
           reset : in  STD_LOGIC);
END COMPONENT;


--PC

COMPONENT regPC is
    Port ( saidaPC : out  STD_LOGIC_VECTOR (7 downto 0);
           cargaPC : in  STD_LOGIC;
			  entradaPC : in STD_LOGIC_VECTOR (7 downto 0);
           incrementaPC : in  STD_LOGIC;
			  clk,reset : in STD_LOGIC );
end COMPONENT;

--MUX 2x1
component mux21neander is
    Port ( entradaAMux21 : in  STD_LOGIC_VECTOR (7 downto 0);
           entradaBMux21 : in  STD_LOGIC_VECTOR (7 downto 0);
           selMux21 : in  STD_LOGIC;
           outputMux21 : out  STD_LOGIC_VECTOR (7 downto 0)
			  );			  
end component;

--DECOD

COMPONENT decodificador4x16 is
    Port ( entrada : in  STD_LOGIC_VECTOR (3 downto 0);
           saida : out  STD_LOGIC_VECTOR (15 downto 0));
end COMPONENT;




--Signal area
signal wireFsmUlaSelector : STD_LOGIC_VECTOR (2 downto 0); 


signal wireFsmAccLoad : STD_LOGIC;

signal wireAluAcc : STD_LOGIC_VECTOR (7 downto 0);

signal wireAccOut : STD_LOGIC_VECTOR ( 7 downto 0 );

signal wireAluZ :std_logic;

signal wireAluN :std_logic;

signal wireLoadNZ : std_logic;

signal wireZout : std_logic;

signal wireNout : std_logic;
 
signal wireFsmPcInc : STD_LOGIC;

signal wireFsmPcLoad : STD_LOGIC;

signal wirePCOut : std_logic_vector(7 downto 0);

signal wireRDMOut : std_logic_vector (7 downto 0);

signal wireFSMMuxMASel : std_logic;

signal wireMuxMAOut: std_logic_vector(7 downto 0);

signal wireRemOut : STD_LOGIC_VECTOR ( 7 DOWNTO 0 );

signal wireLoadRem : STD_LOGIC;

signal wireLoadRdm : STD_LOGIC;

signal wireSelMRDM : STD_LOGIC ;

signal wireRiLoad : STD_LOGIC;

signal wireDecFsmOut : STD_LOGIC_VECTOR (15 downto 0);

signal wireWriteMemory : STD_LOGIC_vector (0 downto 0);

signal wireRead :  STD_LOGIC;

signal wireWrite : STD_LOGIC;

signal wireMemoryOut : STD_LOGIC_VECTOR ( 7 downto 0);

signal wireMuxToRdm :  STD_LOGIC_VECTOR ( 7 downto 0);

signal wireridecode : std_logic_vector (3 downto 0);


begin

wireWriteMemory(0) <= ((not wireRead) and wireWrite); 

FSMNeander : fsm
	PORT MAP (
			  clk => clk,
           rst => reset,
           operacao => wireDecFsmOut,
           flagZ => wireZout,
           flagN => wireNout,
					sel => wireFSMMuxMASel,  
			  ulaOP => wireFsmUlaSelector,
           cargaREM => wireLoadRem ,
           sRead => wireRead,
           incPC => wireFsmPcInc,
           cargaRI =>wireRiLoad ,
           sWrite => wireWrite,
           cargaPC => wireFsmPcLoad,
           cargaNZ => wireLoadNZ,
           cargaAcc =>  wireFsmAccLoad,
           cargaRDM => wireLoadRdm ,	
			  selRDM => wireSelMRDM 
	);


REGIR : regRI 
	PORT MAP (
			entradaRI =>wireRDMOut,
           saidaRI =>wireridecode,
           clk => clk,
			  cargaRi => wireriload,
           reset => reset);


ALU : UAL
	PORT MAP (
			  X => wireAccOut,
           Y => wireRDMOut,
           outputUAL => wireAluAcc,
           N => wireAluN,
           Z => wireAluZ,
           selUAL => wireFsmUlaSelector
	);


ACC : regACC 
		PORT MAP (
			  cargaAC => wireFsmAccLoad,
           entradaAC => wireAluAcc,
           saidaAC => wireAccOut,
			  clk => clk,
			  reset => reset
		);
		
FLAGNZ: acc2bits
		port map (
			  clk =>clk,
			  Zin =>wireAluZ,
           Nin =>wireAluN,
			  rst => reset,
           carga => wireLoadNZ,
           Zout => wireZout,
           Nout => wireNout

	   );
PC : regPC 
		PORT MAP (
			  saidaPC => wirePCOut,
           cargaPC => wireFsmPcLoad,
			  entradaPC => wireRDMOut,
           incrementaPC => wireFsmPcInc,
			  clk => clk ,
			  reset => reset		
		);

MUXMA :mux21neander
		PORT MAP(
			  entradaAMux21 => wirePCOut, 
           entradaBMux21 => wireRDMOut,
           selMux21 =>wireFSMMuxMASel,
           outputMux21 =>wireMuxMAOut
		);


regREM : regACC 
		PORT MAP (
			  cargaAC => wireLoadRem,
           entradaAC => wireMuxMAOut,
           saidaAC => wireRemOut,
			  clk => clk,
			  reset => reset
		);
		
regRDM : regACC 
		PORT MAP (
			  cargaAC => wireLoadRdm,
           entradaAC => wireMuxToRdm,
           saidaAC => wireRDMOut,
			  clk => clk,
			  reset => reset	
		);
		
		
MUXRDM :mux21neander
		PORT MAP(
			  entradaAMux21 => wireMemoryOut, 
           entradaBMux21 => wireAccOut,
           selMux21 => wireSelMRDM,
           outputMux21 => wireMuxToRdm
		);
		
		
		
Decod : decodificador4x16 
		PORT MAP (
			entrada => wireridecode,
         saida => wireDecFsmOut
		);
		
		
		
		
MEMORY : memoryNeander 
  PORT MAP(
    clka => clk,
    wea =>  wireWriteMemory,
    addra => wireRemOut,
    dina => wireRDMOut ,
    clkb => clk,
    rstb => rstmem,
    addrb => wireREMOut,
    doutb => wireMemoryOut
	 );

 
outZ <= wireZout; 
outN <= wireNout;
outPC <= wirePCOut;
outACC <= wireAccOut;
outIR <= wireridecode;
outSinalRi <= wireriload;
outSinalRead <= wireread;
outSinalREM <= wireloadREM;
outpccarga <= wireFsmPcInc;
outmemoria <= wireMemoryOut;
outRIcarga <= wireriload;
saidaRDM <= wireMuxToRdm;

selmuxrdm<= wireSelMRDM;



end Behavioral;

