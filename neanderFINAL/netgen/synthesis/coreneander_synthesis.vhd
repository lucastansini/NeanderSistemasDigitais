--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: coreneander_synthesis.vhd
-- /___/   /\     Timestamp: Mon Jun 05 21:21:01 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm coreneander -w -dir netgen/synthesis -ofmt vhdl -sim coreneander.ngc coreneander_synthesis.vhd 
-- Device	: xc3s100e-5-vq100
-- Input file	: coreneander.ngc
-- Output file	: C:\Users\Lucas\Desktop\Pastas\UFRGS\2017\01\Sistemas Digitais\Trabalho\neanderFINAL\netgen\synthesis\coreneander_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: coreneander
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity coreneander is
  port (
    clk : in STD_LOGIC := 'X'; 
    outsinalREM : out STD_LOGIC; 
    reset : in STD_LOGIC := 'X'; 
    outsinalread : out STD_LOGIC; 
    outN : out STD_LOGIC; 
    outSinalRI : out STD_LOGIC; 
    outZ : out STD_LOGIC; 
    outIR : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    outPC : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    outACC : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    wireLSBRIOut : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end coreneander;

architecture Structure of coreneander is
  component memoryNeander
    port (
      clka : in STD_LOGIC := 'X'; 
      clkb : in STD_LOGIC := 'X'; 
      rstb : in STD_LOGIC := 'X'; 
      wea : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
      addra : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
      dina : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
      addrb : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
      doutb : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
    );
  end component;
  signal ALU_Mmux_output_0_6_22 : STD_LOGIC; 
  signal ALU_Mmux_output_0_7_23 : STD_LOGIC; 
  signal ALU_Mmux_output_1_3_f5_24 : STD_LOGIC; 
  signal ALU_Mmux_output_1_4_25 : STD_LOGIC; 
  signal ALU_Mmux_output_1_4_f5_26 : STD_LOGIC; 
  signal ALU_Mmux_output_1_5_27 : STD_LOGIC; 
  signal ALU_Mmux_output_1_51_28 : STD_LOGIC; 
  signal ALU_Mmux_output_1_6_29 : STD_LOGIC; 
  signal ALU_Mmux_output_2_3_f5_30 : STD_LOGIC; 
  signal ALU_Mmux_output_2_4_31 : STD_LOGIC; 
  signal ALU_Mmux_output_2_4_f5_32 : STD_LOGIC; 
  signal ALU_Mmux_output_2_5_33 : STD_LOGIC; 
  signal ALU_Mmux_output_2_51_34 : STD_LOGIC; 
  signal ALU_Mmux_output_2_6_35 : STD_LOGIC; 
  signal ALU_Mmux_output_3_3_f5_36 : STD_LOGIC; 
  signal ALU_Mmux_output_3_4_37 : STD_LOGIC; 
  signal ALU_Mmux_output_3_4_f5_38 : STD_LOGIC; 
  signal ALU_Mmux_output_3_5_39 : STD_LOGIC; 
  signal ALU_Mmux_output_3_51_40 : STD_LOGIC; 
  signal ALU_Mmux_output_3_6_41 : STD_LOGIC; 
  signal ALU_Mmux_output_4_3_f5_42 : STD_LOGIC; 
  signal ALU_Mmux_output_4_4_43 : STD_LOGIC; 
  signal ALU_Mmux_output_4_4_f5_44 : STD_LOGIC; 
  signal ALU_Mmux_output_4_5_45 : STD_LOGIC; 
  signal ALU_Mmux_output_4_51_46 : STD_LOGIC; 
  signal ALU_Mmux_output_4_6_47 : STD_LOGIC; 
  signal ALU_Mmux_output_5_3_f5_48 : STD_LOGIC; 
  signal ALU_Mmux_output_5_4_49 : STD_LOGIC; 
  signal ALU_Mmux_output_5_4_f5_50 : STD_LOGIC; 
  signal ALU_Mmux_output_5_5_51 : STD_LOGIC; 
  signal ALU_Mmux_output_5_51_52 : STD_LOGIC; 
  signal ALU_Mmux_output_5_6_53 : STD_LOGIC; 
  signal ALU_Mmux_output_6_3_f5_54 : STD_LOGIC; 
  signal ALU_Mmux_output_6_4_55 : STD_LOGIC; 
  signal ALU_Mmux_output_6_4_f5_56 : STD_LOGIC; 
  signal ALU_Mmux_output_6_5_57 : STD_LOGIC; 
  signal ALU_Mmux_output_6_51_58 : STD_LOGIC; 
  signal ALU_Mmux_output_6_6_59 : STD_LOGIC; 
  signal ALU_Mmux_output_7_3_f5_60 : STD_LOGIC; 
  signal ALU_Mmux_output_7_4_61 : STD_LOGIC; 
  signal ALU_Mmux_output_7_4_f5_62 : STD_LOGIC; 
  signal ALU_Mmux_output_7_5_63 : STD_LOGIC; 
  signal ALU_Mmux_output_7_51_64 : STD_LOGIC; 
  signal ALU_Mmux_output_7_6_65 : STD_LOGIC; 
  signal ALU_isZERO_cmp_eq000028_66 : STD_LOGIC; 
  signal ALU_isZERO_cmp_eq00003_67 : STD_LOGIC; 
  signal Decod_Mrom_fioSaida : STD_LOGIC; 
  signal Decod_Mrom_fioSaida1 : STD_LOGIC; 
  signal Decod_Mrom_fioSaida10 : STD_LOGIC; 
  signal Decod_Mrom_fioSaida5 : STD_LOGIC; 
  signal Decod_Mrom_fioSaida6 : STD_LOGIC; 
  signal Decod_Mrom_fioSaida7 : STD_LOGIC; 
  signal Decod_Mrom_fioSaida9 : STD_LOGIC; 
  signal FLAGNZ_fioN_91 : STD_LOGIC; 
  signal FLAGNZ_fioZ_92 : STD_LOGIC; 
  signal FSMNeander_N11 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd1_94 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd10_95 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd10_In : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd11_97 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd11_In_98 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd12_99 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd13_100 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd13_In : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd13_In104 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd13_In1041_103 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd13_In6 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd13_In61_105 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd13_In71_SW0 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd13_In71_SW01_107 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd2_108 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd2_In : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd3_110 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd3_In : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd4_112 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd5_113 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd6_114 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd6_In : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd7_116 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd7_In : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd8_118 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd8_In : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd9_120 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd9_In : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd9_In1_122 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd9_In2_123 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_N4 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_N5 : STD_LOGIC; 
  signal FSMNeander_fioUlaOP_0_SW0 : STD_LOGIC; 
  signal FSMNeander_j_127 : STD_LOGIC; 
  signal FSMNeander_nj : STD_LOGIC; 
  signal FSMNeander_ula1op : STD_LOGIC; 
  signal FSMNeander_ula2op_130 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal PC_Mcount_Pc : STD_LOGIC; 
  signal PC_Mcount_Pc1 : STD_LOGIC; 
  signal PC_Mcount_Pc2 : STD_LOGIC; 
  signal PC_Mcount_Pc3 : STD_LOGIC; 
  signal PC_Mcount_Pc4 : STD_LOGIC; 
  signal PC_Mcount_Pc5 : STD_LOGIC; 
  signal PC_Mcount_Pc6 : STD_LOGIC; 
  signal PC_Mcount_Pc7 : STD_LOGIC; 
  signal PC_Pc_not0001 : STD_LOGIC; 
  signal clk_BUFGP_181 : STD_LOGIC; 
  signal outsinalREM_OBUF_210 : STD_LOGIC; 
  signal outsinalread_OBUF_212 : STD_LOGIC; 
  signal reset_IBUF_238 : STD_LOGIC; 
  signal wireAluZ : STD_LOGIC; 
  signal wireFsmAccLoad : STD_LOGIC; 
  signal wireFsmPcLoad_inv : STD_LOGIC; 
  signal wireWriteMemory : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_P_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_Mmult_output_7_mult0000_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal ACC_acc : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal ALU_Madd_output_7_add0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal ALU_Madd_output_7_add0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ALU_output_7_add0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ALU_output_7_mult0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal PC_Mcount_Pc_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal PC_Mcount_Pc_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal PC_Pc : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal regRDM_acc : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal regREM_acc : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal regRI_acc : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal wireAluAcc : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal wireFsmUlaSelector : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal wireMemoryOut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal wireMuxMAOut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal wireMuxToRdm : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  FLAGNZ_fioN : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => wireFsmAccLoad,
      CLR => reset_IBUF_238,
      D => wireAluAcc(7),
      Q => FLAGNZ_fioN_91
    );
  FLAGNZ_fioZ : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => wireFsmAccLoad,
      CLR => reset_IBUF_238,
      D => wireAluZ,
      Q => FLAGNZ_fioZ_92
    );
  PC_Mcount_Pc_lut_0_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd1_94,
      I1 => PC_Pc(0),
      I2 => regRDM_acc(0),
      O => PC_Mcount_Pc_lut(0)
    );
  PC_Mcount_Pc_cy_0_Q : MUXCY
    port map (
      CI => wireFsmPcLoad_inv,
      DI => N0,
      S => PC_Mcount_Pc_lut(0),
      O => PC_Mcount_Pc_cy(0)
    );
  PC_Mcount_Pc_xor_0_Q : XORCY
    port map (
      CI => wireFsmPcLoad_inv,
      LI => PC_Mcount_Pc_lut(0),
      O => PC_Mcount_Pc
    );
  PC_Mcount_Pc_lut_1_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd1_94,
      I1 => PC_Pc(1),
      I2 => regRDM_acc(1),
      O => PC_Mcount_Pc_lut(1)
    );
  PC_Mcount_Pc_cy_1_Q : MUXCY
    port map (
      CI => PC_Mcount_Pc_cy(0),
      DI => N0,
      S => PC_Mcount_Pc_lut(1),
      O => PC_Mcount_Pc_cy(1)
    );
  PC_Mcount_Pc_xor_1_Q : XORCY
    port map (
      CI => PC_Mcount_Pc_cy(0),
      LI => PC_Mcount_Pc_lut(1),
      O => PC_Mcount_Pc1
    );
  PC_Mcount_Pc_lut_2_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd1_94,
      I1 => PC_Pc(2),
      I2 => regRDM_acc(2),
      O => PC_Mcount_Pc_lut(2)
    );
  PC_Mcount_Pc_cy_2_Q : MUXCY
    port map (
      CI => PC_Mcount_Pc_cy(1),
      DI => N0,
      S => PC_Mcount_Pc_lut(2),
      O => PC_Mcount_Pc_cy(2)
    );
  PC_Mcount_Pc_xor_2_Q : XORCY
    port map (
      CI => PC_Mcount_Pc_cy(1),
      LI => PC_Mcount_Pc_lut(2),
      O => PC_Mcount_Pc2
    );
  PC_Mcount_Pc_lut_3_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd1_94,
      I1 => PC_Pc(3),
      I2 => regRDM_acc(3),
      O => PC_Mcount_Pc_lut(3)
    );
  PC_Mcount_Pc_cy_3_Q : MUXCY
    port map (
      CI => PC_Mcount_Pc_cy(2),
      DI => N0,
      S => PC_Mcount_Pc_lut(3),
      O => PC_Mcount_Pc_cy(3)
    );
  PC_Mcount_Pc_xor_3_Q : XORCY
    port map (
      CI => PC_Mcount_Pc_cy(2),
      LI => PC_Mcount_Pc_lut(3),
      O => PC_Mcount_Pc3
    );
  PC_Mcount_Pc_lut_4_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd1_94,
      I1 => PC_Pc(4),
      I2 => regRDM_acc(4),
      O => PC_Mcount_Pc_lut(4)
    );
  PC_Mcount_Pc_cy_4_Q : MUXCY
    port map (
      CI => PC_Mcount_Pc_cy(3),
      DI => N0,
      S => PC_Mcount_Pc_lut(4),
      O => PC_Mcount_Pc_cy(4)
    );
  PC_Mcount_Pc_xor_4_Q : XORCY
    port map (
      CI => PC_Mcount_Pc_cy(3),
      LI => PC_Mcount_Pc_lut(4),
      O => PC_Mcount_Pc4
    );
  PC_Mcount_Pc_lut_5_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd1_94,
      I1 => PC_Pc(5),
      I2 => regRDM_acc(5),
      O => PC_Mcount_Pc_lut(5)
    );
  PC_Mcount_Pc_cy_5_Q : MUXCY
    port map (
      CI => PC_Mcount_Pc_cy(4),
      DI => N0,
      S => PC_Mcount_Pc_lut(5),
      O => PC_Mcount_Pc_cy(5)
    );
  PC_Mcount_Pc_xor_5_Q : XORCY
    port map (
      CI => PC_Mcount_Pc_cy(4),
      LI => PC_Mcount_Pc_lut(5),
      O => PC_Mcount_Pc5
    );
  PC_Mcount_Pc_lut_6_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd1_94,
      I1 => PC_Pc(6),
      I2 => regRDM_acc(6),
      O => PC_Mcount_Pc_lut(6)
    );
  PC_Mcount_Pc_cy_6_Q : MUXCY
    port map (
      CI => PC_Mcount_Pc_cy(5),
      DI => N0,
      S => PC_Mcount_Pc_lut(6),
      O => PC_Mcount_Pc_cy(6)
    );
  PC_Mcount_Pc_xor_6_Q : XORCY
    port map (
      CI => PC_Mcount_Pc_cy(5),
      LI => PC_Mcount_Pc_lut(6),
      O => PC_Mcount_Pc6
    );
  PC_Mcount_Pc_lut_7_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd1_94,
      I1 => PC_Pc(7),
      I2 => regRDM_acc(7),
      O => PC_Mcount_Pc_lut(7)
    );
  PC_Mcount_Pc_xor_7_Q : XORCY
    port map (
      CI => PC_Mcount_Pc_cy(6),
      LI => PC_Mcount_Pc_lut(7),
      O => PC_Mcount_Pc7
    );
  PC_Pc_0 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => PC_Pc_not0001,
      CLR => reset_IBUF_238,
      D => PC_Mcount_Pc,
      Q => PC_Pc(0)
    );
  PC_Pc_1 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => PC_Pc_not0001,
      CLR => reset_IBUF_238,
      D => PC_Mcount_Pc1,
      Q => PC_Pc(1)
    );
  PC_Pc_2 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => PC_Pc_not0001,
      CLR => reset_IBUF_238,
      D => PC_Mcount_Pc2,
      Q => PC_Pc(2)
    );
  PC_Pc_3 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => PC_Pc_not0001,
      CLR => reset_IBUF_238,
      D => PC_Mcount_Pc3,
      Q => PC_Pc(3)
    );
  PC_Pc_4 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => PC_Pc_not0001,
      CLR => reset_IBUF_238,
      D => PC_Mcount_Pc4,
      Q => PC_Pc(4)
    );
  PC_Pc_5 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => PC_Pc_not0001,
      CLR => reset_IBUF_238,
      D => PC_Mcount_Pc5,
      Q => PC_Pc(5)
    );
  PC_Pc_6 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => PC_Pc_not0001,
      CLR => reset_IBUF_238,
      D => PC_Mcount_Pc6,
      Q => PC_Pc(6)
    );
  PC_Pc_7 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => PC_Pc_not0001,
      CLR => reset_IBUF_238,
      D => PC_Mcount_Pc7,
      Q => PC_Pc(7)
    );
  FSMNeander_estado_FSM_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_181,
      CLR => reset_IBUF_238,
      D => FSMNeander_estado_FSM_FFd5_113,
      Q => FSMNeander_estado_FSM_FFd4_112
    );
  FSMNeander_estado_FSM_FFd12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_181,
      CLR => reset_IBUF_238,
      D => FSMNeander_estado_FSM_FFd13_100,
      Q => FSMNeander_estado_FSM_FFd12_99
    );
  FSMNeander_estado_FSM_FFd5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_181,
      CLR => reset_IBUF_238,
      D => FSMNeander_estado_FSM_FFd6_114,
      Q => FSMNeander_estado_FSM_FFd5_113
    );
  FSMNeander_estado_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_181,
      CLR => reset_IBUF_238,
      D => FSMNeander_estado_FSM_FFd7_116,
      Q => FSMNeander_estado_FSM_FFd1_94
    );
  FSMNeander_estado_FSM_FFd11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_181,
      CLR => reset_IBUF_238,
      D => FSMNeander_estado_FSM_FFd11_In_98,
      Q => FSMNeander_estado_FSM_FFd11_97
    );
  FSMNeander_estado_FSM_FFd13 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_181,
      D => FSMNeander_estado_FSM_FFd13_In,
      PRE => reset_IBUF_238,
      Q => FSMNeander_estado_FSM_FFd13_100
    );
  FSMNeander_estado_FSM_FFd9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_181,
      CLR => reset_IBUF_238,
      D => FSMNeander_estado_FSM_FFd9_In,
      Q => FSMNeander_estado_FSM_FFd9_120
    );
  FSMNeander_estado_FSM_FFd8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_181,
      CLR => reset_IBUF_238,
      D => FSMNeander_estado_FSM_FFd8_In,
      Q => FSMNeander_estado_FSM_FFd8_118
    );
  FSMNeander_estado_FSM_FFd10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_181,
      CLR => reset_IBUF_238,
      D => FSMNeander_estado_FSM_FFd10_In,
      Q => FSMNeander_estado_FSM_FFd10_95
    );
  FSMNeander_estado_FSM_FFd6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_181,
      CLR => reset_IBUF_238,
      D => FSMNeander_estado_FSM_FFd6_In,
      Q => FSMNeander_estado_FSM_FFd6_114
    );
  FSMNeander_estado_FSM_FFd7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_181,
      CLR => reset_IBUF_238,
      D => FSMNeander_estado_FSM_FFd7_In,
      Q => FSMNeander_estado_FSM_FFd7_116
    );
  FSMNeander_estado_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_181,
      CLR => reset_IBUF_238,
      D => FSMNeander_estado_FSM_FFd3_In,
      Q => FSMNeander_estado_FSM_FFd3_110
    );
  FSMNeander_estado_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_181,
      CLR => reset_IBUF_238,
      D => FSMNeander_estado_FSM_FFd2_In,
      Q => FSMNeander_estado_FSM_FFd2_108
    );
  ALU_Mmux_output_7_4 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => ACC_acc(6),
      I1 => wireFsmUlaSelector(0),
      I2 => ALU_output_7_mult0000(7),
      O => ALU_Mmux_output_7_4_61
    );
  ALU_Mmux_output_7_5 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => regRDM_acc(7),
      I1 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_7_5_63
    );
  ALU_Mmux_output_7_3_f5 : MUXF5
    port map (
      I0 => ALU_Mmux_output_7_5_63,
      I1 => ALU_Mmux_output_7_4_61,
      S => wireFsmUlaSelector(1),
      O => ALU_Mmux_output_7_3_f5_60
    );
  ALU_Mmux_output_7_4_f5 : MUXF5
    port map (
      I0 => ALU_Mmux_output_7_6_65,
      I1 => ALU_Mmux_output_7_51_64,
      S => wireFsmUlaSelector(1),
      O => ALU_Mmux_output_7_4_f5_62
    );
  ALU_Mmux_output_7_2_f6 : MUXF6
    port map (
      I0 => ALU_Mmux_output_7_4_f5_62,
      I1 => ALU_Mmux_output_7_3_f5_60,
      S => wireFsmUlaSelector(2),
      O => wireAluAcc(7)
    );
  ALU_Mmux_output_6_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ACC_acc(5),
      I1 => ALU_output_7_mult0000(6),
      I2 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_6_4_55
    );
  ALU_Mmux_output_6_5 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => regRDM_acc(6),
      I1 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_6_5_57
    );
  ALU_Mmux_output_6_3_f5 : MUXF5
    port map (
      I0 => ALU_Mmux_output_6_5_57,
      I1 => ALU_Mmux_output_6_4_55,
      S => wireFsmUlaSelector(1),
      O => ALU_Mmux_output_6_3_f5_54
    );
  ALU_Mmux_output_6_4_f5 : MUXF5
    port map (
      I0 => ALU_Mmux_output_6_6_59,
      I1 => ALU_Mmux_output_6_51_58,
      S => wireFsmUlaSelector(1),
      O => ALU_Mmux_output_6_4_f5_56
    );
  ALU_Mmux_output_6_2_f6 : MUXF6
    port map (
      I0 => ALU_Mmux_output_6_4_f5_56,
      I1 => ALU_Mmux_output_6_3_f5_54,
      S => wireFsmUlaSelector(2),
      O => wireAluAcc(6)
    );
  ALU_Mmux_output_5_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ACC_acc(4),
      I1 => ALU_output_7_mult0000(5),
      I2 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_5_4_49
    );
  ALU_Mmux_output_5_5 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => regRDM_acc(5),
      I1 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_5_5_51
    );
  ALU_Mmux_output_5_3_f5 : MUXF5
    port map (
      I0 => ALU_Mmux_output_5_5_51,
      I1 => ALU_Mmux_output_5_4_49,
      S => wireFsmUlaSelector(1),
      O => ALU_Mmux_output_5_3_f5_48
    );
  ALU_Mmux_output_5_4_f5 : MUXF5
    port map (
      I0 => ALU_Mmux_output_5_6_53,
      I1 => ALU_Mmux_output_5_51_52,
      S => wireFsmUlaSelector(1),
      O => ALU_Mmux_output_5_4_f5_50
    );
  ALU_Mmux_output_5_2_f6 : MUXF6
    port map (
      I0 => ALU_Mmux_output_5_4_f5_50,
      I1 => ALU_Mmux_output_5_3_f5_48,
      S => wireFsmUlaSelector(2),
      O => wireAluAcc(5)
    );
  ALU_Mmux_output_4_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ACC_acc(3),
      I1 => ALU_output_7_mult0000(4),
      I2 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_4_4_43
    );
  ALU_Mmux_output_4_5 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => regRDM_acc(4),
      I1 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_4_5_45
    );
  ALU_Mmux_output_4_3_f5 : MUXF5
    port map (
      I0 => ALU_Mmux_output_4_5_45,
      I1 => ALU_Mmux_output_4_4_43,
      S => wireFsmUlaSelector(1),
      O => ALU_Mmux_output_4_3_f5_42
    );
  ALU_Mmux_output_4_4_f5 : MUXF5
    port map (
      I0 => ALU_Mmux_output_4_6_47,
      I1 => ALU_Mmux_output_4_51_46,
      S => wireFsmUlaSelector(1),
      O => ALU_Mmux_output_4_4_f5_44
    );
  ALU_Mmux_output_4_2_f6 : MUXF6
    port map (
      I0 => ALU_Mmux_output_4_4_f5_44,
      I1 => ALU_Mmux_output_4_3_f5_42,
      S => wireFsmUlaSelector(2),
      O => wireAluAcc(4)
    );
  ALU_Mmux_output_3_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ACC_acc(2),
      I1 => ALU_output_7_mult0000(3),
      I2 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_3_4_37
    );
  ALU_Mmux_output_3_5 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => regRDM_acc(3),
      I1 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_3_5_39
    );
  ALU_Mmux_output_3_3_f5 : MUXF5
    port map (
      I0 => ALU_Mmux_output_3_5_39,
      I1 => ALU_Mmux_output_3_4_37,
      S => wireFsmUlaSelector(1),
      O => ALU_Mmux_output_3_3_f5_36
    );
  ALU_Mmux_output_3_4_f5 : MUXF5
    port map (
      I0 => ALU_Mmux_output_3_6_41,
      I1 => ALU_Mmux_output_3_51_40,
      S => wireFsmUlaSelector(1),
      O => ALU_Mmux_output_3_4_f5_38
    );
  ALU_Mmux_output_3_2_f6 : MUXF6
    port map (
      I0 => ALU_Mmux_output_3_4_f5_38,
      I1 => ALU_Mmux_output_3_3_f5_36,
      S => wireFsmUlaSelector(2),
      O => wireAluAcc(3)
    );
  ALU_Mmux_output_2_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ACC_acc(1),
      I1 => ALU_output_7_mult0000(2),
      I2 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_2_4_31
    );
  ALU_Mmux_output_2_5 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => regRDM_acc(2),
      I1 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_2_5_33
    );
  ALU_Mmux_output_2_3_f5 : MUXF5
    port map (
      I0 => ALU_Mmux_output_2_5_33,
      I1 => ALU_Mmux_output_2_4_31,
      S => wireFsmUlaSelector(1),
      O => ALU_Mmux_output_2_3_f5_30
    );
  ALU_Mmux_output_2_4_f5 : MUXF5
    port map (
      I0 => ALU_Mmux_output_2_6_35,
      I1 => ALU_Mmux_output_2_51_34,
      S => wireFsmUlaSelector(1),
      O => ALU_Mmux_output_2_4_f5_32
    );
  ALU_Mmux_output_2_2_f6 : MUXF6
    port map (
      I0 => ALU_Mmux_output_2_4_f5_32,
      I1 => ALU_Mmux_output_2_3_f5_30,
      S => wireFsmUlaSelector(2),
      O => wireAluAcc(2)
    );
  ALU_Mmux_output_1_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ACC_acc(0),
      I1 => ALU_output_7_mult0000(1),
      I2 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_1_4_25
    );
  ALU_Mmux_output_1_5 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => regRDM_acc(1),
      I1 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_1_5_27
    );
  ALU_Mmux_output_1_3_f5 : MUXF5
    port map (
      I0 => ALU_Mmux_output_1_5_27,
      I1 => ALU_Mmux_output_1_4_25,
      S => wireFsmUlaSelector(1),
      O => ALU_Mmux_output_1_3_f5_24
    );
  ALU_Mmux_output_1_4_f5 : MUXF5
    port map (
      I0 => ALU_Mmux_output_1_6_29,
      I1 => ALU_Mmux_output_1_51_28,
      S => wireFsmUlaSelector(1),
      O => ALU_Mmux_output_1_4_f5_26
    );
  ALU_Mmux_output_1_2_f6 : MUXF6
    port map (
      I0 => ALU_Mmux_output_1_4_f5_26,
      I1 => ALU_Mmux_output_1_3_f5_24,
      S => wireFsmUlaSelector(2),
      O => wireAluAcc(1)
    );
  ALU_Madd_output_7_add0000_xor_7_Q : XORCY
    port map (
      CI => ALU_Madd_output_7_add0000_cy(6),
      LI => ALU_Madd_output_7_add0000_lut(7),
      O => ALU_output_7_add0000(7)
    );
  ALU_Madd_output_7_add0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => FLAGNZ_fioN_91,
      I1 => regRDM_acc(7),
      O => ALU_Madd_output_7_add0000_lut(7)
    );
  ALU_Madd_output_7_add0000_xor_6_Q : XORCY
    port map (
      CI => ALU_Madd_output_7_add0000_cy(5),
      LI => ALU_Madd_output_7_add0000_lut(6),
      O => ALU_output_7_add0000(6)
    );
  ALU_Madd_output_7_add0000_cy_6_Q : MUXCY
    port map (
      CI => ALU_Madd_output_7_add0000_cy(5),
      DI => ACC_acc(6),
      S => ALU_Madd_output_7_add0000_lut(6),
      O => ALU_Madd_output_7_add0000_cy(6)
    );
  ALU_Madd_output_7_add0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ACC_acc(6),
      I1 => regRDM_acc(6),
      O => ALU_Madd_output_7_add0000_lut(6)
    );
  ALU_Madd_output_7_add0000_xor_5_Q : XORCY
    port map (
      CI => ALU_Madd_output_7_add0000_cy(4),
      LI => ALU_Madd_output_7_add0000_lut(5),
      O => ALU_output_7_add0000(5)
    );
  ALU_Madd_output_7_add0000_cy_5_Q : MUXCY
    port map (
      CI => ALU_Madd_output_7_add0000_cy(4),
      DI => ACC_acc(5),
      S => ALU_Madd_output_7_add0000_lut(5),
      O => ALU_Madd_output_7_add0000_cy(5)
    );
  ALU_Madd_output_7_add0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ACC_acc(5),
      I1 => regRDM_acc(5),
      O => ALU_Madd_output_7_add0000_lut(5)
    );
  ALU_Madd_output_7_add0000_xor_4_Q : XORCY
    port map (
      CI => ALU_Madd_output_7_add0000_cy(3),
      LI => ALU_Madd_output_7_add0000_lut(4),
      O => ALU_output_7_add0000(4)
    );
  ALU_Madd_output_7_add0000_cy_4_Q : MUXCY
    port map (
      CI => ALU_Madd_output_7_add0000_cy(3),
      DI => ACC_acc(4),
      S => ALU_Madd_output_7_add0000_lut(4),
      O => ALU_Madd_output_7_add0000_cy(4)
    );
  ALU_Madd_output_7_add0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ACC_acc(4),
      I1 => regRDM_acc(4),
      O => ALU_Madd_output_7_add0000_lut(4)
    );
  ALU_Madd_output_7_add0000_xor_3_Q : XORCY
    port map (
      CI => ALU_Madd_output_7_add0000_cy(2),
      LI => ALU_Madd_output_7_add0000_lut(3),
      O => ALU_output_7_add0000(3)
    );
  ALU_Madd_output_7_add0000_cy_3_Q : MUXCY
    port map (
      CI => ALU_Madd_output_7_add0000_cy(2),
      DI => ACC_acc(3),
      S => ALU_Madd_output_7_add0000_lut(3),
      O => ALU_Madd_output_7_add0000_cy(3)
    );
  ALU_Madd_output_7_add0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ACC_acc(3),
      I1 => regRDM_acc(3),
      O => ALU_Madd_output_7_add0000_lut(3)
    );
  ALU_Madd_output_7_add0000_xor_2_Q : XORCY
    port map (
      CI => ALU_Madd_output_7_add0000_cy(1),
      LI => ALU_Madd_output_7_add0000_lut(2),
      O => ALU_output_7_add0000(2)
    );
  ALU_Madd_output_7_add0000_cy_2_Q : MUXCY
    port map (
      CI => ALU_Madd_output_7_add0000_cy(1),
      DI => ACC_acc(2),
      S => ALU_Madd_output_7_add0000_lut(2),
      O => ALU_Madd_output_7_add0000_cy(2)
    );
  ALU_Madd_output_7_add0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ACC_acc(2),
      I1 => regRDM_acc(2),
      O => ALU_Madd_output_7_add0000_lut(2)
    );
  ALU_Madd_output_7_add0000_xor_1_Q : XORCY
    port map (
      CI => ALU_Madd_output_7_add0000_cy(0),
      LI => ALU_Madd_output_7_add0000_lut(1),
      O => ALU_output_7_add0000(1)
    );
  ALU_Madd_output_7_add0000_cy_1_Q : MUXCY
    port map (
      CI => ALU_Madd_output_7_add0000_cy(0),
      DI => ACC_acc(1),
      S => ALU_Madd_output_7_add0000_lut(1),
      O => ALU_Madd_output_7_add0000_cy(1)
    );
  ALU_Madd_output_7_add0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ACC_acc(1),
      I1 => regRDM_acc(1),
      O => ALU_Madd_output_7_add0000_lut(1)
    );
  ALU_Madd_output_7_add0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => ALU_Madd_output_7_add0000_lut(0),
      O => ALU_output_7_add0000(0)
    );
  ALU_Madd_output_7_add0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => ACC_acc(0),
      S => ALU_Madd_output_7_add0000_lut(0),
      O => ALU_Madd_output_7_add0000_cy(0)
    );
  ALU_Madd_output_7_add0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ACC_acc(0),
      I1 => regRDM_acc(0),
      O => ALU_Madd_output_7_add0000_lut(0)
    );
  ALU_Mmult_output_7_mult0000 : MULT18X18SIO
    generic map(
      B_INPUT => "DIRECT",
      AREG => 0,
      BREG => 0,
      PREG => 0
    )
    port map (
      CEA => N0,
      CEB => N0,
      CEP => N0,
      CLK => N0,
      RSTA => N0,
      RSTB => N0,
      RSTP => N0,
      A(17) => N0,
      A(16) => N0,
      A(15) => N0,
      A(14) => N0,
      A(13) => N0,
      A(12) => N0,
      A(11) => N0,
      A(10) => N0,
      A(9) => N0,
      A(8) => N0,
      A(7) => N0,
      A(6) => N0,
      A(5) => N0,
      A(4) => N0,
      A(3) => ACC_acc(3),
      A(2) => ACC_acc(2),
      A(1) => ACC_acc(1),
      A(0) => ACC_acc(0),
      B(17) => N0,
      B(16) => N0,
      B(15) => N0,
      B(14) => N0,
      B(13) => N0,
      B(12) => N0,
      B(11) => N0,
      B(10) => N0,
      B(9) => N0,
      B(8) => N0,
      B(7) => N0,
      B(6) => N0,
      B(5) => N0,
      B(4) => N0,
      B(3) => regRDM_acc(3),
      B(2) => regRDM_acc(2),
      B(1) => regRDM_acc(1),
      B(0) => regRDM_acc(0),
      BCIN(17) => NLW_ALU_Mmult_output_7_mult0000_BCIN_17_UNCONNECTED,
      BCIN(16) => NLW_ALU_Mmult_output_7_mult0000_BCIN_16_UNCONNECTED,
      BCIN(15) => NLW_ALU_Mmult_output_7_mult0000_BCIN_15_UNCONNECTED,
      BCIN(14) => NLW_ALU_Mmult_output_7_mult0000_BCIN_14_UNCONNECTED,
      BCIN(13) => NLW_ALU_Mmult_output_7_mult0000_BCIN_13_UNCONNECTED,
      BCIN(12) => NLW_ALU_Mmult_output_7_mult0000_BCIN_12_UNCONNECTED,
      BCIN(11) => NLW_ALU_Mmult_output_7_mult0000_BCIN_11_UNCONNECTED,
      BCIN(10) => NLW_ALU_Mmult_output_7_mult0000_BCIN_10_UNCONNECTED,
      BCIN(9) => NLW_ALU_Mmult_output_7_mult0000_BCIN_9_UNCONNECTED,
      BCIN(8) => NLW_ALU_Mmult_output_7_mult0000_BCIN_8_UNCONNECTED,
      BCIN(7) => NLW_ALU_Mmult_output_7_mult0000_BCIN_7_UNCONNECTED,
      BCIN(6) => NLW_ALU_Mmult_output_7_mult0000_BCIN_6_UNCONNECTED,
      BCIN(5) => NLW_ALU_Mmult_output_7_mult0000_BCIN_5_UNCONNECTED,
      BCIN(4) => NLW_ALU_Mmult_output_7_mult0000_BCIN_4_UNCONNECTED,
      BCIN(3) => NLW_ALU_Mmult_output_7_mult0000_BCIN_3_UNCONNECTED,
      BCIN(2) => NLW_ALU_Mmult_output_7_mult0000_BCIN_2_UNCONNECTED,
      BCIN(1) => NLW_ALU_Mmult_output_7_mult0000_BCIN_1_UNCONNECTED,
      BCIN(0) => NLW_ALU_Mmult_output_7_mult0000_BCIN_0_UNCONNECTED,
      P(35) => NLW_ALU_Mmult_output_7_mult0000_P_35_UNCONNECTED,
      P(34) => NLW_ALU_Mmult_output_7_mult0000_P_34_UNCONNECTED,
      P(33) => NLW_ALU_Mmult_output_7_mult0000_P_33_UNCONNECTED,
      P(32) => NLW_ALU_Mmult_output_7_mult0000_P_32_UNCONNECTED,
      P(31) => NLW_ALU_Mmult_output_7_mult0000_P_31_UNCONNECTED,
      P(30) => NLW_ALU_Mmult_output_7_mult0000_P_30_UNCONNECTED,
      P(29) => NLW_ALU_Mmult_output_7_mult0000_P_29_UNCONNECTED,
      P(28) => NLW_ALU_Mmult_output_7_mult0000_P_28_UNCONNECTED,
      P(27) => NLW_ALU_Mmult_output_7_mult0000_P_27_UNCONNECTED,
      P(26) => NLW_ALU_Mmult_output_7_mult0000_P_26_UNCONNECTED,
      P(25) => NLW_ALU_Mmult_output_7_mult0000_P_25_UNCONNECTED,
      P(24) => NLW_ALU_Mmult_output_7_mult0000_P_24_UNCONNECTED,
      P(23) => NLW_ALU_Mmult_output_7_mult0000_P_23_UNCONNECTED,
      P(22) => NLW_ALU_Mmult_output_7_mult0000_P_22_UNCONNECTED,
      P(21) => NLW_ALU_Mmult_output_7_mult0000_P_21_UNCONNECTED,
      P(20) => NLW_ALU_Mmult_output_7_mult0000_P_20_UNCONNECTED,
      P(19) => NLW_ALU_Mmult_output_7_mult0000_P_19_UNCONNECTED,
      P(18) => NLW_ALU_Mmult_output_7_mult0000_P_18_UNCONNECTED,
      P(17) => NLW_ALU_Mmult_output_7_mult0000_P_17_UNCONNECTED,
      P(16) => NLW_ALU_Mmult_output_7_mult0000_P_16_UNCONNECTED,
      P(15) => NLW_ALU_Mmult_output_7_mult0000_P_15_UNCONNECTED,
      P(14) => NLW_ALU_Mmult_output_7_mult0000_P_14_UNCONNECTED,
      P(13) => NLW_ALU_Mmult_output_7_mult0000_P_13_UNCONNECTED,
      P(12) => NLW_ALU_Mmult_output_7_mult0000_P_12_UNCONNECTED,
      P(11) => NLW_ALU_Mmult_output_7_mult0000_P_11_UNCONNECTED,
      P(10) => NLW_ALU_Mmult_output_7_mult0000_P_10_UNCONNECTED,
      P(9) => NLW_ALU_Mmult_output_7_mult0000_P_9_UNCONNECTED,
      P(8) => NLW_ALU_Mmult_output_7_mult0000_P_8_UNCONNECTED,
      P(7) => ALU_output_7_mult0000(7),
      P(6) => ALU_output_7_mult0000(6),
      P(5) => ALU_output_7_mult0000(5),
      P(4) => ALU_output_7_mult0000(4),
      P(3) => ALU_output_7_mult0000(3),
      P(2) => ALU_output_7_mult0000(2),
      P(1) => ALU_output_7_mult0000(1),
      P(0) => ALU_output_7_mult0000(0),
      BCOUT(17) => NLW_ALU_Mmult_output_7_mult0000_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_ALU_Mmult_output_7_mult0000_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_ALU_Mmult_output_7_mult0000_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_ALU_Mmult_output_7_mult0000_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_ALU_Mmult_output_7_mult0000_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_ALU_Mmult_output_7_mult0000_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_ALU_Mmult_output_7_mult0000_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_ALU_Mmult_output_7_mult0000_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_ALU_Mmult_output_7_mult0000_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_ALU_Mmult_output_7_mult0000_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_ALU_Mmult_output_7_mult0000_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_ALU_Mmult_output_7_mult0000_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_ALU_Mmult_output_7_mult0000_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_ALU_Mmult_output_7_mult0000_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_ALU_Mmult_output_7_mult0000_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_ALU_Mmult_output_7_mult0000_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_ALU_Mmult_output_7_mult0000_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_ALU_Mmult_output_7_mult0000_BCOUT_0_UNCONNECTED
    );
  regRI_acc_7 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => FSMNeander_estado_FSM_FFd11_97,
      CLR => reset_IBUF_238,
      D => regRDM_acc(7),
      Q => regRI_acc(7)
    );
  regRI_acc_6 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => FSMNeander_estado_FSM_FFd11_97,
      CLR => reset_IBUF_238,
      D => regRDM_acc(6),
      Q => regRI_acc(6)
    );
  regRI_acc_5 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => FSMNeander_estado_FSM_FFd11_97,
      CLR => reset_IBUF_238,
      D => regRDM_acc(5),
      Q => regRI_acc(5)
    );
  regRI_acc_4 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => FSMNeander_estado_FSM_FFd11_97,
      CLR => reset_IBUF_238,
      D => regRDM_acc(4),
      Q => regRI_acc(4)
    );
  regRI_acc_3 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => FSMNeander_estado_FSM_FFd11_97,
      CLR => reset_IBUF_238,
      D => regRDM_acc(3),
      Q => regRI_acc(3)
    );
  regRI_acc_2 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => FSMNeander_estado_FSM_FFd11_97,
      CLR => reset_IBUF_238,
      D => regRDM_acc(2),
      Q => regRI_acc(2)
    );
  regRI_acc_1 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => FSMNeander_estado_FSM_FFd11_97,
      CLR => reset_IBUF_238,
      D => regRDM_acc(1),
      Q => regRI_acc(1)
    );
  regRI_acc_0 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => FSMNeander_estado_FSM_FFd11_97,
      CLR => reset_IBUF_238,
      D => regRDM_acc(0),
      Q => regRI_acc(0)
    );
  regRDM_acc_7 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => FSMNeander_estado_FSM_FFd4_112,
      CLR => reset_IBUF_238,
      D => wireMuxToRdm(7),
      Q => regRDM_acc(7)
    );
  regRDM_acc_6 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => FSMNeander_estado_FSM_FFd4_112,
      CLR => reset_IBUF_238,
      D => wireMuxToRdm(6),
      Q => regRDM_acc(6)
    );
  regRDM_acc_5 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => FSMNeander_estado_FSM_FFd4_112,
      CLR => reset_IBUF_238,
      D => wireMuxToRdm(5),
      Q => regRDM_acc(5)
    );
  regRDM_acc_4 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => FSMNeander_estado_FSM_FFd4_112,
      CLR => reset_IBUF_238,
      D => wireMuxToRdm(4),
      Q => regRDM_acc(4)
    );
  regRDM_acc_3 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => FSMNeander_estado_FSM_FFd4_112,
      CLR => reset_IBUF_238,
      D => wireMuxToRdm(3),
      Q => regRDM_acc(3)
    );
  regRDM_acc_2 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => FSMNeander_estado_FSM_FFd4_112,
      CLR => reset_IBUF_238,
      D => wireMuxToRdm(2),
      Q => regRDM_acc(2)
    );
  regRDM_acc_1 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => FSMNeander_estado_FSM_FFd4_112,
      CLR => reset_IBUF_238,
      D => wireMuxToRdm(1),
      Q => regRDM_acc(1)
    );
  regRDM_acc_0 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => FSMNeander_estado_FSM_FFd4_112,
      CLR => reset_IBUF_238,
      D => wireMuxToRdm(0),
      Q => regRDM_acc(0)
    );
  regREM_acc_7 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => outsinalREM_OBUF_210,
      CLR => reset_IBUF_238,
      D => wireMuxMAOut(7),
      Q => regREM_acc(7)
    );
  regREM_acc_6 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => outsinalREM_OBUF_210,
      CLR => reset_IBUF_238,
      D => wireMuxMAOut(6),
      Q => regREM_acc(6)
    );
  regREM_acc_5 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => outsinalREM_OBUF_210,
      CLR => reset_IBUF_238,
      D => wireMuxMAOut(5),
      Q => regREM_acc(5)
    );
  regREM_acc_4 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => outsinalREM_OBUF_210,
      CLR => reset_IBUF_238,
      D => wireMuxMAOut(4),
      Q => regREM_acc(4)
    );
  regREM_acc_3 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => outsinalREM_OBUF_210,
      CLR => reset_IBUF_238,
      D => wireMuxMAOut(3),
      Q => regREM_acc(3)
    );
  regREM_acc_2 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => outsinalREM_OBUF_210,
      CLR => reset_IBUF_238,
      D => wireMuxMAOut(2),
      Q => regREM_acc(2)
    );
  regREM_acc_1 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => outsinalREM_OBUF_210,
      CLR => reset_IBUF_238,
      D => wireMuxMAOut(1),
      Q => regREM_acc(1)
    );
  regREM_acc_0 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => outsinalREM_OBUF_210,
      CLR => reset_IBUF_238,
      D => wireMuxMAOut(0),
      Q => regREM_acc(0)
    );
  ACC_acc_6 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => wireFsmAccLoad,
      CLR => reset_IBUF_238,
      D => wireAluAcc(6),
      Q => ACC_acc(6)
    );
  ACC_acc_5 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => wireFsmAccLoad,
      CLR => reset_IBUF_238,
      D => wireAluAcc(5),
      Q => ACC_acc(5)
    );
  ACC_acc_4 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => wireFsmAccLoad,
      CLR => reset_IBUF_238,
      D => wireAluAcc(4),
      Q => ACC_acc(4)
    );
  ACC_acc_3 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => wireFsmAccLoad,
      CLR => reset_IBUF_238,
      D => wireAluAcc(3),
      Q => ACC_acc(3)
    );
  ACC_acc_2 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => wireFsmAccLoad,
      CLR => reset_IBUF_238,
      D => wireAluAcc(2),
      Q => ACC_acc(2)
    );
  ACC_acc_1 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => wireFsmAccLoad,
      CLR => reset_IBUF_238,
      D => wireAluAcc(1),
      Q => ACC_acc(1)
    );
  ACC_acc_0 : FDCE
    port map (
      C => clk_BUFGP_181,
      CE => wireFsmAccLoad,
      CLR => reset_IBUF_238,
      D => wireAluAcc(0),
      Q => ACC_acc(0)
    );
  MUXMA_outputMux21_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd5_113,
      I1 => PC_Pc(7),
      I2 => regRDM_acc(7),
      O => wireMuxMAOut(7)
    );
  MUXMA_outputMux21_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd5_113,
      I1 => PC_Pc(6),
      I2 => regRDM_acc(6),
      O => wireMuxMAOut(6)
    );
  MUXMA_outputMux21_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd5_113,
      I1 => PC_Pc(5),
      I2 => regRDM_acc(5),
      O => wireMuxMAOut(5)
    );
  MUXMA_outputMux21_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd5_113,
      I1 => PC_Pc(4),
      I2 => regRDM_acc(4),
      O => wireMuxMAOut(4)
    );
  MUXMA_outputMux21_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd5_113,
      I1 => PC_Pc(3),
      I2 => regRDM_acc(3),
      O => wireMuxMAOut(3)
    );
  MUXMA_outputMux21_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd5_113,
      I1 => PC_Pc(2),
      I2 => regRDM_acc(2),
      O => wireMuxMAOut(2)
    );
  MUXMA_outputMux21_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd5_113,
      I1 => PC_Pc(1),
      I2 => regRDM_acc(1),
      O => wireMuxMAOut(1)
    );
  MUXMA_outputMux21_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd5_113,
      I1 => PC_Pc(0),
      I2 => regRDM_acc(0),
      O => wireMuxMAOut(0)
    );
  FSMNeander_estado_FSM_Out161 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd2_108,
      I1 => FSMNeander_estado_FSM_FFd10_95,
      O => wireFsmAccLoad
    );
  FSMNeander_estado_FSM_Out151 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd13_100,
      I1 => FSMNeander_estado_FSM_FFd5_113,
      I2 => FSMNeander_estado_FSM_FFd9_120,
      O => outsinalREM_OBUF_210
    );
  PC_Pc_not00011 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd8_118,
      I1 => FSMNeander_estado_FSM_FFd1_94,
      I2 => FSMNeander_estado_FSM_FFd12_99,
      I3 => FSMNeander_estado_FSM_FFd6_114,
      O => PC_Pc_not0001
    );
  FSMNeander_estado_FSM_FFd3_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Decod_Mrom_fioSaida1,
      I1 => FSMNeander_estado_FSM_FFd4_112,
      O => FSMNeander_estado_FSM_FFd3_In
    );
  FSMNeander_estado_FSM_Out141 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd12_99,
      I1 => FSMNeander_estado_FSM_FFd7_116,
      I2 => FSMNeander_estado_FSM_FFd6_114,
      O => outsinalread_OBUF_212
    );
  FSMNeander_estado_FSM_FFd2_In1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => FSMNeander_ula2op_130,
      I1 => Decod_Mrom_fioSaida1,
      I2 => FSMNeander_estado_FSM_FFd4_112,
      O => FSMNeander_estado_FSM_FFd2_In
    );
  FSMNeander_estado_FSM_FFd6_In1 : LUT4
    generic map(
      INIT => X"3020"
    )
    port map (
      I0 => FSMNeander_ula2op_130,
      I1 => FSMNeander_j_127,
      I2 => FSMNeander_estado_FSM_FFd9_120,
      I3 => Decod_Mrom_fioSaida10,
      O => FSMNeander_estado_FSM_FFd6_In
    );
  MUXRDM_outputMux21_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd3_110,
      I1 => wireMemoryOut(7),
      I2 => FLAGNZ_fioN_91,
      O => wireMuxToRdm(7)
    );
  MUXRDM_outputMux21_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd3_110,
      I1 => wireMemoryOut(6),
      I2 => ACC_acc(6),
      O => wireMuxToRdm(6)
    );
  MUXRDM_outputMux21_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd3_110,
      I1 => wireMemoryOut(5),
      I2 => ACC_acc(5),
      O => wireMuxToRdm(5)
    );
  MUXRDM_outputMux21_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd3_110,
      I1 => wireMemoryOut(4),
      I2 => ACC_acc(4),
      O => wireMuxToRdm(4)
    );
  MUXRDM_outputMux21_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd3_110,
      I1 => wireMemoryOut(3),
      I2 => ACC_acc(3),
      O => wireMuxToRdm(3)
    );
  MUXRDM_outputMux21_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd3_110,
      I1 => wireMemoryOut(2),
      I2 => ACC_acc(2),
      O => wireMuxToRdm(2)
    );
  MUXRDM_outputMux21_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd3_110,
      I1 => wireMemoryOut(1),
      I2 => ACC_acc(1),
      O => wireMuxToRdm(1)
    );
  MUXRDM_outputMux21_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd3_110,
      I1 => wireMemoryOut(0),
      I2 => ACC_acc(0),
      O => wireMuxToRdm(0)
    );
  FSMNeander_nj1 : LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      I0 => N41,
      I1 => FLAGNZ_fioN_91,
      I2 => Decod_Mrom_fioSaida10,
      I3 => FLAGNZ_fioZ_92,
      O => FSMNeander_nj
    );
  Decod_Mrom_fioSaida12 : LUT4
    generic map(
      INIT => X"FFE1"
    )
    port map (
      I0 => regRI_acc(4),
      I1 => regRI_acc(5),
      I2 => regRI_acc(6),
      I3 => regRI_acc(7),
      O => Decod_Mrom_fioSaida
    );
  FSMNeander_estado_FSM_FFd8_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => FSMNeander_nj,
      I1 => FSMNeander_estado_FSM_N4,
      O => FSMNeander_estado_FSM_FFd8_In
    );
  FSMNeander_estado_FSM_FFd11_In : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N17,
      I1 => FSMNeander_N11,
      I2 => FSMNeander_nj,
      I3 => FSMNeander_estado_FSM_FFd12_99,
      O => FSMNeander_estado_FSM_FFd11_In_98
    );
  FSMNeander_estado_FSM_FFd13_In111 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd11_97,
      I1 => FSMNeander_ula1op,
      I2 => N40,
      O => FSMNeander_estado_FSM_N5
    );
  Decod_Mrom_fioSaida101 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => regRI_acc(4),
      I1 => regRI_acc(6),
      I2 => regRI_acc(7),
      I3 => regRI_acc(5),
      O => Decod_Mrom_fioSaida10
    );
  FSMNeander_fioUlaOP_2_Q : LUT4
    generic map(
      INIT => X"88F8"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd2_108,
      I1 => N19,
      I2 => FSMNeander_estado_FSM_FFd10_95,
      I3 => Decod_Mrom_fioSaida6,
      O => wireFsmUlaSelector(2)
    );
  Decod_Mrom_fioSaida71 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => regRI_acc(5),
      I1 => regRI_acc(4),
      I2 => regRI_acc(7),
      I3 => regRI_acc(6),
      O => Decod_Mrom_fioSaida7
    );
  Decod_Mrom_fioSaida61 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => regRI_acc(7),
      I1 => regRI_acc(4),
      I2 => regRI_acc(5),
      I3 => regRI_acc(6),
      O => Decod_Mrom_fioSaida6
    );
  Decod_Mrom_fioSaida51 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => regRI_acc(5),
      I1 => regRI_acc(4),
      I2 => regRI_acc(6),
      I3 => regRI_acc(7),
      O => Decod_Mrom_fioSaida5
    );
  ALU_isZERO_cmp_eq000028 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => wireAluAcc(2),
      I1 => wireAluAcc(3),
      I2 => wireAluAcc(4),
      I3 => wireAluAcc(5),
      O => ALU_isZERO_cmp_eq000028_66
    );
  ALU_isZERO_cmp_eq000033 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => wireAluAcc(7),
      I1 => wireAluAcc(6),
      I2 => ALU_isZERO_cmp_eq000028_66,
      I3 => ALU_isZERO_cmp_eq00003_67,
      O => wireAluZ
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_238
    );
  outsinalREM_OBUF : OBUF
    port map (
      I => outsinalREM_OBUF_210,
      O => outsinalREM
    );
  outsinalread_OBUF : OBUF
    port map (
      I => outsinalread_OBUF_212,
      O => outsinalread
    );
  outN_OBUF : OBUF
    port map (
      I => FLAGNZ_fioN_91,
      O => outN
    );
  outSinalRI_OBUF : OBUF
    port map (
      I => FSMNeander_estado_FSM_FFd11_97,
      O => outSinalRI
    );
  outZ_OBUF : OBUF
    port map (
      I => FLAGNZ_fioZ_92,
      O => outZ
    );
  outIR_7_OBUF : OBUF
    port map (
      I => regRI_acc(7),
      O => outIR(7)
    );
  outIR_6_OBUF : OBUF
    port map (
      I => regRI_acc(6),
      O => outIR(6)
    );
  outIR_5_OBUF : OBUF
    port map (
      I => regRI_acc(5),
      O => outIR(5)
    );
  outIR_4_OBUF : OBUF
    port map (
      I => regRI_acc(4),
      O => outIR(4)
    );
  outIR_3_OBUF : OBUF
    port map (
      I => regRI_acc(3),
      O => outIR(3)
    );
  outIR_2_OBUF : OBUF
    port map (
      I => regRI_acc(2),
      O => outIR(2)
    );
  outIR_1_OBUF : OBUF
    port map (
      I => regRI_acc(1),
      O => outIR(1)
    );
  outIR_0_OBUF : OBUF
    port map (
      I => regRI_acc(0),
      O => outIR(0)
    );
  outPC_7_OBUF : OBUF
    port map (
      I => PC_Pc(7),
      O => outPC(7)
    );
  outPC_6_OBUF : OBUF
    port map (
      I => PC_Pc(6),
      O => outPC(6)
    );
  outPC_5_OBUF : OBUF
    port map (
      I => PC_Pc(5),
      O => outPC(5)
    );
  outPC_4_OBUF : OBUF
    port map (
      I => PC_Pc(4),
      O => outPC(4)
    );
  outPC_3_OBUF : OBUF
    port map (
      I => PC_Pc(3),
      O => outPC(3)
    );
  outPC_2_OBUF : OBUF
    port map (
      I => PC_Pc(2),
      O => outPC(2)
    );
  outPC_1_OBUF : OBUF
    port map (
      I => PC_Pc(1),
      O => outPC(1)
    );
  outPC_0_OBUF : OBUF
    port map (
      I => PC_Pc(0),
      O => outPC(0)
    );
  outACC_7_OBUF : OBUF
    port map (
      I => FLAGNZ_fioN_91,
      O => outACC(7)
    );
  outACC_6_OBUF : OBUF
    port map (
      I => ACC_acc(6),
      O => outACC(6)
    );
  outACC_5_OBUF : OBUF
    port map (
      I => ACC_acc(5),
      O => outACC(5)
    );
  outACC_4_OBUF : OBUF
    port map (
      I => ACC_acc(4),
      O => outACC(4)
    );
  outACC_3_OBUF : OBUF
    port map (
      I => ACC_acc(3),
      O => outACC(3)
    );
  outACC_2_OBUF : OBUF
    port map (
      I => ACC_acc(2),
      O => outACC(2)
    );
  outACC_1_OBUF : OBUF
    port map (
      I => ACC_acc(1),
      O => outACC(1)
    );
  outACC_0_OBUF : OBUF
    port map (
      I => ACC_acc(0),
      O => outACC(0)
    );
  wireLSBRIOut_3_OBUF : OBUF
    port map (
      I => regRI_acc(3),
      O => wireLSBRIOut(3)
    );
  wireLSBRIOut_2_OBUF : OBUF
    port map (
      I => regRI_acc(2),
      O => wireLSBRIOut(2)
    );
  wireLSBRIOut_1_OBUF : OBUF
    port map (
      I => regRI_acc(1),
      O => wireLSBRIOut(1)
    );
  wireLSBRIOut_0_OBUF : OBUF
    port map (
      I => regRI_acc(0),
      O => wireLSBRIOut(0)
    );
  ALU_Mmux_output_0_7 : LUT4
    generic map(
      INIT => X"770F"
    )
    port map (
      I0 => ACC_acc(0),
      I1 => regRDM_acc(0),
      I2 => ALU_output_7_add0000(0),
      I3 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_0_7_23
    );
  ALU_Mmux_output_5_6 : LUT4
    generic map(
      INIT => X"88F0"
    )
    port map (
      I0 => ACC_acc(5),
      I1 => regRDM_acc(5),
      I2 => ALU_output_7_add0000(5),
      I3 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_5_6_53
    );
  ALU_Mmux_output_4_6 : LUT4
    generic map(
      INIT => X"88F0"
    )
    port map (
      I0 => ACC_acc(4),
      I1 => regRDM_acc(4),
      I2 => ALU_output_7_add0000(4),
      I3 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_4_6_47
    );
  ALU_Mmux_output_3_6 : LUT4
    generic map(
      INIT => X"88F0"
    )
    port map (
      I0 => ACC_acc(3),
      I1 => regRDM_acc(3),
      I2 => ALU_output_7_add0000(3),
      I3 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_3_6_41
    );
  ALU_Mmux_output_2_6 : LUT4
    generic map(
      INIT => X"88F0"
    )
    port map (
      I0 => ACC_acc(2),
      I1 => regRDM_acc(2),
      I2 => ALU_output_7_add0000(2),
      I3 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_2_6_35
    );
  ALU_Mmux_output_1_6 : LUT4
    generic map(
      INIT => X"88F0"
    )
    port map (
      I0 => ACC_acc(1),
      I1 => regRDM_acc(1),
      I2 => ALU_output_7_add0000(1),
      I3 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_1_6_29
    );
  ALU_Mmux_output_0_6 : LUT3
    generic map(
      INIT => X"A1"
    )
    port map (
      I0 => ACC_acc(0),
      I1 => regRDM_acc(0),
      I2 => N42,
      O => ALU_Mmux_output_0_6_22
    );
  ALU_Mmux_output_5_51 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => ACC_acc(5),
      I1 => regRDM_acc(5),
      I2 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_5_51_52
    );
  ALU_Mmux_output_4_51 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => ACC_acc(4),
      I1 => regRDM_acc(4),
      I2 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_4_51_46
    );
  ALU_Mmux_output_3_51 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => ACC_acc(3),
      I1 => regRDM_acc(3),
      I2 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_3_51_40
    );
  ALU_Mmux_output_2_51 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => ACC_acc(2),
      I1 => regRDM_acc(2),
      I2 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_2_51_34
    );
  ALU_Mmux_output_1_51 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => ACC_acc(1),
      I1 => regRDM_acc(1),
      I2 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_1_51_28
    );
  ALU_selUAL_2_Q : MUXF5
    port map (
      I0 => N25,
      I1 => N26,
      S => wireFsmUlaSelector(1),
      O => wireAluAcc(0)
    );
  ALU_selUAL_2_F : LUT4
    generic map(
      INIT => X"2075"
    )
    port map (
      I0 => wireFsmUlaSelector(2),
      I1 => wireFsmUlaSelector(0),
      I2 => regRDM_acc(0),
      I3 => ALU_Mmux_output_0_7_23,
      O => N25
    );
  ALU_selUAL_2_G : LUT4
    generic map(
      INIT => X"2075"
    )
    port map (
      I0 => wireFsmUlaSelector(2),
      I1 => wireFsmUlaSelector(0),
      I2 => ALU_output_7_mult0000(0),
      I3 => ALU_Mmux_output_0_6_22,
      O => N26
    );
  ALU_Mmux_output_7_51 : LUT3
    generic map(
      INIT => X"3E"
    )
    port map (
      I0 => regRDM_acc(7),
      I1 => FLAGNZ_fioN_91,
      I2 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_7_51_64
    );
  ALU_Mmux_output_6_51 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => ACC_acc(6),
      I1 => regRDM_acc(6),
      I2 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_6_51_58
    );
  FSMNeander_ula2op : LUT4
    generic map(
      INIT => X"0B0C"
    )
    port map (
      I0 => regRI_acc(4),
      I1 => regRI_acc(5),
      I2 => regRI_acc(7),
      I3 => regRI_acc(6),
      O => FSMNeander_ula2op_130
    );
  ALU_Mmux_output_7_6 : LUT4
    generic map(
      INIT => X"88F0"
    )
    port map (
      I0 => regRDM_acc(7),
      I1 => FLAGNZ_fioN_91,
      I2 => ALU_output_7_add0000(7),
      I3 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_7_6_65
    );
  ALU_Mmux_output_6_6 : LUT4
    generic map(
      INIT => X"88F0"
    )
    port map (
      I0 => ACC_acc(6),
      I1 => regRDM_acc(6),
      I2 => ALU_output_7_add0000(6),
      I3 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_6_6_59
    );
  wireWriteMemory_0_and00001 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd12_99,
      I1 => FSMNeander_estado_FSM_FFd7_116,
      I2 => FSMNeander_estado_FSM_FFd3_110,
      I3 => FSMNeander_estado_FSM_FFd6_114,
      O => wireWriteMemory
    );
  FSMNeander_estado_cmp_eq00001150 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => regRI_acc(6),
      I1 => regRI_acc(5),
      I2 => regRI_acc(7),
      I3 => regRI_acc(4),
      O => FSMNeander_N11
    );
  FSMNeander_fioUlaOP_1_25_SW0 : LUT4
    generic map(
      INIT => X"0090"
    )
    port map (
      I0 => regRI_acc(5),
      I1 => regRI_acc(4),
      I2 => regRI_acc(6),
      I3 => regRI_acc(7),
      O => N31
    );
  FSMNeander_fioUlaOP_1_25 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd2_108,
      I1 => FSMNeander_estado_FSM_FFd10_95,
      I2 => N31,
      I3 => N43,
      O => wireFsmUlaSelector(1)
    );
  FSMNeander_estado_FSM_FFd13_In71_SW1 : LUT4
    generic map(
      INIT => X"EF00"
    )
    port map (
      I0 => regRI_acc(4),
      I1 => regRI_acc(6),
      I2 => regRI_acc(7),
      I3 => N27,
      O => N33
    );
  FSMNeander_j : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => regRI_acc(7),
      I1 => regRI_acc(6),
      I2 => N44,
      O => FSMNeander_j_127
    );
  FSMNeander_estado_FSM_FFd7_In1 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => regRI_acc(6),
      I1 => N35,
      I2 => regRI_acc(7),
      I3 => FSMNeander_estado_FSM_FFd9_120,
      O => FSMNeander_estado_FSM_FFd7_In
    );
  FSMNeander_estado_FSM_FFd10_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => FSMNeander_ula1op,
      I1 => FSMNeander_estado_FSM_FFd11_97,
      O => FSMNeander_estado_FSM_FFd10_In
    );
  FSMNeander_estado_FSM_FFd11_In1_SW1 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd11_97,
      I1 => Decod_Mrom_fioSaida1,
      I2 => FSMNeander_ula1op,
      I3 => FSMNeander_ula2op_130,
      O => N37
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_181
    );
  wireFsmPcLoad_inv1_INV_0 : INV
    port map (
      I => FSMNeander_estado_FSM_FFd1_94,
      O => wireFsmPcLoad_inv
    );
  XST_VCC : VCC
    port map (
      P => N39
    );
  FSMNeander_estado_FSM_FFd13_In61 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd10_95,
      I1 => FSMNeander_estado_FSM_FFd3_110,
      I2 => FSMNeander_estado_FSM_FFd2_108,
      I3 => FSMNeander_estado_FSM_FFd1_94,
      O => FSMNeander_estado_FSM_FFd13_In61_105
    );
  FSMNeander_estado_FSM_FFd13_In6_f5 : MUXF5
    port map (
      I0 => FSMNeander_estado_FSM_FFd13_In61_105,
      I1 => N39,
      S => FSMNeander_estado_FSM_FFd8_118,
      O => FSMNeander_estado_FSM_FFd13_In6
    );
  FSMNeander_estado_FSM_FFd13_In1041 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => FSMNeander_ula2op_130,
      I1 => FSMNeander_estado_FSM_FFd13_In6,
      O => FSMNeander_estado_FSM_FFd13_In104
    );
  FSMNeander_estado_FSM_FFd13_In1042 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd4_112,
      I1 => Decod_Mrom_fioSaida1,
      I2 => FSMNeander_ula2op_130,
      I3 => FSMNeander_estado_FSM_FFd13_In6,
      O => FSMNeander_estado_FSM_FFd13_In1041_103
    );
  FSMNeander_estado_FSM_FFd13_In104_f5 : MUXF5
    port map (
      I0 => FSMNeander_estado_FSM_FFd13_In1041_103,
      I1 => FSMNeander_estado_FSM_FFd13_In104,
      S => N33,
      O => FSMNeander_estado_FSM_FFd13_In
    );
  FSMNeander_fioUlaOP_0_SW01 : LUT4
    generic map(
      INIT => X"B090"
    )
    port map (
      I0 => regRI_acc(6),
      I1 => regRI_acc(5),
      I2 => FSMNeander_estado_FSM_FFd2_108,
      I3 => regRI_acc(4),
      O => FSMNeander_fioUlaOP_0_SW0
    );
  FSMNeander_fioUlaOP_0_SW0_f5 : MUXF5
    port map (
      I0 => FSMNeander_fioUlaOP_0_SW0,
      I1 => FSMNeander_estado_FSM_FFd2_108,
      S => regRI_acc(7),
      O => N21
    );
  FSMNeander_estado_FSM_FFd13_In71_SW01 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => FLAGNZ_fioN_91,
      I1 => Decod_Mrom_fioSaida9,
      O => FSMNeander_estado_FSM_FFd13_In71_SW0
    );
  FSMNeander_estado_FSM_FFd13_In71_SW02 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => Decod_Mrom_fioSaida,
      I1 => FSMNeander_estado_FSM_N5,
      I2 => Decod_Mrom_fioSaida9,
      I3 => FSMNeander_N11,
      O => FSMNeander_estado_FSM_FFd13_In71_SW01_107
    );
  FSMNeander_estado_FSM_FFd13_In71_SW0_f5 : MUXF5
    port map (
      I0 => FSMNeander_estado_FSM_FFd13_In71_SW01_107,
      I1 => FSMNeander_estado_FSM_FFd13_In71_SW0,
      S => FSMNeander_estado_FSM_FFd9_120,
      O => N27
    );
  FSMNeander_estado_FSM_FFd9_In1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd11_97,
      I1 => FSMNeander_ula1op,
      O => FSMNeander_estado_FSM_FFd9_In1_122
    );
  FSMNeander_estado_FSM_FFd9_In2 : LUT4
    generic map(
      INIT => X"3020"
    )
    port map (
      I0 => Decod_Mrom_fioSaida1,
      I1 => FSMNeander_ula1op,
      I2 => FSMNeander_estado_FSM_FFd11_97,
      I3 => FSMNeander_j_127,
      O => FSMNeander_estado_FSM_FFd9_In2_123
    );
  FSMNeander_estado_FSM_FFd9_In_f5 : MUXF5
    port map (
      I0 => FSMNeander_estado_FSM_FFd9_In2_123,
      I1 => FSMNeander_estado_FSM_FFd9_In1_122,
      S => FSMNeander_ula2op_130,
      O => FSMNeander_estado_FSM_FFd9_In
    );
  Decod_Mrom_fioSaida112 : LUT4_D
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => regRI_acc(5),
      I1 => regRI_acc(4),
      I2 => regRI_acc(6),
      I3 => regRI_acc(7),
      LO => N40,
      O => Decod_Mrom_fioSaida1
    );
  Decod_Mrom_fioSaida91 : LUT4_D
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => regRI_acc(5),
      I1 => regRI_acc(6),
      I2 => regRI_acc(4),
      I3 => regRI_acc(7),
      LO => N41,
      O => Decod_Mrom_fioSaida9
    );
  FSMNeander_fioUlaOP_0_Q : LUT4_D
    generic map(
      INIT => X"FBAA"
    )
    port map (
      I0 => FSMNeander_estado_FSM_FFd10_95,
      I1 => Decod_Mrom_fioSaida7,
      I2 => Decod_Mrom_fioSaida5,
      I3 => N21,
      LO => N42,
      O => wireFsmUlaSelector(0)
    );
  ALU_isZERO_cmp_eq00003 : LUT2_L
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wireAluAcc(1),
      I1 => wireAluAcc(0),
      LO => ALU_isZERO_cmp_eq00003_67
    );
  FSMNeander_ula1op1 : LUT4_D
    generic map(
      INIT => X"0820"
    )
    port map (
      I0 => regRI_acc(5),
      I1 => regRI_acc(4),
      I2 => regRI_acc(6),
      I3 => regRI_acc(7),
      LO => N43,
      O => FSMNeander_ula1op
    );
  FSMNeander_fioUlaOP_2_SW0 : LUT4_L
    generic map(
      INIT => X"FF9D"
    )
    port map (
      I0 => regRI_acc(6),
      I1 => regRI_acc(5),
      I2 => regRI_acc(4),
      I3 => regRI_acc(7),
      LO => N19
    );
  FSMNeander_estado_FSM_FFd11_In_SW0 : LUT4_L
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => FSMNeander_ula2op_130,
      I1 => FSMNeander_j_127,
      I2 => Decod_Mrom_fioSaida,
      I3 => FSMNeander_estado_FSM_N5,
      LO => N17
    );
  FSMNeander_j_SW0 : LUT4_D
    generic map(
      INIT => X"A2F2"
    )
    port map (
      I0 => regRI_acc(5),
      I1 => FLAGNZ_fioZ_92,
      I2 => regRI_acc(4),
      I3 => FLAGNZ_fioN_91,
      LO => N44,
      O => N35
    );
  FSMNeander_estado_FSM_FFd11_In1 : LUT4_L
    generic map(
      INIT => X"3331"
    )
    port map (
      I0 => regRI_acc(7),
      I1 => N37,
      I2 => regRI_acc(6),
      I3 => N35,
      LO => FSMNeander_estado_FSM_N4
    );
  MEMORY : memoryNeander
    port map (
      clka => clk_BUFGP_181,
      clkb => clk_BUFGP_181,
      rstb => reset_IBUF_238,
      wea(0) => wireWriteMemory,
      addra(7) => regREM_acc(7),
      addra(6) => regREM_acc(6),
      addra(5) => regREM_acc(5),
      addra(4) => regREM_acc(4),
      addra(3) => regREM_acc(3),
      addra(2) => regREM_acc(2),
      addra(1) => regREM_acc(1),
      addra(0) => regREM_acc(0),
      dina(7) => regRDM_acc(7),
      dina(6) => regRDM_acc(6),
      dina(5) => regRDM_acc(5),
      dina(4) => regRDM_acc(4),
      dina(3) => regRDM_acc(3),
      dina(2) => regRDM_acc(2),
      dina(1) => regRDM_acc(1),
      dina(0) => regRDM_acc(0),
      addrb(7) => regREM_acc(7),
      addrb(6) => regREM_acc(6),
      addrb(5) => regREM_acc(5),
      addrb(4) => regREM_acc(4),
      addrb(3) => regREM_acc(3),
      addrb(2) => regREM_acc(2),
      addrb(1) => regREM_acc(1),
      addrb(0) => regREM_acc(0),
      doutb(7) => wireMemoryOut(7),
      doutb(6) => wireMemoryOut(6),
      doutb(5) => wireMemoryOut(5),
      doutb(4) => wireMemoryOut(4),
      doutb(3) => wireMemoryOut(3),
      doutb(2) => wireMemoryOut(2),
      doutb(1) => wireMemoryOut(1),
      doutb(0) => wireMemoryOut(0)
    );

end Structure;

-- synthesis translate_on
