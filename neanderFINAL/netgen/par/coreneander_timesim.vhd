--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: coreneander_timesim.vhd
-- /___/   /\     Timestamp: Wed Jun 07 21:46:57 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf coreneander.pcf -rpw 100 -tpw 0 -ar Structure -tm coreneander -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim coreneander.ncd coreneander_timesim.vhd 
-- Device	: 3s100evq100-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: coreneander.ncd
-- Output file	: C:\Users\Lucas\Desktop\Pastas\UFRGS\2017\01\Sistemas Digitais\Trabalho\neanderFINAL\netgen\par\coreneander_timesim.vhd
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity coreneander is
  port (
    clk : in STD_LOGIC := 'X'; 
    rstmem : in STD_LOGIC := 'X'; 
    outsinalREM : out STD_LOGIC; 
    reset : in STD_LOGIC := 'X'; 
    outsinalread : out STD_LOGIC; 
    selmuxrdm : out STD_LOGIC; 
    outpccarga : out STD_LOGIC; 
    outRIcarga : out STD_LOGIC; 
    outN : out STD_LOGIC; 
    outSinalRI : out STD_LOGIC; 
    outZ : out STD_LOGIC; 
    outIR : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    outPC : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    saidaRDM : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    outACC : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    outmemoria : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end coreneander;

architecture Structure of coreneander is
  signal FSMNeander_estado_FSM_FFd1_998 : STD_LOGIC; 
  signal PC_Pc_not0001_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal reset_IBUF_1001 : STD_LOGIC; 
  signal PC_Mcount_Pc_cy_1_Q : STD_LOGIC; 
  signal PC_Mcount_Pc_cy_3_Q : STD_LOGIC; 
  signal ALU_Madd_output_7_add0000_cy_1_Q : STD_LOGIC; 
  signal ALU_Madd_output_7_add0000_cy_3_Q : STD_LOGIC; 
  signal FLAGNZ_fioN_1038 : STD_LOGIC; 
  signal wireFsmUlaSelector_1_0 : STD_LOGIC; 
  signal wireFsmUlaSelector_2_0 : STD_LOGIC; 
  signal wireFsmAccLoad_0 : STD_LOGIC; 
  signal ALU_Mmux_output_4_3_f5 : STD_LOGIC; 
  signal ALU_Mmux_output_4_4_f5 : STD_LOGIC; 
  signal ALU_Mmux_output_1_3_f5 : STD_LOGIC; 
  signal ALU_Mmux_output_1_4_f5 : STD_LOGIC; 
  signal ALU_Mmux_output_6_3_f5 : STD_LOGIC; 
  signal ALU_Mmux_output_6_4_f5 : STD_LOGIC; 
  signal ALU_Mmux_output_3_3_f5 : STD_LOGIC; 
  signal ALU_Mmux_output_3_4_f5 : STD_LOGIC; 
  signal ALU_Mmux_output_5_3_f5 : STD_LOGIC; 
  signal ALU_Mmux_output_5_4_f5 : STD_LOGIC; 
  signal ALU_Mmux_output_2_3_f5 : STD_LOGIC; 
  signal ALU_Mmux_output_2_4_f5 : STD_LOGIC; 
  signal ALU_Mmux_output_7_3_f5 : STD_LOGIC; 
  signal ALU_Mmux_output_7_4_f5 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd4_1073 : STD_LOGIC; 
  signal outSinalRI_OBUF_0 : STD_LOGIC; 
  signal outmemoria_0_OBUF_1077 : STD_LOGIC; 
  signal outmemoria_1_OBUF_1079 : STD_LOGIC; 
  signal outmemoria_2_OBUF_1080 : STD_LOGIC; 
  signal outmemoria_3_OBUF_1081 : STD_LOGIC; 
  signal outmemoria_4_OBUF_1082 : STD_LOGIC; 
  signal outmemoria_5_OBUF_1083 : STD_LOGIC; 
  signal outmemoria_6_OBUF_1085 : STD_LOGIC; 
  signal outmemoria_7_OBUF_1087 : STD_LOGIC; 
  signal FLAGNZ_fioZ_1089 : STD_LOGIC; 
  signal rstmem_IBUF_1091 : STD_LOGIC; 
  signal outsinalREM_OBUF_1092 : STD_LOGIC; 
  signal wireWriteMemory_0 : STD_LOGIC; 
  signal ALU_Mmux_output_0_6_0 : STD_LOGIC; 
  signal ALU_Mmux_output_0_7_0 : STD_LOGIC; 
  signal wireDecFsmOut_15_Q : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd17_1108 : STD_LOGIC; 
  signal N16_0 : STD_LOGIC; 
  signal FSMNeander_nj : STD_LOGIC; 
  signal FSMNeander_ula1op : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd16_1112 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd15_1113 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd3_1114 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd2_1115 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd14_1116 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd12_1117 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd18_In6 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd8_1119 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd11_1120 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd7_1121 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd13_1122 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd18_1123 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd10_1126 : STD_LOGIC; 
  signal FSMNeander_fioUlaOP_2_SW0_O : STD_LOGIC; 
  signal wireDecFsmOut_6_0 : STD_LOGIC; 
  signal N34_0 : STD_LOGIC; 
  signal wireDecFsmOut_7_0 : STD_LOGIC; 
  signal wireDecFsmOut_5_0 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd13_In14_0 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd13_In28_SW0_O : STD_LOGIC; 
  signal FSMNeander_j_1134 : STD_LOGIC; 
  signal FSMNeander_ula2op_0 : STD_LOGIC; 
  signal wireDecFsmOut_1_Q : STD_LOGIC; 
  signal ALU_isZERO_cmp_eq000028_0 : STD_LOGIC; 
  signal ALU_isZERO_cmp_eq00003_O : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd5_1139 : STD_LOGIC; 
  signal wireMuxToRdm_1_0 : STD_LOGIC; 
  signal wireMuxToRdm_0_0 : STD_LOGIC; 
  signal wireMuxToRdm_3_0 : STD_LOGIC; 
  signal wireMuxToRdm_2_0 : STD_LOGIC; 
  signal wireMuxToRdm_5_0 : STD_LOGIC; 
  signal wireMuxToRdm_4_0 : STD_LOGIC; 
  signal wireMuxToRdm_7_0 : STD_LOGIC; 
  signal wireMuxToRdm_6_0 : STD_LOGIC; 
  signal wireLoadRdm_0 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd9_1149 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd6_1150 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd18_In27_O : STD_LOGIC; 
  signal PC_Pc_0_DXMUX_1201 : STD_LOGIC; 
  signal PC_Pc_0_XORF_1199 : STD_LOGIC; 
  signal PC_Pc_0_CYINIT_1198 : STD_LOGIC; 
  signal PC_Pc_0_CYSELF_1191 : STD_LOGIC; 
  signal PC_Pc_0_DYMUX_1181 : STD_LOGIC; 
  signal PC_Pc_0_XORG_1179 : STD_LOGIC; 
  signal PC_Pc_0_CYMUXG_1178 : STD_LOGIC; 
  signal PC_Mcount_Pc_cy_0_Q : STD_LOGIC; 
  signal PC_Pc_0_LOGIC_ZERO_1176 : STD_LOGIC; 
  signal PC_Pc_0_CYSELG_1169 : STD_LOGIC; 
  signal PC_Pc_0_SRINV_1167 : STD_LOGIC; 
  signal PC_Pc_0_CLKINV_1166 : STD_LOGIC; 
  signal PC_Pc_0_CEINV_1165 : STD_LOGIC; 
  signal PC_Pc_2_DXMUX_1261 : STD_LOGIC; 
  signal PC_Pc_2_XORF_1259 : STD_LOGIC; 
  signal PC_Pc_2_CYINIT_1258 : STD_LOGIC; 
  signal PC_Pc_2_DYMUX_1243 : STD_LOGIC; 
  signal PC_Pc_2_XORG_1241 : STD_LOGIC; 
  signal PC_Mcount_Pc_cy_2_Q : STD_LOGIC; 
  signal PC_Pc_2_CYSELF_1239 : STD_LOGIC; 
  signal PC_Pc_2_CYMUXFAST_1238 : STD_LOGIC; 
  signal PC_Pc_2_CYAND_1237 : STD_LOGIC; 
  signal PC_Pc_2_FASTCARRY_1236 : STD_LOGIC; 
  signal PC_Pc_2_CYMUXG2_1235 : STD_LOGIC; 
  signal PC_Pc_2_CYMUXF2_1234 : STD_LOGIC; 
  signal PC_Pc_2_LOGIC_ZERO_1233 : STD_LOGIC; 
  signal PC_Pc_2_CYSELG_1226 : STD_LOGIC; 
  signal PC_Pc_2_SRINV_1224 : STD_LOGIC; 
  signal PC_Pc_2_CLKINV_1223 : STD_LOGIC; 
  signal PC_Pc_2_CEINV_1222 : STD_LOGIC; 
  signal PC_Pc_4_DXMUX_1321 : STD_LOGIC; 
  signal PC_Pc_4_XORF_1319 : STD_LOGIC; 
  signal PC_Pc_4_CYINIT_1318 : STD_LOGIC; 
  signal PC_Pc_4_DYMUX_1303 : STD_LOGIC; 
  signal PC_Pc_4_XORG_1301 : STD_LOGIC; 
  signal PC_Mcount_Pc_cy_4_Q : STD_LOGIC; 
  signal PC_Pc_4_CYSELF_1299 : STD_LOGIC; 
  signal PC_Pc_4_CYMUXFAST_1298 : STD_LOGIC; 
  signal PC_Pc_4_CYAND_1297 : STD_LOGIC; 
  signal PC_Pc_4_FASTCARRY_1296 : STD_LOGIC; 
  signal PC_Pc_4_CYMUXG2_1295 : STD_LOGIC; 
  signal PC_Pc_4_CYMUXF2_1294 : STD_LOGIC; 
  signal PC_Pc_4_LOGIC_ZERO_1293 : STD_LOGIC; 
  signal PC_Pc_4_CYSELG_1286 : STD_LOGIC; 
  signal PC_Pc_4_SRINV_1284 : STD_LOGIC; 
  signal PC_Pc_4_CLKINV_1283 : STD_LOGIC; 
  signal PC_Pc_4_CEINV_1282 : STD_LOGIC; 
  signal PC_Pc_6_DXMUX_1374 : STD_LOGIC; 
  signal PC_Pc_6_XORF_1372 : STD_LOGIC; 
  signal PC_Pc_6_LOGIC_ZERO_1371 : STD_LOGIC; 
  signal PC_Pc_6_CYINIT_1370 : STD_LOGIC; 
  signal PC_Pc_6_CYSELF_1363 : STD_LOGIC; 
  signal PC_Pc_6_DYMUX_1354 : STD_LOGIC; 
  signal PC_Pc_6_XORG_1352 : STD_LOGIC; 
  signal PC_Mcount_Pc_cy_6_Q : STD_LOGIC; 
  signal PC_Pc_6_SRINV_1343 : STD_LOGIC; 
  signal PC_Pc_6_CLKINV_1342 : STD_LOGIC; 
  signal PC_Pc_6_CEINV_1341 : STD_LOGIC; 
  signal ALU_output_7_add0000_0_XORF_1416 : STD_LOGIC; 
  signal ALU_output_7_add0000_0_CYINIT_1415 : STD_LOGIC; 
  signal ALU_output_7_add0000_0_CY0F_1414 : STD_LOGIC; 
  signal ALU_output_7_add0000_0_CYSELF_1406 : STD_LOGIC; 
  signal ALU_output_7_add0000_0_BXINV_1404 : STD_LOGIC; 
  signal ALU_output_7_add0000_0_XORG_1402 : STD_LOGIC; 
  signal ALU_output_7_add0000_0_CYMUXG_1401 : STD_LOGIC; 
  signal ALU_Madd_output_7_add0000_cy_0_Q : STD_LOGIC; 
  signal ALU_output_7_add0000_0_CY0G_1399 : STD_LOGIC; 
  signal ALU_output_7_add0000_0_CYSELG_1391 : STD_LOGIC; 
  signal ALU_output_7_add0000_2_XORF_1455 : STD_LOGIC; 
  signal ALU_output_7_add0000_2_CYINIT_1454 : STD_LOGIC; 
  signal ALU_output_7_add0000_2_CY0F_1453 : STD_LOGIC; 
  signal ALU_output_7_add0000_2_XORG_1443 : STD_LOGIC; 
  signal ALU_Madd_output_7_add0000_cy_2_Q : STD_LOGIC; 
  signal ALU_output_7_add0000_2_CYSELF_1441 : STD_LOGIC; 
  signal ALU_output_7_add0000_2_CYMUXFAST_1440 : STD_LOGIC; 
  signal ALU_output_7_add0000_2_CYAND_1439 : STD_LOGIC; 
  signal ALU_output_7_add0000_2_FASTCARRY_1438 : STD_LOGIC; 
  signal ALU_output_7_add0000_2_CYMUXG2_1437 : STD_LOGIC; 
  signal ALU_output_7_add0000_2_CYMUXF2_1436 : STD_LOGIC; 
  signal ALU_output_7_add0000_2_CY0G_1435 : STD_LOGIC; 
  signal ALU_output_7_add0000_2_CYSELG_1427 : STD_LOGIC; 
  signal ALU_output_7_add0000_4_XORF_1494 : STD_LOGIC; 
  signal ALU_output_7_add0000_4_CYINIT_1493 : STD_LOGIC; 
  signal ALU_output_7_add0000_4_CY0F_1492 : STD_LOGIC; 
  signal ALU_output_7_add0000_4_XORG_1482 : STD_LOGIC; 
  signal ALU_Madd_output_7_add0000_cy_4_Q : STD_LOGIC; 
  signal ALU_output_7_add0000_4_CYSELF_1480 : STD_LOGIC; 
  signal ALU_output_7_add0000_4_CYMUXFAST_1479 : STD_LOGIC; 
  signal ALU_output_7_add0000_4_CYAND_1478 : STD_LOGIC; 
  signal ALU_output_7_add0000_4_FASTCARRY_1477 : STD_LOGIC; 
  signal ALU_output_7_add0000_4_CYMUXG2_1476 : STD_LOGIC; 
  signal ALU_output_7_add0000_4_CYMUXF2_1475 : STD_LOGIC; 
  signal ALU_output_7_add0000_4_CY0G_1474 : STD_LOGIC; 
  signal ALU_output_7_add0000_4_CYSELG_1466 : STD_LOGIC; 
  signal ALU_output_7_add0000_6_XORF_1525 : STD_LOGIC; 
  signal ALU_output_7_add0000_6_CYINIT_1524 : STD_LOGIC; 
  signal ALU_output_7_add0000_6_CY0F_1523 : STD_LOGIC; 
  signal ALU_output_7_add0000_6_CYSELF_1515 : STD_LOGIC; 
  signal ALU_output_7_add0000_6_XORG_1512 : STD_LOGIC; 
  signal ALU_Madd_output_7_add0000_cy_6_Q : STD_LOGIC; 
  signal ACC_acc_4_F5MUX_1572 : STD_LOGIC; 
  signal ALU_Mmux_output_4_4_1570 : STD_LOGIC; 
  signal ACC_acc_4_BXINV_1564 : STD_LOGIC; 
  signal ACC_acc_4_DYMUX_1556 : STD_LOGIC; 
  signal ACC_acc_4_GYMUX_1555 : STD_LOGIC; 
  signal ACC_acc_4_F6MUX_1554 : STD_LOGIC; 
  signal ALU_Mmux_output_4_5_1552 : STD_LOGIC; 
  signal ACC_acc_4_BYINV_1545 : STD_LOGIC; 
  signal ACC_acc_4_CLKINV_1543 : STD_LOGIC; 
  signal ACC_acc_4_CEINV_1542 : STD_LOGIC; 
  signal ALU_Mmux_output_4_4_f5_F5MUX_1596 : STD_LOGIC; 
  signal ALU_Mmux_output_4_51_1594 : STD_LOGIC; 
  signal ALU_Mmux_output_4_4_f5_BXINV_1588 : STD_LOGIC; 
  signal ALU_Mmux_output_4_6_1586 : STD_LOGIC; 
  signal ACC_acc_1_F5MUX_1642 : STD_LOGIC; 
  signal ALU_Mmux_output_1_4_1640 : STD_LOGIC; 
  signal ACC_acc_1_BXINV_1634 : STD_LOGIC; 
  signal ACC_acc_1_DYMUX_1626 : STD_LOGIC; 
  signal ACC_acc_1_GYMUX_1625 : STD_LOGIC; 
  signal ACC_acc_1_F6MUX_1624 : STD_LOGIC; 
  signal ALU_Mmux_output_1_5_1622 : STD_LOGIC; 
  signal ACC_acc_1_BYINV_1615 : STD_LOGIC; 
  signal ACC_acc_1_CLKINV_1613 : STD_LOGIC; 
  signal ACC_acc_1_CEINV_1612 : STD_LOGIC; 
  signal ALU_Mmux_output_1_4_f5_F5MUX_1666 : STD_LOGIC; 
  signal ALU_Mmux_output_1_51_1664 : STD_LOGIC; 
  signal ALU_Mmux_output_1_4_f5_BXINV_1658 : STD_LOGIC; 
  signal ALU_Mmux_output_1_6_1656 : STD_LOGIC; 
  signal ACC_acc_6_FFY_RST : STD_LOGIC; 
  signal ACC_acc_6_F5MUX_1712 : STD_LOGIC; 
  signal ALU_Mmux_output_6_4_1710 : STD_LOGIC; 
  signal ACC_acc_6_BXINV_1704 : STD_LOGIC; 
  signal ACC_acc_6_DYMUX_1696 : STD_LOGIC; 
  signal ACC_acc_6_GYMUX_1695 : STD_LOGIC; 
  signal ACC_acc_6_F6MUX_1694 : STD_LOGIC; 
  signal ALU_Mmux_output_6_5_1692 : STD_LOGIC; 
  signal ACC_acc_6_BYINV_1685 : STD_LOGIC; 
  signal ACC_acc_6_CLKINV_1683 : STD_LOGIC; 
  signal ACC_acc_6_CEINV_1682 : STD_LOGIC; 
  signal ALU_Mmux_output_6_4_f5_F5MUX_1736 : STD_LOGIC; 
  signal ALU_Mmux_output_6_51_1734 : STD_LOGIC; 
  signal ALU_Mmux_output_6_4_f5_BXINV_1728 : STD_LOGIC; 
  signal ALU_Mmux_output_6_6_1726 : STD_LOGIC; 
  signal ACC_acc_3_F5MUX_1782 : STD_LOGIC; 
  signal ALU_Mmux_output_3_4_1780 : STD_LOGIC; 
  signal ACC_acc_3_BXINV_1774 : STD_LOGIC; 
  signal ACC_acc_3_DYMUX_1766 : STD_LOGIC; 
  signal ACC_acc_3_GYMUX_1765 : STD_LOGIC; 
  signal ACC_acc_3_F6MUX_1764 : STD_LOGIC; 
  signal ALU_Mmux_output_3_5_1762 : STD_LOGIC; 
  signal ACC_acc_3_BYINV_1755 : STD_LOGIC; 
  signal ACC_acc_3_CLKINV_1753 : STD_LOGIC; 
  signal ACC_acc_3_CEINV_1752 : STD_LOGIC; 
  signal ALU_Mmux_output_3_4_f5_F5MUX_1806 : STD_LOGIC; 
  signal ALU_Mmux_output_3_51_1804 : STD_LOGIC; 
  signal ALU_Mmux_output_3_4_f5_BXINV_1798 : STD_LOGIC; 
  signal ALU_Mmux_output_3_6_1796 : STD_LOGIC; 
  signal ACC_acc_5_F5MUX_1852 : STD_LOGIC; 
  signal ALU_Mmux_output_5_4_1850 : STD_LOGIC; 
  signal ACC_acc_5_BXINV_1844 : STD_LOGIC; 
  signal ACC_acc_5_DYMUX_1836 : STD_LOGIC; 
  signal ACC_acc_5_GYMUX_1835 : STD_LOGIC; 
  signal ACC_acc_5_F6MUX_1834 : STD_LOGIC; 
  signal ALU_Mmux_output_5_5_1832 : STD_LOGIC; 
  signal ACC_acc_5_BYINV_1825 : STD_LOGIC; 
  signal ACC_acc_5_CLKINV_1823 : STD_LOGIC; 
  signal ACC_acc_5_CEINV_1822 : STD_LOGIC; 
  signal ALU_Mmux_output_5_4_f5_F5MUX_1876 : STD_LOGIC; 
  signal ALU_Mmux_output_5_51_1874 : STD_LOGIC; 
  signal ALU_Mmux_output_5_4_f5_BXINV_1868 : STD_LOGIC; 
  signal ALU_Mmux_output_5_6_1866 : STD_LOGIC; 
  signal ACC_acc_2_F5MUX_1922 : STD_LOGIC; 
  signal ALU_Mmux_output_2_4_1920 : STD_LOGIC; 
  signal ACC_acc_2_BXINV_1914 : STD_LOGIC; 
  signal ACC_acc_2_DYMUX_1906 : STD_LOGIC; 
  signal ACC_acc_2_GYMUX_1905 : STD_LOGIC; 
  signal ACC_acc_2_F6MUX_1904 : STD_LOGIC; 
  signal ALU_Mmux_output_2_5_1902 : STD_LOGIC; 
  signal ACC_acc_2_BYINV_1895 : STD_LOGIC; 
  signal ACC_acc_2_CLKINV_1893 : STD_LOGIC; 
  signal ACC_acc_2_CEINV_1892 : STD_LOGIC; 
  signal ALU_Mmux_output_2_4_f5_F5MUX_1946 : STD_LOGIC; 
  signal ALU_Mmux_output_2_51_1944 : STD_LOGIC; 
  signal ALU_Mmux_output_2_4_f5_BXINV_1938 : STD_LOGIC; 
  signal ALU_Mmux_output_2_6_1936 : STD_LOGIC; 
  signal FLAGNZ_fioN_FFY_RST : STD_LOGIC; 
  signal FLAGNZ_fioN_F5MUX_1992 : STD_LOGIC; 
  signal ALU_Mmux_output_7_4_1990 : STD_LOGIC; 
  signal FLAGNZ_fioN_BXINV_1984 : STD_LOGIC; 
  signal FLAGNZ_fioN_DYMUX_1976 : STD_LOGIC; 
  signal FLAGNZ_fioN_GYMUX_1975 : STD_LOGIC; 
  signal FLAGNZ_fioN_F6MUX_1974 : STD_LOGIC; 
  signal ALU_Mmux_output_7_5_1972 : STD_LOGIC; 
  signal FLAGNZ_fioN_BYINV_1965 : STD_LOGIC; 
  signal FLAGNZ_fioN_CLKINV_1963 : STD_LOGIC; 
  signal FLAGNZ_fioN_CEINV_1962 : STD_LOGIC; 
  signal ALU_Mmux_output_7_4_f5_F5MUX_2016 : STD_LOGIC; 
  signal ALU_Mmux_output_7_51_2014 : STD_LOGIC; 
  signal ALU_Mmux_output_7_4_f5_BXINV_2008 : STD_LOGIC; 
  signal ALU_Mmux_output_7_6_2006 : STD_LOGIC; 
  signal selmuxrdm_O : STD_LOGIC; 
  signal outsinalread_O : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal outRIcarga_O : STD_LOGIC; 
  signal outmemoria_0_O : STD_LOGIC; 
  signal outpccarga_O : STD_LOGIC; 
  signal outmemoria_1_O : STD_LOGIC; 
  signal outPC_0_O : STD_LOGIC; 
  signal outN_O : STD_LOGIC; 
  signal outmemoria_2_O : STD_LOGIC; 
  signal outPC_1_O : STD_LOGIC; 
  signal outmemoria_3_O : STD_LOGIC; 
  signal outPC_2_O : STD_LOGIC; 
  signal outmemoria_4_O : STD_LOGIC; 
  signal outPC_3_O : STD_LOGIC; 
  signal outmemoria_5_O : STD_LOGIC; 
  signal outPC_4_O : STD_LOGIC; 
  signal outIR_0_O : STD_LOGIC; 
  signal outmemoria_6_O : STD_LOGIC; 
  signal outPC_5_O : STD_LOGIC; 
  signal outIR_1_O : STD_LOGIC; 
  signal outACC_0_O : STD_LOGIC; 
  signal outmemoria_7_O : STD_LOGIC; 
  signal outPC_6_O : STD_LOGIC; 
  signal outIR_2_O : STD_LOGIC; 
  signal outACC_1_O : STD_LOGIC; 
  signal outZ_O : STD_LOGIC; 
  signal outPC_7_O : STD_LOGIC; 
  signal outIR_3_O : STD_LOGIC; 
  signal outACC_2_O : STD_LOGIC; 
  signal outACC_3_O : STD_LOGIC; 
  signal outACC_4_O : STD_LOGIC; 
  signal outACC_5_O : STD_LOGIC; 
  signal outACC_6_O : STD_LOGIC; 
  signal outACC_7_O : STD_LOGIC; 
  signal reset_INBUF : STD_LOGIC; 
  signal saidaRDM_0_O : STD_LOGIC; 
  signal saidaRDM_1_O : STD_LOGIC; 
  signal saidaRDM_2_O : STD_LOGIC; 
  signal saidaRDM_3_O : STD_LOGIC; 
  signal outSinalRI_O : STD_LOGIC; 
  signal saidaRDM_4_O : STD_LOGIC; 
  signal saidaRDM_5_O : STD_LOGIC; 
  signal saidaRDM_6_O : STD_LOGIC; 
  signal rstmem_INBUF : STD_LOGIC; 
  signal saidaRDM_7_O : STD_LOGIC; 
  signal outsinalREM_O : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCOUT0 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCOUT1 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCOUT2 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCOUT3 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCOUT4 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCOUT5 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCOUT6 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCOUT7 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCOUT8 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCOUT9 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCOUT10 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCOUT11 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCOUT12 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCOUT13 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCOUT14 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCOUT15 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCOUT16 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCOUT17 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P8 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P9 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P10 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P11 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P12 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P13 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P14 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P15 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P16 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P17 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P18 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P19 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P20 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P21 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P22 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P23 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P24 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P25 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P26 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P27 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P28 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P29 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P30 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P31 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P32 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P33 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P34 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_P35 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCIN0 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCIN1 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCIN2 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCIN3 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCIN4 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCIN5 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCIN6 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCIN7 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCIN8 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCIN9 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCIN10 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCIN11 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCIN12 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCIN13 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCIN14 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCIN15 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCIN16 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_BCIN17 : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_RSTP_INT : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_RSTB_INT : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_RSTA_INT : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_CLK_INT : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_CEP_INT : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_CEB_INT : STD_LOGIC; 
  signal ALU_Mmult_output_7_mult0000_CEA_INT : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPB3 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPB2 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPB1 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPB0 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB31 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB30 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB29 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB28 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB27 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB26 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB23 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB22 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB21 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB20 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB19 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB18 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB15 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB14 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB13 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB12 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB11 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB10 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB7 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB6 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB5 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB4 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB3 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB2 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPA3 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPA2 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPA1 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPA0 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA31 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA30 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA29 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA28 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA27 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA26 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA25 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA24 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA23 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA22 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA21 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA20 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA19 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA18 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA17 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA16 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA15 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA14 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA13 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA12 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA11 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA10 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA9 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA8 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA7 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA6 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA5 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA4 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA3 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA2 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA1 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA0 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIPB3 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIPB2 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIPB1 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIPB0 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB31 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB30 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB29 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB28 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB27 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB26 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB25 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB24 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB23 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB22 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB21 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB20 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB19 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB18 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB17 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB16 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB15 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB14 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB13 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB12 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB11 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB10 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB9 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB8 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB7 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB6 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB5 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB4 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB3 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB2 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB1 : STD_LOGIC; 
  signal MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB0 : STD_LOGIC; 
  signal ACC_acc_0_DXMUX_2716 : STD_LOGIC; 
  signal ACC_acc_0_FXMUX_2715 : STD_LOGIC; 
  signal ACC_acc_0_F5MUX_2714 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal ACC_acc_0_BXINV_2707 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal ACC_acc_0_CLKINV_2699 : STD_LOGIC; 
  signal ACC_acc_0_CEINV_2698 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd15_DXMUX_2763 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd15_F5MUX_2761 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd15_In1_2759 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd15_BXINV_2754 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd15_DYMUX_2747 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd16_rt_2745 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd15_SRINV_2736 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd15_CLKINV_2735 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd18_In6_F5MUX_2793 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd18_In6_F : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd18_In6_BXINV_2782 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd18_In61_2780 : STD_LOGIC; 
  signal FSMNeander_nj_F5MUX_2818 : STD_LOGIC; 
  signal FSMNeander_nj1 : STD_LOGIC; 
  signal FSMNeander_nj_BXINV_2811 : STD_LOGIC; 
  signal FSMNeander_nj11_2809 : STD_LOGIC; 
  signal outsinalREM_OBUF_F5MUX_2843 : STD_LOGIC; 
  signal outsinalREM_OBUF_F : STD_LOGIC; 
  signal outsinalREM_OBUF_BXINV_2832 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_Out20 : STD_LOGIC; 
  signal N20_F5MUX_2868 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd3_rt_2866 : STD_LOGIC; 
  signal N20_BXINV_2858 : STD_LOGIC; 
  signal FSMNeander_fioUlaOP_0_SW0 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd10_DXMUX_2898 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd10_In : STD_LOGIC; 
  signal N36_pack_1 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd10_CLKINV_2882 : STD_LOGIC; 
  signal FSMNeander_fioUlaOP_2_SW0_O_pack_1 : STD_LOGIC; 
  signal FSMNeander_ula1op_pack_1 : STD_LOGIC; 
  signal ALU_Mmux_output_0_6_2974 : STD_LOGIC; 
  signal wireFsmUlaSelector_0_pack_1 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd13_DXMUX_3005 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd13_In : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd13_In28_SW0_O_pack_1 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd13_CLKINV_2988 : STD_LOGIC; 
  signal FLAGNZ_fioZ_DXMUX_3042 : STD_LOGIC; 
  signal wireAluZ : STD_LOGIC; 
  signal ALU_isZERO_cmp_eq00003_O_pack_1 : STD_LOGIC; 
  signal FLAGNZ_fioZ_CLKINV_3024 : STD_LOGIC; 
  signal FLAGNZ_fioZ_CEINV_3023 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal FSMNeander_j_pack_1 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd4_DXMUX_3109 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd4_In : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd4_DYMUX_3093 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd3_In : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd4_SRINV_3084 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd4_CLKINV_3083 : STD_LOGIC; 
  signal regREM_acc_1_DXMUX_3154 : STD_LOGIC; 
  signal regREM_acc_1_DYMUX_3139 : STD_LOGIC; 
  signal regREM_acc_1_SRINV_3131 : STD_LOGIC; 
  signal regREM_acc_1_CLKINV_3130 : STD_LOGIC; 
  signal regREM_acc_1_CEINV_3129 : STD_LOGIC; 
  signal regREM_acc_3_DXMUX_3200 : STD_LOGIC; 
  signal regREM_acc_3_DYMUX_3185 : STD_LOGIC; 
  signal regREM_acc_3_SRINV_3177 : STD_LOGIC; 
  signal regREM_acc_3_CLKINV_3176 : STD_LOGIC; 
  signal regREM_acc_3_CEINV_3175 : STD_LOGIC; 
  signal regREM_acc_5_DXMUX_3246 : STD_LOGIC; 
  signal regREM_acc_5_DYMUX_3231 : STD_LOGIC; 
  signal regREM_acc_5_SRINV_3223 : STD_LOGIC; 
  signal regREM_acc_5_CLKINV_3222 : STD_LOGIC; 
  signal regREM_acc_5_CEINV_3221 : STD_LOGIC; 
  signal regREM_acc_7_DXMUX_3292 : STD_LOGIC; 
  signal regREM_acc_7_DYMUX_3277 : STD_LOGIC; 
  signal regREM_acc_7_SRINV_3269 : STD_LOGIC; 
  signal regREM_acc_7_CLKINV_3268 : STD_LOGIC; 
  signal regREM_acc_7_CEINV_3267 : STD_LOGIC; 
  signal REGIR_ri_1_DXMUX_3340 : STD_LOGIC; 
  signal REGIR_ri_1_FXMUX_3339 : STD_LOGIC; 
  signal REGIR_ri_1_DYMUX_3324 : STD_LOGIC; 
  signal REGIR_ri_1_GYMUX_3323 : STD_LOGIC; 
  signal REGIR_ri_1_SRINV_3315 : STD_LOGIC; 
  signal REGIR_ri_1_CLKINV_3314 : STD_LOGIC; 
  signal REGIR_ri_1_CEINV_3313 : STD_LOGIC; 
  signal outSinalRI_OBUF_3380 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd14_DYMUX_3367 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd14_In : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd14_CLKINV_3356 : STD_LOGIC; 
  signal REGIR_ri_2_DXMUX_3413 : STD_LOGIC; 
  signal REGIR_ri_2_FXMUX_3412 : STD_LOGIC; 
  signal REGIR_ri_2_DYMUX_3397 : STD_LOGIC; 
  signal REGIR_ri_2_SRINV_3395 : STD_LOGIC; 
  signal REGIR_ri_2_CLKINV_3394 : STD_LOGIC; 
  signal REGIR_ri_2_CEINV_3393 : STD_LOGIC; 
  signal regRDM_acc_1_DXMUX_3461 : STD_LOGIC; 
  signal regRDM_acc_1_FXMUX_3460 : STD_LOGIC; 
  signal regRDM_acc_1_DYMUX_3445 : STD_LOGIC; 
  signal regRDM_acc_1_GYMUX_3444 : STD_LOGIC; 
  signal regRDM_acc_1_SRINV_3436 : STD_LOGIC; 
  signal regRDM_acc_1_CLKINV_3435 : STD_LOGIC; 
  signal regRDM_acc_1_CEINV_3434 : STD_LOGIC; 
  signal regRDM_acc_3_DXMUX_3509 : STD_LOGIC; 
  signal regRDM_acc_3_FXMUX_3508 : STD_LOGIC; 
  signal regRDM_acc_3_DYMUX_3493 : STD_LOGIC; 
  signal regRDM_acc_3_GYMUX_3492 : STD_LOGIC; 
  signal regRDM_acc_3_SRINV_3484 : STD_LOGIC; 
  signal regRDM_acc_3_CLKINV_3483 : STD_LOGIC; 
  signal regRDM_acc_3_CEINV_3482 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd9_DXMUX_3545 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd9_In : STD_LOGIC; 
  signal wireDecFsmOut_1_pack_1 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd9_CLKINV_3529 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal wireDecFsmOut_5_Q : STD_LOGIC; 
  signal FSMNeander_ula2op_3597 : STD_LOGIC; 
  signal wireDecFsmOut_6_Q : STD_LOGIC; 
  signal wireDecFsmOut_7_Q : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd2_DXMUX_3629 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd2_DYMUX_3621 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd2_SRINV_3619 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd2_CLKINV_3618 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd6_DXMUX_3653 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd6_DYMUX_3645 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd6_SRINV_3643 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd6_CLKINV_3642 : STD_LOGIC; 
  signal outsinalread_OBUF_3681 : STD_LOGIC; 
  signal wireWriteMemory : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd8_DXMUX_3701 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd8_DYMUX_3693 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd8_SRINV_3691 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd8_CLKINV_3690 : STD_LOGIC; 
  signal ALU_Mmux_output_0_7_3717 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd13_In14_3741 : STD_LOGIC; 
  signal wireDecFsmOut_15_pack_1 : STD_LOGIC; 
  signal wireLoadRdm : STD_LOGIC; 
  signal wireFsmAccLoad : STD_LOGIC; 
  signal PC_Pc_not0001 : STD_LOGIC; 
  signal outpccarga_OBUF_3782 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd11_DXMUX_3818 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd11_DYMUX_3810 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd12_In : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd11_SRINV_3801 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd11_CLKINV_3800 : STD_LOGIC; 
  signal ALU_isZERO_cmp_eq000028_3834 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd18_DXMUX_3875 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd18_DYMUX_3861 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd18_In27_O_pack_2 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd18_SRINV_3851 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd18_CLKINV_3850 : STD_LOGIC; 
  signal regRDM_acc_5_DXMUX_3901 : STD_LOGIC; 
  signal regRDM_acc_5_DYMUX_3892 : STD_LOGIC; 
  signal regRDM_acc_5_SRINV_3890 : STD_LOGIC; 
  signal regRDM_acc_5_CLKINV_3889 : STD_LOGIC; 
  signal regRDM_acc_5_CEINV_3888 : STD_LOGIC; 
  signal regRDM_acc_7_DXMUX_3939 : STD_LOGIC; 
  signal regRDM_acc_7_FXMUX_3938 : STD_LOGIC; 
  signal regRDM_acc_7_DYMUX_3923 : STD_LOGIC; 
  signal regRDM_acc_7_SRINV_3921 : STD_LOGIC; 
  signal regRDM_acc_7_CLKINV_3920 : STD_LOGIC; 
  signal regRDM_acc_7_CEINV_3919 : STD_LOGIC; 
  signal ACC_acc_4_FFY_RSTAND_1562 : STD_LOGIC; 
  signal ACC_acc_1_FFY_RSTAND_1632 : STD_LOGIC; 
  signal ACC_acc_3_FFY_RSTAND_1772 : STD_LOGIC; 
  signal ACC_acc_5_FFY_RSTAND_1842 : STD_LOGIC; 
  signal ACC_acc_2_FFY_RSTAND_1912 : STD_LOGIC; 
  signal ACC_acc_0_FFX_RSTAND_2722 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd10_FFX_RSTAND_2903 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd13_FFX_RSTAND_3010 : STD_LOGIC; 
  signal FLAGNZ_fioZ_FFX_RSTAND_3048 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd14_FFY_RSTAND_3372 : STD_LOGIC; 
  signal FSMNeander_estado_FSM_FFd9_FFX_RSTAND_3550 : STD_LOGIC; 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_16_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_17_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_24_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_25_Q : STD_LOGIC;
 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal PC_Pc : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal regRDM_acc : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ACC_acc : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal ALU_output_7_add0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ALU_output_7_mult0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal wireFsmUlaSelector : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal wireAluAcc : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REGIR_ri : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal regREM_acc : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal PC_Mcount_Pc_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ALU_Madd_output_7_add0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal wireMuxMAOut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal wireMuxToRdm : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NlwBufferSignal_ALU_Mmult_output_7_mult0000_A : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal NlwBufferSignal_ALU_Mmult_output_7_mult0000_B : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  PC_Pc_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X17Y27"
    )
    port map (
      O => PC_Pc_0_LOGIC_ZERO_1176
    );
  PC_Pc_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc_0_XORF_1199,
      O => PC_Pc_0_DXMUX_1201
    );
  PC_Pc_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X17Y27"
    )
    port map (
      I0 => PC_Pc_0_CYINIT_1198,
      I1 => PC_Mcount_Pc_lut(0),
      O => PC_Pc_0_XORF_1199
    );
  PC_Pc_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X17Y27"
    )
    port map (
      IA => PC_Pc_0_LOGIC_ZERO_1176,
      IB => PC_Pc_0_CYINIT_1198,
      SEL => PC_Pc_0_CYSELF_1191,
      O => PC_Mcount_Pc_cy_0_Q
    );
  PC_Pc_0_CYINIT : X_INV
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd1_998,
      O => PC_Pc_0_CYINIT_1198
    );
  PC_Pc_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Mcount_Pc_lut(0),
      O => PC_Pc_0_CYSELF_1191
    );
  PC_Pc_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc_0_XORG_1179,
      O => PC_Pc_0_DYMUX_1181
    );
  PC_Pc_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X17Y27"
    )
    port map (
      I0 => PC_Mcount_Pc_cy_0_Q,
      I1 => PC_Mcount_Pc_lut(1),
      O => PC_Pc_0_XORG_1179
    );
  PC_Pc_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc_0_CYMUXG_1178,
      O => PC_Mcount_Pc_cy_1_Q
    );
  PC_Pc_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X17Y27"
    )
    port map (
      IA => PC_Pc_0_LOGIC_ZERO_1176,
      IB => PC_Mcount_Pc_cy_0_Q,
      SEL => PC_Pc_0_CYSELG_1169,
      O => PC_Pc_0_CYMUXG_1178
    );
  PC_Pc_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Mcount_Pc_lut(1),
      O => PC_Pc_0_CYSELG_1169
    );
  PC_Pc_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => PC_Pc_0_SRINV_1167
    );
  PC_Pc_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => PC_Pc_0_CLKINV_1166
    );
  PC_Pc_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc_not0001_0,
      O => PC_Pc_0_CEINV_1165
    );
  PC_Pc_0 : X_FF
    generic map(
      LOC => "SLICE_X17Y27",
      INIT => '0'
    )
    port map (
      I => PC_Pc_0_DXMUX_1201,
      CE => PC_Pc_0_CEINV_1165,
      CLK => PC_Pc_0_CLKINV_1166,
      SET => GND,
      RST => PC_Pc_0_SRINV_1167,
      O => PC_Pc(0)
    );
  PC_Mcount_Pc_lut_0_Q : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X17Y27"
    )
    port map (
      ADR0 => PC_Pc(0),
      ADR1 => regRDM_acc(0),
      ADR2 => VCC,
      ADR3 => FSMNeander_estado_FSM_FFd1_998,
      O => PC_Mcount_Pc_lut(0)
    );
  PC_Pc_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X17Y28"
    )
    port map (
      O => PC_Pc_2_LOGIC_ZERO_1233
    );
  PC_Pc_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc_2_XORF_1259,
      O => PC_Pc_2_DXMUX_1261
    );
  PC_Pc_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X17Y28"
    )
    port map (
      I0 => PC_Pc_2_CYINIT_1258,
      I1 => PC_Mcount_Pc_lut(2),
      O => PC_Pc_2_XORF_1259
    );
  PC_Pc_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X17Y28"
    )
    port map (
      IA => PC_Pc_2_LOGIC_ZERO_1233,
      IB => PC_Pc_2_CYINIT_1258,
      SEL => PC_Pc_2_CYSELF_1239,
      O => PC_Mcount_Pc_cy_2_Q
    );
  PC_Pc_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y28"
    )
    port map (
      IA => PC_Pc_2_LOGIC_ZERO_1233,
      IB => PC_Pc_2_LOGIC_ZERO_1233,
      SEL => PC_Pc_2_CYSELF_1239,
      O => PC_Pc_2_CYMUXF2_1234
    );
  PC_Pc_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Mcount_Pc_cy_1_Q,
      O => PC_Pc_2_CYINIT_1258
    );
  PC_Pc_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Mcount_Pc_lut(2),
      O => PC_Pc_2_CYSELF_1239
    );
  PC_Pc_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc_2_XORG_1241,
      O => PC_Pc_2_DYMUX_1243
    );
  PC_Pc_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X17Y28"
    )
    port map (
      I0 => PC_Mcount_Pc_cy_2_Q,
      I1 => PC_Mcount_Pc_lut(3),
      O => PC_Pc_2_XORG_1241
    );
  PC_Pc_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc_2_CYMUXFAST_1238,
      O => PC_Mcount_Pc_cy_3_Q
    );
  PC_Pc_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Mcount_Pc_cy_1_Q,
      O => PC_Pc_2_FASTCARRY_1236
    );
  PC_Pc_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X17Y28"
    )
    port map (
      I0 => PC_Pc_2_CYSELG_1226,
      I1 => PC_Pc_2_CYSELF_1239,
      O => PC_Pc_2_CYAND_1237
    );
  PC_Pc_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X17Y28"
    )
    port map (
      IA => PC_Pc_2_CYMUXG2_1235,
      IB => PC_Pc_2_FASTCARRY_1236,
      SEL => PC_Pc_2_CYAND_1237,
      O => PC_Pc_2_CYMUXFAST_1238
    );
  PC_Pc_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y28"
    )
    port map (
      IA => PC_Pc_2_LOGIC_ZERO_1233,
      IB => PC_Pc_2_CYMUXF2_1234,
      SEL => PC_Pc_2_CYSELG_1226,
      O => PC_Pc_2_CYMUXG2_1235
    );
  PC_Pc_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Mcount_Pc_lut(3),
      O => PC_Pc_2_CYSELG_1226
    );
  PC_Pc_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => PC_Pc_2_SRINV_1224
    );
  PC_Pc_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => PC_Pc_2_CLKINV_1223
    );
  PC_Pc_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc_not0001_0,
      O => PC_Pc_2_CEINV_1222
    );
  PC_Mcount_Pc_lut_3_Q : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X17Y28"
    )
    port map (
      ADR0 => PC_Pc(3),
      ADR1 => regRDM_acc(3),
      ADR2 => VCC,
      ADR3 => FSMNeander_estado_FSM_FFd1_998,
      O => PC_Mcount_Pc_lut(3)
    );
  PC_Pc_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X17Y29"
    )
    port map (
      O => PC_Pc_4_LOGIC_ZERO_1293
    );
  PC_Pc_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc_4_XORF_1319,
      O => PC_Pc_4_DXMUX_1321
    );
  PC_Pc_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X17Y29"
    )
    port map (
      I0 => PC_Pc_4_CYINIT_1318,
      I1 => PC_Mcount_Pc_lut(4),
      O => PC_Pc_4_XORF_1319
    );
  PC_Pc_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X17Y29"
    )
    port map (
      IA => PC_Pc_4_LOGIC_ZERO_1293,
      IB => PC_Pc_4_CYINIT_1318,
      SEL => PC_Pc_4_CYSELF_1299,
      O => PC_Mcount_Pc_cy_4_Q
    );
  PC_Pc_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y29"
    )
    port map (
      IA => PC_Pc_4_LOGIC_ZERO_1293,
      IB => PC_Pc_4_LOGIC_ZERO_1293,
      SEL => PC_Pc_4_CYSELF_1299,
      O => PC_Pc_4_CYMUXF2_1294
    );
  PC_Pc_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X17Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Mcount_Pc_cy_3_Q,
      O => PC_Pc_4_CYINIT_1318
    );
  PC_Pc_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Mcount_Pc_lut(4),
      O => PC_Pc_4_CYSELF_1299
    );
  PC_Pc_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc_4_XORG_1301,
      O => PC_Pc_4_DYMUX_1303
    );
  PC_Pc_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X17Y29"
    )
    port map (
      I0 => PC_Mcount_Pc_cy_4_Q,
      I1 => PC_Mcount_Pc_lut(5),
      O => PC_Pc_4_XORG_1301
    );
  PC_Pc_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X17Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Mcount_Pc_cy_3_Q,
      O => PC_Pc_4_FASTCARRY_1296
    );
  PC_Pc_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X17Y29"
    )
    port map (
      I0 => PC_Pc_4_CYSELG_1286,
      I1 => PC_Pc_4_CYSELF_1299,
      O => PC_Pc_4_CYAND_1297
    );
  PC_Pc_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X17Y29"
    )
    port map (
      IA => PC_Pc_4_CYMUXG2_1295,
      IB => PC_Pc_4_FASTCARRY_1296,
      SEL => PC_Pc_4_CYAND_1297,
      O => PC_Pc_4_CYMUXFAST_1298
    );
  PC_Pc_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y29"
    )
    port map (
      IA => PC_Pc_4_LOGIC_ZERO_1293,
      IB => PC_Pc_4_CYMUXF2_1294,
      SEL => PC_Pc_4_CYSELG_1286,
      O => PC_Pc_4_CYMUXG2_1295
    );
  PC_Pc_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X17Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Mcount_Pc_lut(5),
      O => PC_Pc_4_CYSELG_1286
    );
  PC_Pc_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => PC_Pc_4_SRINV_1284
    );
  PC_Pc_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => PC_Pc_4_CLKINV_1283
    );
  PC_Pc_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc_not0001_0,
      O => PC_Pc_4_CEINV_1282
    );
  PC_Pc_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X17Y30"
    )
    port map (
      O => PC_Pc_6_LOGIC_ZERO_1371
    );
  PC_Pc_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc_6_XORF_1372,
      O => PC_Pc_6_DXMUX_1374
    );
  PC_Pc_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X17Y30"
    )
    port map (
      I0 => PC_Pc_6_CYINIT_1370,
      I1 => PC_Mcount_Pc_lut(6),
      O => PC_Pc_6_XORF_1372
    );
  PC_Pc_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X17Y30"
    )
    port map (
      IA => PC_Pc_6_LOGIC_ZERO_1371,
      IB => PC_Pc_6_CYINIT_1370,
      SEL => PC_Pc_6_CYSELF_1363,
      O => PC_Mcount_Pc_cy_6_Q
    );
  PC_Pc_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X17Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc_4_CYMUXFAST_1298,
      O => PC_Pc_6_CYINIT_1370
    );
  PC_Pc_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Mcount_Pc_lut(6),
      O => PC_Pc_6_CYSELF_1363
    );
  PC_Pc_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc_6_XORG_1352,
      O => PC_Pc_6_DYMUX_1354
    );
  PC_Pc_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X17Y30"
    )
    port map (
      I0 => PC_Mcount_Pc_cy_6_Q,
      I1 => PC_Mcount_Pc_lut(7),
      O => PC_Pc_6_XORG_1352
    );
  PC_Pc_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => PC_Pc_6_SRINV_1343
    );
  PC_Pc_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => PC_Pc_6_CLKINV_1342
    );
  PC_Pc_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc_not0001_0,
      O => PC_Pc_6_CEINV_1341
    );
  ALU_output_7_add0000_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_output_7_add0000_0_XORF_1416,
      O => ALU_output_7_add0000(0)
    );
  ALU_output_7_add0000_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X15Y19"
    )
    port map (
      I0 => ALU_output_7_add0000_0_CYINIT_1415,
      I1 => ALU_Madd_output_7_add0000_lut(0),
      O => ALU_output_7_add0000_0_XORF_1416
    );
  ALU_output_7_add0000_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X15Y19"
    )
    port map (
      IA => ALU_output_7_add0000_0_CY0F_1414,
      IB => ALU_output_7_add0000_0_CYINIT_1415,
      SEL => ALU_output_7_add0000_0_CYSELF_1406,
      O => ALU_Madd_output_7_add0000_cy_0_Q
    );
  ALU_output_7_add0000_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X15Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_output_7_add0000_0_BXINV_1404,
      O => ALU_output_7_add0000_0_CYINIT_1415
    );
  ALU_output_7_add0000_0_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X15Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc(0),
      O => ALU_output_7_add0000_0_CY0F_1414
    );
  ALU_output_7_add0000_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Madd_output_7_add0000_lut(0),
      O => ALU_output_7_add0000_0_CYSELF_1406
    );
  ALU_output_7_add0000_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_output_7_add0000_0_BXINV_1404
    );
  ALU_output_7_add0000_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_output_7_add0000_0_XORG_1402,
      O => ALU_output_7_add0000(1)
    );
  ALU_output_7_add0000_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X15Y19"
    )
    port map (
      I0 => ALU_Madd_output_7_add0000_cy_0_Q,
      I1 => ALU_Madd_output_7_add0000_lut(1),
      O => ALU_output_7_add0000_0_XORG_1402
    );
  ALU_output_7_add0000_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_output_7_add0000_0_CYMUXG_1401,
      O => ALU_Madd_output_7_add0000_cy_1_Q
    );
  ALU_output_7_add0000_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X15Y19"
    )
    port map (
      IA => ALU_output_7_add0000_0_CY0G_1399,
      IB => ALU_Madd_output_7_add0000_cy_0_Q,
      SEL => ALU_output_7_add0000_0_CYSELG_1391,
      O => ALU_output_7_add0000_0_CYMUXG_1401
    );
  ALU_output_7_add0000_0_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X15Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc(1),
      O => ALU_output_7_add0000_0_CY0G_1399
    );
  ALU_output_7_add0000_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X15Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Madd_output_7_add0000_lut(1),
      O => ALU_output_7_add0000_0_CYSELG_1391
    );
  ALU_Madd_output_7_add0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X15Y19"
    )
    port map (
      ADR0 => ACC_acc(0),
      ADR1 => regRDM_acc(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => ALU_Madd_output_7_add0000_lut(0)
    );
  ALU_Madd_output_7_add0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X15Y20"
    )
    port map (
      ADR0 => ACC_acc(2),
      ADR1 => VCC,
      ADR2 => regRDM_acc(2),
      ADR3 => VCC,
      O => ALU_Madd_output_7_add0000_lut(2)
    );
  ALU_output_7_add0000_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_output_7_add0000_2_XORF_1455,
      O => ALU_output_7_add0000(2)
    );
  ALU_output_7_add0000_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X15Y20"
    )
    port map (
      I0 => ALU_output_7_add0000_2_CYINIT_1454,
      I1 => ALU_Madd_output_7_add0000_lut(2),
      O => ALU_output_7_add0000_2_XORF_1455
    );
  ALU_output_7_add0000_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X15Y20"
    )
    port map (
      IA => ALU_output_7_add0000_2_CY0F_1453,
      IB => ALU_output_7_add0000_2_CYINIT_1454,
      SEL => ALU_output_7_add0000_2_CYSELF_1441,
      O => ALU_Madd_output_7_add0000_cy_2_Q
    );
  ALU_output_7_add0000_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y20"
    )
    port map (
      IA => ALU_output_7_add0000_2_CY0F_1453,
      IB => ALU_output_7_add0000_2_CY0F_1453,
      SEL => ALU_output_7_add0000_2_CYSELF_1441,
      O => ALU_output_7_add0000_2_CYMUXF2_1436
    );
  ALU_output_7_add0000_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X15Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Madd_output_7_add0000_cy_1_Q,
      O => ALU_output_7_add0000_2_CYINIT_1454
    );
  ALU_output_7_add0000_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X15Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc(2),
      O => ALU_output_7_add0000_2_CY0F_1453
    );
  ALU_output_7_add0000_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Madd_output_7_add0000_lut(2),
      O => ALU_output_7_add0000_2_CYSELF_1441
    );
  ALU_output_7_add0000_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_output_7_add0000_2_XORG_1443,
      O => ALU_output_7_add0000(3)
    );
  ALU_output_7_add0000_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X15Y20"
    )
    port map (
      I0 => ALU_Madd_output_7_add0000_cy_2_Q,
      I1 => ALU_Madd_output_7_add0000_lut(3),
      O => ALU_output_7_add0000_2_XORG_1443
    );
  ALU_output_7_add0000_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_output_7_add0000_2_CYMUXFAST_1440,
      O => ALU_Madd_output_7_add0000_cy_3_Q
    );
  ALU_output_7_add0000_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X15Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Madd_output_7_add0000_cy_1_Q,
      O => ALU_output_7_add0000_2_FASTCARRY_1438
    );
  ALU_output_7_add0000_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X15Y20"
    )
    port map (
      I0 => ALU_output_7_add0000_2_CYSELG_1427,
      I1 => ALU_output_7_add0000_2_CYSELF_1441,
      O => ALU_output_7_add0000_2_CYAND_1439
    );
  ALU_output_7_add0000_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X15Y20"
    )
    port map (
      IA => ALU_output_7_add0000_2_CYMUXG2_1437,
      IB => ALU_output_7_add0000_2_FASTCARRY_1438,
      SEL => ALU_output_7_add0000_2_CYAND_1439,
      O => ALU_output_7_add0000_2_CYMUXFAST_1440
    );
  ALU_output_7_add0000_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y20"
    )
    port map (
      IA => ALU_output_7_add0000_2_CY0G_1435,
      IB => ALU_output_7_add0000_2_CYMUXF2_1436,
      SEL => ALU_output_7_add0000_2_CYSELG_1427,
      O => ALU_output_7_add0000_2_CYMUXG2_1437
    );
  ALU_output_7_add0000_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X15Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc(3),
      O => ALU_output_7_add0000_2_CY0G_1435
    );
  ALU_output_7_add0000_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X15Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Madd_output_7_add0000_lut(3),
      O => ALU_output_7_add0000_2_CYSELG_1427
    );
  ALU_Madd_output_7_add0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X15Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ACC_acc(3),
      ADR2 => VCC,
      ADR3 => regRDM_acc(3),
      O => ALU_Madd_output_7_add0000_lut(3)
    );
  ALU_output_7_add0000_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_output_7_add0000_4_XORF_1494,
      O => ALU_output_7_add0000(4)
    );
  ALU_output_7_add0000_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X15Y21"
    )
    port map (
      I0 => ALU_output_7_add0000_4_CYINIT_1493,
      I1 => ALU_Madd_output_7_add0000_lut(4),
      O => ALU_output_7_add0000_4_XORF_1494
    );
  ALU_output_7_add0000_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X15Y21"
    )
    port map (
      IA => ALU_output_7_add0000_4_CY0F_1492,
      IB => ALU_output_7_add0000_4_CYINIT_1493,
      SEL => ALU_output_7_add0000_4_CYSELF_1480,
      O => ALU_Madd_output_7_add0000_cy_4_Q
    );
  ALU_output_7_add0000_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y21"
    )
    port map (
      IA => ALU_output_7_add0000_4_CY0F_1492,
      IB => ALU_output_7_add0000_4_CY0F_1492,
      SEL => ALU_output_7_add0000_4_CYSELF_1480,
      O => ALU_output_7_add0000_4_CYMUXF2_1475
    );
  ALU_output_7_add0000_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X15Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Madd_output_7_add0000_cy_3_Q,
      O => ALU_output_7_add0000_4_CYINIT_1493
    );
  ALU_output_7_add0000_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X15Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc(4),
      O => ALU_output_7_add0000_4_CY0F_1492
    );
  ALU_output_7_add0000_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Madd_output_7_add0000_lut(4),
      O => ALU_output_7_add0000_4_CYSELF_1480
    );
  ALU_output_7_add0000_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_output_7_add0000_4_XORG_1482,
      O => ALU_output_7_add0000(5)
    );
  ALU_output_7_add0000_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X15Y21"
    )
    port map (
      I0 => ALU_Madd_output_7_add0000_cy_4_Q,
      I1 => ALU_Madd_output_7_add0000_lut(5),
      O => ALU_output_7_add0000_4_XORG_1482
    );
  ALU_output_7_add0000_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X15Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Madd_output_7_add0000_cy_3_Q,
      O => ALU_output_7_add0000_4_FASTCARRY_1477
    );
  ALU_output_7_add0000_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X15Y21"
    )
    port map (
      I0 => ALU_output_7_add0000_4_CYSELG_1466,
      I1 => ALU_output_7_add0000_4_CYSELF_1480,
      O => ALU_output_7_add0000_4_CYAND_1478
    );
  ALU_output_7_add0000_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X15Y21"
    )
    port map (
      IA => ALU_output_7_add0000_4_CYMUXG2_1476,
      IB => ALU_output_7_add0000_4_FASTCARRY_1477,
      SEL => ALU_output_7_add0000_4_CYAND_1478,
      O => ALU_output_7_add0000_4_CYMUXFAST_1479
    );
  ALU_output_7_add0000_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y21"
    )
    port map (
      IA => ALU_output_7_add0000_4_CY0G_1474,
      IB => ALU_output_7_add0000_4_CYMUXF2_1475,
      SEL => ALU_output_7_add0000_4_CYSELG_1466,
      O => ALU_output_7_add0000_4_CYMUXG2_1476
    );
  ALU_output_7_add0000_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X15Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc(5),
      O => ALU_output_7_add0000_4_CY0G_1474
    );
  ALU_output_7_add0000_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X15Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Madd_output_7_add0000_lut(5),
      O => ALU_output_7_add0000_4_CYSELG_1466
    );
  ALU_output_7_add0000_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_output_7_add0000_6_XORF_1525,
      O => ALU_output_7_add0000(6)
    );
  ALU_output_7_add0000_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X15Y22"
    )
    port map (
      I0 => ALU_output_7_add0000_6_CYINIT_1524,
      I1 => ALU_Madd_output_7_add0000_lut(6),
      O => ALU_output_7_add0000_6_XORF_1525
    );
  ALU_output_7_add0000_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X15Y22"
    )
    port map (
      IA => ALU_output_7_add0000_6_CY0F_1523,
      IB => ALU_output_7_add0000_6_CYINIT_1524,
      SEL => ALU_output_7_add0000_6_CYSELF_1515,
      O => ALU_Madd_output_7_add0000_cy_6_Q
    );
  ALU_output_7_add0000_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X15Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_output_7_add0000_4_CYMUXFAST_1479,
      O => ALU_output_7_add0000_6_CYINIT_1524
    );
  ALU_output_7_add0000_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X15Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc(6),
      O => ALU_output_7_add0000_6_CY0F_1523
    );
  ALU_output_7_add0000_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Madd_output_7_add0000_lut(6),
      O => ALU_output_7_add0000_6_CYSELF_1515
    );
  ALU_output_7_add0000_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_output_7_add0000_6_XORG_1512,
      O => ALU_output_7_add0000(7)
    );
  ALU_output_7_add0000_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X15Y22"
    )
    port map (
      I0 => ALU_Madd_output_7_add0000_cy_6_Q,
      I1 => ALU_Madd_output_7_add0000_lut(7),
      O => ALU_output_7_add0000_6_XORG_1512
    );
  ACC_acc_4_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X13Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_4_F5MUX_1572,
      O => ALU_Mmux_output_4_3_f5
    );
  ACC_acc_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y22"
    )
    port map (
      IA => ALU_Mmux_output_4_5_1552,
      IB => ALU_Mmux_output_4_4_1570,
      SEL => ACC_acc_4_BXINV_1564,
      O => ACC_acc_4_F5MUX_1572
    );
  ACC_acc_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_1_0,
      O => ACC_acc_4_BXINV_1564
    );
  ACC_acc_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_4_GYMUX_1555,
      O => ACC_acc_4_DYMUX_1556
    );
  ACC_acc_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_4_GYMUX_1555,
      O => wireAluAcc(4)
    );
  ACC_acc_4_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_4_F6MUX_1554,
      O => ACC_acc_4_GYMUX_1555
    );
  ACC_acc_4_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y22"
    )
    port map (
      IA => ALU_Mmux_output_4_4_f5,
      IB => ALU_Mmux_output_4_3_f5,
      SEL => ACC_acc_4_BYINV_1545,
      O => ACC_acc_4_F6MUX_1554
    );
  ACC_acc_4_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_2_0,
      O => ACC_acc_4_BYINV_1545
    );
  ACC_acc_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => ACC_acc_4_CLKINV_1543
    );
  ACC_acc_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmAccLoad_0,
      O => ACC_acc_4_CEINV_1542
    );
  ALU_Mmux_output_4_4_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X13Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Mmux_output_4_4_f5_F5MUX_1596,
      O => ALU_Mmux_output_4_4_f5
    );
  ALU_Mmux_output_4_4_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y23"
    )
    port map (
      IA => ALU_Mmux_output_4_6_1586,
      IB => ALU_Mmux_output_4_51_1594,
      SEL => ALU_Mmux_output_4_4_f5_BXINV_1588,
      O => ALU_Mmux_output_4_4_f5_F5MUX_1596
    );
  ALU_Mmux_output_4_4_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_1_0,
      O => ALU_Mmux_output_4_4_f5_BXINV_1588
    );
  ACC_acc_1_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X13Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_1_F5MUX_1642,
      O => ALU_Mmux_output_1_3_f5
    );
  ACC_acc_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y26"
    )
    port map (
      IA => ALU_Mmux_output_1_5_1622,
      IB => ALU_Mmux_output_1_4_1640,
      SEL => ACC_acc_1_BXINV_1634,
      O => ACC_acc_1_F5MUX_1642
    );
  ACC_acc_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_1_0,
      O => ACC_acc_1_BXINV_1634
    );
  ACC_acc_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_1_GYMUX_1625,
      O => ACC_acc_1_DYMUX_1626
    );
  ACC_acc_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_1_GYMUX_1625,
      O => wireAluAcc(1)
    );
  ACC_acc_1_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_1_F6MUX_1624,
      O => ACC_acc_1_GYMUX_1625
    );
  ACC_acc_1_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y26"
    )
    port map (
      IA => ALU_Mmux_output_1_4_f5,
      IB => ALU_Mmux_output_1_3_f5,
      SEL => ACC_acc_1_BYINV_1615,
      O => ACC_acc_1_F6MUX_1624
    );
  ACC_acc_1_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_2_0,
      O => ACC_acc_1_BYINV_1615
    );
  ACC_acc_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => ACC_acc_1_CLKINV_1613
    );
  ACC_acc_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmAccLoad_0,
      O => ACC_acc_1_CEINV_1612
    );
  ALU_Mmux_output_1_4 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X13Y26"
    )
    port map (
      ADR0 => wireFsmUlaSelector(0),
      ADR1 => ALU_output_7_mult0000(1),
      ADR2 => ACC_acc(0),
      ADR3 => VCC,
      O => ALU_Mmux_output_1_4_1640
    );
  ALU_Mmux_output_1_51 : X_LUT4
    generic map(
      INIT => X"55EE",
      LOC => "SLICE_X13Y27"
    )
    port map (
      ADR0 => wireFsmUlaSelector(0),
      ADR1 => regRDM_acc(1),
      ADR2 => VCC,
      ADR3 => ACC_acc(1),
      O => ALU_Mmux_output_1_51_1664
    );
  ALU_Mmux_output_1_4_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X13Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Mmux_output_1_4_f5_F5MUX_1666,
      O => ALU_Mmux_output_1_4_f5
    );
  ALU_Mmux_output_1_4_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y27"
    )
    port map (
      IA => ALU_Mmux_output_1_6_1656,
      IB => ALU_Mmux_output_1_51_1664,
      SEL => ALU_Mmux_output_1_4_f5_BXINV_1658,
      O => ALU_Mmux_output_1_4_f5_F5MUX_1666
    );
  ALU_Mmux_output_1_4_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_1_0,
      O => ALU_Mmux_output_1_4_f5_BXINV_1658
    );
  ALU_Mmux_output_1_6 : X_LUT4
    generic map(
      INIT => X"E444",
      LOC => "SLICE_X13Y27"
    )
    port map (
      ADR0 => wireFsmUlaSelector(0),
      ADR1 => ALU_output_7_add0000(1),
      ADR2 => ACC_acc(1),
      ADR3 => regRDM_acc(1),
      O => ALU_Mmux_output_1_6_1656
    );
  ACC_acc_6_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => ACC_acc_6_FFY_RST
    );
  ACC_acc_6 : X_FF
    generic map(
      LOC => "SLICE_X17Y24",
      INIT => '0'
    )
    port map (
      I => ACC_acc_6_DYMUX_1696,
      CE => ACC_acc_6_CEINV_1682,
      CLK => ACC_acc_6_CLKINV_1683,
      SET => GND,
      RST => ACC_acc_6_FFY_RST,
      O => ACC_acc(6)
    );
  ALU_Mmux_output_6_4 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X17Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => wireFsmUlaSelector(0),
      ADR2 => ACC_acc(5),
      ADR3 => ALU_output_7_mult0000(6),
      O => ALU_Mmux_output_6_4_1710
    );
  ACC_acc_6_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_6_F5MUX_1712,
      O => ALU_Mmux_output_6_3_f5
    );
  ACC_acc_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X17Y24"
    )
    port map (
      IA => ALU_Mmux_output_6_5_1692,
      IB => ALU_Mmux_output_6_4_1710,
      SEL => ACC_acc_6_BXINV_1704,
      O => ACC_acc_6_F5MUX_1712
    );
  ACC_acc_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_1_0,
      O => ACC_acc_6_BXINV_1704
    );
  ACC_acc_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_6_GYMUX_1695,
      O => ACC_acc_6_DYMUX_1696
    );
  ACC_acc_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_6_GYMUX_1695,
      O => wireAluAcc(6)
    );
  ACC_acc_6_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_6_F6MUX_1694,
      O => ACC_acc_6_GYMUX_1695
    );
  ACC_acc_6_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X17Y24"
    )
    port map (
      IA => ALU_Mmux_output_6_4_f5,
      IB => ALU_Mmux_output_6_3_f5,
      SEL => ACC_acc_6_BYINV_1685,
      O => ACC_acc_6_F6MUX_1694
    );
  ACC_acc_6_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_2_0,
      O => ACC_acc_6_BYINV_1685
    );
  ACC_acc_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => ACC_acc_6_CLKINV_1683
    );
  ACC_acc_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmAccLoad_0,
      O => ACC_acc_6_CEINV_1682
    );
  ALU_Mmux_output_6_5 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X17Y24"
    )
    port map (
      ADR0 => regRDM_acc(6),
      ADR1 => wireFsmUlaSelector(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => ALU_Mmux_output_6_5_1692
    );
  ALU_Mmux_output_6_4_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X17Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Mmux_output_6_4_f5_F5MUX_1736,
      O => ALU_Mmux_output_6_4_f5
    );
  ALU_Mmux_output_6_4_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X17Y25"
    )
    port map (
      IA => ALU_Mmux_output_6_6_1726,
      IB => ALU_Mmux_output_6_51_1734,
      SEL => ALU_Mmux_output_6_4_f5_BXINV_1728,
      O => ALU_Mmux_output_6_4_f5_F5MUX_1736
    );
  ALU_Mmux_output_6_4_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_1_0,
      O => ALU_Mmux_output_6_4_f5_BXINV_1728
    );
  ACC_acc_3_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X13Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_3_F5MUX_1782,
      O => ALU_Mmux_output_3_3_f5
    );
  ACC_acc_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y24"
    )
    port map (
      IA => ALU_Mmux_output_3_5_1762,
      IB => ALU_Mmux_output_3_4_1780,
      SEL => ACC_acc_3_BXINV_1774,
      O => ACC_acc_3_F5MUX_1782
    );
  ACC_acc_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_1_0,
      O => ACC_acc_3_BXINV_1774
    );
  ACC_acc_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_3_GYMUX_1765,
      O => ACC_acc_3_DYMUX_1766
    );
  ACC_acc_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_3_GYMUX_1765,
      O => wireAluAcc(3)
    );
  ACC_acc_3_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_3_F6MUX_1764,
      O => ACC_acc_3_GYMUX_1765
    );
  ACC_acc_3_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y24"
    )
    port map (
      IA => ALU_Mmux_output_3_4_f5,
      IB => ALU_Mmux_output_3_3_f5,
      SEL => ACC_acc_3_BYINV_1755,
      O => ACC_acc_3_F6MUX_1764
    );
  ACC_acc_3_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_2_0,
      O => ACC_acc_3_BYINV_1755
    );
  ACC_acc_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => ACC_acc_3_CLKINV_1753
    );
  ACC_acc_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmAccLoad_0,
      O => ACC_acc_3_CEINV_1752
    );
  ALU_Mmux_output_3_4_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X13Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Mmux_output_3_4_f5_F5MUX_1806,
      O => ALU_Mmux_output_3_4_f5
    );
  ALU_Mmux_output_3_4_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y25"
    )
    port map (
      IA => ALU_Mmux_output_3_6_1796,
      IB => ALU_Mmux_output_3_51_1804,
      SEL => ALU_Mmux_output_3_4_f5_BXINV_1798,
      O => ALU_Mmux_output_3_4_f5_F5MUX_1806
    );
  ALU_Mmux_output_3_4_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_1_0,
      O => ALU_Mmux_output_3_4_f5_BXINV_1798
    );
  ACC_acc_5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X13Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_5_F5MUX_1852,
      O => ALU_Mmux_output_5_3_f5
    );
  ACC_acc_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y28"
    )
    port map (
      IA => ALU_Mmux_output_5_5_1832,
      IB => ALU_Mmux_output_5_4_1850,
      SEL => ACC_acc_5_BXINV_1844,
      O => ACC_acc_5_F5MUX_1852
    );
  ACC_acc_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_1_0,
      O => ACC_acc_5_BXINV_1844
    );
  ACC_acc_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_5_GYMUX_1835,
      O => ACC_acc_5_DYMUX_1836
    );
  ACC_acc_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_5_GYMUX_1835,
      O => wireAluAcc(5)
    );
  ACC_acc_5_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_5_F6MUX_1834,
      O => ACC_acc_5_GYMUX_1835
    );
  ACC_acc_5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y28"
    )
    port map (
      IA => ALU_Mmux_output_5_4_f5,
      IB => ALU_Mmux_output_5_3_f5,
      SEL => ACC_acc_5_BYINV_1825,
      O => ACC_acc_5_F6MUX_1834
    );
  ACC_acc_5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_2_0,
      O => ACC_acc_5_BYINV_1825
    );
  ACC_acc_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => ACC_acc_5_CLKINV_1823
    );
  ACC_acc_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmAccLoad_0,
      O => ACC_acc_5_CEINV_1822
    );
  ALU_Mmux_output_5_4_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X13Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Mmux_output_5_4_f5_F5MUX_1876,
      O => ALU_Mmux_output_5_4_f5
    );
  ALU_Mmux_output_5_4_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y29"
    )
    port map (
      IA => ALU_Mmux_output_5_6_1866,
      IB => ALU_Mmux_output_5_51_1874,
      SEL => ALU_Mmux_output_5_4_f5_BXINV_1868,
      O => ALU_Mmux_output_5_4_f5_F5MUX_1876
    );
  ALU_Mmux_output_5_4_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_1_0,
      O => ALU_Mmux_output_5_4_f5_BXINV_1868
    );
  ACC_acc_2_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X15Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_2_F5MUX_1922,
      O => ALU_Mmux_output_2_3_f5
    );
  ACC_acc_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X15Y26"
    )
    port map (
      IA => ALU_Mmux_output_2_5_1902,
      IB => ALU_Mmux_output_2_4_1920,
      SEL => ACC_acc_2_BXINV_1914,
      O => ACC_acc_2_F5MUX_1922
    );
  ACC_acc_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_1_0,
      O => ACC_acc_2_BXINV_1914
    );
  ACC_acc_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_2_GYMUX_1905,
      O => ACC_acc_2_DYMUX_1906
    );
  ACC_acc_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_2_GYMUX_1905,
      O => wireAluAcc(2)
    );
  ACC_acc_2_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_2_F6MUX_1904,
      O => ACC_acc_2_GYMUX_1905
    );
  ACC_acc_2_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X15Y26"
    )
    port map (
      IA => ALU_Mmux_output_2_4_f5,
      IB => ALU_Mmux_output_2_3_f5,
      SEL => ACC_acc_2_BYINV_1895,
      O => ACC_acc_2_F6MUX_1904
    );
  ACC_acc_2_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_2_0,
      O => ACC_acc_2_BYINV_1895
    );
  ACC_acc_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => ACC_acc_2_CLKINV_1893
    );
  ACC_acc_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmAccLoad_0,
      O => ACC_acc_2_CEINV_1892
    );
  ALU_Mmux_output_2_51 : X_LUT4
    generic map(
      INIT => X"7676",
      LOC => "SLICE_X15Y27"
    )
    port map (
      ADR0 => wireFsmUlaSelector(0),
      ADR1 => ACC_acc(2),
      ADR2 => regRDM_acc(2),
      ADR3 => VCC,
      O => ALU_Mmux_output_2_51_1944
    );
  ALU_Mmux_output_2_4_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X15Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Mmux_output_2_4_f5_F5MUX_1946,
      O => ALU_Mmux_output_2_4_f5
    );
  ALU_Mmux_output_2_4_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X15Y27"
    )
    port map (
      IA => ALU_Mmux_output_2_6_1936,
      IB => ALU_Mmux_output_2_51_1944,
      SEL => ALU_Mmux_output_2_4_f5_BXINV_1938,
      O => ALU_Mmux_output_2_4_f5_F5MUX_1946
    );
  ALU_Mmux_output_2_4_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_1_0,
      O => ALU_Mmux_output_2_4_f5_BXINV_1938
    );
  ALU_Mmux_output_2_6 : X_LUT4
    generic map(
      INIT => X"D580",
      LOC => "SLICE_X15Y27"
    )
    port map (
      ADR0 => wireFsmUlaSelector(0),
      ADR1 => ACC_acc(2),
      ADR2 => regRDM_acc(2),
      ADR3 => ALU_output_7_add0000(2),
      O => ALU_Mmux_output_2_6_1936
    );
  FLAGNZ_fioN_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X15Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => FLAGNZ_fioN_FFY_RST
    );
  FLAGNZ_fioN : X_FF
    generic map(
      LOC => "SLICE_X15Y24",
      INIT => '0'
    )
    port map (
      I => FLAGNZ_fioN_DYMUX_1976,
      CE => FLAGNZ_fioN_CEINV_1962,
      CLK => FLAGNZ_fioN_CLKINV_1963,
      SET => GND,
      RST => FLAGNZ_fioN_FFY_RST,
      O => FLAGNZ_fioN_1038
    );
  ALU_Mmux_output_7_4 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X15Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => wireFsmUlaSelector(0),
      ADR2 => ACC_acc(6),
      ADR3 => ALU_output_7_mult0000(7),
      O => ALU_Mmux_output_7_4_1990
    );
  FLAGNZ_fioN_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X15Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => FLAGNZ_fioN_F5MUX_1992,
      O => ALU_Mmux_output_7_3_f5
    );
  FLAGNZ_fioN_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X15Y24"
    )
    port map (
      IA => ALU_Mmux_output_7_5_1972,
      IB => ALU_Mmux_output_7_4_1990,
      SEL => FLAGNZ_fioN_BXINV_1984,
      O => FLAGNZ_fioN_F5MUX_1992
    );
  FLAGNZ_fioN_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_1_0,
      O => FLAGNZ_fioN_BXINV_1984
    );
  FLAGNZ_fioN_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => FLAGNZ_fioN_GYMUX_1975,
      O => FLAGNZ_fioN_DYMUX_1976
    );
  FLAGNZ_fioN_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => FLAGNZ_fioN_GYMUX_1975,
      O => wireAluAcc(7)
    );
  FLAGNZ_fioN_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => FLAGNZ_fioN_F6MUX_1974,
      O => FLAGNZ_fioN_GYMUX_1975
    );
  FLAGNZ_fioN_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X15Y24"
    )
    port map (
      IA => ALU_Mmux_output_7_4_f5,
      IB => ALU_Mmux_output_7_3_f5,
      SEL => FLAGNZ_fioN_BYINV_1965,
      O => FLAGNZ_fioN_F6MUX_1974
    );
  FLAGNZ_fioN_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_2_0,
      O => FLAGNZ_fioN_BYINV_1965
    );
  FLAGNZ_fioN_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => FLAGNZ_fioN_CLKINV_1963
    );
  FLAGNZ_fioN_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmAccLoad_0,
      O => FLAGNZ_fioN_CEINV_1962
    );
  ALU_Mmux_output_7_5 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X15Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => wireFsmUlaSelector(0),
      ADR2 => regRDM_acc(7),
      ADR3 => VCC,
      O => ALU_Mmux_output_7_5_1972
    );
  ALU_Mmux_output_7_51 : X_LUT4
    generic map(
      INIT => X"33FC",
      LOC => "SLICE_X15Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => wireFsmUlaSelector(0),
      ADR2 => regRDM_acc(7),
      ADR3 => FLAGNZ_fioN_1038,
      O => ALU_Mmux_output_7_51_2014
    );
  ALU_Mmux_output_7_4_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X15Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Mmux_output_7_4_f5_F5MUX_2016,
      O => ALU_Mmux_output_7_4_f5
    );
  ALU_Mmux_output_7_4_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X15Y25"
    )
    port map (
      IA => ALU_Mmux_output_7_6_2006,
      IB => ALU_Mmux_output_7_51_2014,
      SEL => ALU_Mmux_output_7_4_f5_BXINV_2008,
      O => ALU_Mmux_output_7_4_f5_F5MUX_2016
    );
  ALU_Mmux_output_7_4_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_1_0,
      O => ALU_Mmux_output_7_4_f5_BXINV_2008
    );
  ALU_Mmux_output_7_6 : X_LUT4
    generic map(
      INIT => X"B380",
      LOC => "SLICE_X15Y25"
    )
    port map (
      ADR0 => FLAGNZ_fioN_1038,
      ADR1 => wireFsmUlaSelector(0),
      ADR2 => regRDM_acc(7),
      ADR3 => ALU_output_7_add0000(7),
      O => ALU_Mmux_output_7_6_2006
    );
  selmuxrdm_OBUF : X_OBUF
    generic map(
      LOC => "PAD9"
    )
    port map (
      I => selmuxrdm_O,
      O => selmuxrdm
    );
  outsinalread_OBUF : X_OBUF
    generic map(
      LOC => "PAD35"
    )
    port map (
      I => outsinalread_O,
      O => outsinalread
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  outRIcarga_OBUF : X_OBUF
    generic map(
      LOC => "PAD49"
    )
    port map (
      I => outRIcarga_O,
      O => outRIcarga
    );
  outmemoria_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => outmemoria_0_O,
      O => outmemoria(0)
    );
  outpccarga_OBUF : X_OBUF
    generic map(
      LOC => "PAD34"
    )
    port map (
      I => outpccarga_O,
      O => outpccarga
    );
  outmemoria_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD93"
    )
    port map (
      I => outmemoria_1_O,
      O => outmemoria(1)
    );
  outPC_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD38"
    )
    port map (
      I => outPC_0_O,
      O => outPC(0)
    );
  outN_OBUF : X_OBUF
    generic map(
      LOC => "PAD24"
    )
    port map (
      I => outN_O,
      O => outN
    );
  outmemoria_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD42"
    )
    port map (
      I => outmemoria_2_O,
      O => outmemoria(2)
    );
  outPC_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD15"
    )
    port map (
      I => outPC_1_O,
      O => outPC(1)
    );
  outmemoria_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD43"
    )
    port map (
      I => outmemoria_3_O,
      O => outmemoria(3)
    );
  outPC_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD10"
    )
    port map (
      I => outPC_2_O,
      O => outPC(2)
    );
  outmemoria_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD92"
    )
    port map (
      I => outmemoria_4_O,
      O => outmemoria(4)
    );
  outPC_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD14"
    )
    port map (
      I => outPC_3_O,
      O => outPC(3)
    );
  outmemoria_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD91"
    )
    port map (
      I => outmemoria_5_O,
      O => outmemoria(5)
    );
  outPC_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => outPC_4_O,
      O => outPC(4)
    );
  outIR_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD62"
    )
    port map (
      I => outIR_0_O,
      O => outIR(0)
    );
  outmemoria_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD45"
    )
    port map (
      I => outmemoria_6_O,
      O => outmemoria(6)
    );
  outPC_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD97"
    )
    port map (
      I => outPC_5_O,
      O => outPC(5)
    );
  outIR_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD55"
    )
    port map (
      I => outIR_1_O,
      O => outIR(1)
    );
  outACC_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD39"
    )
    port map (
      I => outACC_0_O,
      O => outACC(0)
    );
  outmemoria_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD65"
    )
    port map (
      I => outmemoria_7_O,
      O => outmemoria(7)
    );
  outPC_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD17"
    )
    port map (
      I => outPC_6_O,
      O => outPC(6)
    );
  outIR_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD25"
    )
    port map (
      I => outIR_2_O,
      O => outIR(2)
    );
  outACC_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD63"
    )
    port map (
      I => outACC_1_O,
      O => outACC(1)
    );
  outZ_OBUF : X_OBUF
    generic map(
      LOC => "PAD18"
    )
    port map (
      I => outZ_O,
      O => outZ
    );
  outPC_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD11"
    )
    port map (
      I => outPC_7_O,
      O => outPC(7)
    );
  outIR_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD8"
    )
    port map (
      I => outIR_3_O,
      O => outIR(3)
    );
  outACC_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD69"
    )
    port map (
      I => outACC_2_O,
      O => outACC(2)
    );
  outACC_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD40"
    )
    port map (
      I => outACC_3_O,
      O => outACC(3)
    );
  outACC_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD68"
    )
    port map (
      I => outACC_4_O,
      O => outACC(4)
    );
  outACC_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD37"
    )
    port map (
      I => outACC_5_O,
      O => outACC(5)
    );
  outACC_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD59"
    )
    port map (
      I => outACC_6_O,
      O => outACC(6)
    );
  outACC_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD48"
    )
    port map (
      I => outACC_7_O,
      O => outACC(7)
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "IPAD36",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset,
      O => reset_INBUF
    );
  saidaRDM_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD61"
    )
    port map (
      I => saidaRDM_0_O,
      O => saidaRDM(0)
    );
  saidaRDM_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => saidaRDM_1_O,
      O => saidaRDM(1)
    );
  saidaRDM_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD54"
    )
    port map (
      I => saidaRDM_2_O,
      O => saidaRDM(2)
    );
  saidaRDM_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD64"
    )
    port map (
      I => saidaRDM_3_O,
      O => saidaRDM(3)
    );
  outSinalRI_OBUF : X_OBUF
    generic map(
      LOC => "PAD44"
    )
    port map (
      I => outSinalRI_O,
      O => outSinalRI
    );
  saidaRDM_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD78"
    )
    port map (
      I => saidaRDM_4_O,
      O => saidaRDM(4)
    );
  saidaRDM_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD71"
    )
    port map (
      I => saidaRDM_5_O,
      O => saidaRDM(5)
    );
  saidaRDM_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD75"
    )
    port map (
      I => saidaRDM_6_O,
      O => saidaRDM(6)
    );
  rstmem_IBUF : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 555 ps
    )
    port map (
      I => rstmem,
      O => rstmem_INBUF
    );
  saidaRDM_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD72"
    )
    port map (
      I => saidaRDM_7_O,
      O => saidaRDM(7)
    );
  outsinalREM_OBUF : X_OBUF
    generic map(
      LOC => "PAD94"
    )
    port map (
      I => outsinalREM_O,
      O => outsinalREM
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y10"
    )
    port map (
      I0 => clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_BUFG_I0_INV
    );
  ALU_Mmult_output_7_mult0000_RSTPINV : X_BUF
    generic map(
      LOC => "MULT18X18_X0Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_Mmult_output_7_mult0000_RSTP_INT
    );
  ALU_Mmult_output_7_mult0000_RSTBINV : X_BUF
    generic map(
      LOC => "MULT18X18_X0Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_Mmult_output_7_mult0000_RSTB_INT
    );
  ALU_Mmult_output_7_mult0000_RSTAINV : X_BUF
    generic map(
      LOC => "MULT18X18_X0Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_Mmult_output_7_mult0000_RSTA_INT
    );
  ALU_Mmult_output_7_mult0000_CLKINV : X_BUF
    generic map(
      LOC => "MULT18X18_X0Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_Mmult_output_7_mult0000_CLK_INT
    );
  ALU_Mmult_output_7_mult0000_CEPINV : X_BUF
    generic map(
      LOC => "MULT18X18_X0Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_Mmult_output_7_mult0000_CEP_INT
    );
  ALU_Mmult_output_7_mult0000_CEBINV : X_BUF
    generic map(
      LOC => "MULT18X18_X0Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_Mmult_output_7_mult0000_CEB_INT
    );
  ALU_Mmult_output_7_mult0000_CEAINV : X_BUF
    generic map(
      LOC => "MULT18X18_X0Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_Mmult_output_7_mult0000_CEA_INT
    );
  ALU_Mmult_output_7_mult0000 : X_MULT18X18SIO
    generic map(
      AREG => 0,
      BREG => 0,
      PREG => 0,
      B_INPUT => "DIRECT",
      LOC => "MULT18X18_X0Y3"
    )
    port map (
      CEA => ALU_Mmult_output_7_mult0000_CEA_INT,
      CEB => ALU_Mmult_output_7_mult0000_CEB_INT,
      CEP => ALU_Mmult_output_7_mult0000_CEP_INT,
      CLK => ALU_Mmult_output_7_mult0000_CLK_INT,
      RSTA => ALU_Mmult_output_7_mult0000_RSTA_INT,
      RSTB => ALU_Mmult_output_7_mult0000_RSTB_INT,
      RSTP => ALU_Mmult_output_7_mult0000_RSTP_INT,
      A(17) => GND,
      A(16) => GND,
      A(15) => GND,
      A(14) => GND,
      A(13) => GND,
      A(12) => GND,
      A(11) => GND,
      A(10) => GND,
      A(9) => GND,
      A(8) => GND,
      A(7) => GND,
      A(6) => GND,
      A(5) => GND,
      A(4) => GND,
      A(3) => NlwBufferSignal_ALU_Mmult_output_7_mult0000_A(3),
      A(2) => NlwBufferSignal_ALU_Mmult_output_7_mult0000_A(2),
      A(1) => NlwBufferSignal_ALU_Mmult_output_7_mult0000_A(1),
      A(0) => NlwBufferSignal_ALU_Mmult_output_7_mult0000_A(0),
      B(17) => GND,
      B(16) => GND,
      B(15) => GND,
      B(14) => GND,
      B(13) => GND,
      B(12) => GND,
      B(11) => GND,
      B(10) => GND,
      B(9) => GND,
      B(8) => GND,
      B(7) => GND,
      B(6) => GND,
      B(5) => GND,
      B(4) => GND,
      B(3) => NlwBufferSignal_ALU_Mmult_output_7_mult0000_B(3),
      B(2) => NlwBufferSignal_ALU_Mmult_output_7_mult0000_B(2),
      B(1) => NlwBufferSignal_ALU_Mmult_output_7_mult0000_B(1),
      B(0) => NlwBufferSignal_ALU_Mmult_output_7_mult0000_B(0),
      BCIN(17) => ALU_Mmult_output_7_mult0000_BCIN17,
      BCIN(16) => ALU_Mmult_output_7_mult0000_BCIN16,
      BCIN(15) => ALU_Mmult_output_7_mult0000_BCIN15,
      BCIN(14) => ALU_Mmult_output_7_mult0000_BCIN14,
      BCIN(13) => ALU_Mmult_output_7_mult0000_BCIN13,
      BCIN(12) => ALU_Mmult_output_7_mult0000_BCIN12,
      BCIN(11) => ALU_Mmult_output_7_mult0000_BCIN11,
      BCIN(10) => ALU_Mmult_output_7_mult0000_BCIN10,
      BCIN(9) => ALU_Mmult_output_7_mult0000_BCIN9,
      BCIN(8) => ALU_Mmult_output_7_mult0000_BCIN8,
      BCIN(7) => ALU_Mmult_output_7_mult0000_BCIN7,
      BCIN(6) => ALU_Mmult_output_7_mult0000_BCIN6,
      BCIN(5) => ALU_Mmult_output_7_mult0000_BCIN5,
      BCIN(4) => ALU_Mmult_output_7_mult0000_BCIN4,
      BCIN(3) => ALU_Mmult_output_7_mult0000_BCIN3,
      BCIN(2) => ALU_Mmult_output_7_mult0000_BCIN2,
      BCIN(1) => ALU_Mmult_output_7_mult0000_BCIN1,
      BCIN(0) => ALU_Mmult_output_7_mult0000_BCIN0,
      P(35) => ALU_Mmult_output_7_mult0000_P35,
      P(34) => ALU_Mmult_output_7_mult0000_P34,
      P(33) => ALU_Mmult_output_7_mult0000_P33,
      P(32) => ALU_Mmult_output_7_mult0000_P32,
      P(31) => ALU_Mmult_output_7_mult0000_P31,
      P(30) => ALU_Mmult_output_7_mult0000_P30,
      P(29) => ALU_Mmult_output_7_mult0000_P29,
      P(28) => ALU_Mmult_output_7_mult0000_P28,
      P(27) => ALU_Mmult_output_7_mult0000_P27,
      P(26) => ALU_Mmult_output_7_mult0000_P26,
      P(25) => ALU_Mmult_output_7_mult0000_P25,
      P(24) => ALU_Mmult_output_7_mult0000_P24,
      P(23) => ALU_Mmult_output_7_mult0000_P23,
      P(22) => ALU_Mmult_output_7_mult0000_P22,
      P(21) => ALU_Mmult_output_7_mult0000_P21,
      P(20) => ALU_Mmult_output_7_mult0000_P20,
      P(19) => ALU_Mmult_output_7_mult0000_P19,
      P(18) => ALU_Mmult_output_7_mult0000_P18,
      P(17) => ALU_Mmult_output_7_mult0000_P17,
      P(16) => ALU_Mmult_output_7_mult0000_P16,
      P(15) => ALU_Mmult_output_7_mult0000_P15,
      P(14) => ALU_Mmult_output_7_mult0000_P14,
      P(13) => ALU_Mmult_output_7_mult0000_P13,
      P(12) => ALU_Mmult_output_7_mult0000_P12,
      P(11) => ALU_Mmult_output_7_mult0000_P11,
      P(10) => ALU_Mmult_output_7_mult0000_P10,
      P(9) => ALU_Mmult_output_7_mult0000_P9,
      P(8) => ALU_Mmult_output_7_mult0000_P8,
      P(7) => ALU_output_7_mult0000(7),
      P(6) => ALU_output_7_mult0000(6),
      P(5) => ALU_output_7_mult0000(5),
      P(4) => ALU_output_7_mult0000(4),
      P(3) => ALU_output_7_mult0000(3),
      P(2) => ALU_output_7_mult0000(2),
      P(1) => ALU_output_7_mult0000(1),
      P(0) => ALU_output_7_mult0000(0),
      BCOUT(17) => ALU_Mmult_output_7_mult0000_BCOUT17,
      BCOUT(16) => ALU_Mmult_output_7_mult0000_BCOUT16,
      BCOUT(15) => ALU_Mmult_output_7_mult0000_BCOUT15,
      BCOUT(14) => ALU_Mmult_output_7_mult0000_BCOUT14,
      BCOUT(13) => ALU_Mmult_output_7_mult0000_BCOUT13,
      BCOUT(12) => ALU_Mmult_output_7_mult0000_BCOUT12,
      BCOUT(11) => ALU_Mmult_output_7_mult0000_BCOUT11,
      BCOUT(10) => ALU_Mmult_output_7_mult0000_BCOUT10,
      BCOUT(9) => ALU_Mmult_output_7_mult0000_BCOUT9,
      BCOUT(8) => ALU_Mmult_output_7_mult0000_BCOUT8,
      BCOUT(7) => ALU_Mmult_output_7_mult0000_BCOUT7,
      BCOUT(6) => ALU_Mmult_output_7_mult0000_BCOUT6,
      BCOUT(5) => ALU_Mmult_output_7_mult0000_BCOUT5,
      BCOUT(4) => ALU_Mmult_output_7_mult0000_BCOUT4,
      BCOUT(3) => ALU_Mmult_output_7_mult0000_BCOUT3,
      BCOUT(2) => ALU_Mmult_output_7_mult0000_BCOUT2,
      BCOUT(1) => ALU_Mmult_output_7_mult0000_BCOUT1,
      BCOUT(0) => ALU_Mmult_output_7_mult0000_BCOUT0
    );
  MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram : X_RAMB16_S36_S36
    generic map(
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      SIM_COLLISION_CHECK => "WARNING_ONLY",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"0002000000030002000100000002030000030000000202000002000000000000",
      INIT_01 => X"0003000000020202000200000003000300010000000203010003000000020201",
      INIT_02 => X"0001000000020303000300000002020300020000000301000001000000020302",
      INIT_03 => X"0002000000030100000200000003000300020000000300020002000000030101",
      INIT_04 => X"0000000000000000000000000000000000000000000000000303000000030101",
      INIT_05 => X"0200000200020102010000010002020000020000010003000003010101020100",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      LOC => "RAMB16_X0Y2",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => clk_BUFGP,
      CLKB => clk_BUFGP,
      ENA => '1',
      ENB => '1',
      SSRA => '0',
      SSRB => rstmem_IBUF_1091,
      WEA => wireWriteMemory_0,
      WEB => '0',
      ADDRA(8) => '0',
      ADDRA(7) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_0_Q,
      ADDRB(8) => '0',
      ADDRB(7) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_7_Q,
      ADDRB(6) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_6_Q,
      ADDRB(5) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_5_Q,
      ADDRB(4) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_4_Q,
      ADDRB(3) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_3_Q,
      ADDRB(2) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_2_Q,
      ADDRB(1) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_1_Q,
      ADDRB(0) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_0_Q,
      DIA(31) => '0',
      DIA(30) => '0',
      DIA(29) => '0',
      DIA(28) => '0',
      DIA(27) => '0',
      DIA(26) => '0',
      DIA(25) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_25_Q,
      DIA(24) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_24_Q,
      DIA(23) => '0',
      DIA(22) => '0',
      DIA(21) => '0',
      DIA(20) => '0',
      DIA(19) => '0',
      DIA(18) => '0',
      DIA(17) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_17_Q,
      DIA(16) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_16_Q,
      DIA(15) => '0',
      DIA(14) => '0',
      DIA(13) => '0',
      DIA(12) => '0',
      DIA(11) => '0',
      DIA(10) => '0',
      DIA(9) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_9_Q,
      DIA(8) => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_8_Q,
      DIA(7) => '0',
      DIA(6) => '0',
      DIA(5) => '0',
      DIA(4) => '0',
      DIA(3) => '0',
      DIA(2) => '0',
      DIA(1) => regRDM_acc(1),
      DIA(0) => regRDM_acc(0),
      DIPA(3) => '0',
      DIPA(2) => '0',
      DIPA(1) => '0',
      DIPA(0) => '0',
      DIB(31) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB31,
      DIB(30) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB30,
      DIB(29) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB29,
      DIB(28) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB28,
      DIB(27) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB27,
      DIB(26) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB26,
      DIB(25) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB25,
      DIB(24) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB24,
      DIB(23) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB23,
      DIB(22) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB22,
      DIB(21) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB21,
      DIB(20) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB20,
      DIB(19) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB19,
      DIB(18) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB18,
      DIB(17) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB17,
      DIB(16) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB16,
      DIB(15) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB15,
      DIB(14) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB14,
      DIB(13) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB13,
      DIB(12) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB12,
      DIB(11) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB11,
      DIB(10) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB10,
      DIB(9) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB9,
      DIB(8) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB8,
      DIB(7) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB7,
      DIB(6) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB6,
      DIB(5) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB5,
      DIB(4) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB4,
      DIB(3) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB3,
      DIB(2) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB2,
      DIB(1) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB1,
      DIB(0) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB0,
      DIPB(3) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIPB3,
      DIPB(2) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIPB2,
      DIPB(1) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIPB1,
      DIPB(0) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIPB0,
      DOA(31) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA31,
      DOA(30) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA30,
      DOA(29) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA29,
      DOA(28) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA28,
      DOA(27) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA27,
      DOA(26) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA26,
      DOA(25) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA25,
      DOA(24) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA24,
      DOA(23) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA23,
      DOA(22) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA22,
      DOA(21) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA21,
      DOA(20) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA20,
      DOA(19) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA19,
      DOA(18) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA18,
      DOA(17) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA17,
      DOA(16) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA16,
      DOA(15) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA15,
      DOA(14) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA14,
      DOA(13) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA13,
      DOA(12) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA12,
      DOA(11) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA11,
      DOA(10) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA10,
      DOA(9) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA9,
      DOA(8) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA8,
      DOA(7) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA7,
      DOA(6) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA6,
      DOA(5) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA5,
      DOA(4) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA4,
      DOA(3) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA3,
      DOA(2) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA2,
      DOA(1) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA1,
      DOA(0) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA0,
      DOPA(3) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPA3,
      DOPA(2) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPA2,
      DOPA(1) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPA1,
      DOPA(0) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPA0,
      DOB(31) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB31,
      DOB(30) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB30,
      DOB(29) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB29,
      DOB(28) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB28,
      DOB(27) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB27,
      DOB(26) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB26,
      DOB(25) => outmemoria_7_OBUF_1087,
      DOB(24) => outmemoria_6_OBUF_1085,
      DOB(23) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB23,
      DOB(22) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB22,
      DOB(21) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB21,
      DOB(20) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB20,
      DOB(19) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB19,
      DOB(18) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB18,
      DOB(17) => outmemoria_5_OBUF_1083,
      DOB(16) => outmemoria_4_OBUF_1082,
      DOB(15) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB15,
      DOB(14) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB14,
      DOB(13) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB13,
      DOB(12) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB12,
      DOB(11) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB11,
      DOB(10) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB10,
      DOB(9) => outmemoria_3_OBUF_1081,
      DOB(8) => outmemoria_2_OBUF_1080,
      DOB(7) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB7,
      DOB(6) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB6,
      DOB(5) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB5,
      DOB(4) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB4,
      DOB(3) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB3,
      DOB(2) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB2,
      DOB(1) => outmemoria_1_OBUF_1079,
      DOB(0) => outmemoria_0_OBUF_1077,
      DOPB(3) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPB3,
      DOPB(2) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPB2,
      DOPB(1) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPB1,
      DOPB(0) => MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPB0
    );
  ACC_acc_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_0_FXMUX_2715,
      O => ACC_acc_0_DXMUX_2716
    );
  ACC_acc_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_0_FXMUX_2715,
      O => wireAluAcc(0)
    );
  ACC_acc_0_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc_0_F5MUX_2714,
      O => ACC_acc_0_FXMUX_2715
    );
  ACC_acc_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X12Y23"
    )
    port map (
      IA => N24,
      IB => N25,
      SEL => ACC_acc_0_BXINV_2707,
      O => ACC_acc_0_F5MUX_2714
    );
  ACC_acc_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_1_0,
      O => ACC_acc_0_BXINV_2707
    );
  ACC_acc_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => ACC_acc_0_CLKINV_2699
    );
  ACC_acc_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmAccLoad_0,
      O => ACC_acc_0_CEINV_2698
    );
  FSMNeander_estado_FSM_FFd15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd15_F5MUX_2761,
      O => FSMNeander_estado_FSM_FFd15_DXMUX_2763
    );
  FSMNeander_estado_FSM_FFd15_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X20Y26"
    )
    port map (
      IA => FSMNeander_estado_FSM_FFd16_rt_2745,
      IB => FSMNeander_estado_FSM_FFd15_In1_2759,
      SEL => FSMNeander_estado_FSM_FFd15_BXINV_2754,
      O => FSMNeander_estado_FSM_FFd15_F5MUX_2761
    );
  FSMNeander_estado_FSM_FFd15_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireDecFsmOut_15_Q,
      O => FSMNeander_estado_FSM_FFd15_BXINV_2754
    );
  FSMNeander_estado_FSM_FFd15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd17_1108,
      O => FSMNeander_estado_FSM_FFd15_DYMUX_2747
    );
  FSMNeander_estado_FSM_FFd15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => FSMNeander_estado_FSM_FFd15_SRINV_2736
    );
  FSMNeander_estado_FSM_FFd15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => FSMNeander_estado_FSM_FFd15_CLKINV_2735
    );
  FSMNeander_estado_FSM_FFd18_In6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd18_In6_F5MUX_2793,
      O => FSMNeander_estado_FSM_FFd18_In6
    );
  FSMNeander_estado_FSM_FFd18_In6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X21Y31"
    )
    port map (
      IA => FSMNeander_estado_FSM_FFd18_In61_2780,
      IB => FSMNeander_estado_FSM_FFd18_In6_F,
      SEL => FSMNeander_estado_FSM_FFd18_In6_BXINV_2782,
      O => FSMNeander_estado_FSM_FFd18_In6_F5MUX_2793
    );
  FSMNeander_estado_FSM_FFd18_In6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd3_1114,
      O => FSMNeander_estado_FSM_FFd18_In6_BXINV_2782
    );
  FSMNeander_nj_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_nj_F5MUX_2818,
      O => FSMNeander_nj
    );
  FSMNeander_nj_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X21Y24"
    )
    port map (
      IA => FSMNeander_nj11_2809,
      IB => FSMNeander_nj1,
      SEL => FSMNeander_nj_BXINV_2811,
      O => FSMNeander_nj_F5MUX_2818
    );
  FSMNeander_nj_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => REGIR_ri(1),
      O => FSMNeander_nj_BXINV_2811
    );
  outsinalREM_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => outsinalREM_OBUF_F5MUX_2843,
      O => outsinalREM_OBUF_1092
    );
  outsinalREM_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X14Y28"
    )
    port map (
      IA => FSMNeander_estado_FSM_Out20,
      IB => outsinalREM_OBUF_F,
      SEL => outsinalREM_OBUF_BXINV_2832,
      O => outsinalREM_OBUF_F5MUX_2843
    );
  outsinalREM_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd8_1119,
      O => outsinalREM_OBUF_BXINV_2832
    );
  N20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => N20_F5MUX_2868,
      O => N20
    );
  N20_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X14Y24"
    )
    port map (
      IA => FSMNeander_fioUlaOP_0_SW0,
      IB => FSMNeander_estado_FSM_FFd3_rt_2866,
      SEL => N20_BXINV_2858,
      O => N20_F5MUX_2868
    );
  N20_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => REGIR_ri(3),
      O => N20_BXINV_2858
    );
  FSMNeander_estado_FSM_FFd10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd10_In,
      O => FSMNeander_estado_FSM_FFd10_DXMUX_2898
    );
  FSMNeander_estado_FSM_FFd10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => N36_pack_1,
      O => N36
    );
  FSMNeander_estado_FSM_FFd10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => FSMNeander_estado_FSM_FFd10_CLKINV_2882
    );
  wireFsmUlaSelector_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector(2),
      O => wireFsmUlaSelector_2_0
    );
  wireFsmUlaSelector_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_fioUlaOP_2_SW0_O_pack_1,
      O => FSMNeander_fioUlaOP_2_SW0_O
    );
  wireFsmUlaSelector_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector(1),
      O => wireFsmUlaSelector_1_0
    );
  wireFsmUlaSelector_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_ula1op_pack_1,
      O => FSMNeander_ula1op
    );
  ALU_Mmux_output_0_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Mmux_output_0_6_2974,
      O => ALU_Mmux_output_0_6_0
    );
  ALU_Mmux_output_0_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmUlaSelector_0_pack_1,
      O => wireFsmUlaSelector(0)
    );
  FSMNeander_estado_FSM_FFd13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd13_In,
      O => FSMNeander_estado_FSM_FFd13_DXMUX_3005
    );
  FSMNeander_estado_FSM_FFd13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd13_In28_SW0_O_pack_1,
      O => FSMNeander_estado_FSM_FFd13_In28_SW0_O
    );
  FSMNeander_estado_FSM_FFd13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => FSMNeander_estado_FSM_FFd13_CLKINV_2988
    );
  FLAGNZ_fioZ_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireAluZ,
      O => FLAGNZ_fioZ_DXMUX_3042
    );
  FLAGNZ_fioZ_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_isZERO_cmp_eq00003_O_pack_1,
      O => ALU_isZERO_cmp_eq00003_O
    );
  FLAGNZ_fioZ_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => FLAGNZ_fioZ_CLKINV_3024
    );
  FLAGNZ_fioZ_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmAccLoad_0,
      O => FLAGNZ_fioZ_CEINV_3023
    );
  N16_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => N16,
      O => N16_0
    );
  N16_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_j_pack_1,
      O => FSMNeander_j_1134
    );
  FSMNeander_estado_FSM_FFd4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd4_In,
      O => FSMNeander_estado_FSM_FFd4_DXMUX_3109
    );
  FSMNeander_estado_FSM_FFd4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd3_In,
      O => FSMNeander_estado_FSM_FFd4_DYMUX_3093
    );
  FSMNeander_estado_FSM_FFd4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => FSMNeander_estado_FSM_FFd4_SRINV_3084
    );
  FSMNeander_estado_FSM_FFd4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => FSMNeander_estado_FSM_FFd4_CLKINV_3083
    );
  regREM_acc_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxMAOut(1),
      O => regREM_acc_1_DXMUX_3154
    );
  regREM_acc_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxMAOut(0),
      O => regREM_acc_1_DYMUX_3139
    );
  regREM_acc_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => regREM_acc_1_SRINV_3131
    );
  regREM_acc_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => regREM_acc_1_CLKINV_3130
    );
  regREM_acc_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => outsinalREM_OBUF_1092,
      O => regREM_acc_1_CEINV_3129
    );
  PC_Pc_3 : X_FF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      I => PC_Pc_2_DYMUX_1243,
      CE => PC_Pc_2_CEINV_1222,
      CLK => PC_Pc_2_CLKINV_1223,
      SET => GND,
      RST => PC_Pc_2_SRINV_1224,
      O => PC_Pc(3)
    );
  regREM_acc_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxMAOut(3),
      O => regREM_acc_3_DXMUX_3200
    );
  regREM_acc_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxMAOut(2),
      O => regREM_acc_3_DYMUX_3185
    );
  regREM_acc_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => regREM_acc_3_SRINV_3177
    );
  regREM_acc_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => regREM_acc_3_CLKINV_3176
    );
  regREM_acc_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => outsinalREM_OBUF_1092,
      O => regREM_acc_3_CEINV_3175
    );
  regREM_acc_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxMAOut(5),
      O => regREM_acc_5_DXMUX_3246
    );
  regREM_acc_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxMAOut(4),
      O => regREM_acc_5_DYMUX_3231
    );
  regREM_acc_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => regREM_acc_5_SRINV_3223
    );
  regREM_acc_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => regREM_acc_5_CLKINV_3222
    );
  regREM_acc_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => outsinalREM_OBUF_1092,
      O => regREM_acc_5_CEINV_3221
    );
  regREM_acc_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxMAOut(7),
      O => regREM_acc_7_DXMUX_3292
    );
  regREM_acc_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxMAOut(6),
      O => regREM_acc_7_DYMUX_3277
    );
  regREM_acc_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => regREM_acc_7_SRINV_3269
    );
  regREM_acc_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => regREM_acc_7_CLKINV_3268
    );
  regREM_acc_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => outsinalREM_OBUF_1092,
      O => regREM_acc_7_CEINV_3267
    );
  REGIR_ri_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => REGIR_ri_1_FXMUX_3339,
      O => REGIR_ri_1_DXMUX_3340
    );
  REGIR_ri_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => REGIR_ri_1_FXMUX_3339,
      O => wireMuxToRdm_5_0
    );
  REGIR_ri_1_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxToRdm(5),
      O => REGIR_ri_1_FXMUX_3339
    );
  REGIR_ri_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => REGIR_ri_1_GYMUX_3323,
      O => REGIR_ri_1_DYMUX_3324
    );
  REGIR_ri_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => REGIR_ri_1_GYMUX_3323,
      O => wireMuxToRdm_4_0
    );
  REGIR_ri_1_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxToRdm(4),
      O => REGIR_ri_1_GYMUX_3323
    );
  REGIR_ri_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => REGIR_ri_1_SRINV_3315
    );
  REGIR_ri_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => REGIR_ri_1_CLKINV_3314
    );
  REGIR_ri_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => outSinalRI_OBUF_0,
      O => REGIR_ri_1_CEINV_3313
    );
  FSMNeander_estado_FSM_FFd14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => outSinalRI_OBUF_3380,
      O => outSinalRI_OBUF_0
    );
  FSMNeander_estado_FSM_FFd14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd14_In,
      O => FSMNeander_estado_FSM_FFd14_DYMUX_3367
    );
  FSMNeander_estado_FSM_FFd14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => FSMNeander_estado_FSM_FFd14_CLKINV_3356
    );
  REGIR_ri_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => REGIR_ri_2_FXMUX_3412,
      O => REGIR_ri_2_DXMUX_3413
    );
  REGIR_ri_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => REGIR_ri_2_FXMUX_3412,
      O => wireMuxToRdm_6_0
    );
  REGIR_ri_2_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxToRdm(6),
      O => REGIR_ri_2_FXMUX_3412
    );
  REGIR_ri_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxToRdm_7_0,
      O => REGIR_ri_2_DYMUX_3397
    );
  REGIR_ri_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => REGIR_ri_2_SRINV_3395
    );
  REGIR_ri_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => REGIR_ri_2_CLKINV_3394
    );
  REGIR_ri_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => outSinalRI_OBUF_0,
      O => REGIR_ri_2_CEINV_3393
    );
  regRDM_acc_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc_1_FXMUX_3460,
      O => regRDM_acc_1_DXMUX_3461
    );
  regRDM_acc_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc_1_FXMUX_3460,
      O => wireMuxToRdm_1_0
    );
  regRDM_acc_1_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxToRdm(1),
      O => regRDM_acc_1_FXMUX_3460
    );
  regRDM_acc_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc_1_GYMUX_3444,
      O => regRDM_acc_1_DYMUX_3445
    );
  regRDM_acc_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc_1_GYMUX_3444,
      O => wireMuxToRdm_0_0
    );
  regRDM_acc_1_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxToRdm(0),
      O => regRDM_acc_1_GYMUX_3444
    );
  regRDM_acc_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => regRDM_acc_1_SRINV_3436
    );
  regRDM_acc_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => regRDM_acc_1_CLKINV_3435
    );
  regRDM_acc_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireLoadRdm_0,
      O => regRDM_acc_1_CEINV_3434
    );
  regRDM_acc_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc_3_FXMUX_3508,
      O => regRDM_acc_3_DXMUX_3509
    );
  regRDM_acc_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc_3_FXMUX_3508,
      O => wireMuxToRdm_3_0
    );
  regRDM_acc_3_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxToRdm(3),
      O => regRDM_acc_3_FXMUX_3508
    );
  regRDM_acc_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc_3_GYMUX_3492,
      O => regRDM_acc_3_DYMUX_3493
    );
  regRDM_acc_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc_3_GYMUX_3492,
      O => wireMuxToRdm_2_0
    );
  regRDM_acc_3_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxToRdm(2),
      O => regRDM_acc_3_GYMUX_3492
    );
  regRDM_acc_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => regRDM_acc_3_SRINV_3484
    );
  regRDM_acc_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => regRDM_acc_3_CLKINV_3483
    );
  regRDM_acc_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireLoadRdm_0,
      O => regRDM_acc_3_CEINV_3482
    );
  FSMNeander_estado_FSM_FFd9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd9_In,
      O => FSMNeander_estado_FSM_FFd9_DXMUX_3545
    );
  FSMNeander_estado_FSM_FFd9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireDecFsmOut_1_pack_1,
      O => wireDecFsmOut_1_Q
    );
  FSMNeander_estado_FSM_FFd9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => FSMNeander_estado_FSM_FFd9_CLKINV_3529
    );
  N34_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => N34,
      O => N34_0
    );
  N34_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireDecFsmOut_5_Q,
      O => wireDecFsmOut_5_0
    );
  FSMNeander_ula2op_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_ula2op_3597,
      O => FSMNeander_ula2op_0
    );
  FSMNeander_ula2op_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireDecFsmOut_6_Q,
      O => wireDecFsmOut_6_0
    );
  wireDecFsmOut_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireDecFsmOut_7_Q,
      O => wireDecFsmOut_7_0
    );
  FSMNeander_estado_FSM_FFd2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd4_1073,
      O => FSMNeander_estado_FSM_FFd2_DXMUX_3629
    );
  FSMNeander_estado_FSM_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd10_1126,
      O => FSMNeander_estado_FSM_FFd2_DYMUX_3621
    );
  FSMNeander_estado_FSM_FFd2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => FSMNeander_estado_FSM_FFd2_SRINV_3619
    );
  FSMNeander_estado_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => FSMNeander_estado_FSM_FFd2_CLKINV_3618
    );
  FSMNeander_estado_FSM_FFd6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd7_1121,
      O => FSMNeander_estado_FSM_FFd6_DXMUX_3653
    );
  FSMNeander_estado_FSM_FFd6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd6_1150,
      O => FSMNeander_estado_FSM_FFd6_DYMUX_3645
    );
  FSMNeander_estado_FSM_FFd6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => FSMNeander_estado_FSM_FFd6_SRINV_3643
    );
  FSMNeander_estado_FSM_FFd6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => FSMNeander_estado_FSM_FFd6_CLKINV_3642
    );
  outsinalread_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireWriteMemory,
      O => wireWriteMemory_0
    );
  FSMNeander_estado_FSM_FFd8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd9_1149,
      O => FSMNeander_estado_FSM_FFd8_DXMUX_3701
    );
  FSMNeander_estado_FSM_FFd8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd8_1119,
      O => FSMNeander_estado_FSM_FFd8_DYMUX_3693
    );
  FSMNeander_estado_FSM_FFd8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => FSMNeander_estado_FSM_FFd8_SRINV_3691
    );
  FSMNeander_estado_FSM_FFd8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => FSMNeander_estado_FSM_FFd8_CLKINV_3690
    );
  ALU_Mmux_output_0_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_Mmux_output_0_7_3717,
      O => ALU_Mmux_output_0_7_0
    );
  FSMNeander_estado_FSM_FFd13_In14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd13_In14_3741,
      O => FSMNeander_estado_FSM_FFd13_In14_0
    );
  FSMNeander_estado_FSM_FFd13_In14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireDecFsmOut_15_pack_1,
      O => wireDecFsmOut_15_Q
    );
  wireLoadRdm_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireLoadRdm,
      O => wireLoadRdm_0
    );
  wireFsmAccLoad_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireFsmAccLoad,
      O => wireFsmAccLoad_0
    );
  PC_Pc_not0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc_not0001,
      O => PC_Pc_not0001_0
    );
  FSMNeander_estado_FSM_FFd11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd13_1122,
      O => FSMNeander_estado_FSM_FFd11_DXMUX_3818
    );
  FSMNeander_estado_FSM_FFd11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd12_In,
      O => FSMNeander_estado_FSM_FFd11_DYMUX_3810
    );
  FSMNeander_estado_FSM_FFd11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => FSMNeander_estado_FSM_FFd11_SRINV_3801
    );
  FSMNeander_estado_FSM_FFd11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => FSMNeander_estado_FSM_FFd11_CLKINV_3800
    );
  ALU_isZERO_cmp_eq000028_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_isZERO_cmp_eq000028_3834,
      O => ALU_isZERO_cmp_eq000028_0
    );
  FSMNeander_estado_FSM_FFd18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => N26,
      O => FSMNeander_estado_FSM_FFd18_DXMUX_3875
    );
  FSMNeander_estado_FSM_FFd18_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd18_1123,
      O => FSMNeander_estado_FSM_FFd18_DYMUX_3861
    );
  FSMNeander_estado_FSM_FFd18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd18_In27_O_pack_2,
      O => FSMNeander_estado_FSM_FFd18_In27_O
    );
  FSMNeander_estado_FSM_FFd18_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => FSMNeander_estado_FSM_FFd18_SRINV_3851
    );
  FSMNeander_estado_FSM_FFd18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => FSMNeander_estado_FSM_FFd18_CLKINV_3850
    );
  regRDM_acc_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxToRdm_5_0,
      O => regRDM_acc_5_DXMUX_3901
    );
  regRDM_acc_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxToRdm_4_0,
      O => regRDM_acc_5_DYMUX_3892
    );
  regRDM_acc_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => regRDM_acc_5_SRINV_3890
    );
  regRDM_acc_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => regRDM_acc_5_CLKINV_3889
    );
  regRDM_acc_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireLoadRdm_0,
      O => regRDM_acc_5_CEINV_3888
    );
  regRDM_acc_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc_7_FXMUX_3938,
      O => regRDM_acc_7_DXMUX_3939
    );
  regRDM_acc_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc_7_FXMUX_3938,
      O => wireMuxToRdm_7_0
    );
  regRDM_acc_7_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxToRdm(7),
      O => regRDM_acc_7_FXMUX_3938
    );
  regRDM_acc_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireMuxToRdm_6_0,
      O => regRDM_acc_7_DYMUX_3923
    );
  regRDM_acc_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => regRDM_acc_7_SRINV_3921
    );
  regRDM_acc_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => regRDM_acc_7_CLKINV_3920
    );
  regRDM_acc_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => wireLoadRdm_0,
      O => regRDM_acc_7_CEINV_3919
    );
  PC_Mcount_Pc_lut_1_Q : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X17Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => FSMNeander_estado_FSM_FFd1_998,
      ADR2 => regRDM_acc(1),
      ADR3 => PC_Pc(1),
      O => PC_Mcount_Pc_lut(1)
    );
  PC_Pc_1 : X_FF
    generic map(
      LOC => "SLICE_X17Y27",
      INIT => '0'
    )
    port map (
      I => PC_Pc_0_DYMUX_1181,
      CE => PC_Pc_0_CEINV_1165,
      CLK => PC_Pc_0_CLKINV_1166,
      SET => GND,
      RST => PC_Pc_0_SRINV_1167,
      O => PC_Pc(1)
    );
  PC_Mcount_Pc_lut_2_Q : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X17Y28"
    )
    port map (
      ADR0 => regRDM_acc(2),
      ADR1 => PC_Pc(2),
      ADR2 => VCC,
      ADR3 => FSMNeander_estado_FSM_FFd1_998,
      O => PC_Mcount_Pc_lut(2)
    );
  PC_Pc_2 : X_FF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      I => PC_Pc_2_DXMUX_1261,
      CE => PC_Pc_2_CEINV_1222,
      CLK => PC_Pc_2_CLKINV_1223,
      SET => GND,
      RST => PC_Pc_2_SRINV_1224,
      O => PC_Pc(2)
    );
  PC_Mcount_Pc_lut_5_Q : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X17Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => regRDM_acc(5),
      ADR2 => PC_Pc(5),
      ADR3 => FSMNeander_estado_FSM_FFd1_998,
      O => PC_Mcount_Pc_lut(5)
    );
  PC_Pc_5 : X_FF
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => '0'
    )
    port map (
      I => PC_Pc_4_DYMUX_1303,
      CE => PC_Pc_4_CEINV_1282,
      CLK => PC_Pc_4_CLKINV_1283,
      SET => GND,
      RST => PC_Pc_4_SRINV_1284,
      O => PC_Pc(5)
    );
  PC_Mcount_Pc_lut_4_Q : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X17Y29"
    )
    port map (
      ADR0 => regRDM_acc(4),
      ADR1 => FSMNeander_estado_FSM_FFd1_998,
      ADR2 => PC_Pc(4),
      ADR3 => VCC,
      O => PC_Mcount_Pc_lut(4)
    );
  PC_Pc_4 : X_FF
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => '0'
    )
    port map (
      I => PC_Pc_4_DXMUX_1321,
      CE => PC_Pc_4_CEINV_1282,
      CLK => PC_Pc_4_CLKINV_1283,
      SET => GND,
      RST => PC_Pc_4_SRINV_1284,
      O => PC_Pc(4)
    );
  PC_Mcount_Pc_lut_7_Q : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X17Y30"
    )
    port map (
      ADR0 => PC_Pc(7),
      ADR1 => FSMNeander_estado_FSM_FFd1_998,
      ADR2 => regRDM_acc(7),
      ADR3 => VCC,
      O => PC_Mcount_Pc_lut(7)
    );
  PC_Pc_7 : X_FF
    generic map(
      LOC => "SLICE_X17Y30",
      INIT => '0'
    )
    port map (
      I => PC_Pc_6_DYMUX_1354,
      CE => PC_Pc_6_CEINV_1341,
      CLK => PC_Pc_6_CLKINV_1342,
      SET => GND,
      RST => PC_Pc_6_SRINV_1343,
      O => PC_Pc(7)
    );
  PC_Mcount_Pc_lut_6_Q : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X17Y30"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd1_998,
      ADR1 => regRDM_acc(6),
      ADR2 => VCC,
      ADR3 => PC_Pc(6),
      O => PC_Mcount_Pc_lut(6)
    );
  PC_Pc_6 : X_FF
    generic map(
      LOC => "SLICE_X17Y30",
      INIT => '0'
    )
    port map (
      I => PC_Pc_6_DXMUX_1374,
      CE => PC_Pc_6_CEINV_1341,
      CLK => PC_Pc_6_CLKINV_1342,
      SET => GND,
      RST => PC_Pc_6_SRINV_1343,
      O => PC_Pc(6)
    );
  ALU_Madd_output_7_add0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X15Y19"
    )
    port map (
      ADR0 => regRDM_acc(1),
      ADR1 => ACC_acc(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => ALU_Madd_output_7_add0000_lut(1)
    );
  ALU_Madd_output_7_add0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X15Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ACC_acc(5),
      ADR2 => VCC,
      ADR3 => regRDM_acc(5),
      O => ALU_Madd_output_7_add0000_lut(5)
    );
  ALU_Madd_output_7_add0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X15Y21"
    )
    port map (
      ADR0 => regRDM_acc(4),
      ADR1 => ACC_acc(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => ALU_Madd_output_7_add0000_lut(4)
    );
  ALU_Madd_output_7_add0000_lut_7_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X15Y22"
    )
    port map (
      ADR0 => FLAGNZ_fioN_1038,
      ADR1 => VCC,
      ADR2 => regRDM_acc(7),
      ADR3 => VCC,
      O => ALU_Madd_output_7_add0000_lut(7)
    );
  ALU_Madd_output_7_add0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X15Y22"
    )
    port map (
      ADR0 => regRDM_acc(6),
      ADR1 => ACC_acc(6),
      ADR2 => VCC,
      ADR3 => VCC,
      O => ALU_Madd_output_7_add0000_lut(6)
    );
  ALU_Mmux_output_4_5 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X13Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => regRDM_acc(4),
      ADR3 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_4_5_1552
    );
  ACC_acc_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y22",
      INIT => '0'
    )
    port map (
      I => ACC_acc_4_DYMUX_1556,
      CE => ACC_acc_4_CEINV_1542,
      CLK => ACC_acc_4_CLKINV_1543,
      SET => GND,
      RST => ACC_acc_4_FFY_RSTAND_1562,
      O => ACC_acc(4)
    );
  ACC_acc_4_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X13Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => ACC_acc_4_FFY_RSTAND_1562
    );
  ALU_Mmux_output_4_4 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X13Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => wireFsmUlaSelector(0),
      ADR2 => ACC_acc(3),
      ADR3 => ALU_output_7_mult0000(4),
      O => ALU_Mmux_output_4_4_1570
    );
  ALU_Mmux_output_4_6 : X_LUT4
    generic map(
      INIT => X"C0AA",
      LOC => "SLICE_X13Y23"
    )
    port map (
      ADR0 => ALU_output_7_add0000(4),
      ADR1 => ACC_acc(4),
      ADR2 => regRDM_acc(4),
      ADR3 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_4_6_1586
    );
  ALU_Mmux_output_4_51 : X_LUT4
    generic map(
      INIT => X"33FC",
      LOC => "SLICE_X13Y23"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ACC_acc(4),
      ADR2 => regRDM_acc(4),
      ADR3 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_4_51_1594
    );
  ALU_Mmux_output_1_5 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X13Y26"
    )
    port map (
      ADR0 => wireFsmUlaSelector(0),
      ADR1 => regRDM_acc(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => ALU_Mmux_output_1_5_1622
    );
  ACC_acc_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y26",
      INIT => '0'
    )
    port map (
      I => ACC_acc_1_DYMUX_1626,
      CE => ACC_acc_1_CEINV_1612,
      CLK => ACC_acc_1_CLKINV_1613,
      SET => GND,
      RST => ACC_acc_1_FFY_RSTAND_1632,
      O => ACC_acc(1)
    );
  ACC_acc_1_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X13Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => ACC_acc_1_FFY_RSTAND_1632
    );
  ALU_Mmux_output_6_6 : X_LUT4
    generic map(
      INIT => X"B830",
      LOC => "SLICE_X17Y25"
    )
    port map (
      ADR0 => regRDM_acc(6),
      ADR1 => wireFsmUlaSelector(0),
      ADR2 => ALU_output_7_add0000(6),
      ADR3 => ACC_acc(6),
      O => ALU_Mmux_output_6_6_1726
    );
  ALU_Mmux_output_6_51 : X_LUT4
    generic map(
      INIT => X"33EE",
      LOC => "SLICE_X17Y25"
    )
    port map (
      ADR0 => regRDM_acc(6),
      ADR1 => wireFsmUlaSelector(0),
      ADR2 => VCC,
      ADR3 => ACC_acc(6),
      O => ALU_Mmux_output_6_51_1734
    );
  ALU_Mmux_output_3_5 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X13Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => wireFsmUlaSelector(0),
      ADR2 => regRDM_acc(3),
      ADR3 => VCC,
      O => ALU_Mmux_output_3_5_1762
    );
  ACC_acc_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y24",
      INIT => '0'
    )
    port map (
      I => ACC_acc_3_DYMUX_1766,
      CE => ACC_acc_3_CEINV_1752,
      CLK => ACC_acc_3_CLKINV_1753,
      SET => GND,
      RST => ACC_acc_3_FFY_RSTAND_1772,
      O => ACC_acc(3)
    );
  ACC_acc_3_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X13Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => ACC_acc_3_FFY_RSTAND_1772
    );
  ALU_Mmux_output_3_4 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X13Y24"
    )
    port map (
      ADR0 => ALU_output_7_mult0000(3),
      ADR1 => wireFsmUlaSelector(0),
      ADR2 => VCC,
      ADR3 => ACC_acc(2),
      O => ALU_Mmux_output_3_4_1780
    );
  ALU_Mmux_output_3_6 : X_LUT4
    generic map(
      INIT => X"A0CC",
      LOC => "SLICE_X13Y25"
    )
    port map (
      ADR0 => ACC_acc(3),
      ADR1 => ALU_output_7_add0000(3),
      ADR2 => regRDM_acc(3),
      ADR3 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_3_6_1796
    );
  ALU_Mmux_output_3_51 : X_LUT4
    generic map(
      INIT => X"7676",
      LOC => "SLICE_X13Y25"
    )
    port map (
      ADR0 => ACC_acc(3),
      ADR1 => wireFsmUlaSelector(0),
      ADR2 => regRDM_acc(3),
      ADR3 => VCC,
      O => ALU_Mmux_output_3_51_1804
    );
  ALU_Mmux_output_5_5 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X13Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => regRDM_acc(5),
      ADR2 => VCC,
      ADR3 => wireFsmUlaSelector(0),
      O => ALU_Mmux_output_5_5_1832
    );
  ACC_acc_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y28",
      INIT => '0'
    )
    port map (
      I => ACC_acc_5_DYMUX_1836,
      CE => ACC_acc_5_CEINV_1822,
      CLK => ACC_acc_5_CLKINV_1823,
      SET => GND,
      RST => ACC_acc_5_FFY_RSTAND_1842,
      O => ACC_acc(5)
    );
  ACC_acc_5_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X13Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => ACC_acc_5_FFY_RSTAND_1842
    );
  ALU_Mmux_output_5_4 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X13Y28"
    )
    port map (
      ADR0 => ACC_acc(4),
      ADR1 => wireFsmUlaSelector(0),
      ADR2 => VCC,
      ADR3 => ALU_output_7_mult0000(5),
      O => ALU_Mmux_output_5_4_1850
    );
  ALU_Mmux_output_5_6 : X_LUT4
    generic map(
      INIT => X"E222",
      LOC => "SLICE_X13Y29"
    )
    port map (
      ADR0 => ALU_output_7_add0000(5),
      ADR1 => wireFsmUlaSelector(0),
      ADR2 => regRDM_acc(5),
      ADR3 => ACC_acc(5),
      O => ALU_Mmux_output_5_6_1866
    );
  ALU_Mmux_output_5_51 : X_LUT4
    generic map(
      INIT => X"33FC",
      LOC => "SLICE_X13Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => wireFsmUlaSelector(0),
      ADR2 => regRDM_acc(5),
      ADR3 => ACC_acc(5),
      O => ALU_Mmux_output_5_51_1874
    );
  ALU_Mmux_output_2_5 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X15Y26"
    )
    port map (
      ADR0 => wireFsmUlaSelector(0),
      ADR1 => VCC,
      ADR2 => regRDM_acc(2),
      ADR3 => VCC,
      O => ALU_Mmux_output_2_5_1902
    );
  ACC_acc_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y26",
      INIT => '0'
    )
    port map (
      I => ACC_acc_2_DYMUX_1906,
      CE => ACC_acc_2_CEINV_1892,
      CLK => ACC_acc_2_CLKINV_1893,
      SET => GND,
      RST => ACC_acc_2_FFY_RSTAND_1912,
      O => ACC_acc(2)
    );
  ACC_acc_2_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X15Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => ACC_acc_2_FFY_RSTAND_1912
    );
  ALU_Mmux_output_2_4 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X15Y26"
    )
    port map (
      ADR0 => wireFsmUlaSelector(0),
      ADR1 => ACC_acc(1),
      ADR2 => VCC,
      ADR3 => ALU_output_7_mult0000(2),
      O => ALU_Mmux_output_2_4_1920
    );
  reset_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD36",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_INBUF,
      O => reset_IBUF_1001
    );
  rstmem_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 555 ps
    )
    port map (
      I => rstmem_INBUF,
      O => rstmem_IBUF_1091
    );
  ALU_selUAL_2_F : X_LUT4
    generic map(
      INIT => X"0C55",
      LOC => "SLICE_X12Y23"
    )
    port map (
      ADR0 => ALU_Mmux_output_0_7_0,
      ADR1 => regRDM_acc(0),
      ADR2 => wireFsmUlaSelector(0),
      ADR3 => wireFsmUlaSelector_2_0,
      O => N24
    );
  ALU_selUAL_2_G : X_LUT4
    generic map(
      INIT => X"0A33",
      LOC => "SLICE_X12Y23"
    )
    port map (
      ADR0 => ALU_output_7_mult0000(0),
      ADR1 => ALU_Mmux_output_0_6_0,
      ADR2 => wireFsmUlaSelector(0),
      ADR3 => wireFsmUlaSelector_2_0,
      O => N25
    );
  ACC_acc_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y23",
      INIT => '0'
    )
    port map (
      I => ACC_acc_0_DXMUX_2716,
      CE => ACC_acc_0_CEINV_2698,
      CLK => ACC_acc_0_CLKINV_2699,
      SET => GND,
      RST => ACC_acc_0_FFX_RSTAND_2722,
      O => ACC_acc(0)
    );
  ACC_acc_0_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => ACC_acc_0_FFX_RSTAND_2722
    );
  FSMNeander_estado_FSM_FFd16_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X20Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => FSMNeander_estado_FSM_FFd16_1112,
      ADR2 => VCC,
      ADR3 => VCC,
      O => FSMNeander_estado_FSM_FFd16_rt_2745
    );
  FSMNeander_estado_FSM_FFd16 : X_FF
    generic map(
      LOC => "SLICE_X20Y26",
      INIT => '0'
    )
    port map (
      I => FSMNeander_estado_FSM_FFd15_DYMUX_2747,
      CE => VCC,
      CLK => FSMNeander_estado_FSM_FFd15_CLKINV_2735,
      SET => GND,
      RST => FSMNeander_estado_FSM_FFd15_SRINV_2736,
      O => FSMNeander_estado_FSM_FFd16_1112
    );
  FSMNeander_estado_FSM_FFd15_In1 : X_LUT4
    generic map(
      INIT => X"AAAB",
      LOC => "SLICE_X20Y26"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd16_1112,
      ADR1 => N16_0,
      ADR2 => FSMNeander_nj,
      ADR3 => FSMNeander_ula1op,
      O => FSMNeander_estado_FSM_FFd15_In1_2759
    );
  FSMNeander_estado_FSM_FFd15 : X_FF
    generic map(
      LOC => "SLICE_X20Y26",
      INIT => '0'
    )
    port map (
      I => FSMNeander_estado_FSM_FFd15_DXMUX_2763,
      CE => VCC,
      CLK => FSMNeander_estado_FSM_FFd15_CLKINV_2735,
      SET => GND,
      RST => FSMNeander_estado_FSM_FFd15_SRINV_2736,
      O => FSMNeander_estado_FSM_FFd15_1113
    );
  FSMNeander_estado_FSM_FFd18_In61 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X21Y31"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd14_1116,
      ADR1 => FSMNeander_estado_FSM_FFd2_1115,
      ADR2 => FSMNeander_estado_FSM_FFd12_1117,
      ADR3 => FSMNeander_estado_FSM_FFd1_998,
      O => FSMNeander_estado_FSM_FFd18_In61_2780
    );
  FSMNeander_nj12 : X_LUT4
    generic map(
      INIT => X"0040",
      LOC => "SLICE_X21Y24"
    )
    port map (
      ADR0 => FLAGNZ_fioN_1038,
      ADR1 => REGIR_ri(0),
      ADR2 => REGIR_ri(3),
      ADR3 => REGIR_ri(2),
      O => FSMNeander_nj11_2809
    );
  FSMNeander_nj11 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X21Y24"
    )
    port map (
      ADR0 => REGIR_ri(0),
      ADR1 => FLAGNZ_fioZ_1089,
      ADR2 => REGIR_ri(3),
      ADR3 => REGIR_ri(2),
      O => FSMNeander_nj1
    );
  FSMNeander_estado_FSM_Out201 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X14Y28"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd13_1122,
      ADR1 => FSMNeander_estado_FSM_FFd18_1123,
      ADR2 => FSMNeander_estado_FSM_FFd7_1121,
      ADR3 => FSMNeander_estado_FSM_FFd11_1120,
      O => FSMNeander_estado_FSM_Out20
    );
  FSMNeander_fioUlaOP_0_SW01 : X_LUT4
    generic map(
      INIT => X"D090",
      LOC => "SLICE_X14Y24"
    )
    port map (
      ADR0 => REGIR_ri(1),
      ADR1 => REGIR_ri(2),
      ADR2 => FSMNeander_estado_FSM_FFd3_1114,
      ADR3 => REGIR_ri(0),
      O => FSMNeander_fioUlaOP_0_SW0
    );
  FSMNeander_estado_FSM_FFd3_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X14Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => FSMNeander_estado_FSM_FFd3_1114,
      ADR3 => VCC,
      O => FSMNeander_estado_FSM_FFd3_rt_2866
    );
  FSMNeander_j_SW0 : X_LUT4
    generic map(
      INIT => X"8ACE",
      LOC => "SLICE_X20Y29"
    )
    port map (
      ADR0 => REGIR_ri(1),
      ADR1 => REGIR_ri(0),
      ADR2 => FLAGNZ_fioZ_1089,
      ADR3 => FLAGNZ_fioN_1038,
      O => N36_pack_1
    );
  FSMNeander_estado_FSM_FFd10_In1 : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X20Y29"
    )
    port map (
      ADR0 => REGIR_ri(2),
      ADR1 => REGIR_ri(3),
      ADR2 => N36,
      ADR3 => FSMNeander_estado_FSM_FFd11_1120,
      O => FSMNeander_estado_FSM_FFd10_In
    );
  FSMNeander_estado_FSM_FFd10 : X_FF
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => '0'
    )
    port map (
      I => FSMNeander_estado_FSM_FFd10_DXMUX_2898,
      CE => VCC,
      CLK => FSMNeander_estado_FSM_FFd10_CLKINV_2882,
      SET => GND,
      RST => FSMNeander_estado_FSM_FFd10_FFX_RSTAND_2903,
      O => FSMNeander_estado_FSM_FFd10_1126
    );
  FSMNeander_estado_FSM_FFd10_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X20Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => FSMNeander_estado_FSM_FFd10_FFX_RSTAND_2903
    );
  FSMNeander_fioUlaOP_2_SW0 : X_LUT4
    generic map(
      INIT => X"FBF5",
      LOC => "SLICE_X14Y26"
    )
    port map (
      ADR0 => REGIR_ri(2),
      ADR1 => REGIR_ri(0),
      ADR2 => REGIR_ri(3),
      ADR3 => REGIR_ri(1),
      O => FSMNeander_fioUlaOP_2_SW0_O_pack_1
    );
  FSMNeander_fioUlaOP_2_Q : X_LUT4
    generic map(
      INIT => X"8F88",
      LOC => "SLICE_X14Y26"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd3_1114,
      ADR1 => FSMNeander_fioUlaOP_2_SW0_O,
      ADR2 => wireDecFsmOut_6_0,
      ADR3 => FSMNeander_estado_FSM_FFd14_1116,
      O => wireFsmUlaSelector(2)
    );
  FSMNeander_ula1op1 : X_LUT4
    generic map(
      INIT => X"4020",
      LOC => "SLICE_X16Y26"
    )
    port map (
      ADR0 => REGIR_ri(2),
      ADR1 => REGIR_ri(0),
      ADR2 => REGIR_ri(1),
      ADR3 => REGIR_ri(3),
      O => FSMNeander_ula1op_pack_1
    );
  FSMNeander_fioUlaOP_1_25 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X16Y26"
    )
    port map (
      ADR0 => N34_0,
      ADR1 => FSMNeander_estado_FSM_FFd14_1116,
      ADR2 => FSMNeander_ula1op,
      ADR3 => FSMNeander_estado_FSM_FFd3_1114,
      O => wireFsmUlaSelector(1)
    );
  FSMNeander_fioUlaOP_0_Q : X_LUT4
    generic map(
      INIT => X"FAF2",
      LOC => "SLICE_X14Y25"
    )
    port map (
      ADR0 => N20,
      ADR1 => wireDecFsmOut_7_0,
      ADR2 => FSMNeander_estado_FSM_FFd14_1116,
      ADR3 => wireDecFsmOut_5_0,
      O => wireFsmUlaSelector_0_pack_1
    );
  ALU_Mmux_output_0_6 : X_LUT4
    generic map(
      INIT => X"C1C1",
      LOC => "SLICE_X14Y25"
    )
    port map (
      ADR0 => regRDM_acc(0),
      ADR1 => ACC_acc(0),
      ADR2 => wireFsmUlaSelector(0),
      ADR3 => VCC,
      O => ALU_Mmux_output_0_6_2974
    );
  FSMNeander_estado_FSM_FFd13_In28_SW0 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X20Y28"
    )
    port map (
      ADR0 => FSMNeander_j_1134,
      ADR1 => VCC,
      ADR2 => wireDecFsmOut_1_Q,
      ADR3 => FSMNeander_ula2op_0,
      O => FSMNeander_estado_FSM_FFd13_In28_SW0_O_pack_1
    );
  FSMNeander_estado_FSM_FFd13_In28 : X_LUT4
    generic map(
      INIT => X"3020",
      LOC => "SLICE_X20Y28"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd13_In14_0,
      ADR1 => FSMNeander_ula1op,
      ADR2 => FSMNeander_estado_FSM_FFd15_1113,
      ADR3 => FSMNeander_estado_FSM_FFd13_In28_SW0_O,
      O => FSMNeander_estado_FSM_FFd13_In
    );
  FSMNeander_estado_FSM_FFd13 : X_FF
    generic map(
      LOC => "SLICE_X20Y28",
      INIT => '0'
    )
    port map (
      I => FSMNeander_estado_FSM_FFd13_DXMUX_3005,
      CE => VCC,
      CLK => FSMNeander_estado_FSM_FFd13_CLKINV_2988,
      SET => GND,
      RST => FSMNeander_estado_FSM_FFd13_FFX_RSTAND_3010,
      O => FSMNeander_estado_FSM_FFd13_1122
    );
  FSMNeander_estado_FSM_FFd13_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X20Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => FSMNeander_estado_FSM_FFd13_FFX_RSTAND_3010
    );
  ALU_isZERO_cmp_eq00003 : X_LUT4
    generic map(
      INIT => X"0303",
      LOC => "SLICE_X12Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => wireAluAcc(1),
      ADR2 => wireAluAcc(0),
      ADR3 => VCC,
      O => ALU_isZERO_cmp_eq00003_O_pack_1
    );
  ALU_isZERO_cmp_eq000033 : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X12Y24"
    )
    port map (
      ADR0 => wireAluAcc(7),
      ADR1 => ALU_isZERO_cmp_eq000028_0,
      ADR2 => wireAluAcc(6),
      ADR3 => ALU_isZERO_cmp_eq00003_O,
      O => wireAluZ
    );
  FLAGNZ_fioZ : X_FF
    generic map(
      LOC => "SLICE_X12Y24",
      INIT => '0'
    )
    port map (
      I => FLAGNZ_fioZ_DXMUX_3042,
      CE => FLAGNZ_fioZ_CEINV_3023,
      CLK => FLAGNZ_fioZ_CLKINV_3024,
      SET => GND,
      RST => FLAGNZ_fioZ_FFX_RSTAND_3048,
      O => FLAGNZ_fioZ_1089
    );
  FLAGNZ_fioZ_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X12Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => FLAGNZ_fioZ_FFX_RSTAND_3048
    );
  FSMNeander_j : X_LUT4
    generic map(
      INIT => X"0030",
      LOC => "SLICE_X21Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N36,
      ADR2 => REGIR_ri(3),
      ADR3 => REGIR_ri(2),
      O => FSMNeander_j_pack_1
    );
  FSMNeander_estado_FSM_FFd15_In1_SW0 : X_LUT4
    generic map(
      INIT => X"FFFB",
      LOC => "SLICE_X21Y29"
    )
    port map (
      ADR0 => wireDecFsmOut_1_Q,
      ADR1 => FSMNeander_estado_FSM_FFd15_1113,
      ADR2 => FSMNeander_ula2op_0,
      ADR3 => FSMNeander_j_1134,
      O => N16
    );
  FSMNeander_estado_FSM_FFd3_In1 : X_LUT4
    generic map(
      INIT => X"0C00",
      LOC => "SLICE_X16Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => FSMNeander_ula2op_0,
      ADR2 => wireDecFsmOut_1_Q,
      ADR3 => FSMNeander_estado_FSM_FFd5_1139,
      O => FSMNeander_estado_FSM_FFd3_In
    );
  FSMNeander_estado_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X16Y28",
      INIT => '0'
    )
    port map (
      I => FSMNeander_estado_FSM_FFd4_DYMUX_3093,
      CE => VCC,
      CLK => FSMNeander_estado_FSM_FFd4_CLKINV_3083,
      SET => GND,
      RST => FSMNeander_estado_FSM_FFd4_SRINV_3084,
      O => FSMNeander_estado_FSM_FFd3_1114
    );
  FSMNeander_estado_FSM_FFd4_In1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X16Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => FSMNeander_estado_FSM_FFd5_1139,
      ADR2 => wireDecFsmOut_1_Q,
      ADR3 => VCC,
      O => FSMNeander_estado_FSM_FFd4_In
    );
  FSMNeander_estado_FSM_FFd4 : X_FF
    generic map(
      LOC => "SLICE_X16Y28",
      INIT => '0'
    )
    port map (
      I => FSMNeander_estado_FSM_FFd4_DXMUX_3109,
      CE => VCC,
      CLK => FSMNeander_estado_FSM_FFd4_CLKINV_3083,
      SET => GND,
      RST => FSMNeander_estado_FSM_FFd4_SRINV_3084,
      O => FSMNeander_estado_FSM_FFd4_1073
    );
  MUXMA_outputMux21_0_1 : X_LUT4
    generic map(
      INIT => X"F0E4",
      LOC => "SLICE_X13Y19"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd7_1121,
      ADR1 => PC_Pc(0),
      ADR2 => wireMuxToRdm_0_0,
      ADR3 => FSMNeander_estado_FSM_FFd8_1119,
      O => wireMuxMAOut(0)
    );
  regREM_acc_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => '0'
    )
    port map (
      I => regREM_acc_1_DYMUX_3139,
      CE => regREM_acc_1_CEINV_3129,
      CLK => regREM_acc_1_CLKINV_3130,
      SET => GND,
      RST => regREM_acc_1_SRINV_3131,
      O => regREM_acc(0)
    );
  MUXMA_outputMux21_1_1 : X_LUT4
    generic map(
      INIT => X"FE10",
      LOC => "SLICE_X13Y19"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd7_1121,
      ADR1 => FSMNeander_estado_FSM_FFd8_1119,
      ADR2 => PC_Pc(1),
      ADR3 => wireMuxToRdm_1_0,
      O => wireMuxMAOut(1)
    );
  regREM_acc_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => '0'
    )
    port map (
      I => regREM_acc_1_DXMUX_3154,
      CE => regREM_acc_1_CEINV_3129,
      CLK => regREM_acc_1_CLKINV_3130,
      SET => GND,
      RST => regREM_acc_1_SRINV_3131,
      O => regREM_acc(1)
    );
  MUXMA_outputMux21_2_1 : X_LUT4
    generic map(
      INIT => X"ABA8",
      LOC => "SLICE_X15Y18"
    )
    port map (
      ADR0 => wireMuxToRdm_2_0,
      ADR1 => FSMNeander_estado_FSM_FFd8_1119,
      ADR2 => FSMNeander_estado_FSM_FFd7_1121,
      ADR3 => PC_Pc(2),
      O => wireMuxMAOut(2)
    );
  regREM_acc_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => '0'
    )
    port map (
      I => regREM_acc_3_DYMUX_3185,
      CE => regREM_acc_3_CEINV_3175,
      CLK => regREM_acc_3_CLKINV_3176,
      SET => GND,
      RST => regREM_acc_3_SRINV_3177,
      O => regREM_acc(2)
    );
  MUXMA_outputMux21_3_1 : X_LUT4
    generic map(
      INIT => X"FE02",
      LOC => "SLICE_X15Y18"
    )
    port map (
      ADR0 => PC_Pc(3),
      ADR1 => FSMNeander_estado_FSM_FFd8_1119,
      ADR2 => FSMNeander_estado_FSM_FFd7_1121,
      ADR3 => wireMuxToRdm_3_0,
      O => wireMuxMAOut(3)
    );
  regREM_acc_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => '0'
    )
    port map (
      I => regREM_acc_3_DXMUX_3200,
      CE => regREM_acc_3_CEINV_3175,
      CLK => regREM_acc_3_CLKINV_3176,
      SET => GND,
      RST => regREM_acc_3_SRINV_3177,
      O => regREM_acc(3)
    );
  MUXMA_outputMux21_4_1 : X_LUT4
    generic map(
      INIT => X"ABA8",
      LOC => "SLICE_X14Y21"
    )
    port map (
      ADR0 => wireMuxToRdm_4_0,
      ADR1 => FSMNeander_estado_FSM_FFd7_1121,
      ADR2 => FSMNeander_estado_FSM_FFd8_1119,
      ADR3 => PC_Pc(4),
      O => wireMuxMAOut(4)
    );
  regREM_acc_4 : X_FF
    generic map(
      LOC => "SLICE_X14Y21",
      INIT => '0'
    )
    port map (
      I => regREM_acc_5_DYMUX_3231,
      CE => regREM_acc_5_CEINV_3221,
      CLK => regREM_acc_5_CLKINV_3222,
      SET => GND,
      RST => regREM_acc_5_SRINV_3223,
      O => regREM_acc(4)
    );
  MUXMA_outputMux21_5_1 : X_LUT4
    generic map(
      INIT => X"ABA8",
      LOC => "SLICE_X14Y21"
    )
    port map (
      ADR0 => wireMuxToRdm_5_0,
      ADR1 => FSMNeander_estado_FSM_FFd7_1121,
      ADR2 => FSMNeander_estado_FSM_FFd8_1119,
      ADR3 => PC_Pc(5),
      O => wireMuxMAOut(5)
    );
  regREM_acc_5 : X_FF
    generic map(
      LOC => "SLICE_X14Y21",
      INIT => '0'
    )
    port map (
      I => regREM_acc_5_DXMUX_3246,
      CE => regREM_acc_5_CEINV_3221,
      CLK => regREM_acc_5_CLKINV_3222,
      SET => GND,
      RST => regREM_acc_5_SRINV_3223,
      O => regREM_acc(5)
    );
  MUXMA_outputMux21_6_1 : X_LUT4
    generic map(
      INIT => X"AAAC",
      LOC => "SLICE_X12Y19"
    )
    port map (
      ADR0 => wireMuxToRdm_6_0,
      ADR1 => PC_Pc(6),
      ADR2 => FSMNeander_estado_FSM_FFd8_1119,
      ADR3 => FSMNeander_estado_FSM_FFd7_1121,
      O => wireMuxMAOut(6)
    );
  regREM_acc_6 : X_FF
    generic map(
      LOC => "SLICE_X12Y19",
      INIT => '0'
    )
    port map (
      I => regREM_acc_7_DYMUX_3277,
      CE => regREM_acc_7_CEINV_3267,
      CLK => regREM_acc_7_CLKINV_3268,
      SET => GND,
      RST => regREM_acc_7_SRINV_3269,
      O => regREM_acc(6)
    );
  MUXMA_outputMux21_7_1 : X_LUT4
    generic map(
      INIT => X"F0E4",
      LOC => "SLICE_X12Y19"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd8_1119,
      ADR1 => PC_Pc(7),
      ADR2 => wireMuxToRdm_7_0,
      ADR3 => FSMNeander_estado_FSM_FFd7_1121,
      O => wireMuxMAOut(7)
    );
  regREM_acc_7 : X_FF
    generic map(
      LOC => "SLICE_X12Y19",
      INIT => '0'
    )
    port map (
      I => regREM_acc_7_DXMUX_3292,
      CE => regREM_acc_7_CEINV_3267,
      CLK => regREM_acc_7_CLKINV_3268,
      SET => GND,
      RST => regREM_acc_7_SRINV_3269,
      O => regREM_acc(7)
    );
  MUXRDM_outputMux21_4_1 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X14Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outmemoria_4_OBUF_1082,
      ADR2 => ACC_acc(4),
      ADR3 => FSMNeander_estado_FSM_FFd4_1073,
      O => wireMuxToRdm(4)
    );
  REGIR_ri_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y19",
      INIT => '0'
    )
    port map (
      I => REGIR_ri_1_DYMUX_3324,
      CE => REGIR_ri_1_CEINV_3313,
      CLK => REGIR_ri_1_CLKINV_3314,
      SET => GND,
      RST => REGIR_ri_1_SRINV_3315,
      O => REGIR_ri(0)
    );
  MUXRDM_outputMux21_5_1 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X14Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outmemoria_5_OBUF_1083,
      ADR2 => ACC_acc(5),
      ADR3 => FSMNeander_estado_FSM_FFd4_1073,
      O => wireMuxToRdm(5)
    );
  REGIR_ri_1 : X_FF
    generic map(
      LOC => "SLICE_X14Y19",
      INIT => '0'
    )
    port map (
      I => REGIR_ri_1_DXMUX_3340,
      CE => REGIR_ri_1_CEINV_3313,
      CLK => REGIR_ri_1_CLKINV_3314,
      SET => GND,
      RST => REGIR_ri_1_SRINV_3315,
      O => REGIR_ri(1)
    );
  FSMNeander_estado_FSM_FFd14_In1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X20Y27"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd15_1113,
      ADR1 => FSMNeander_ula1op,
      ADR2 => VCC,
      ADR3 => VCC,
      O => FSMNeander_estado_FSM_FFd14_In
    );
  FSMNeander_estado_FSM_FFd14 : X_FF
    generic map(
      LOC => "SLICE_X20Y27",
      INIT => '0'
    )
    port map (
      I => FSMNeander_estado_FSM_FFd14_DYMUX_3367,
      CE => VCC,
      CLK => FSMNeander_estado_FSM_FFd14_CLKINV_3356,
      SET => GND,
      RST => FSMNeander_estado_FSM_FFd14_FFY_RSTAND_3372,
      O => FSMNeander_estado_FSM_FFd14_1116
    );
  FSMNeander_estado_FSM_FFd14_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X20Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => FSMNeander_estado_FSM_FFd14_FFY_RSTAND_3372
    );
  FSMNeander_estado_FSM_Out221 : X_LUT4
    generic map(
      INIT => X"EEEE",
      LOC => "SLICE_X20Y27"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd15_1113,
      ADR1 => FSMNeander_estado_FSM_FFd16_1112,
      ADR2 => VCC,
      ADR3 => VCC,
      O => outSinalRI_OBUF_3380
    );
  REGIR_ri_3 : X_FF
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => '0'
    )
    port map (
      I => REGIR_ri_2_DYMUX_3397,
      CE => REGIR_ri_2_CEINV_3393,
      CLK => REGIR_ri_2_CLKINV_3394,
      SET => GND,
      RST => REGIR_ri_2_SRINV_3395,
      O => REGIR_ri(3)
    );
  MUXRDM_outputMux21_6_1 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X16Y18"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd4_1073,
      ADR1 => outmemoria_6_OBUF_1085,
      ADR2 => ACC_acc(6),
      ADR3 => VCC,
      O => wireMuxToRdm(6)
    );
  REGIR_ri_2 : X_FF
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => '0'
    )
    port map (
      I => REGIR_ri_2_DXMUX_3413,
      CE => REGIR_ri_2_CEINV_3393,
      CLK => REGIR_ri_2_CLKINV_3394,
      SET => GND,
      RST => REGIR_ri_2_SRINV_3395,
      O => REGIR_ri(2)
    );
  MUXRDM_outputMux21_0_1 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X3Y24"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd4_1073,
      ADR1 => ACC_acc(0),
      ADR2 => outmemoria_0_OBUF_1077,
      ADR3 => VCC,
      O => wireMuxToRdm(0)
    );
  regRDM_acc_0 : X_FF
    generic map(
      LOC => "SLICE_X3Y24",
      INIT => '0'
    )
    port map (
      I => regRDM_acc_1_DYMUX_3445,
      CE => regRDM_acc_1_CEINV_3434,
      CLK => regRDM_acc_1_CLKINV_3435,
      SET => GND,
      RST => regRDM_acc_1_SRINV_3436,
      O => regRDM_acc(0)
    );
  MUXRDM_outputMux21_1_1 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X3Y24"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd4_1073,
      ADR1 => VCC,
      ADR2 => ACC_acc(1),
      ADR3 => outmemoria_1_OBUF_1079,
      O => wireMuxToRdm(1)
    );
  regRDM_acc_1 : X_FF
    generic map(
      LOC => "SLICE_X3Y24",
      INIT => '0'
    )
    port map (
      I => regRDM_acc_1_DXMUX_3461,
      CE => regRDM_acc_1_CEINV_3434,
      CLK => regRDM_acc_1_CLKINV_3435,
      SET => GND,
      RST => regRDM_acc_1_SRINV_3436,
      O => regRDM_acc(1)
    );
  MUXRDM_outputMux21_2_1 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X3Y23"
    )
    port map (
      ADR0 => outmemoria_2_OBUF_1080,
      ADR1 => ACC_acc(2),
      ADR2 => FSMNeander_estado_FSM_FFd4_1073,
      ADR3 => VCC,
      O => wireMuxToRdm(2)
    );
  regRDM_acc_2 : X_FF
    generic map(
      LOC => "SLICE_X3Y23",
      INIT => '0'
    )
    port map (
      I => regRDM_acc_3_DYMUX_3493,
      CE => regRDM_acc_3_CEINV_3482,
      CLK => regRDM_acc_3_CLKINV_3483,
      SET => GND,
      RST => regRDM_acc_3_SRINV_3484,
      O => regRDM_acc(2)
    );
  MUXRDM_outputMux21_3_1 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X3Y23"
    )
    port map (
      ADR0 => ACC_acc(3),
      ADR1 => VCC,
      ADR2 => FSMNeander_estado_FSM_FFd4_1073,
      ADR3 => outmemoria_3_OBUF_1081,
      O => wireMuxToRdm(3)
    );
  regRDM_acc_3 : X_FF
    generic map(
      LOC => "SLICE_X3Y23",
      INIT => '0'
    )
    port map (
      I => regRDM_acc_3_DXMUX_3509,
      CE => regRDM_acc_3_CEINV_3482,
      CLK => regRDM_acc_3_CLKINV_3483,
      SET => GND,
      RST => regRDM_acc_3_SRINV_3484,
      O => regRDM_acc(3)
    );
  Decod_Mdecod_fioSaida12 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X16Y29"
    )
    port map (
      ADR0 => REGIR_ri(2),
      ADR1 => REGIR_ri(3),
      ADR2 => REGIR_ri(0),
      ADR3 => REGIR_ri(1),
      O => wireDecFsmOut_1_pack_1
    );
  FSMNeander_estado_FSM_FFd9_In1 : X_LUT4
    generic map(
      INIT => X"0E00",
      LOC => "SLICE_X16Y29"
    )
    port map (
      ADR0 => wireDecFsmOut_1_Q,
      ADR1 => FSMNeander_ula2op_0,
      ADR2 => FSMNeander_j_1134,
      ADR3 => FSMNeander_estado_FSM_FFd11_1120,
      O => FSMNeander_estado_FSM_FFd9_In
    );
  FSMNeander_estado_FSM_FFd9 : X_FF
    generic map(
      LOC => "SLICE_X16Y29",
      INIT => '0'
    )
    port map (
      I => FSMNeander_estado_FSM_FFd9_DXMUX_3545,
      CE => VCC,
      CLK => FSMNeander_estado_FSM_FFd9_CLKINV_3529,
      SET => GND,
      RST => FSMNeander_estado_FSM_FFd9_FFX_RSTAND_3550,
      O => FSMNeander_estado_FSM_FFd9_1149
    );
  FSMNeander_estado_FSM_FFd9_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X16Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_1001,
      O => FSMNeander_estado_FSM_FFd9_FFX_RSTAND_3550
    );
  Decod_Mdecod_fioSaida51 : X_LUT4
    generic map(
      INIT => X"0040",
      LOC => "SLICE_X16Y25"
    )
    port map (
      ADR0 => REGIR_ri(3),
      ADR1 => REGIR_ri(0),
      ADR2 => REGIR_ri(2),
      ADR3 => REGIR_ri(1),
      O => wireDecFsmOut_5_Q
    );
  FSMNeander_fioUlaOP_1_25_SW0 : X_LUT4
    generic map(
      INIT => X"4010",
      LOC => "SLICE_X16Y25"
    )
    port map (
      ADR0 => REGIR_ri(3),
      ADR1 => REGIR_ri(0),
      ADR2 => REGIR_ri(2),
      ADR3 => REGIR_ri(1),
      O => N34
    );
  Decod_Mdecod_fioSaida61 : X_LUT4
    generic map(
      INIT => X"0200",
      LOC => "SLICE_X14Y27"
    )
    port map (
      ADR0 => REGIR_ri(2),
      ADR1 => REGIR_ri(0),
      ADR2 => REGIR_ri(3),
      ADR3 => REGIR_ri(1),
      O => wireDecFsmOut_6_Q
    );
  FSMNeander_ula2op : X_LUT4
    generic map(
      INIT => X"0D0A",
      LOC => "SLICE_X14Y27"
    )
    port map (
      ADR0 => REGIR_ri(2),
      ADR1 => REGIR_ri(0),
      ADR2 => REGIR_ri(3),
      ADR3 => REGIR_ri(1),
      O => FSMNeander_ula2op_3597
    );
  Decod_Mdecod_fioSaida71 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X16Y24"
    )
    port map (
      ADR0 => REGIR_ri(3),
      ADR1 => REGIR_ri(0),
      ADR2 => REGIR_ri(2),
      ADR3 => REGIR_ri(1),
      O => wireDecFsmOut_7_Q
    );
  FSMNeander_estado_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => '0'
    )
    port map (
      I => FSMNeander_estado_FSM_FFd2_DYMUX_3621,
      CE => VCC,
      CLK => FSMNeander_estado_FSM_FFd2_CLKINV_3618,
      SET => GND,
      RST => FSMNeander_estado_FSM_FFd2_SRINV_3619,
      O => FSMNeander_estado_FSM_FFd1_998
    );
  FSMNeander_estado_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => '0'
    )
    port map (
      I => FSMNeander_estado_FSM_FFd2_DXMUX_3629,
      CE => VCC,
      CLK => FSMNeander_estado_FSM_FFd2_CLKINV_3618,
      SET => GND,
      RST => FSMNeander_estado_FSM_FFd2_SRINV_3619,
      O => FSMNeander_estado_FSM_FFd2_1115
    );
  FSMNeander_estado_FSM_FFd5 : X_FF
    generic map(
      LOC => "SLICE_X12Y21",
      INIT => '0'
    )
    port map (
      I => FSMNeander_estado_FSM_FFd6_DYMUX_3645,
      CE => VCC,
      CLK => FSMNeander_estado_FSM_FFd6_CLKINV_3642,
      SET => GND,
      RST => FSMNeander_estado_FSM_FFd6_SRINV_3643,
      O => FSMNeander_estado_FSM_FFd5_1139
    );
  FSMNeander_estado_FSM_FFd6 : X_FF
    generic map(
      LOC => "SLICE_X12Y21",
      INIT => '0'
    )
    port map (
      I => FSMNeander_estado_FSM_FFd6_DXMUX_3653,
      CE => VCC,
      CLK => FSMNeander_estado_FSM_FFd6_CLKINV_3642,
      SET => GND,
      RST => FSMNeander_estado_FSM_FFd6_SRINV_3643,
      O => FSMNeander_estado_FSM_FFd6_1150
    );
  wireWriteMemory_0_and00001 : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X18Y31"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd17_1108,
      ADR1 => FSMNeander_estado_FSM_FFd9_1149,
      ADR2 => FSMNeander_estado_FSM_FFd10_1126,
      ADR3 => FSMNeander_estado_FSM_FFd2_1115,
      O => wireWriteMemory
    );
  FSMNeander_estado_FSM_Out191 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X18Y31"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd17_1108,
      ADR1 => FSMNeander_estado_FSM_FFd9_1149,
      ADR2 => VCC,
      ADR3 => FSMNeander_estado_FSM_FFd10_1126,
      O => outsinalread_OBUF_3681
    );
  FSMNeander_estado_FSM_FFd7 : X_FF
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => '0'
    )
    port map (
      I => FSMNeander_estado_FSM_FFd8_DYMUX_3693,
      CE => VCC,
      CLK => FSMNeander_estado_FSM_FFd8_CLKINV_3690,
      SET => GND,
      RST => FSMNeander_estado_FSM_FFd8_SRINV_3691,
      O => FSMNeander_estado_FSM_FFd7_1121
    );
  FSMNeander_estado_FSM_FFd8 : X_FF
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => '0'
    )
    port map (
      I => FSMNeander_estado_FSM_FFd8_DXMUX_3701,
      CE => VCC,
      CLK => FSMNeander_estado_FSM_FFd8_CLKINV_3690,
      SET => GND,
      RST => FSMNeander_estado_FSM_FFd8_SRINV_3691,
      O => FSMNeander_estado_FSM_FFd8_1119
    );
  ALU_Mmux_output_0_7 : X_LUT4
    generic map(
      INIT => X"27AF",
      LOC => "SLICE_X12Y22"
    )
    port map (
      ADR0 => wireFsmUlaSelector(0),
      ADR1 => regRDM_acc(0),
      ADR2 => ALU_output_7_add0000(0),
      ADR3 => ACC_acc(0),
      O => ALU_Mmux_output_0_7_3717
    );
  Decod_Mdecod_fioSaida151 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X21Y26"
    )
    port map (
      ADR0 => REGIR_ri(0),
      ADR1 => REGIR_ri(2),
      ADR2 => REGIR_ri(3),
      ADR3 => REGIR_ri(1),
      O => wireDecFsmOut_15_pack_1
    );
  FSMNeander_estado_FSM_FFd13_In14 : X_LUT4
    generic map(
      INIT => X"0303",
      LOC => "SLICE_X21Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => FSMNeander_nj,
      ADR2 => wireDecFsmOut_15_Q,
      ADR3 => VCC,
      O => FSMNeander_estado_FSM_FFd13_In14_3741
    );
  FSMNeander_estado_FSM_Out211 : X_LUT4
    generic map(
      INIT => X"FFF0",
      LOC => "SLICE_X13Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => FSMNeander_estado_FSM_FFd4_1073,
      ADR3 => FSMNeander_estado_FSM_FFd6_1150,
      O => wireLoadRdm
    );
  FSMNeander_estado_FSM_Out231 : X_LUT4
    generic map(
      INIT => X"FAFA",
      LOC => "SLICE_X12Y27"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd3_1114,
      ADR1 => VCC,
      ADR2 => FSMNeander_estado_FSM_FFd14_1116,
      ADR3 => VCC,
      O => wireFsmAccLoad
    );
  FSMNeander_estado_FSM_Out181 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X18Y30"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd17_1108,
      ADR1 => FSMNeander_estado_FSM_FFd9_1149,
      ADR2 => VCC,
      ADR3 => FSMNeander_estado_FSM_FFd12_1117,
      O => outpccarga_OBUF_3782
    );
  PC_Pc_not00011 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X18Y30"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd17_1108,
      ADR1 => FSMNeander_estado_FSM_FFd9_1149,
      ADR2 => FSMNeander_estado_FSM_FFd1_998,
      ADR3 => FSMNeander_estado_FSM_FFd12_1117,
      O => PC_Pc_not0001
    );
  FSMNeander_estado_FSM_FFd12_In1 : X_LUT4
    generic map(
      INIT => X"0500",
      LOC => "SLICE_X21Y28"
    )
    port map (
      ADR0 => N16_0,
      ADR1 => VCC,
      ADR2 => FSMNeander_ula1op,
      ADR3 => FSMNeander_nj,
      O => FSMNeander_estado_FSM_FFd12_In
    );
  FSMNeander_estado_FSM_FFd12 : X_FF
    generic map(
      LOC => "SLICE_X21Y28",
      INIT => '0'
    )
    port map (
      I => FSMNeander_estado_FSM_FFd11_DYMUX_3810,
      CE => VCC,
      CLK => FSMNeander_estado_FSM_FFd11_CLKINV_3800,
      SET => GND,
      RST => FSMNeander_estado_FSM_FFd11_SRINV_3801,
      O => FSMNeander_estado_FSM_FFd12_1117
    );
  FSMNeander_estado_FSM_FFd11 : X_FF
    generic map(
      LOC => "SLICE_X21Y28",
      INIT => '0'
    )
    port map (
      I => FSMNeander_estado_FSM_FFd11_DXMUX_3818,
      CE => VCC,
      CLK => FSMNeander_estado_FSM_FFd11_CLKINV_3800,
      SET => GND,
      RST => FSMNeander_estado_FSM_FFd11_SRINV_3801,
      O => FSMNeander_estado_FSM_FFd11_1120
    );
  ALU_isZERO_cmp_eq000028 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X12Y25"
    )
    port map (
      ADR0 => wireAluAcc(4),
      ADR1 => wireAluAcc(3),
      ADR2 => wireAluAcc(2),
      ADR3 => wireAluAcc(5),
      O => ALU_isZERO_cmp_eq000028_3834
    );
  FSMNeander_estado_FSM_FFd18_In27 : X_LUT4
    generic map(
      INIT => X"CFCC",
      LOC => "SLICE_X18Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => FSMNeander_estado_FSM_FFd5_1139,
      ADR2 => FSMNeander_j_1134,
      ADR3 => FSMNeander_estado_FSM_FFd11_1120,
      O => FSMNeander_estado_FSM_FFd18_In27_O_pack_2
    );
  FSMNeander_estado_FSM_FFd17 : X_FF
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => '0'
    )
    port map (
      I => FSMNeander_estado_FSM_FFd18_DYMUX_3861,
      CE => VCC,
      CLK => FSMNeander_estado_FSM_FFd18_CLKINV_3850,
      SET => GND,
      RST => FSMNeander_estado_FSM_FFd18_SRINV_3851,
      O => FSMNeander_estado_FSM_FFd17_1108
    );
  FSMNeander_estado_FSM_FFd18_In40_SW0 : X_LUT4
    generic map(
      INIT => X"AABA",
      LOC => "SLICE_X18Y29"
    )
    port map (
      ADR0 => FSMNeander_estado_FSM_FFd18_In6,
      ADR1 => FSMNeander_ula2op_0,
      ADR2 => FSMNeander_estado_FSM_FFd18_In27_O,
      ADR3 => wireDecFsmOut_1_Q,
      O => N26
    );
  FSMNeander_estado_FSM_FFd18 : X_FF
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => '1'
    )
    port map (
      I => FSMNeander_estado_FSM_FFd18_DXMUX_3875,
      CE => VCC,
      CLK => FSMNeander_estado_FSM_FFd18_CLKINV_3850,
      SET => FSMNeander_estado_FSM_FFd18_SRINV_3851,
      RST => GND,
      O => FSMNeander_estado_FSM_FFd18_1123
    );
  regRDM_acc_4 : X_FF
    generic map(
      LOC => "SLICE_X14Y20",
      INIT => '0'
    )
    port map (
      I => regRDM_acc_5_DYMUX_3892,
      CE => regRDM_acc_5_CEINV_3888,
      CLK => regRDM_acc_5_CLKINV_3889,
      SET => GND,
      RST => regRDM_acc_5_SRINV_3890,
      O => regRDM_acc(4)
    );
  regRDM_acc_5 : X_FF
    generic map(
      LOC => "SLICE_X14Y20",
      INIT => '0'
    )
    port map (
      I => regRDM_acc_5_DXMUX_3901,
      CE => regRDM_acc_5_CEINV_3888,
      CLK => regRDM_acc_5_CLKINV_3889,
      SET => GND,
      RST => regRDM_acc_5_SRINV_3890,
      O => regRDM_acc(5)
    );
  regRDM_acc_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => '0'
    )
    port map (
      I => regRDM_acc_7_DYMUX_3923,
      CE => regRDM_acc_7_CEINV_3919,
      CLK => regRDM_acc_7_CLKINV_3920,
      SET => GND,
      RST => regRDM_acc_7_SRINV_3921,
      O => regRDM_acc(6)
    );
  MUXRDM_outputMux21_7_1 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X13Y18"
    )
    port map (
      ADR0 => outmemoria_7_OBUF_1087,
      ADR1 => FSMNeander_estado_FSM_FFd4_1073,
      ADR2 => VCC,
      ADR3 => FLAGNZ_fioN_1038,
      O => wireMuxToRdm(7)
    );
  regRDM_acc_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => '0'
    )
    port map (
      I => regRDM_acc_7_DXMUX_3939,
      CE => regRDM_acc_7_CEINV_3919,
      CLK => regRDM_acc_7_CLKINV_3920,
      SET => GND,
      RST => regRDM_acc_7_SRINV_3921,
      O => regRDM_acc(7)
    );
  selmuxrdm_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD9",
      PATHPULSE => 555 ps
    )
    port map (
      I => FSMNeander_estado_FSM_FFd4_1073,
      O => selmuxrdm_O
    );
  outsinalread_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 555 ps
    )
    port map (
      I => outsinalread_OBUF_3681,
      O => outsinalread_O
    );
  outRIcarga_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 555 ps
    )
    port map (
      I => outSinalRI_OBUF_0,
      O => outRIcarga_O
    );
  outmemoria_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 555 ps
    )
    port map (
      I => outmemoria_0_OBUF_1077,
      O => outmemoria_0_O
    );
  outpccarga_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 555 ps
    )
    port map (
      I => outpccarga_OBUF_3782,
      O => outpccarga_O
    );
  outmemoria_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => outmemoria_1_OBUF_1079,
      O => outmemoria_1_O
    );
  outPC_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc(0),
      O => outPC_0_O
    );
  outN_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 555 ps
    )
    port map (
      I => FLAGNZ_fioN_1038,
      O => outN_O
    );
  outmemoria_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 555 ps
    )
    port map (
      I => outmemoria_2_OBUF_1080,
      O => outmemoria_2_O
    );
  outPC_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc(1),
      O => outPC_1_O
    );
  outmemoria_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 555 ps
    )
    port map (
      I => outmemoria_3_OBUF_1081,
      O => outmemoria_3_O
    );
  outPC_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc(2),
      O => outPC_2_O
    );
  outmemoria_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 555 ps
    )
    port map (
      I => outmemoria_4_OBUF_1082,
      O => outmemoria_4_O
    );
  outPC_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc(3),
      O => outPC_3_O
    );
  outmemoria_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 555 ps
    )
    port map (
      I => outmemoria_5_OBUF_1083,
      O => outmemoria_5_O
    );
  outPC_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc(4),
      O => outPC_4_O
    );
  outIR_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 555 ps
    )
    port map (
      I => REGIR_ri(0),
      O => outIR_0_O
    );
  outmemoria_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 555 ps
    )
    port map (
      I => outmemoria_6_OBUF_1085,
      O => outmemoria_6_O
    );
  outPC_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc(5),
      O => outPC_5_O
    );
  outIR_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 555 ps
    )
    port map (
      I => REGIR_ri(1),
      O => outIR_1_O
    );
  outACC_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc(0),
      O => outACC_0_O
    );
  outmemoria_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 555 ps
    )
    port map (
      I => outmemoria_7_OBUF_1087,
      O => outmemoria_7_O
    );
  outPC_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc(6),
      O => outPC_6_O
    );
  outIR_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 555 ps
    )
    port map (
      I => REGIR_ri(2),
      O => outIR_2_O
    );
  outACC_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc(1),
      O => outACC_1_O
    );
  outZ_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 555 ps
    )
    port map (
      I => FLAGNZ_fioZ_1089,
      O => outZ_O
    );
  outPC_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_Pc(7),
      O => outPC_7_O
    );
  outIR_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 555 ps
    )
    port map (
      I => REGIR_ri(3),
      O => outIR_3_O
    );
  outACC_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD69",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc(2),
      O => outACC_2_O
    );
  outACC_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc(3),
      O => outACC_3_O
    );
  outACC_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD68",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc(4),
      O => outACC_4_O
    );
  outACC_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc(5),
      O => outACC_5_O
    );
  outACC_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc(6),
      O => outACC_6_O
    );
  outACC_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 555 ps
    )
    port map (
      I => FLAGNZ_fioN_1038,
      O => outACC_7_O
    );
  saidaRDM_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc(0),
      O => saidaRDM_0_O
    );
  saidaRDM_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc(1),
      O => saidaRDM_1_O
    );
  saidaRDM_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc(2),
      O => saidaRDM_2_O
    );
  saidaRDM_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc(3),
      O => saidaRDM_3_O
    );
  outSinalRI_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 555 ps
    )
    port map (
      I => outSinalRI_OBUF_0,
      O => outSinalRI_O
    );
  saidaRDM_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc(4),
      O => saidaRDM_4_O
    );
  saidaRDM_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc(5),
      O => saidaRDM_5_O
    );
  saidaRDM_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc(6),
      O => saidaRDM_6_O
    );
  saidaRDM_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc(7),
      O => saidaRDM_7_O
    );
  outsinalREM_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 555 ps
    )
    port map (
      I => outsinalREM_OBUF_1092,
      O => outsinalREM_O
    );
  FSMNeander_estado_FSM_FFd18_In6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X21Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => FSMNeander_estado_FSM_FFd18_In6_F
    );
  outsinalREM_OBUF_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X14Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => outsinalREM_OBUF_F
    );
  NlwBufferBlock_ALU_Mmult_output_7_mult0000_A_3_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc(3),
      O => NlwBufferSignal_ALU_Mmult_output_7_mult0000_A(3)
    );
  NlwBufferBlock_ALU_Mmult_output_7_mult0000_A_2_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc(2),
      O => NlwBufferSignal_ALU_Mmult_output_7_mult0000_A(2)
    );
  NlwBufferBlock_ALU_Mmult_output_7_mult0000_A_1_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc(1),
      O => NlwBufferSignal_ALU_Mmult_output_7_mult0000_A(1)
    );
  NlwBufferBlock_ALU_Mmult_output_7_mult0000_A_0_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ACC_acc(0),
      O => NlwBufferSignal_ALU_Mmult_output_7_mult0000_A(0)
    );
  NlwBufferBlock_ALU_Mmult_output_7_mult0000_B_3_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc(3),
      O => NlwBufferSignal_ALU_Mmult_output_7_mult0000_B(3)
    );
  NlwBufferBlock_ALU_Mmult_output_7_mult0000_B_2_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc(2),
      O => NlwBufferSignal_ALU_Mmult_output_7_mult0000_B(2)
    );
  NlwBufferBlock_ALU_Mmult_output_7_mult0000_B_1_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc(1),
      O => NlwBufferSignal_ALU_Mmult_output_7_mult0000_B(1)
    );
  NlwBufferBlock_ALU_Mmult_output_7_mult0000_B_0_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc(0),
      O => NlwBufferSignal_ALU_Mmult_output_7_mult0000_B(0)
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regREM_acc(7),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_7_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regREM_acc(6),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_6_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regREM_acc(5),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_5_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regREM_acc(4),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_4_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_3_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regREM_acc(3),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_3_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_2_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regREM_acc(2),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_2_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_1_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regREM_acc(1),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_1_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_0_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regREM_acc(0),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_0_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regREM_acc(7),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_7_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regREM_acc(6),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_6_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regREM_acc(5),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_5_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regREM_acc(4),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_4_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_3_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regREM_acc(3),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_3_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_2_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regREM_acc(2),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_2_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_1_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regREM_acc(1),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_1_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_0_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regREM_acc(0),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRB_0_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc(2),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_8_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_9_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc(3),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_9_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_16_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc(4),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_16_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_17_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc(5),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_17_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_24_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc(6),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_24_Q
    );
  NlwBufferBlock_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_25_Q : 
X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => regRDM_acc(7),
      O => 
NlwBufferSignal_MEMORY_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_25_Q
    );
  NlwBlock_coreneander_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_coreneander_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

