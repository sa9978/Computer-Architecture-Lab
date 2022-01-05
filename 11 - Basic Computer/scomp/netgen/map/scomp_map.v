////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: scomp_map.v
// /___/   /\     Timestamp: Fri Dec 31 17:17:27 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 5 -pcf scomp.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim scomp_map.ncd scomp_map.v 
// Device	: 3s50pq208-5 (PRODUCTION 1.39 2013-10-13)
// Input file	: scomp_map.ncd
// Output file	: C:\Users\LATITUDE\Documents\term5\computerArchitecture\Az.architecture\11\scomp\netgen\map\scomp_map.v
// # of Modules	: 1
// Design Name	: scomp
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module scomp (
  reset, clock, memory_write_out, program_counter_out, register_ac_out, memory_address_register_out, memory_data_register_out
);
  input reset;
  input clock;
  output memory_write_out;
  output [7 : 0] program_counter_out;
  output [15 : 0] register_ac_out;
  output [7 : 0] memory_address_register_out;
  output [15 : 0] memory_data_register_out;
  wire register_ac_out_0_OBUF_830;
  wire memory_data_register_out_0_OBUF_831;
  wire register_ac_out_1_OBUF_832;
  wire memory_data_register_out_1_OBUF_833;
  wire \Madd_register_ac_addsub0000_cy[1] ;
  wire register_ac_out_2_OBUF_837;
  wire memory_data_register_out_2_OBUF_838;
  wire register_ac_out_3_OBUF_839;
  wire memory_data_register_out_3_OBUF_840;
  wire \Madd_register_ac_addsub0000_cy[3] ;
  wire register_ac_out_4_OBUF_844;
  wire memory_data_register_out_4_OBUF_845;
  wire register_ac_out_5_OBUF_846;
  wire memory_data_register_out_5_OBUF_847;
  wire \Madd_register_ac_addsub0000_cy[5] ;
  wire register_ac_out_6_OBUF_851;
  wire memory_data_register_out_6_OBUF_852;
  wire register_ac_out_7_OBUF_853;
  wire memory_data_register_out_7_OBUF_854;
  wire \Madd_register_ac_addsub0000_cy[7] ;
  wire register_ac_out_8_OBUF_858;
  wire memory_data_register_out_8_OBUF_859;
  wire register_ac_out_9_OBUF_860;
  wire memory_data_register_out_9_OBUF_861;
  wire \Madd_register_ac_addsub0000_cy[9] ;
  wire register_ac_out_10_OBUF_865;
  wire memory_data_register_out_10_OBUF_866;
  wire register_ac_out_11_OBUF_867;
  wire memory_data_register_out_11_OBUF_868;
  wire \Madd_register_ac_addsub0000_cy[11] ;
  wire register_ac_out_12_OBUF_872;
  wire memory_data_register_out_12_OBUF_873;
  wire register_ac_out_13_OBUF_874;
  wire memory_data_register_out_13_OBUF_875;
  wire register_ac_out_14_OBUF_879;
  wire memory_data_register_out_14_OBUF_880;
  wire register_ac_out_15_OBUF_881;
  wire memory_data_register_out_15_OBUF_882;
  wire memory_write_out_OBUF_893;
  wire memory_address_register_out_0_OBUF_0;
  wire memory_address_register_out_1_OBUF_0;
  wire memory_address_register_out_2_OBUF_0;
  wire reset_IBUF_898;
  wire memory_address_register_out_3_OBUF_0;
  wire memory_address_register_out_4_OBUF_0;
  wire memory_address_register_out_5_OBUF_0;
  wire memory_address_register_out_6_OBUF_0;
  wire memory_address_register_out_7_OBUF_0;
  wire clock_BUFGP;
  wire state_FSM_FFd9_906;
  wire state_FSM_FFd8_907;
  wire \state_FSM_FFd8-In9_0 ;
  wire state_FSM_FFd3_912;
  wire N12_0;
  wire \program_counter_mux0000<4>_SW1/O ;
  wire N15_0;
  wire \Madd_program_counter_addsub0000_cy[2] ;
  wire N11;
  wire \program_counter_mux0000<6>_SW0/O ;
  wire state_FSM_FFd4_921;
  wire \program_counter_mux0000<7>1_SW0/O ;
  wire state_FSM_FFd10_923;
  wire N5;
  wire N02_0;
  wire state_FSM_FFd7_930;
  wire N3;
  wire N01;
  wire state_FSM_FFd5_935;
  wire N41_0;
  wire \register_ac_mux0000<10>_SW0/O ;
  wire N4;
  wire \register_ac_mux0000<11>_SW0/O ;
  wire \register_ac_mux0000<12>_SW0/O ;
  wire \register_ac_mux0000<13>_SW0/O ;
  wire \register_ac_mux0000<14>_SW0/O ;
  wire \state_FSM_FFd8-In4/O ;
  wire \register_ac_mux0000<15>_SW0/O ;
  wire \register_ac_mux0000<1>_SW0/O ;
  wire \program_counter_mux0000<0>12/O ;
  wire \program_counter_mux0000<0>22_0 ;
  wire \program_counter_mux0000<0>5_0 ;
  wire \Madd_program_counter_addsub0000_cy<5>_0 ;
  wire \register_ac_mux0000<2>_SW0/O ;
  wire \register_ac_mux0000<3>_SW0/O ;
  wire \register_ac_mux0000<4>_SW0/O ;
  wire \program_counter_mux0000<1>24_SW2/O ;
  wire \register_ac_mux0000<5>_SW0/O ;
  wire \register_ac_mux0000<6>_SW0/O ;
  wire \register_ac_mux0000<7>_SW0/O ;
  wire \register_ac_mux0000<8>_SW0/O ;
  wire \program_counter_mux0000<2>24_SW0/O ;
  wire \Madd_program_counter_addsub0000_cy<4>_0 ;
  wire \register_ac_mux0000<9>_SW0/O ;
  wire \program_counter_mux0000<3>5/O ;
  wire \program_counter_mux0000<3>12_0 ;
  wire \program_counter_mux0000<3>22/O ;
  wire N43_0;
  wire \program_counter_mux0000<5>21_0 ;
  wire \program_counter_mux0000<5>10/O ;
  wire \program_counter_mux0000<5>8_0 ;
  wire N2_0;
  wire state_FSM_FFd2_973;
  wire state_FSM_FFd1_974;
  wire instruction_register_and0000_0;
  wire \register_ac_addsub0000<0>/XORF_1011 ;
  wire \register_ac_addsub0000<0>/CYINIT_1010 ;
  wire \register_ac_addsub0000<0>/CY0F_1009 ;
  wire \register_ac_addsub0000<0>/CYSELF_1001 ;
  wire \register_ac_addsub0000<0>/BXINV_999 ;
  wire \register_ac_addsub0000<0>/XORG_997 ;
  wire \register_ac_addsub0000<0>/CYMUXG_996 ;
  wire \Madd_register_ac_addsub0000_cy[0] ;
  wire \register_ac_addsub0000<0>/CY0G_994 ;
  wire \register_ac_addsub0000<0>/CYSELG_986 ;
  wire \register_ac_addsub0000<2>/XORF_1050 ;
  wire \register_ac_addsub0000<2>/CYINIT_1049 ;
  wire \register_ac_addsub0000<2>/CY0F_1048 ;
  wire \register_ac_addsub0000<2>/XORG_1038 ;
  wire \Madd_register_ac_addsub0000_cy[2] ;
  wire \register_ac_addsub0000<2>/CYSELF_1036 ;
  wire \register_ac_addsub0000<2>/CYMUXFAST_1035 ;
  wire \register_ac_addsub0000<2>/CYAND_1034 ;
  wire \register_ac_addsub0000<2>/FASTCARRY_1033 ;
  wire \register_ac_addsub0000<2>/CYMUXG2_1032 ;
  wire \register_ac_addsub0000<2>/CYMUXF2_1031 ;
  wire \register_ac_addsub0000<2>/CY0G_1030 ;
  wire \register_ac_addsub0000<2>/CYSELG_1022 ;
  wire \register_ac_addsub0000<6>/XORF_1128 ;
  wire \register_ac_addsub0000<6>/CYINIT_1127 ;
  wire \register_ac_addsub0000<6>/CY0F_1126 ;
  wire \register_ac_addsub0000<6>/XORG_1116 ;
  wire \Madd_register_ac_addsub0000_cy[6] ;
  wire \register_ac_addsub0000<6>/CYSELF_1114 ;
  wire \register_ac_addsub0000<6>/CYMUXFAST_1113 ;
  wire \register_ac_addsub0000<6>/CYAND_1112 ;
  wire \register_ac_addsub0000<6>/FASTCARRY_1111 ;
  wire \register_ac_addsub0000<6>/CYMUXG2_1110 ;
  wire \register_ac_addsub0000<6>/CYMUXF2_1109 ;
  wire \register_ac_addsub0000<6>/CY0G_1108 ;
  wire \register_ac_addsub0000<6>/CYSELG_1100 ;
  wire \register_ac_addsub0000<4>/XORF_1089 ;
  wire \register_ac_addsub0000<4>/CYINIT_1088 ;
  wire \register_ac_addsub0000<4>/CY0F_1087 ;
  wire \register_ac_addsub0000<4>/XORG_1077 ;
  wire \Madd_register_ac_addsub0000_cy[4] ;
  wire \register_ac_addsub0000<4>/CYSELF_1075 ;
  wire \register_ac_addsub0000<4>/CYMUXFAST_1074 ;
  wire \register_ac_addsub0000<4>/CYAND_1073 ;
  wire \register_ac_addsub0000<4>/FASTCARRY_1072 ;
  wire \register_ac_addsub0000<4>/CYMUXG2_1071 ;
  wire \register_ac_addsub0000<4>/CYMUXF2_1070 ;
  wire \register_ac_addsub0000<4>/CY0G_1069 ;
  wire \register_ac_addsub0000<4>/CYSELG_1061 ;
  wire \register_ac_out<5>/O ;
  wire \register_ac_out<4>/O ;
  wire \register_ac_out<6>/O ;
  wire \register_ac_out<12>/O ;
  wire \register_ac_out<3>/O ;
  wire \register_ac_out<8>/O ;
  wire \register_ac_out<9>/O ;
  wire \register_ac_out<13>/O ;
  wire \register_ac_out<11>/O ;
  wire \register_ac_out<14>/O ;
  wire \register_ac_out<10>/O ;
  wire \register_ac_out<7>/O ;
  wire \program_counter_out<5>/O ;
  wire \clock/INBUF ;
  wire \memory_write_out/O ;
  wire \register_ac_out<15>/O ;
  wire \program_counter_out<2>/O ;
  wire \program_counter_out<6>/O ;
  wire \program_counter_out<7>/O ;
  wire \program_counter_out<0>/O ;
  wire \program_counter_out<1>/O ;
  wire \program_counter_out<3>/O ;
  wire \program_counter_out<4>/O ;
  wire \memory_data_register_out<12>/O ;
  wire \memory_data_register_out<0>/O ;
  wire \memory_address_register_out<6>/O ;
  wire \memory_data_register_out<7>/O ;
  wire \memory_address_register_out<7>/O ;
  wire \memory_address_register_out<5>/O ;
  wire \memory_address_register_out<0>/O ;
  wire \memory_address_register_out<4>/O ;
  wire \memory_data_register_out<5>/O ;
  wire \memory_data_register_out<1>/O ;
  wire \memory_data_register_out<2>/O ;
  wire \memory_data_register_out<6>/O ;
  wire \memory_address_register_out<2>/O ;
  wire \memory_data_register_out<3>/O ;
  wire \reset/INBUF ;
  wire \memory_address_register_out<1>/O ;
  wire \memory_data_register_out<10>/O ;
  wire \memory_data_register_out<8>/O ;
  wire \memory_data_register_out<9>/O ;
  wire \memory_address_register_out<3>/O ;
  wire \memory_data_register_out<4>/O ;
  wire \memory_data_register_out<11>/O ;
  wire \register_ac_out<0>/O ;
  wire \memory_data_register_out<13>/O ;
  wire \register_ac_out_2_OBUF/DXMUX_2107 ;
  wire \register_ac_mux0000<13>_SW0/O_pack_2 ;
  wire \register_ac_out_2_OBUF/CLKINV_2091 ;
  wire \register_ac_out_2_OBUF/CEINVNOT ;
  wire \clock_BUFGP/BUFG/S_INVNOT ;
  wire \clock_BUFGP/BUFG/I0_INV ;
  wire memory_address_register_out_6_OBUF_1929;
  wire N3_pack_1;
  wire \memory_data_register_out<14>/O ;
  wire \program_counter<1>/DXMUX_1844 ;
  wire \program_counter_mux0000<6>_SW0/O_pack_2 ;
  wire \program_counter<1>/CLKINV_1828 ;
  wire \program_counter<1>/CEINVNOT ;
  wire \Mram_ram_block/DOPA1 ;
  wire \Mram_ram_block/DOPA0 ;
  wire \register_ac_out_5_OBUF/DXMUX_1984 ;
  wire \register_ac_mux0000<10>_SW0/O_pack_2 ;
  wire \register_ac_out_5_OBUF/CLKINV_1968 ;
  wire \register_ac_out_5_OBUF/CEINVNOT ;
  wire \state_FSM_FFd8/DXMUX_1776 ;
  wire \state_FSM_FFd8/F5MUX_1774 ;
  wire N53;
  wire \state_FSM_FFd8/BXINV_1767 ;
  wire \state_FSM_FFd8/DYMUX_1760 ;
  wire N52;
  wire \state_FSM_FFd8/SRINV_1751 ;
  wire \state_FSM_FFd8/CLKINV_1750 ;
  wire N15;
  wire \program_counter_mux0000<7>1_SW0/O_pack_1 ;
  wire \program_counter<3>/DXMUX_1811 ;
  wire \program_counter_mux0000<4>_SW1/O_pack_2 ;
  wire \program_counter<3>/CLKINV_1796 ;
  wire \program_counter<3>/CEINVNOT ;
  wire memory_address_register_out_7_OBUF_1953;
  wire N01_pack_1;
  wire \register_ac_out_4_OBUF/DXMUX_2041 ;
  wire \register_ac_mux0000<11>_SW0/O_pack_2 ;
  wire \register_ac_out_4_OBUF/CLKINV_2025 ;
  wire \register_ac_out_4_OBUF/CEINVNOT ;
  wire N12;
  wire N11_pack_1;
  wire \state_FSM_FFd7/DXMUX_1901 ;
  wire \state_FSM_FFd7-In ;
  wire N5_pack_1;
  wire \state_FSM_FFd7/CLKINV_1885 ;
  wire \register_ac_out_3_OBUF/DXMUX_2074 ;
  wire \register_ac_mux0000<12>_SW0/O_pack_2 ;
  wire \register_ac_out_3_OBUF/CLKINV_2058 ;
  wire \register_ac_out_3_OBUF/CEINVNOT ;
  wire \state_FSM_FFd8-In9_2166 ;
  wire \state_FSM_FFd8-In4/O_pack_1 ;
  wire \register_ac_out_1_OBUF/DXMUX_2140 ;
  wire \register_ac_mux0000<14>_SW0/O_pack_2 ;
  wire \register_ac_out_1_OBUF/CLKINV_2124 ;
  wire \register_ac_out_1_OBUF/CEINVNOT ;
  wire \register_ac_addsub0000<12>/XORF_1245 ;
  wire \register_ac_addsub0000<12>/CYINIT_1244 ;
  wire \register_ac_addsub0000<12>/CY0F_1243 ;
  wire \register_ac_addsub0000<12>/XORG_1233 ;
  wire \Madd_register_ac_addsub0000_cy[12] ;
  wire \register_ac_addsub0000<12>/CYSELF_1231 ;
  wire \register_ac_addsub0000<12>/CYMUXFAST_1230 ;
  wire \register_ac_addsub0000<12>/CYAND_1229 ;
  wire \register_ac_addsub0000<12>/FASTCARRY_1228 ;
  wire \register_ac_addsub0000<12>/CYMUXG2_1227 ;
  wire \register_ac_addsub0000<12>/CYMUXF2_1226 ;
  wire \register_ac_addsub0000<12>/CY0G_1225 ;
  wire \register_ac_addsub0000<12>/CYSELG_1217 ;
  wire \register_ac_addsub0000<10>/XORF_1206 ;
  wire \register_ac_addsub0000<10>/CYINIT_1205 ;
  wire \register_ac_addsub0000<10>/CY0F_1204 ;
  wire \register_ac_addsub0000<10>/XORG_1194 ;
  wire \Madd_register_ac_addsub0000_cy[10] ;
  wire \register_ac_addsub0000<10>/CYSELF_1192 ;
  wire \register_ac_addsub0000<10>/CYMUXFAST_1191 ;
  wire \register_ac_addsub0000<10>/CYAND_1190 ;
  wire \register_ac_addsub0000<10>/FASTCARRY_1189 ;
  wire \register_ac_addsub0000<10>/CYMUXG2_1188 ;
  wire \register_ac_addsub0000<10>/CYMUXF2_1187 ;
  wire \register_ac_addsub0000<10>/CY0G_1186 ;
  wire \register_ac_addsub0000<10>/CYSELG_1178 ;
  wire \register_ac_out<1>/O ;
  wire \register_ac_out<2>/O ;
  wire \register_ac_addsub0000<8>/XORF_1167 ;
  wire \register_ac_addsub0000<8>/CYINIT_1166 ;
  wire \register_ac_addsub0000<8>/CY0F_1165 ;
  wire \register_ac_addsub0000<8>/XORG_1155 ;
  wire \Madd_register_ac_addsub0000_cy[8] ;
  wire \register_ac_addsub0000<8>/CYSELF_1153 ;
  wire \register_ac_addsub0000<8>/CYMUXFAST_1152 ;
  wire \register_ac_addsub0000<8>/CYAND_1151 ;
  wire \register_ac_addsub0000<8>/FASTCARRY_1150 ;
  wire \register_ac_addsub0000<8>/CYMUXG2_1149 ;
  wire \register_ac_addsub0000<8>/CYMUXF2_1148 ;
  wire \register_ac_addsub0000<8>/CY0G_1147 ;
  wire \register_ac_addsub0000<8>/CYSELG_1139 ;
  wire \register_ac_addsub0000<14>/XORF_1276 ;
  wire \register_ac_addsub0000<14>/CYINIT_1275 ;
  wire \register_ac_addsub0000<14>/CY0F_1274 ;
  wire \register_ac_addsub0000<14>/CYSELF_1266 ;
  wire \register_ac_addsub0000<14>/XORG_1263 ;
  wire \Madd_register_ac_addsub0000_cy[14] ;
  wire \memory_data_register_out<15>/O ;
  wire \register_ac_out_8_OBUF/DXMUX_2494 ;
  wire \register_ac_mux0000<7>_SW0/O_pack_2 ;
  wire \register_ac_out_8_OBUF/CLKINV_2478 ;
  wire \register_ac_out_8_OBUF/CEINVNOT ;
  wire \program_counter<6>/DXMUX_2395 ;
  wire \program_counter_mux0000<1>24_SW2/O_pack_2 ;
  wire \program_counter<6>/CLKINV_2379 ;
  wire \program_counter<6>/CEINVNOT ;
  wire \register_ac_out_7_OBUF/DXMUX_2527 ;
  wire \register_ac_mux0000<8>_SW0/O_pack_2 ;
  wire \register_ac_out_7_OBUF/CLKINV_2511 ;
  wire \register_ac_out_7_OBUF/CEINVNOT ;
  wire \register_ac_out_11_OBUF/DXMUX_2362 ;
  wire \register_ac_mux0000<4>_SW0/O_pack_2 ;
  wire \register_ac_out_11_OBUF/CLKINV_2346 ;
  wire \register_ac_out_11_OBUF/CEINVNOT ;
  wire \register_ac_out_12_OBUF/DXMUX_2329 ;
  wire \register_ac_mux0000<3>_SW0/O_pack_2 ;
  wire \register_ac_out_12_OBUF/CLKINV_2313 ;
  wire \register_ac_out_12_OBUF/CEINVNOT ;
  wire \program_counter<7>/DXMUX_2263 ;
  wire \program_counter_mux0000<0>12/O_pack_2 ;
  wire \program_counter<7>/CLKINV_2248 ;
  wire \program_counter<7>/CEINVNOT ;
  wire \program_counter<5>/DXMUX_2560 ;
  wire \program_counter_mux0000<2>24_SW0/O_pack_2 ;
  wire \program_counter<5>/CLKINV_2544 ;
  wire \program_counter<5>/CEINVNOT ;
  wire \register_ac_out_10_OBUF/DXMUX_2428 ;
  wire \register_ac_mux0000<5>_SW0/O_pack_2 ;
  wire \register_ac_out_10_OBUF/CLKINV_2412 ;
  wire \register_ac_out_10_OBUF/CEINVNOT ;
  wire \register_ac_out_9_OBUF/DXMUX_2461 ;
  wire \register_ac_mux0000<6>_SW0/O_pack_2 ;
  wire \register_ac_out_9_OBUF/CLKINV_2445 ;
  wire \register_ac_out_9_OBUF/CEINVNOT ;
  wire \register_ac_out_6_OBUF/DXMUX_2593 ;
  wire \register_ac_mux0000<9>_SW0/O_pack_2 ;
  wire \register_ac_out_6_OBUF/CLKINV_2577 ;
  wire \register_ac_out_6_OBUF/CEINVNOT ;
  wire \Madd_program_counter_addsub0000_cy[5] ;
  wire \Madd_program_counter_addsub0000_cy<2>_pack_1 ;
  wire \register_ac_out_13_OBUF/DXMUX_2296 ;
  wire \register_ac_mux0000<2>_SW0/O_pack_2 ;
  wire \register_ac_out_13_OBUF/CLKINV_2280 ;
  wire \register_ac_out_13_OBUF/CEINVNOT ;
  wire \program_counter_mux0000<3>12_2643 ;
  wire \program_counter_mux0000<3>5/O_pack_1 ;
  wire \register_ac_out_14_OBUF/DXMUX_2230 ;
  wire \register_ac_mux0000<1>_SW0/O_pack_2 ;
  wire \register_ac_out_14_OBUF/CLKINV_2214 ;
  wire \register_ac_out_14_OBUF/CEINVNOT ;
  wire \register_ac_out_0_OBUF/DXMUX_2197 ;
  wire \register_ac_mux0000<15>_SW0/O_pack_2 ;
  wire \register_ac_out_0_OBUF/CLKINV_2181 ;
  wire \register_ac_out_0_OBUF/CEINVNOT ;
  wire \state_FSM_FFd2/DXMUX_2951 ;
  wire \state_FSM_FFd2/DYMUX_2943 ;
  wire \state_FSM_FFd2/SRINV_2941 ;
  wire \state_FSM_FFd2/CLKINV_2940 ;
  wire memory_address_register_out_1_OBUF_2931;
  wire memory_address_register_out_0_OBUF_2924;
  wire \instruction_register<3>/DXMUX_2993 ;
  wire \instruction_register<3>/DYMUX_2987 ;
  wire \instruction_register<3>/CLKINV_2985 ;
  wire \instruction_register<3>/CEINV_2984 ;
  wire \program_counter_mux0000<0>22_2907 ;
  wire \program_counter_mux0000<0>5_2899 ;
  wire N43;
  wire N4_pack_2;
  wire \instruction_register<5>/DXMUX_3013 ;
  wire \instruction_register<5>/DYMUX_3007 ;
  wire \instruction_register<5>/CLKINV_3005 ;
  wire \instruction_register<5>/CEINV_3004 ;
  wire memory_address_register_out_3_OBUF_3039;
  wire memory_address_register_out_2_OBUF_3032;
  wire \program_counter_mux0000<5>21_2850 ;
  wire \program_counter<0>/DYMUX_2840 ;
  wire \program_counter<0>/CLKINV_2832 ;
  wire \program_counter<0>/CEINVNOT ;
  wire \instruction_register<1>/DXMUX_2973 ;
  wire \instruction_register<1>/DYMUX_2967 ;
  wire \instruction_register<1>/CLKINV_2965 ;
  wire \instruction_register<1>/CEINV_2964 ;
  wire \instruction_register<7>/DXMUX_3057 ;
  wire \instruction_register<7>/DYMUX_3051 ;
  wire \instruction_register<7>/CLKINV_3049 ;
  wire \instruction_register<7>/CEINV_3048 ;
  wire \program_counter<4>/DXMUX_2674 ;
  wire \program_counter_mux0000<3>22/O_pack_2 ;
  wire \program_counter<4>/CLKINV_2658 ;
  wire \program_counter<4>/CEINVNOT ;
  wire \program_counter_mux0000<5>8_3083 ;
  wire instruction_register_and0000;
  wire \instruction_register<9>/DXMUX_3101 ;
  wire \instruction_register<9>/DYMUX_3095 ;
  wire \instruction_register<9>/CLKINV_3093 ;
  wire \instruction_register<9>/CEINV_3092 ;
  wire \memory_write_out_OBUF/DXMUX_2813 ;
  wire \state_FSM_FFd6-In ;
  wire \memory_write_out_OBUF/DYMUX_2799 ;
  wire \state_FSM_FFd5-In ;
  wire \memory_write_out_OBUF/SRINV_2791 ;
  wire \memory_write_out_OBUF/CLKINV_2790 ;
  wire \state_FSM_FFd4/DXMUX_2771 ;
  wire \state_FSM_FFd4-In ;
  wire \state_FSM_FFd4/DYMUX_2757 ;
  wire \state_FSM_FFd3-In ;
  wire \state_FSM_FFd4/SRINV_2749 ;
  wire \state_FSM_FFd4/CLKINV_2748 ;
  wire N41;
  wire \register_ac_out_15_OBUF/DYMUX_2873 ;
  wire \register_ac_out_15_OBUF/CLKINV_2864 ;
  wire \register_ac_out_15_OBUF/CEINVNOT ;
  wire \program_counter<2>/DXMUX_2731 ;
  wire \program_counter_mux0000<5>10/O_pack_2 ;
  wire \program_counter<2>/CLKINV_2715 ;
  wire \program_counter<2>/CEINVNOT ;
  wire N2;
  wire N02;
  wire memory_address_register_out_5_OBUF_3127;
  wire memory_address_register_out_4_OBUF_3120;
  wire \Madd_program_counter_addsub0000_cy[4] ;
  wire \instruction_register<11>/DXMUX_3194 ;
  wire \instruction_register<11>/DYMUX_3188 ;
  wire \instruction_register<11>/CLKINV_3186 ;
  wire \instruction_register<11>/CEINV_3185 ;
  wire \state_FSM_FFd10/DYMUX_3173 ;
  wire \state_FSM_FFd10/BYINV_3172 ;
  wire \state_FSM_FFd10/SRINV_3171 ;
  wire \state_FSM_FFd10/CLKINV_3170 ;
  wire \instruction_register<13>/DXMUX_3214 ;
  wire \instruction_register<13>/DYMUX_3208 ;
  wire \instruction_register<13>/CLKINV_3206 ;
  wire \instruction_register<13>/CEINV_3205 ;
  wire \instruction_register<15>/DXMUX_3234 ;
  wire \instruction_register<15>/DYMUX_3228 ;
  wire \instruction_register<15>/CLKINV_3226 ;
  wire \instruction_register<15>/CEINV_3225 ;
  wire \state_FSM_FFd7/FFX/RSTAND_1906 ;
  wire GND;
  wire VCC;
  wire [15 : 0] register_ac_addsub0000;
  wire [7 : 0] program_counter;
  wire [15 : 0] instruction_register;
  wire [15 : 0] Madd_register_ac_addsub0000_lut;
  wire [15 : 0] register_ac_mux0000;
  wire [7 : 0] program_counter_mux0000;
  initial $sdf_annotate("netgen/map/scomp_map.sdf");
  X_BUF   \register_ac_addsub0000<0>/XUSED  (
    .I(\register_ac_addsub0000<0>/XORF_1011 ),
    .O(register_ac_addsub0000[0])
  );
  X_XOR2   \register_ac_addsub0000<0>/XORF  (
    .I0(\register_ac_addsub0000<0>/CYINIT_1010 ),
    .I1(Madd_register_ac_addsub0000_lut[0]),
    .O(\register_ac_addsub0000<0>/XORF_1011 )
  );
  X_MUX2   \register_ac_addsub0000<0>/CYMUXF  (
    .IA(\register_ac_addsub0000<0>/CY0F_1009 ),
    .IB(\register_ac_addsub0000<0>/CYINIT_1010 ),
    .SEL(\register_ac_addsub0000<0>/CYSELF_1001 ),
    .O(\Madd_register_ac_addsub0000_cy[0] )
  );
  X_BUF   \register_ac_addsub0000<0>/CYINIT  (
    .I(\register_ac_addsub0000<0>/BXINV_999 ),
    .O(\register_ac_addsub0000<0>/CYINIT_1010 )
  );
  X_BUF   \register_ac_addsub0000<0>/CY0F  (
    .I(register_ac_out_0_OBUF_830),
    .O(\register_ac_addsub0000<0>/CY0F_1009 )
  );
  X_BUF   \register_ac_addsub0000<0>/CYSELF  (
    .I(Madd_register_ac_addsub0000_lut[0]),
    .O(\register_ac_addsub0000<0>/CYSELF_1001 )
  );
  X_BUF   \register_ac_addsub0000<0>/BXINV  (
    .I(1'b0),
    .O(\register_ac_addsub0000<0>/BXINV_999 )
  );
  X_BUF   \register_ac_addsub0000<0>/YUSED  (
    .I(\register_ac_addsub0000<0>/XORG_997 ),
    .O(register_ac_addsub0000[1])
  );
  X_XOR2   \register_ac_addsub0000<0>/XORG  (
    .I0(\Madd_register_ac_addsub0000_cy[0] ),
    .I1(Madd_register_ac_addsub0000_lut[1]),
    .O(\register_ac_addsub0000<0>/XORG_997 )
  );
  X_BUF   \register_ac_addsub0000<0>/COUTUSED  (
    .I(\register_ac_addsub0000<0>/CYMUXG_996 ),
    .O(\Madd_register_ac_addsub0000_cy[1] )
  );
  X_MUX2   \register_ac_addsub0000<0>/CYMUXG  (
    .IA(\register_ac_addsub0000<0>/CY0G_994 ),
    .IB(\Madd_register_ac_addsub0000_cy[0] ),
    .SEL(\register_ac_addsub0000<0>/CYSELG_986 ),
    .O(\register_ac_addsub0000<0>/CYMUXG_996 )
  );
  X_BUF   \register_ac_addsub0000<0>/CY0G  (
    .I(register_ac_out_1_OBUF_832),
    .O(\register_ac_addsub0000<0>/CY0G_994 )
  );
  X_BUF   \register_ac_addsub0000<0>/CYSELG  (
    .I(Madd_register_ac_addsub0000_lut[1]),
    .O(\register_ac_addsub0000<0>/CYSELG_986 )
  );
  X_BUF   \register_ac_addsub0000<2>/XUSED  (
    .I(\register_ac_addsub0000<2>/XORF_1050 ),
    .O(register_ac_addsub0000[2])
  );
  X_XOR2   \register_ac_addsub0000<2>/XORF  (
    .I0(\register_ac_addsub0000<2>/CYINIT_1049 ),
    .I1(Madd_register_ac_addsub0000_lut[2]),
    .O(\register_ac_addsub0000<2>/XORF_1050 )
  );
  X_MUX2   \register_ac_addsub0000<2>/CYMUXF  (
    .IA(\register_ac_addsub0000<2>/CY0F_1048 ),
    .IB(\register_ac_addsub0000<2>/CYINIT_1049 ),
    .SEL(\register_ac_addsub0000<2>/CYSELF_1036 ),
    .O(\Madd_register_ac_addsub0000_cy[2] )
  );
  X_MUX2   \register_ac_addsub0000<2>/CYMUXF2  (
    .IA(\register_ac_addsub0000<2>/CY0F_1048 ),
    .IB(\register_ac_addsub0000<2>/CY0F_1048 ),
    .SEL(\register_ac_addsub0000<2>/CYSELF_1036 ),
    .O(\register_ac_addsub0000<2>/CYMUXF2_1031 )
  );
  X_BUF   \register_ac_addsub0000<2>/CYINIT  (
    .I(\Madd_register_ac_addsub0000_cy[1] ),
    .O(\register_ac_addsub0000<2>/CYINIT_1049 )
  );
  X_BUF   \register_ac_addsub0000<2>/CY0F  (
    .I(register_ac_out_2_OBUF_837),
    .O(\register_ac_addsub0000<2>/CY0F_1048 )
  );
  X_BUF   \register_ac_addsub0000<2>/CYSELF  (
    .I(Madd_register_ac_addsub0000_lut[2]),
    .O(\register_ac_addsub0000<2>/CYSELF_1036 )
  );
  X_BUF   \register_ac_addsub0000<2>/YUSED  (
    .I(\register_ac_addsub0000<2>/XORG_1038 ),
    .O(register_ac_addsub0000[3])
  );
  X_XOR2   \register_ac_addsub0000<2>/XORG  (
    .I0(\Madd_register_ac_addsub0000_cy[2] ),
    .I1(Madd_register_ac_addsub0000_lut[3]),
    .O(\register_ac_addsub0000<2>/XORG_1038 )
  );
  X_BUF   \register_ac_addsub0000<2>/COUTUSED  (
    .I(\register_ac_addsub0000<2>/CYMUXFAST_1035 ),
    .O(\Madd_register_ac_addsub0000_cy[3] )
  );
  X_BUF   \register_ac_addsub0000<2>/FASTCARRY  (
    .I(\Madd_register_ac_addsub0000_cy[1] ),
    .O(\register_ac_addsub0000<2>/FASTCARRY_1033 )
  );
  X_AND2   \register_ac_addsub0000<2>/CYAND  (
    .I0(\register_ac_addsub0000<2>/CYSELG_1022 ),
    .I1(\register_ac_addsub0000<2>/CYSELF_1036 ),
    .O(\register_ac_addsub0000<2>/CYAND_1034 )
  );
  X_MUX2   \register_ac_addsub0000<2>/CYMUXFAST  (
    .IA(\register_ac_addsub0000<2>/CYMUXG2_1032 ),
    .IB(\register_ac_addsub0000<2>/FASTCARRY_1033 ),
    .SEL(\register_ac_addsub0000<2>/CYAND_1034 ),
    .O(\register_ac_addsub0000<2>/CYMUXFAST_1035 )
  );
  X_MUX2   \register_ac_addsub0000<2>/CYMUXG2  (
    .IA(\register_ac_addsub0000<2>/CY0G_1030 ),
    .IB(\register_ac_addsub0000<2>/CYMUXF2_1031 ),
    .SEL(\register_ac_addsub0000<2>/CYSELG_1022 ),
    .O(\register_ac_addsub0000<2>/CYMUXG2_1032 )
  );
  X_BUF   \register_ac_addsub0000<2>/CY0G  (
    .I(register_ac_out_3_OBUF_839),
    .O(\register_ac_addsub0000<2>/CY0G_1030 )
  );
  X_BUF   \register_ac_addsub0000<2>/CYSELG  (
    .I(Madd_register_ac_addsub0000_lut[3]),
    .O(\register_ac_addsub0000<2>/CYSELG_1022 )
  );
  X_BUF   \register_ac_addsub0000<6>/XUSED  (
    .I(\register_ac_addsub0000<6>/XORF_1128 ),
    .O(register_ac_addsub0000[6])
  );
  X_XOR2   \register_ac_addsub0000<6>/XORF  (
    .I0(\register_ac_addsub0000<6>/CYINIT_1127 ),
    .I1(Madd_register_ac_addsub0000_lut[6]),
    .O(\register_ac_addsub0000<6>/XORF_1128 )
  );
  X_MUX2   \register_ac_addsub0000<6>/CYMUXF  (
    .IA(\register_ac_addsub0000<6>/CY0F_1126 ),
    .IB(\register_ac_addsub0000<6>/CYINIT_1127 ),
    .SEL(\register_ac_addsub0000<6>/CYSELF_1114 ),
    .O(\Madd_register_ac_addsub0000_cy[6] )
  );
  X_MUX2   \register_ac_addsub0000<6>/CYMUXF2  (
    .IA(\register_ac_addsub0000<6>/CY0F_1126 ),
    .IB(\register_ac_addsub0000<6>/CY0F_1126 ),
    .SEL(\register_ac_addsub0000<6>/CYSELF_1114 ),
    .O(\register_ac_addsub0000<6>/CYMUXF2_1109 )
  );
  X_BUF   \register_ac_addsub0000<6>/CYINIT  (
    .I(\Madd_register_ac_addsub0000_cy[5] ),
    .O(\register_ac_addsub0000<6>/CYINIT_1127 )
  );
  X_BUF   \register_ac_addsub0000<6>/CY0F  (
    .I(register_ac_out_6_OBUF_851),
    .O(\register_ac_addsub0000<6>/CY0F_1126 )
  );
  X_BUF   \register_ac_addsub0000<6>/CYSELF  (
    .I(Madd_register_ac_addsub0000_lut[6]),
    .O(\register_ac_addsub0000<6>/CYSELF_1114 )
  );
  X_BUF   \register_ac_addsub0000<6>/YUSED  (
    .I(\register_ac_addsub0000<6>/XORG_1116 ),
    .O(register_ac_addsub0000[7])
  );
  X_XOR2   \register_ac_addsub0000<6>/XORG  (
    .I0(\Madd_register_ac_addsub0000_cy[6] ),
    .I1(Madd_register_ac_addsub0000_lut[7]),
    .O(\register_ac_addsub0000<6>/XORG_1116 )
  );
  X_BUF   \register_ac_addsub0000<6>/COUTUSED  (
    .I(\register_ac_addsub0000<6>/CYMUXFAST_1113 ),
    .O(\Madd_register_ac_addsub0000_cy[7] )
  );
  X_BUF   \register_ac_addsub0000<6>/FASTCARRY  (
    .I(\Madd_register_ac_addsub0000_cy[5] ),
    .O(\register_ac_addsub0000<6>/FASTCARRY_1111 )
  );
  X_AND2   \register_ac_addsub0000<6>/CYAND  (
    .I0(\register_ac_addsub0000<6>/CYSELG_1100 ),
    .I1(\register_ac_addsub0000<6>/CYSELF_1114 ),
    .O(\register_ac_addsub0000<6>/CYAND_1112 )
  );
  X_MUX2   \register_ac_addsub0000<6>/CYMUXFAST  (
    .IA(\register_ac_addsub0000<6>/CYMUXG2_1110 ),
    .IB(\register_ac_addsub0000<6>/FASTCARRY_1111 ),
    .SEL(\register_ac_addsub0000<6>/CYAND_1112 ),
    .O(\register_ac_addsub0000<6>/CYMUXFAST_1113 )
  );
  X_MUX2   \register_ac_addsub0000<6>/CYMUXG2  (
    .IA(\register_ac_addsub0000<6>/CY0G_1108 ),
    .IB(\register_ac_addsub0000<6>/CYMUXF2_1109 ),
    .SEL(\register_ac_addsub0000<6>/CYSELG_1100 ),
    .O(\register_ac_addsub0000<6>/CYMUXG2_1110 )
  );
  X_BUF   \register_ac_addsub0000<6>/CY0G  (
    .I(register_ac_out_7_OBUF_853),
    .O(\register_ac_addsub0000<6>/CY0G_1108 )
  );
  X_BUF   \register_ac_addsub0000<6>/CYSELG  (
    .I(Madd_register_ac_addsub0000_lut[7]),
    .O(\register_ac_addsub0000<6>/CYSELG_1100 )
  );
  X_BUF   \register_ac_addsub0000<4>/XUSED  (
    .I(\register_ac_addsub0000<4>/XORF_1089 ),
    .O(register_ac_addsub0000[4])
  );
  X_XOR2   \register_ac_addsub0000<4>/XORF  (
    .I0(\register_ac_addsub0000<4>/CYINIT_1088 ),
    .I1(Madd_register_ac_addsub0000_lut[4]),
    .O(\register_ac_addsub0000<4>/XORF_1089 )
  );
  X_MUX2   \register_ac_addsub0000<4>/CYMUXF  (
    .IA(\register_ac_addsub0000<4>/CY0F_1087 ),
    .IB(\register_ac_addsub0000<4>/CYINIT_1088 ),
    .SEL(\register_ac_addsub0000<4>/CYSELF_1075 ),
    .O(\Madd_register_ac_addsub0000_cy[4] )
  );
  X_MUX2   \register_ac_addsub0000<4>/CYMUXF2  (
    .IA(\register_ac_addsub0000<4>/CY0F_1087 ),
    .IB(\register_ac_addsub0000<4>/CY0F_1087 ),
    .SEL(\register_ac_addsub0000<4>/CYSELF_1075 ),
    .O(\register_ac_addsub0000<4>/CYMUXF2_1070 )
  );
  X_BUF   \register_ac_addsub0000<4>/CYINIT  (
    .I(\Madd_register_ac_addsub0000_cy[3] ),
    .O(\register_ac_addsub0000<4>/CYINIT_1088 )
  );
  X_BUF   \register_ac_addsub0000<4>/CY0F  (
    .I(register_ac_out_4_OBUF_844),
    .O(\register_ac_addsub0000<4>/CY0F_1087 )
  );
  X_BUF   \register_ac_addsub0000<4>/CYSELF  (
    .I(Madd_register_ac_addsub0000_lut[4]),
    .O(\register_ac_addsub0000<4>/CYSELF_1075 )
  );
  X_BUF   \register_ac_addsub0000<4>/YUSED  (
    .I(\register_ac_addsub0000<4>/XORG_1077 ),
    .O(register_ac_addsub0000[5])
  );
  X_XOR2   \register_ac_addsub0000<4>/XORG  (
    .I0(\Madd_register_ac_addsub0000_cy[4] ),
    .I1(Madd_register_ac_addsub0000_lut[5]),
    .O(\register_ac_addsub0000<4>/XORG_1077 )
  );
  X_BUF   \register_ac_addsub0000<4>/COUTUSED  (
    .I(\register_ac_addsub0000<4>/CYMUXFAST_1074 ),
    .O(\Madd_register_ac_addsub0000_cy[5] )
  );
  X_BUF   \register_ac_addsub0000<4>/FASTCARRY  (
    .I(\Madd_register_ac_addsub0000_cy[3] ),
    .O(\register_ac_addsub0000<4>/FASTCARRY_1072 )
  );
  X_AND2   \register_ac_addsub0000<4>/CYAND  (
    .I0(\register_ac_addsub0000<4>/CYSELG_1061 ),
    .I1(\register_ac_addsub0000<4>/CYSELF_1075 ),
    .O(\register_ac_addsub0000<4>/CYAND_1073 )
  );
  X_MUX2   \register_ac_addsub0000<4>/CYMUXFAST  (
    .IA(\register_ac_addsub0000<4>/CYMUXG2_1071 ),
    .IB(\register_ac_addsub0000<4>/FASTCARRY_1072 ),
    .SEL(\register_ac_addsub0000<4>/CYAND_1073 ),
    .O(\register_ac_addsub0000<4>/CYMUXFAST_1074 )
  );
  X_MUX2   \register_ac_addsub0000<4>/CYMUXG2  (
    .IA(\register_ac_addsub0000<4>/CY0G_1069 ),
    .IB(\register_ac_addsub0000<4>/CYMUXF2_1070 ),
    .SEL(\register_ac_addsub0000<4>/CYSELG_1061 ),
    .O(\register_ac_addsub0000<4>/CYMUXG2_1071 )
  );
  X_BUF   \register_ac_addsub0000<4>/CY0G  (
    .I(register_ac_out_5_OBUF_846),
    .O(\register_ac_addsub0000<4>/CY0G_1069 )
  );
  X_BUF   \register_ac_addsub0000<4>/CYSELG  (
    .I(Madd_register_ac_addsub0000_lut[5]),
    .O(\register_ac_addsub0000<4>/CYSELG_1061 )
  );
  X_OPAD   \register_ac_out<5>/PAD  (
    .PAD(register_ac_out[5])
  );
  X_OBUF   register_ac_out_5_OBUF (
    .I(\register_ac_out<5>/O ),
    .O(register_ac_out[5])
  );
  X_OPAD   \register_ac_out<4>/PAD  (
    .PAD(register_ac_out[4])
  );
  X_OBUF   register_ac_out_4_OBUF (
    .I(\register_ac_out<4>/O ),
    .O(register_ac_out[4])
  );
  X_OPAD   \register_ac_out<6>/PAD  (
    .PAD(register_ac_out[6])
  );
  X_OBUF   register_ac_out_6_OBUF (
    .I(\register_ac_out<6>/O ),
    .O(register_ac_out[6])
  );
  X_OPAD   \register_ac_out<12>/PAD  (
    .PAD(register_ac_out[12])
  );
  X_OBUF   register_ac_out_12_OBUF (
    .I(\register_ac_out<12>/O ),
    .O(register_ac_out[12])
  );
  X_OPAD   \register_ac_out<3>/PAD  (
    .PAD(register_ac_out[3])
  );
  X_OBUF   register_ac_out_3_OBUF (
    .I(\register_ac_out<3>/O ),
    .O(register_ac_out[3])
  );
  X_OPAD   \register_ac_out<8>/PAD  (
    .PAD(register_ac_out[8])
  );
  X_OBUF   register_ac_out_8_OBUF (
    .I(\register_ac_out<8>/O ),
    .O(register_ac_out[8])
  );
  X_OPAD   \register_ac_out<9>/PAD  (
    .PAD(register_ac_out[9])
  );
  X_OBUF   register_ac_out_9_OBUF (
    .I(\register_ac_out<9>/O ),
    .O(register_ac_out[9])
  );
  X_OPAD   \register_ac_out<13>/PAD  (
    .PAD(register_ac_out[13])
  );
  X_OBUF   register_ac_out_13_OBUF (
    .I(\register_ac_out<13>/O ),
    .O(register_ac_out[13])
  );
  X_OPAD   \register_ac_out<11>/PAD  (
    .PAD(register_ac_out[11])
  );
  X_OBUF   register_ac_out_11_OBUF (
    .I(\register_ac_out<11>/O ),
    .O(register_ac_out[11])
  );
  X_OPAD   \register_ac_out<14>/PAD  (
    .PAD(register_ac_out[14])
  );
  X_OBUF   register_ac_out_14_OBUF (
    .I(\register_ac_out<14>/O ),
    .O(register_ac_out[14])
  );
  X_OPAD   \register_ac_out<10>/PAD  (
    .PAD(register_ac_out[10])
  );
  X_OBUF   register_ac_out_10_OBUF (
    .I(\register_ac_out<10>/O ),
    .O(register_ac_out[10])
  );
  X_OPAD   \register_ac_out<7>/PAD  (
    .PAD(register_ac_out[7])
  );
  X_OBUF   register_ac_out_7_OBUF (
    .I(\register_ac_out<7>/O ),
    .O(register_ac_out[7])
  );
  X_OPAD   \program_counter_out<5>/PAD  (
    .PAD(program_counter_out[5])
  );
  X_OBUF   program_counter_out_5_OBUF (
    .I(\program_counter_out<5>/O ),
    .O(program_counter_out[5])
  );
  X_IPAD   \clock/PAD  (
    .PAD(clock)
  );
  X_BUF   \clock_BUFGP/IBUFG  (
    .I(clock),
    .O(\clock/INBUF )
  );
  X_OPAD   \memory_write_out/PAD  (
    .PAD(memory_write_out)
  );
  X_OBUF   memory_write_out_OBUF (
    .I(\memory_write_out/O ),
    .O(memory_write_out)
  );
  X_OPAD   \register_ac_out<15>/PAD  (
    .PAD(register_ac_out[15])
  );
  X_OBUF   register_ac_out_15_OBUF (
    .I(\register_ac_out<15>/O ),
    .O(register_ac_out[15])
  );
  X_OPAD   \program_counter_out<2>/PAD  (
    .PAD(program_counter_out[2])
  );
  X_OBUF   program_counter_out_2_OBUF (
    .I(\program_counter_out<2>/O ),
    .O(program_counter_out[2])
  );
  X_OPAD   \program_counter_out<6>/PAD  (
    .PAD(program_counter_out[6])
  );
  X_OBUF   program_counter_out_6_OBUF (
    .I(\program_counter_out<6>/O ),
    .O(program_counter_out[6])
  );
  X_OPAD   \program_counter_out<7>/PAD  (
    .PAD(program_counter_out[7])
  );
  X_OBUF   program_counter_out_7_OBUF (
    .I(\program_counter_out<7>/O ),
    .O(program_counter_out[7])
  );
  X_OPAD   \program_counter_out<0>/PAD  (
    .PAD(program_counter_out[0])
  );
  X_OBUF   program_counter_out_0_OBUF (
    .I(\program_counter_out<0>/O ),
    .O(program_counter_out[0])
  );
  X_OPAD   \program_counter_out<1>/PAD  (
    .PAD(program_counter_out[1])
  );
  X_OBUF   program_counter_out_1_OBUF (
    .I(\program_counter_out<1>/O ),
    .O(program_counter_out[1])
  );
  X_OPAD   \program_counter_out<3>/PAD  (
    .PAD(program_counter_out[3])
  );
  X_OBUF   program_counter_out_3_OBUF (
    .I(\program_counter_out<3>/O ),
    .O(program_counter_out[3])
  );
  X_OPAD   \program_counter_out<4>/PAD  (
    .PAD(program_counter_out[4])
  );
  X_OBUF   program_counter_out_4_OBUF (
    .I(\program_counter_out<4>/O ),
    .O(program_counter_out[4])
  );
  X_OPAD   \memory_data_register_out<12>/PAD  (
    .PAD(memory_data_register_out[12])
  );
  X_OBUF   memory_data_register_out_12_OBUF (
    .I(\memory_data_register_out<12>/O ),
    .O(memory_data_register_out[12])
  );
  X_OPAD   \memory_data_register_out<0>/PAD  (
    .PAD(memory_data_register_out[0])
  );
  X_OBUF   memory_data_register_out_0_OBUF (
    .I(\memory_data_register_out<0>/O ),
    .O(memory_data_register_out[0])
  );
  X_OPAD   \memory_address_register_out<6>/PAD  (
    .PAD(memory_address_register_out[6])
  );
  X_OBUF   memory_address_register_out_6_OBUF (
    .I(\memory_address_register_out<6>/O ),
    .O(memory_address_register_out[6])
  );
  X_OPAD   \memory_data_register_out<7>/PAD  (
    .PAD(memory_data_register_out[7])
  );
  X_OBUF   memory_data_register_out_7_OBUF (
    .I(\memory_data_register_out<7>/O ),
    .O(memory_data_register_out[7])
  );
  X_OPAD   \memory_address_register_out<7>/PAD  (
    .PAD(memory_address_register_out[7])
  );
  X_OBUF   memory_address_register_out_7_OBUF (
    .I(\memory_address_register_out<7>/O ),
    .O(memory_address_register_out[7])
  );
  X_OPAD   \memory_address_register_out<5>/PAD  (
    .PAD(memory_address_register_out[5])
  );
  X_OBUF   memory_address_register_out_5_OBUF (
    .I(\memory_address_register_out<5>/O ),
    .O(memory_address_register_out[5])
  );
  X_OPAD   \memory_address_register_out<0>/PAD  (
    .PAD(memory_address_register_out[0])
  );
  X_OBUF   memory_address_register_out_0_OBUF (
    .I(\memory_address_register_out<0>/O ),
    .O(memory_address_register_out[0])
  );
  X_OPAD   \memory_address_register_out<4>/PAD  (
    .PAD(memory_address_register_out[4])
  );
  X_OBUF   memory_address_register_out_4_OBUF (
    .I(\memory_address_register_out<4>/O ),
    .O(memory_address_register_out[4])
  );
  X_OPAD   \memory_data_register_out<5>/PAD  (
    .PAD(memory_data_register_out[5])
  );
  X_OBUF   memory_data_register_out_5_OBUF (
    .I(\memory_data_register_out<5>/O ),
    .O(memory_data_register_out[5])
  );
  X_OPAD   \memory_data_register_out<1>/PAD  (
    .PAD(memory_data_register_out[1])
  );
  X_OBUF   memory_data_register_out_1_OBUF (
    .I(\memory_data_register_out<1>/O ),
    .O(memory_data_register_out[1])
  );
  X_OPAD   \memory_data_register_out<2>/PAD  (
    .PAD(memory_data_register_out[2])
  );
  X_OBUF   memory_data_register_out_2_OBUF (
    .I(\memory_data_register_out<2>/O ),
    .O(memory_data_register_out[2])
  );
  X_OPAD   \memory_data_register_out<6>/PAD  (
    .PAD(memory_data_register_out[6])
  );
  X_OBUF   memory_data_register_out_6_OBUF (
    .I(\memory_data_register_out<6>/O ),
    .O(memory_data_register_out[6])
  );
  X_OPAD   \memory_address_register_out<2>/PAD  (
    .PAD(memory_address_register_out[2])
  );
  X_OBUF   memory_address_register_out_2_OBUF (
    .I(\memory_address_register_out<2>/O ),
    .O(memory_address_register_out[2])
  );
  X_OPAD   \memory_data_register_out<3>/PAD  (
    .PAD(memory_data_register_out[3])
  );
  X_OBUF   memory_data_register_out_3_OBUF (
    .I(\memory_data_register_out<3>/O ),
    .O(memory_data_register_out[3])
  );
  X_BUF   \reset/IFF/IMUX  (
    .I(\reset/INBUF ),
    .O(reset_IBUF_898)
  );
  X_IPAD   \reset/PAD  (
    .PAD(reset)
  );
  X_BUF   reset_IBUF (
    .I(reset),
    .O(\reset/INBUF )
  );
  X_OPAD   \memory_address_register_out<1>/PAD  (
    .PAD(memory_address_register_out[1])
  );
  X_OBUF   memory_address_register_out_1_OBUF (
    .I(\memory_address_register_out<1>/O ),
    .O(memory_address_register_out[1])
  );
  X_OPAD   \memory_data_register_out<10>/PAD  (
    .PAD(memory_data_register_out[10])
  );
  X_OBUF   memory_data_register_out_10_OBUF (
    .I(\memory_data_register_out<10>/O ),
    .O(memory_data_register_out[10])
  );
  X_OPAD   \memory_data_register_out<8>/PAD  (
    .PAD(memory_data_register_out[8])
  );
  X_OBUF   memory_data_register_out_8_OBUF (
    .I(\memory_data_register_out<8>/O ),
    .O(memory_data_register_out[8])
  );
  X_OPAD   \memory_data_register_out<9>/PAD  (
    .PAD(memory_data_register_out[9])
  );
  X_OBUF   memory_data_register_out_9_OBUF (
    .I(\memory_data_register_out<9>/O ),
    .O(memory_data_register_out[9])
  );
  X_OPAD   \memory_address_register_out<3>/PAD  (
    .PAD(memory_address_register_out[3])
  );
  X_OBUF   memory_address_register_out_3_OBUF (
    .I(\memory_address_register_out<3>/O ),
    .O(memory_address_register_out[3])
  );
  X_OPAD   \memory_data_register_out<4>/PAD  (
    .PAD(memory_data_register_out[4])
  );
  X_OBUF   memory_data_register_out_4_OBUF (
    .I(\memory_data_register_out<4>/O ),
    .O(memory_data_register_out[4])
  );
  X_OPAD   \memory_data_register_out<11>/PAD  (
    .PAD(memory_data_register_out[11])
  );
  X_OBUF   memory_data_register_out_11_OBUF (
    .I(\memory_data_register_out<11>/O ),
    .O(memory_data_register_out[11])
  );
  X_OPAD   \register_ac_out<0>/PAD  (
    .PAD(register_ac_out[0])
  );
  X_OBUF   register_ac_out_0_OBUF (
    .I(\register_ac_out<0>/O ),
    .O(register_ac_out[0])
  );
  X_OPAD   \memory_data_register_out<13>/PAD  (
    .PAD(memory_data_register_out[13])
  );
  X_OBUF   memory_data_register_out_13_OBUF (
    .I(\memory_data_register_out<13>/O ),
    .O(memory_data_register_out[13])
  );
  X_BUF   \register_ac_out_2_OBUF/DXMUX  (
    .I(register_ac_mux0000[13]),
    .O(\register_ac_out_2_OBUF/DXMUX_2107 )
  );
  X_BUF   \register_ac_out_2_OBUF/YUSED  (
    .I(\register_ac_mux0000<13>_SW0/O_pack_2 ),
    .O(\register_ac_mux0000<13>_SW0/O )
  );
  X_BUF   \register_ac_out_2_OBUF/CLKINV  (
    .I(clock_BUFGP),
    .O(\register_ac_out_2_OBUF/CLKINV_2091 )
  );
  X_INV   \register_ac_out_2_OBUF/CEINV  (
    .I(reset_IBUF_898),
    .O(\register_ac_out_2_OBUF/CEINVNOT )
  );
  X_BUFGMUX   \clock_BUFGP/BUFG  (
    .I0(\clock_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\clock_BUFGP/BUFG/S_INVNOT ),
    .O(clock_BUFGP)
  );
  X_INV   \clock_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clock_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF   \clock_BUFGP/BUFG/I0_USED  (
    .I(\clock/INBUF ),
    .O(\clock_BUFGP/BUFG/I0_INV )
  );
  X_BUF   \memory_address_register_out_6_OBUF/XUSED  (
    .I(memory_address_register_out_6_OBUF_1929),
    .O(memory_address_register_out_6_OBUF_0)
  );
  X_BUF   \memory_address_register_out_6_OBUF/YUSED  (
    .I(N3_pack_1),
    .O(N3)
  );
  X_OPAD   \memory_data_register_out<14>/PAD  (
    .PAD(memory_data_register_out[14])
  );
  X_OBUF   memory_data_register_out_14_OBUF (
    .I(\memory_data_register_out<14>/O ),
    .O(memory_data_register_out[14])
  );
  X_BUF   \program_counter<1>/DXMUX  (
    .I(program_counter_mux0000[6]),
    .O(\program_counter<1>/DXMUX_1844 )
  );
  X_BUF   \program_counter<1>/YUSED  (
    .I(\program_counter_mux0000<6>_SW0/O_pack_2 ),
    .O(\program_counter_mux0000<6>_SW0/O )
  );
  X_BUF   \program_counter<1>/CLKINV  (
    .I(clock_BUFGP),
    .O(\program_counter<1>/CLKINV_1828 )
  );
  X_INV   \program_counter<1>/CEINV  (
    .I(reset_IBUF_898),
    .O(\program_counter<1>/CEINVNOT )
  );
  X_RAMB16_S18 #(
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL ( 18'h00000 ),
    .INIT ( 18'h00000 ),
    .WRITE_MODE ( "READ_FIRST" ))
  Mram_ram_block (
    .CLK(clock_BUFGP),
    .EN(1'b1),
    .SSR(1'b0),
    .WE(memory_write_out_OBUF_893),
    .ADDR({1'b0, 1'b0, memory_address_register_out_7_OBUF_0, memory_address_register_out_6_OBUF_0, memory_address_register_out_5_OBUF_0, 
memory_address_register_out_4_OBUF_0, memory_address_register_out_3_OBUF_0, memory_address_register_out_2_OBUF_0, memory_address_register_out_1_OBUF_0
, memory_address_register_out_0_OBUF_0}),
    .DI({register_ac_out_15_OBUF_881, register_ac_out_14_OBUF_879, register_ac_out_13_OBUF_874, register_ac_out_12_OBUF_872, 
register_ac_out_11_OBUF_867, register_ac_out_10_OBUF_865, register_ac_out_9_OBUF_860, register_ac_out_8_OBUF_858, register_ac_out_7_OBUF_853, 
register_ac_out_6_OBUF_851, register_ac_out_5_OBUF_846, register_ac_out_4_OBUF_844, register_ac_out_3_OBUF_839, register_ac_out_2_OBUF_837, 
register_ac_out_1_OBUF_832, register_ac_out_0_OBUF_830}),
    .DIP({1'b0, 1'b0}),
    .DO({memory_data_register_out_15_OBUF_882, memory_data_register_out_14_OBUF_880, memory_data_register_out_13_OBUF_875, 
memory_data_register_out_12_OBUF_873, memory_data_register_out_11_OBUF_868, memory_data_register_out_10_OBUF_866, memory_data_register_out_9_OBUF_861
, memory_data_register_out_8_OBUF_859, memory_data_register_out_7_OBUF_854, memory_data_register_out_6_OBUF_852, memory_data_register_out_5_OBUF_847, 
memory_data_register_out_4_OBUF_845, memory_data_register_out_3_OBUF_840, memory_data_register_out_2_OBUF_838, memory_data_register_out_1_OBUF_833, 
memory_data_register_out_0_OBUF_831}),
    .DOP({\Mram_ram_block/DOPA1 , \Mram_ram_block/DOPA0 })
  );
  X_BUF   \register_ac_out_5_OBUF/DXMUX  (
    .I(register_ac_mux0000[10]),
    .O(\register_ac_out_5_OBUF/DXMUX_1984 )
  );
  X_BUF   \register_ac_out_5_OBUF/YUSED  (
    .I(\register_ac_mux0000<10>_SW0/O_pack_2 ),
    .O(\register_ac_mux0000<10>_SW0/O )
  );
  X_BUF   \register_ac_out_5_OBUF/CLKINV  (
    .I(clock_BUFGP),
    .O(\register_ac_out_5_OBUF/CLKINV_1968 )
  );
  X_INV   \register_ac_out_5_OBUF/CEINV  (
    .I(reset_IBUF_898),
    .O(\register_ac_out_5_OBUF/CEINVNOT )
  );
  X_BUF   \state_FSM_FFd8/DXMUX  (
    .I(\state_FSM_FFd8/F5MUX_1774 ),
    .O(\state_FSM_FFd8/DXMUX_1776 )
  );
  X_MUX2   \state_FSM_FFd8/F5MUX  (
    .IA(N52),
    .IB(N53),
    .SEL(\state_FSM_FFd8/BXINV_1767 ),
    .O(\state_FSM_FFd8/F5MUX_1774 )
  );
  X_BUF   \state_FSM_FFd8/BXINV  (
    .I(state_FSM_FFd9_906),
    .O(\state_FSM_FFd8/BXINV_1767 )
  );
  X_BUF   \state_FSM_FFd8/DYMUX  (
    .I(state_FSM_FFd8_907),
    .O(\state_FSM_FFd8/DYMUX_1760 )
  );
  X_BUF   \state_FSM_FFd8/SRINV  (
    .I(reset_IBUF_898),
    .O(\state_FSM_FFd8/SRINV_1751 )
  );
  X_BUF   \state_FSM_FFd8/CLKINV  (
    .I(clock_BUFGP),
    .O(\state_FSM_FFd8/CLKINV_1750 )
  );
  X_BUF   \N15/XUSED  (
    .I(N15),
    .O(N15_0)
  );
  X_BUF   \N15/YUSED  (
    .I(\program_counter_mux0000<7>1_SW0/O_pack_1 ),
    .O(\program_counter_mux0000<7>1_SW0/O )
  );
  X_BUF   \program_counter<3>/DXMUX  (
    .I(program_counter_mux0000[4]),
    .O(\program_counter<3>/DXMUX_1811 )
  );
  X_BUF   \program_counter<3>/YUSED  (
    .I(\program_counter_mux0000<4>_SW1/O_pack_2 ),
    .O(\program_counter_mux0000<4>_SW1/O )
  );
  X_BUF   \program_counter<3>/CLKINV  (
    .I(clock_BUFGP),
    .O(\program_counter<3>/CLKINV_1796 )
  );
  X_INV   \program_counter<3>/CEINV  (
    .I(reset_IBUF_898),
    .O(\program_counter<3>/CEINVNOT )
  );
  X_BUF   \memory_address_register_out_7_OBUF/XUSED  (
    .I(memory_address_register_out_7_OBUF_1953),
    .O(memory_address_register_out_7_OBUF_0)
  );
  X_BUF   \memory_address_register_out_7_OBUF/YUSED  (
    .I(N01_pack_1),
    .O(N01)
  );
  X_BUF   \register_ac_out_4_OBUF/DXMUX  (
    .I(register_ac_mux0000[11]),
    .O(\register_ac_out_4_OBUF/DXMUX_2041 )
  );
  X_BUF   \register_ac_out_4_OBUF/YUSED  (
    .I(\register_ac_mux0000<11>_SW0/O_pack_2 ),
    .O(\register_ac_mux0000<11>_SW0/O )
  );
  X_BUF   \register_ac_out_4_OBUF/CLKINV  (
    .I(clock_BUFGP),
    .O(\register_ac_out_4_OBUF/CLKINV_2025 )
  );
  X_INV   \register_ac_out_4_OBUF/CEINV  (
    .I(reset_IBUF_898),
    .O(\register_ac_out_4_OBUF/CEINVNOT )
  );
  X_BUF   \N12/XUSED  (
    .I(N12),
    .O(N12_0)
  );
  X_BUF   \N12/YUSED  (
    .I(N11_pack_1),
    .O(N11)
  );
  X_BUF   \state_FSM_FFd7/DXMUX  (
    .I(\state_FSM_FFd7-In ),
    .O(\state_FSM_FFd7/DXMUX_1901 )
  );
  X_BUF   \state_FSM_FFd7/YUSED  (
    .I(N5_pack_1),
    .O(N5)
  );
  X_BUF   \state_FSM_FFd7/CLKINV  (
    .I(clock_BUFGP),
    .O(\state_FSM_FFd7/CLKINV_1885 )
  );
  X_BUF   \register_ac_out_3_OBUF/DXMUX  (
    .I(register_ac_mux0000[12]),
    .O(\register_ac_out_3_OBUF/DXMUX_2074 )
  );
  X_BUF   \register_ac_out_3_OBUF/YUSED  (
    .I(\register_ac_mux0000<12>_SW0/O_pack_2 ),
    .O(\register_ac_mux0000<12>_SW0/O )
  );
  X_BUF   \register_ac_out_3_OBUF/CLKINV  (
    .I(clock_BUFGP),
    .O(\register_ac_out_3_OBUF/CLKINV_2058 )
  );
  X_INV   \register_ac_out_3_OBUF/CEINV  (
    .I(reset_IBUF_898),
    .O(\register_ac_out_3_OBUF/CEINVNOT )
  );
  X_BUF   \state_FSM_FFd8-In9/XUSED  (
    .I(\state_FSM_FFd8-In9_2166 ),
    .O(\state_FSM_FFd8-In9_0 )
  );
  X_BUF   \state_FSM_FFd8-In9/YUSED  (
    .I(\state_FSM_FFd8-In4/O_pack_1 ),
    .O(\state_FSM_FFd8-In4/O )
  );
  X_BUF   \register_ac_out_1_OBUF/DXMUX  (
    .I(register_ac_mux0000[14]),
    .O(\register_ac_out_1_OBUF/DXMUX_2140 )
  );
  X_BUF   \register_ac_out_1_OBUF/YUSED  (
    .I(\register_ac_mux0000<14>_SW0/O_pack_2 ),
    .O(\register_ac_mux0000<14>_SW0/O )
  );
  X_BUF   \register_ac_out_1_OBUF/CLKINV  (
    .I(clock_BUFGP),
    .O(\register_ac_out_1_OBUF/CLKINV_2124 )
  );
  X_INV   \register_ac_out_1_OBUF/CEINV  (
    .I(reset_IBUF_898),
    .O(\register_ac_out_1_OBUF/CEINVNOT )
  );
  X_BUF   \register_ac_addsub0000<12>/XUSED  (
    .I(\register_ac_addsub0000<12>/XORF_1245 ),
    .O(register_ac_addsub0000[12])
  );
  X_XOR2   \register_ac_addsub0000<12>/XORF  (
    .I0(\register_ac_addsub0000<12>/CYINIT_1244 ),
    .I1(Madd_register_ac_addsub0000_lut[12]),
    .O(\register_ac_addsub0000<12>/XORF_1245 )
  );
  X_MUX2   \register_ac_addsub0000<12>/CYMUXF  (
    .IA(\register_ac_addsub0000<12>/CY0F_1243 ),
    .IB(\register_ac_addsub0000<12>/CYINIT_1244 ),
    .SEL(\register_ac_addsub0000<12>/CYSELF_1231 ),
    .O(\Madd_register_ac_addsub0000_cy[12] )
  );
  X_MUX2   \register_ac_addsub0000<12>/CYMUXF2  (
    .IA(\register_ac_addsub0000<12>/CY0F_1243 ),
    .IB(\register_ac_addsub0000<12>/CY0F_1243 ),
    .SEL(\register_ac_addsub0000<12>/CYSELF_1231 ),
    .O(\register_ac_addsub0000<12>/CYMUXF2_1226 )
  );
  X_BUF   \register_ac_addsub0000<12>/CYINIT  (
    .I(\Madd_register_ac_addsub0000_cy[11] ),
    .O(\register_ac_addsub0000<12>/CYINIT_1244 )
  );
  X_BUF   \register_ac_addsub0000<12>/CY0F  (
    .I(register_ac_out_12_OBUF_872),
    .O(\register_ac_addsub0000<12>/CY0F_1243 )
  );
  X_BUF   \register_ac_addsub0000<12>/CYSELF  (
    .I(Madd_register_ac_addsub0000_lut[12]),
    .O(\register_ac_addsub0000<12>/CYSELF_1231 )
  );
  X_BUF   \register_ac_addsub0000<12>/YUSED  (
    .I(\register_ac_addsub0000<12>/XORG_1233 ),
    .O(register_ac_addsub0000[13])
  );
  X_XOR2   \register_ac_addsub0000<12>/XORG  (
    .I0(\Madd_register_ac_addsub0000_cy[12] ),
    .I1(Madd_register_ac_addsub0000_lut[13]),
    .O(\register_ac_addsub0000<12>/XORG_1233 )
  );
  X_BUF   \register_ac_addsub0000<12>/FASTCARRY  (
    .I(\Madd_register_ac_addsub0000_cy[11] ),
    .O(\register_ac_addsub0000<12>/FASTCARRY_1228 )
  );
  X_AND2   \register_ac_addsub0000<12>/CYAND  (
    .I0(\register_ac_addsub0000<12>/CYSELG_1217 ),
    .I1(\register_ac_addsub0000<12>/CYSELF_1231 ),
    .O(\register_ac_addsub0000<12>/CYAND_1229 )
  );
  X_MUX2   \register_ac_addsub0000<12>/CYMUXFAST  (
    .IA(\register_ac_addsub0000<12>/CYMUXG2_1227 ),
    .IB(\register_ac_addsub0000<12>/FASTCARRY_1228 ),
    .SEL(\register_ac_addsub0000<12>/CYAND_1229 ),
    .O(\register_ac_addsub0000<12>/CYMUXFAST_1230 )
  );
  X_MUX2   \register_ac_addsub0000<12>/CYMUXG2  (
    .IA(\register_ac_addsub0000<12>/CY0G_1225 ),
    .IB(\register_ac_addsub0000<12>/CYMUXF2_1226 ),
    .SEL(\register_ac_addsub0000<12>/CYSELG_1217 ),
    .O(\register_ac_addsub0000<12>/CYMUXG2_1227 )
  );
  X_BUF   \register_ac_addsub0000<12>/CY0G  (
    .I(register_ac_out_13_OBUF_874),
    .O(\register_ac_addsub0000<12>/CY0G_1225 )
  );
  X_BUF   \register_ac_addsub0000<12>/CYSELG  (
    .I(Madd_register_ac_addsub0000_lut[13]),
    .O(\register_ac_addsub0000<12>/CYSELG_1217 )
  );
  X_BUF   \register_ac_addsub0000<10>/XUSED  (
    .I(\register_ac_addsub0000<10>/XORF_1206 ),
    .O(register_ac_addsub0000[10])
  );
  X_XOR2   \register_ac_addsub0000<10>/XORF  (
    .I0(\register_ac_addsub0000<10>/CYINIT_1205 ),
    .I1(Madd_register_ac_addsub0000_lut[10]),
    .O(\register_ac_addsub0000<10>/XORF_1206 )
  );
  X_MUX2   \register_ac_addsub0000<10>/CYMUXF  (
    .IA(\register_ac_addsub0000<10>/CY0F_1204 ),
    .IB(\register_ac_addsub0000<10>/CYINIT_1205 ),
    .SEL(\register_ac_addsub0000<10>/CYSELF_1192 ),
    .O(\Madd_register_ac_addsub0000_cy[10] )
  );
  X_MUX2   \register_ac_addsub0000<10>/CYMUXF2  (
    .IA(\register_ac_addsub0000<10>/CY0F_1204 ),
    .IB(\register_ac_addsub0000<10>/CY0F_1204 ),
    .SEL(\register_ac_addsub0000<10>/CYSELF_1192 ),
    .O(\register_ac_addsub0000<10>/CYMUXF2_1187 )
  );
  X_BUF   \register_ac_addsub0000<10>/CYINIT  (
    .I(\Madd_register_ac_addsub0000_cy[9] ),
    .O(\register_ac_addsub0000<10>/CYINIT_1205 )
  );
  X_BUF   \register_ac_addsub0000<10>/CY0F  (
    .I(register_ac_out_10_OBUF_865),
    .O(\register_ac_addsub0000<10>/CY0F_1204 )
  );
  X_BUF   \register_ac_addsub0000<10>/CYSELF  (
    .I(Madd_register_ac_addsub0000_lut[10]),
    .O(\register_ac_addsub0000<10>/CYSELF_1192 )
  );
  X_BUF   \register_ac_addsub0000<10>/YUSED  (
    .I(\register_ac_addsub0000<10>/XORG_1194 ),
    .O(register_ac_addsub0000[11])
  );
  X_XOR2   \register_ac_addsub0000<10>/XORG  (
    .I0(\Madd_register_ac_addsub0000_cy[10] ),
    .I1(Madd_register_ac_addsub0000_lut[11]),
    .O(\register_ac_addsub0000<10>/XORG_1194 )
  );
  X_BUF   \register_ac_addsub0000<10>/COUTUSED  (
    .I(\register_ac_addsub0000<10>/CYMUXFAST_1191 ),
    .O(\Madd_register_ac_addsub0000_cy[11] )
  );
  X_BUF   \register_ac_addsub0000<10>/FASTCARRY  (
    .I(\Madd_register_ac_addsub0000_cy[9] ),
    .O(\register_ac_addsub0000<10>/FASTCARRY_1189 )
  );
  X_AND2   \register_ac_addsub0000<10>/CYAND  (
    .I0(\register_ac_addsub0000<10>/CYSELG_1178 ),
    .I1(\register_ac_addsub0000<10>/CYSELF_1192 ),
    .O(\register_ac_addsub0000<10>/CYAND_1190 )
  );
  X_MUX2   \register_ac_addsub0000<10>/CYMUXFAST  (
    .IA(\register_ac_addsub0000<10>/CYMUXG2_1188 ),
    .IB(\register_ac_addsub0000<10>/FASTCARRY_1189 ),
    .SEL(\register_ac_addsub0000<10>/CYAND_1190 ),
    .O(\register_ac_addsub0000<10>/CYMUXFAST_1191 )
  );
  X_MUX2   \register_ac_addsub0000<10>/CYMUXG2  (
    .IA(\register_ac_addsub0000<10>/CY0G_1186 ),
    .IB(\register_ac_addsub0000<10>/CYMUXF2_1187 ),
    .SEL(\register_ac_addsub0000<10>/CYSELG_1178 ),
    .O(\register_ac_addsub0000<10>/CYMUXG2_1188 )
  );
  X_BUF   \register_ac_addsub0000<10>/CY0G  (
    .I(register_ac_out_11_OBUF_867),
    .O(\register_ac_addsub0000<10>/CY0G_1186 )
  );
  X_BUF   \register_ac_addsub0000<10>/CYSELG  (
    .I(Madd_register_ac_addsub0000_lut[11]),
    .O(\register_ac_addsub0000<10>/CYSELG_1178 )
  );
  X_OPAD   \register_ac_out<1>/PAD  (
    .PAD(register_ac_out[1])
  );
  X_OBUF   register_ac_out_1_OBUF (
    .I(\register_ac_out<1>/O ),
    .O(register_ac_out[1])
  );
  X_OPAD   \register_ac_out<2>/PAD  (
    .PAD(register_ac_out[2])
  );
  X_OBUF   register_ac_out_2_OBUF (
    .I(\register_ac_out<2>/O ),
    .O(register_ac_out[2])
  );
  X_BUF   \register_ac_addsub0000<8>/XUSED  (
    .I(\register_ac_addsub0000<8>/XORF_1167 ),
    .O(register_ac_addsub0000[8])
  );
  X_XOR2   \register_ac_addsub0000<8>/XORF  (
    .I0(\register_ac_addsub0000<8>/CYINIT_1166 ),
    .I1(Madd_register_ac_addsub0000_lut[8]),
    .O(\register_ac_addsub0000<8>/XORF_1167 )
  );
  X_MUX2   \register_ac_addsub0000<8>/CYMUXF  (
    .IA(\register_ac_addsub0000<8>/CY0F_1165 ),
    .IB(\register_ac_addsub0000<8>/CYINIT_1166 ),
    .SEL(\register_ac_addsub0000<8>/CYSELF_1153 ),
    .O(\Madd_register_ac_addsub0000_cy[8] )
  );
  X_MUX2   \register_ac_addsub0000<8>/CYMUXF2  (
    .IA(\register_ac_addsub0000<8>/CY0F_1165 ),
    .IB(\register_ac_addsub0000<8>/CY0F_1165 ),
    .SEL(\register_ac_addsub0000<8>/CYSELF_1153 ),
    .O(\register_ac_addsub0000<8>/CYMUXF2_1148 )
  );
  X_BUF   \register_ac_addsub0000<8>/CYINIT  (
    .I(\Madd_register_ac_addsub0000_cy[7] ),
    .O(\register_ac_addsub0000<8>/CYINIT_1166 )
  );
  X_BUF   \register_ac_addsub0000<8>/CY0F  (
    .I(register_ac_out_8_OBUF_858),
    .O(\register_ac_addsub0000<8>/CY0F_1165 )
  );
  X_BUF   \register_ac_addsub0000<8>/CYSELF  (
    .I(Madd_register_ac_addsub0000_lut[8]),
    .O(\register_ac_addsub0000<8>/CYSELF_1153 )
  );
  X_BUF   \register_ac_addsub0000<8>/YUSED  (
    .I(\register_ac_addsub0000<8>/XORG_1155 ),
    .O(register_ac_addsub0000[9])
  );
  X_XOR2   \register_ac_addsub0000<8>/XORG  (
    .I0(\Madd_register_ac_addsub0000_cy[8] ),
    .I1(Madd_register_ac_addsub0000_lut[9]),
    .O(\register_ac_addsub0000<8>/XORG_1155 )
  );
  X_BUF   \register_ac_addsub0000<8>/COUTUSED  (
    .I(\register_ac_addsub0000<8>/CYMUXFAST_1152 ),
    .O(\Madd_register_ac_addsub0000_cy[9] )
  );
  X_BUF   \register_ac_addsub0000<8>/FASTCARRY  (
    .I(\Madd_register_ac_addsub0000_cy[7] ),
    .O(\register_ac_addsub0000<8>/FASTCARRY_1150 )
  );
  X_AND2   \register_ac_addsub0000<8>/CYAND  (
    .I0(\register_ac_addsub0000<8>/CYSELG_1139 ),
    .I1(\register_ac_addsub0000<8>/CYSELF_1153 ),
    .O(\register_ac_addsub0000<8>/CYAND_1151 )
  );
  X_MUX2   \register_ac_addsub0000<8>/CYMUXFAST  (
    .IA(\register_ac_addsub0000<8>/CYMUXG2_1149 ),
    .IB(\register_ac_addsub0000<8>/FASTCARRY_1150 ),
    .SEL(\register_ac_addsub0000<8>/CYAND_1151 ),
    .O(\register_ac_addsub0000<8>/CYMUXFAST_1152 )
  );
  X_MUX2   \register_ac_addsub0000<8>/CYMUXG2  (
    .IA(\register_ac_addsub0000<8>/CY0G_1147 ),
    .IB(\register_ac_addsub0000<8>/CYMUXF2_1148 ),
    .SEL(\register_ac_addsub0000<8>/CYSELG_1139 ),
    .O(\register_ac_addsub0000<8>/CYMUXG2_1149 )
  );
  X_BUF   \register_ac_addsub0000<8>/CY0G  (
    .I(register_ac_out_9_OBUF_860),
    .O(\register_ac_addsub0000<8>/CY0G_1147 )
  );
  X_BUF   \register_ac_addsub0000<8>/CYSELG  (
    .I(Madd_register_ac_addsub0000_lut[9]),
    .O(\register_ac_addsub0000<8>/CYSELG_1139 )
  );
  X_BUF   \register_ac_addsub0000<14>/XUSED  (
    .I(\register_ac_addsub0000<14>/XORF_1276 ),
    .O(register_ac_addsub0000[14])
  );
  X_XOR2   \register_ac_addsub0000<14>/XORF  (
    .I0(\register_ac_addsub0000<14>/CYINIT_1275 ),
    .I1(Madd_register_ac_addsub0000_lut[14]),
    .O(\register_ac_addsub0000<14>/XORF_1276 )
  );
  X_MUX2   \register_ac_addsub0000<14>/CYMUXF  (
    .IA(\register_ac_addsub0000<14>/CY0F_1274 ),
    .IB(\register_ac_addsub0000<14>/CYINIT_1275 ),
    .SEL(\register_ac_addsub0000<14>/CYSELF_1266 ),
    .O(\Madd_register_ac_addsub0000_cy[14] )
  );
  X_BUF   \register_ac_addsub0000<14>/CYINIT  (
    .I(\register_ac_addsub0000<12>/CYMUXFAST_1230 ),
    .O(\register_ac_addsub0000<14>/CYINIT_1275 )
  );
  X_BUF   \register_ac_addsub0000<14>/CY0F  (
    .I(register_ac_out_14_OBUF_879),
    .O(\register_ac_addsub0000<14>/CY0F_1274 )
  );
  X_BUF   \register_ac_addsub0000<14>/CYSELF  (
    .I(Madd_register_ac_addsub0000_lut[14]),
    .O(\register_ac_addsub0000<14>/CYSELF_1266 )
  );
  X_BUF   \register_ac_addsub0000<14>/YUSED  (
    .I(\register_ac_addsub0000<14>/XORG_1263 ),
    .O(register_ac_addsub0000[15])
  );
  X_XOR2   \register_ac_addsub0000<14>/XORG  (
    .I0(\Madd_register_ac_addsub0000_cy[14] ),
    .I1(Madd_register_ac_addsub0000_lut[15]),
    .O(\register_ac_addsub0000<14>/XORG_1263 )
  );
  X_OPAD   \memory_data_register_out<15>/PAD  (
    .PAD(memory_data_register_out[15])
  );
  X_OBUF   memory_data_register_out_15_OBUF (
    .I(\memory_data_register_out<15>/O ),
    .O(memory_data_register_out[15])
  );
  X_BUF   \register_ac_out_8_OBUF/DXMUX  (
    .I(register_ac_mux0000[7]),
    .O(\register_ac_out_8_OBUF/DXMUX_2494 )
  );
  X_BUF   \register_ac_out_8_OBUF/YUSED  (
    .I(\register_ac_mux0000<7>_SW0/O_pack_2 ),
    .O(\register_ac_mux0000<7>_SW0/O )
  );
  X_BUF   \register_ac_out_8_OBUF/CLKINV  (
    .I(clock_BUFGP),
    .O(\register_ac_out_8_OBUF/CLKINV_2478 )
  );
  X_INV   \register_ac_out_8_OBUF/CEINV  (
    .I(reset_IBUF_898),
    .O(\register_ac_out_8_OBUF/CEINVNOT )
  );
  X_BUF   \program_counter<6>/DXMUX  (
    .I(program_counter_mux0000[1]),
    .O(\program_counter<6>/DXMUX_2395 )
  );
  X_BUF   \program_counter<6>/YUSED  (
    .I(\program_counter_mux0000<1>24_SW2/O_pack_2 ),
    .O(\program_counter_mux0000<1>24_SW2/O )
  );
  X_BUF   \program_counter<6>/CLKINV  (
    .I(clock_BUFGP),
    .O(\program_counter<6>/CLKINV_2379 )
  );
  X_INV   \program_counter<6>/CEINV  (
    .I(reset_IBUF_898),
    .O(\program_counter<6>/CEINVNOT )
  );
  X_BUF   \register_ac_out_7_OBUF/DXMUX  (
    .I(register_ac_mux0000[8]),
    .O(\register_ac_out_7_OBUF/DXMUX_2527 )
  );
  X_BUF   \register_ac_out_7_OBUF/YUSED  (
    .I(\register_ac_mux0000<8>_SW0/O_pack_2 ),
    .O(\register_ac_mux0000<8>_SW0/O )
  );
  X_BUF   \register_ac_out_7_OBUF/CLKINV  (
    .I(clock_BUFGP),
    .O(\register_ac_out_7_OBUF/CLKINV_2511 )
  );
  X_INV   \register_ac_out_7_OBUF/CEINV  (
    .I(reset_IBUF_898),
    .O(\register_ac_out_7_OBUF/CEINVNOT )
  );
  X_BUF   \register_ac_out_11_OBUF/DXMUX  (
    .I(register_ac_mux0000[4]),
    .O(\register_ac_out_11_OBUF/DXMUX_2362 )
  );
  X_BUF   \register_ac_out_11_OBUF/YUSED  (
    .I(\register_ac_mux0000<4>_SW0/O_pack_2 ),
    .O(\register_ac_mux0000<4>_SW0/O )
  );
  X_BUF   \register_ac_out_11_OBUF/CLKINV  (
    .I(clock_BUFGP),
    .O(\register_ac_out_11_OBUF/CLKINV_2346 )
  );
  X_INV   \register_ac_out_11_OBUF/CEINV  (
    .I(reset_IBUF_898),
    .O(\register_ac_out_11_OBUF/CEINVNOT )
  );
  X_BUF   \register_ac_out_12_OBUF/DXMUX  (
    .I(register_ac_mux0000[3]),
    .O(\register_ac_out_12_OBUF/DXMUX_2329 )
  );
  X_BUF   \register_ac_out_12_OBUF/YUSED  (
    .I(\register_ac_mux0000<3>_SW0/O_pack_2 ),
    .O(\register_ac_mux0000<3>_SW0/O )
  );
  X_BUF   \register_ac_out_12_OBUF/CLKINV  (
    .I(clock_BUFGP),
    .O(\register_ac_out_12_OBUF/CLKINV_2313 )
  );
  X_INV   \register_ac_out_12_OBUF/CEINV  (
    .I(reset_IBUF_898),
    .O(\register_ac_out_12_OBUF/CEINVNOT )
  );
  X_BUF   \program_counter<7>/DXMUX  (
    .I(program_counter_mux0000[0]),
    .O(\program_counter<7>/DXMUX_2263 )
  );
  X_BUF   \program_counter<7>/YUSED  (
    .I(\program_counter_mux0000<0>12/O_pack_2 ),
    .O(\program_counter_mux0000<0>12/O )
  );
  X_BUF   \program_counter<7>/CLKINV  (
    .I(clock_BUFGP),
    .O(\program_counter<7>/CLKINV_2248 )
  );
  X_INV   \program_counter<7>/CEINV  (
    .I(reset_IBUF_898),
    .O(\program_counter<7>/CEINVNOT )
  );
  X_BUF   \program_counter<5>/DXMUX  (
    .I(program_counter_mux0000[2]),
    .O(\program_counter<5>/DXMUX_2560 )
  );
  X_BUF   \program_counter<5>/YUSED  (
    .I(\program_counter_mux0000<2>24_SW0/O_pack_2 ),
    .O(\program_counter_mux0000<2>24_SW0/O )
  );
  X_BUF   \program_counter<5>/CLKINV  (
    .I(clock_BUFGP),
    .O(\program_counter<5>/CLKINV_2544 )
  );
  X_INV   \program_counter<5>/CEINV  (
    .I(reset_IBUF_898),
    .O(\program_counter<5>/CEINVNOT )
  );
  X_BUF   \register_ac_out_10_OBUF/DXMUX  (
    .I(register_ac_mux0000[5]),
    .O(\register_ac_out_10_OBUF/DXMUX_2428 )
  );
  X_BUF   \register_ac_out_10_OBUF/YUSED  (
    .I(\register_ac_mux0000<5>_SW0/O_pack_2 ),
    .O(\register_ac_mux0000<5>_SW0/O )
  );
  X_BUF   \register_ac_out_10_OBUF/CLKINV  (
    .I(clock_BUFGP),
    .O(\register_ac_out_10_OBUF/CLKINV_2412 )
  );
  X_INV   \register_ac_out_10_OBUF/CEINV  (
    .I(reset_IBUF_898),
    .O(\register_ac_out_10_OBUF/CEINVNOT )
  );
  X_BUF   \register_ac_out_9_OBUF/DXMUX  (
    .I(register_ac_mux0000[6]),
    .O(\register_ac_out_9_OBUF/DXMUX_2461 )
  );
  X_BUF   \register_ac_out_9_OBUF/YUSED  (
    .I(\register_ac_mux0000<6>_SW0/O_pack_2 ),
    .O(\register_ac_mux0000<6>_SW0/O )
  );
  X_BUF   \register_ac_out_9_OBUF/CLKINV  (
    .I(clock_BUFGP),
    .O(\register_ac_out_9_OBUF/CLKINV_2445 )
  );
  X_INV   \register_ac_out_9_OBUF/CEINV  (
    .I(reset_IBUF_898),
    .O(\register_ac_out_9_OBUF/CEINVNOT )
  );
  X_BUF   \register_ac_out_6_OBUF/DXMUX  (
    .I(register_ac_mux0000[9]),
    .O(\register_ac_out_6_OBUF/DXMUX_2593 )
  );
  X_BUF   \register_ac_out_6_OBUF/YUSED  (
    .I(\register_ac_mux0000<9>_SW0/O_pack_2 ),
    .O(\register_ac_mux0000<9>_SW0/O )
  );
  X_BUF   \register_ac_out_6_OBUF/CLKINV  (
    .I(clock_BUFGP),
    .O(\register_ac_out_6_OBUF/CLKINV_2577 )
  );
  X_INV   \register_ac_out_6_OBUF/CEINV  (
    .I(reset_IBUF_898),
    .O(\register_ac_out_6_OBUF/CEINVNOT )
  );
  X_BUF   \Madd_program_counter_addsub0000_cy<5>/XUSED  (
    .I(\Madd_program_counter_addsub0000_cy[5] ),
    .O(\Madd_program_counter_addsub0000_cy<5>_0 )
  );
  X_BUF   \Madd_program_counter_addsub0000_cy<5>/YUSED  (
    .I(\Madd_program_counter_addsub0000_cy<2>_pack_1 ),
    .O(\Madd_program_counter_addsub0000_cy[2] )
  );
  X_BUF   \register_ac_out_13_OBUF/DXMUX  (
    .I(register_ac_mux0000[2]),
    .O(\register_ac_out_13_OBUF/DXMUX_2296 )
  );
  X_BUF   \register_ac_out_13_OBUF/YUSED  (
    .I(\register_ac_mux0000<2>_SW0/O_pack_2 ),
    .O(\register_ac_mux0000<2>_SW0/O )
  );
  X_BUF   \register_ac_out_13_OBUF/CLKINV  (
    .I(clock_BUFGP),
    .O(\register_ac_out_13_OBUF/CLKINV_2280 )
  );
  X_INV   \register_ac_out_13_OBUF/CEINV  (
    .I(reset_IBUF_898),
    .O(\register_ac_out_13_OBUF/CEINVNOT )
  );
  X_BUF   \program_counter_mux0000<3>12/XUSED  (
    .I(\program_counter_mux0000<3>12_2643 ),
    .O(\program_counter_mux0000<3>12_0 )
  );
  X_BUF   \program_counter_mux0000<3>12/YUSED  (
    .I(\program_counter_mux0000<3>5/O_pack_1 ),
    .O(\program_counter_mux0000<3>5/O )
  );
  X_BUF   \register_ac_out_14_OBUF/DXMUX  (
    .I(register_ac_mux0000[1]),
    .O(\register_ac_out_14_OBUF/DXMUX_2230 )
  );
  X_BUF   \register_ac_out_14_OBUF/YUSED  (
    .I(\register_ac_mux0000<1>_SW0/O_pack_2 ),
    .O(\register_ac_mux0000<1>_SW0/O )
  );
  X_BUF   \register_ac_out_14_OBUF/CLKINV  (
    .I(clock_BUFGP),
    .O(\register_ac_out_14_OBUF/CLKINV_2214 )
  );
  X_INV   \register_ac_out_14_OBUF/CEINV  (
    .I(reset_IBUF_898),
    .O(\register_ac_out_14_OBUF/CEINVNOT )
  );
  X_BUF   \register_ac_out_0_OBUF/DXMUX  (
    .I(register_ac_mux0000[15]),
    .O(\register_ac_out_0_OBUF/DXMUX_2197 )
  );
  X_BUF   \register_ac_out_0_OBUF/YUSED  (
    .I(\register_ac_mux0000<15>_SW0/O_pack_2 ),
    .O(\register_ac_mux0000<15>_SW0/O )
  );
  X_BUF   \register_ac_out_0_OBUF/CLKINV  (
    .I(clock_BUFGP),
    .O(\register_ac_out_0_OBUF/CLKINV_2181 )
  );
  X_INV   \register_ac_out_0_OBUF/CEINV  (
    .I(reset_IBUF_898),
    .O(\register_ac_out_0_OBUF/CEINVNOT )
  );
  X_BUF   \state_FSM_FFd2/DXMUX  (
    .I(memory_write_out_OBUF_893),
    .O(\state_FSM_FFd2/DXMUX_2951 )
  );
  X_BUF   \state_FSM_FFd2/DYMUX  (
    .I(state_FSM_FFd3_912),
    .O(\state_FSM_FFd2/DYMUX_2943 )
  );
  X_BUF   \state_FSM_FFd2/SRINV  (
    .I(reset_IBUF_898),
    .O(\state_FSM_FFd2/SRINV_2941 )
  );
  X_BUF   \state_FSM_FFd2/CLKINV  (
    .I(clock_BUFGP),
    .O(\state_FSM_FFd2/CLKINV_2940 )
  );
  X_BUF   \memory_address_register_out_1_OBUF/XUSED  (
    .I(memory_address_register_out_1_OBUF_2931),
    .O(memory_address_register_out_1_OBUF_0)
  );
  X_BUF   \memory_address_register_out_1_OBUF/YUSED  (
    .I(memory_address_register_out_0_OBUF_2924),
    .O(memory_address_register_out_0_OBUF_0)
  );
  X_BUF   \instruction_register<3>/DXMUX  (
    .I(memory_data_register_out_3_OBUF_840),
    .O(\instruction_register<3>/DXMUX_2993 )
  );
  X_BUF   \instruction_register<3>/DYMUX  (
    .I(memory_data_register_out_2_OBUF_838),
    .O(\instruction_register<3>/DYMUX_2987 )
  );
  X_BUF   \instruction_register<3>/CLKINV  (
    .I(clock_BUFGP),
    .O(\instruction_register<3>/CLKINV_2985 )
  );
  X_BUF   \instruction_register<3>/CEINV  (
    .I(instruction_register_and0000_0),
    .O(\instruction_register<3>/CEINV_2984 )
  );
  X_BUF   \program_counter_mux0000<0>22/XUSED  (
    .I(\program_counter_mux0000<0>22_2907 ),
    .O(\program_counter_mux0000<0>22_0 )
  );
  X_BUF   \program_counter_mux0000<0>22/YUSED  (
    .I(\program_counter_mux0000<0>5_2899 ),
    .O(\program_counter_mux0000<0>5_0 )
  );
  X_BUF   \N43/XUSED  (
    .I(N43),
    .O(N43_0)
  );
  X_BUF   \N43/YUSED  (
    .I(N4_pack_2),
    .O(N4)
  );
  X_BUF   \instruction_register<5>/DXMUX  (
    .I(memory_data_register_out_5_OBUF_847),
    .O(\instruction_register<5>/DXMUX_3013 )
  );
  X_BUF   \instruction_register<5>/DYMUX  (
    .I(memory_data_register_out_4_OBUF_845),
    .O(\instruction_register<5>/DYMUX_3007 )
  );
  X_BUF   \instruction_register<5>/CLKINV  (
    .I(clock_BUFGP),
    .O(\instruction_register<5>/CLKINV_3005 )
  );
  X_BUF   \instruction_register<5>/CEINV  (
    .I(instruction_register_and0000_0),
    .O(\instruction_register<5>/CEINV_3004 )
  );
  X_BUF   \memory_address_register_out_3_OBUF/XUSED  (
    .I(memory_address_register_out_3_OBUF_3039),
    .O(memory_address_register_out_3_OBUF_0)
  );
  X_BUF   \memory_address_register_out_3_OBUF/YUSED  (
    .I(memory_address_register_out_2_OBUF_3032),
    .O(memory_address_register_out_2_OBUF_0)
  );
  X_BUF   \program_counter<0>/XUSED  (
    .I(\program_counter_mux0000<5>21_2850 ),
    .O(\program_counter_mux0000<5>21_0 )
  );
  X_BUF   \program_counter<0>/DYMUX  (
    .I(program_counter_mux0000[7]),
    .O(\program_counter<0>/DYMUX_2840 )
  );
  X_BUF   \program_counter<0>/CLKINV  (
    .I(clock_BUFGP),
    .O(\program_counter<0>/CLKINV_2832 )
  );
  X_INV   \program_counter<0>/CEINV  (
    .I(reset_IBUF_898),
    .O(\program_counter<0>/CEINVNOT )
  );
  X_BUF   \instruction_register<1>/DXMUX  (
    .I(memory_data_register_out_1_OBUF_833),
    .O(\instruction_register<1>/DXMUX_2973 )
  );
  X_BUF   \instruction_register<1>/DYMUX  (
    .I(memory_data_register_out_0_OBUF_831),
    .O(\instruction_register<1>/DYMUX_2967 )
  );
  X_BUF   \instruction_register<1>/CLKINV  (
    .I(clock_BUFGP),
    .O(\instruction_register<1>/CLKINV_2965 )
  );
  X_BUF   \instruction_register<1>/CEINV  (
    .I(instruction_register_and0000_0),
    .O(\instruction_register<1>/CEINV_2964 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_6 (
    .I(\instruction_register<7>/DYMUX_3051 ),
    .CE(\instruction_register<7>/CEINV_3048 ),
    .CLK(\instruction_register<7>/CLKINV_3049 ),
    .SET(GND),
    .RST(GND),
    .O(instruction_register[6])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_7 (
    .I(\instruction_register<7>/DXMUX_3057 ),
    .CE(\instruction_register<7>/CEINV_3048 ),
    .CLK(\instruction_register<7>/CLKINV_3049 ),
    .SET(GND),
    .RST(GND),
    .O(instruction_register[7])
  );
  X_BUF   \instruction_register<7>/DXMUX  (
    .I(memory_data_register_out_7_OBUF_854),
    .O(\instruction_register<7>/DXMUX_3057 )
  );
  X_BUF   \instruction_register<7>/DYMUX  (
    .I(memory_data_register_out_6_OBUF_852),
    .O(\instruction_register<7>/DYMUX_3051 )
  );
  X_BUF   \instruction_register<7>/CLKINV  (
    .I(clock_BUFGP),
    .O(\instruction_register<7>/CLKINV_3049 )
  );
  X_BUF   \instruction_register<7>/CEINV  (
    .I(instruction_register_and0000_0),
    .O(\instruction_register<7>/CEINV_3048 )
  );
  X_BUF   \program_counter<4>/DXMUX  (
    .I(program_counter_mux0000[3]),
    .O(\program_counter<4>/DXMUX_2674 )
  );
  X_BUF   \program_counter<4>/YUSED  (
    .I(\program_counter_mux0000<3>22/O_pack_2 ),
    .O(\program_counter_mux0000<3>22/O )
  );
  X_BUF   \program_counter<4>/CLKINV  (
    .I(clock_BUFGP),
    .O(\program_counter<4>/CLKINV_2658 )
  );
  X_INV   \program_counter<4>/CEINV  (
    .I(reset_IBUF_898),
    .O(\program_counter<4>/CEINVNOT )
  );
  X_LUT4 #(
    .INIT ( 16'h4444 ))
  instruction_register_and00001 (
    .ADR0(reset_IBUF_898),
    .ADR1(state_FSM_FFd8_907),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(instruction_register_and0000)
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ))
  \program_counter_mux0000<5>8  (
    .ADR0(program_counter[2]),
    .ADR1(program_counter[1]),
    .ADR2(state_FSM_FFd8_907),
    .ADR3(program_counter[0]),
    .O(\program_counter_mux0000<5>8_3083 )
  );
  X_BUF   \program_counter_mux0000<5>8/XUSED  (
    .I(\program_counter_mux0000<5>8_3083 ),
    .O(\program_counter_mux0000<5>8_0 )
  );
  X_BUF   \program_counter_mux0000<5>8/YUSED  (
    .I(instruction_register_and0000),
    .O(instruction_register_and0000_0)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_9 (
    .I(\instruction_register<9>/DXMUX_3101 ),
    .CE(\instruction_register<9>/CEINV_3092 ),
    .CLK(\instruction_register<9>/CLKINV_3093 ),
    .SET(GND),
    .RST(GND),
    .O(instruction_register[9])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_8 (
    .I(\instruction_register<9>/DYMUX_3095 ),
    .CE(\instruction_register<9>/CEINV_3092 ),
    .CLK(\instruction_register<9>/CLKINV_3093 ),
    .SET(GND),
    .RST(GND),
    .O(instruction_register[8])
  );
  X_BUF   \instruction_register<9>/DXMUX  (
    .I(memory_data_register_out_9_OBUF_861),
    .O(\instruction_register<9>/DXMUX_3101 )
  );
  X_BUF   \instruction_register<9>/DYMUX  (
    .I(memory_data_register_out_8_OBUF_859),
    .O(\instruction_register<9>/DYMUX_3095 )
  );
  X_BUF   \instruction_register<9>/CLKINV  (
    .I(clock_BUFGP),
    .O(\instruction_register<9>/CLKINV_3093 )
  );
  X_BUF   \instruction_register<9>/CEINV  (
    .I(instruction_register_and0000_0),
    .O(\instruction_register<9>/CEINV_3092 )
  );
  X_BUF   \memory_write_out_OBUF/DXMUX  (
    .I(\state_FSM_FFd6-In ),
    .O(\memory_write_out_OBUF/DXMUX_2813 )
  );
  X_BUF   \memory_write_out_OBUF/DYMUX  (
    .I(\state_FSM_FFd5-In ),
    .O(\memory_write_out_OBUF/DYMUX_2799 )
  );
  X_BUF   \memory_write_out_OBUF/SRINV  (
    .I(reset_IBUF_898),
    .O(\memory_write_out_OBUF/SRINV_2791 )
  );
  X_BUF   \memory_write_out_OBUF/CLKINV  (
    .I(clock_BUFGP),
    .O(\memory_write_out_OBUF/CLKINV_2790 )
  );
  X_BUF   \state_FSM_FFd4/DXMUX  (
    .I(\state_FSM_FFd4-In ),
    .O(\state_FSM_FFd4/DXMUX_2771 )
  );
  X_BUF   \state_FSM_FFd4/DYMUX  (
    .I(\state_FSM_FFd3-In ),
    .O(\state_FSM_FFd4/DYMUX_2757 )
  );
  X_BUF   \state_FSM_FFd4/SRINV  (
    .I(reset_IBUF_898),
    .O(\state_FSM_FFd4/SRINV_2749 )
  );
  X_BUF   \state_FSM_FFd4/CLKINV  (
    .I(clock_BUFGP),
    .O(\state_FSM_FFd4/CLKINV_2748 )
  );
  X_BUF   \register_ac_out_15_OBUF/XUSED  (
    .I(N41),
    .O(N41_0)
  );
  X_BUF   \register_ac_out_15_OBUF/DYMUX  (
    .I(register_ac_mux0000[0]),
    .O(\register_ac_out_15_OBUF/DYMUX_2873 )
  );
  X_BUF   \register_ac_out_15_OBUF/CLKINV  (
    .I(clock_BUFGP),
    .O(\register_ac_out_15_OBUF/CLKINV_2864 )
  );
  X_INV   \register_ac_out_15_OBUF/CEINV  (
    .I(reset_IBUF_898),
    .O(\register_ac_out_15_OBUF/CEINVNOT )
  );
  X_BUF   \program_counter<2>/DXMUX  (
    .I(program_counter_mux0000[5]),
    .O(\program_counter<2>/DXMUX_2731 )
  );
  X_BUF   \program_counter<2>/YUSED  (
    .I(\program_counter_mux0000<5>10/O_pack_2 ),
    .O(\program_counter_mux0000<5>10/O )
  );
  X_BUF   \program_counter<2>/CLKINV  (
    .I(clock_BUFGP),
    .O(\program_counter<2>/CLKINV_2715 )
  );
  X_INV   \program_counter<2>/CEINV  (
    .I(reset_IBUF_898),
    .O(\program_counter<2>/CEINVNOT )
  );
  X_LUT4 #(
    .INIT ( 16'hCC80 ))
  \program_counter_mux0000<7>_SW0  (
    .ADR0(state_FSM_FFd3_912),
    .ADR1(instruction_register[0]),
    .ADR2(register_ac_out_15_OBUF_881),
    .ADR3(state_FSM_FFd4_921),
    .O(N2)
  );
  X_BUF   \N2/XUSED  (
    .I(N2),
    .O(N2_0)
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ))
  \state_FSM_FFd3-In1_SW0  (
    .ADR0(instruction_register[13]),
    .ADR1(instruction_register[12]),
    .ADR2(instruction_register[11]),
    .ADR3(VCC),
    .O(N02)
  );
  X_BUF   \N02/XUSED  (
    .I(N02),
    .O(N02_0)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \memory_address_register<4>1  (
    .ADR0(instruction_register[4]),
    .ADR1(program_counter[4]),
    .ADR2(N3),
    .ADR3(N01),
    .O(memory_address_register_out_4_OBUF_3120)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \memory_address_register<5>1  (
    .ADR0(instruction_register[5]),
    .ADR1(program_counter[5]),
    .ADR2(N3),
    .ADR3(N01),
    .O(memory_address_register_out_5_OBUF_3127)
  );
  X_BUF   \memory_address_register_out_5_OBUF/XUSED  (
    .I(memory_address_register_out_5_OBUF_3127),
    .O(memory_address_register_out_5_OBUF_0)
  );
  X_BUF   \memory_address_register_out_5_OBUF/YUSED  (
    .I(memory_address_register_out_4_OBUF_3120),
    .O(memory_address_register_out_4_OBUF_0)
  );
  X_LUT4 #(
    .INIT ( 16'h8080 ))
  \Madd_program_counter_addsub0000_cy<4>11  (
    .ADR0(program_counter[4]),
    .ADR1(program_counter[3]),
    .ADR2(\Madd_program_counter_addsub0000_cy[2] ),
    .ADR3(VCC),
    .O(\Madd_program_counter_addsub0000_cy[4] )
  );
  X_BUF   \Madd_program_counter_addsub0000_cy<4>/XUSED  (
    .I(\Madd_program_counter_addsub0000_cy[4] ),
    .O(\Madd_program_counter_addsub0000_cy<4>_0 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_10 (
    .I(\instruction_register<11>/DYMUX_3188 ),
    .CE(\instruction_register<11>/CEINV_3185 ),
    .CLK(\instruction_register<11>/CLKINV_3186 ),
    .SET(GND),
    .RST(GND),
    .O(instruction_register[10])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_11 (
    .I(\instruction_register<11>/DXMUX_3194 ),
    .CE(\instruction_register<11>/CEINV_3185 ),
    .CLK(\instruction_register<11>/CLKINV_3186 ),
    .SET(GND),
    .RST(GND),
    .O(instruction_register[11])
  );
  X_BUF   \instruction_register<11>/DXMUX  (
    .I(memory_data_register_out_11_OBUF_868),
    .O(\instruction_register<11>/DXMUX_3194 )
  );
  X_BUF   \instruction_register<11>/DYMUX  (
    .I(memory_data_register_out_10_OBUF_866),
    .O(\instruction_register<11>/DYMUX_3188 )
  );
  X_BUF   \instruction_register<11>/CLKINV  (
    .I(clock_BUFGP),
    .O(\instruction_register<11>/CLKINV_3186 )
  );
  X_BUF   \instruction_register<11>/CEINV  (
    .I(instruction_register_and0000_0),
    .O(\instruction_register<11>/CEINV_3185 )
  );
  X_FF #(
    .INIT ( 1'b1 ))
  state_FSM_FFd10 (
    .I(\state_FSM_FFd10/DYMUX_3173 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd10/CLKINV_3170 ),
    .SET(\state_FSM_FFd10/SRINV_3171 ),
    .RST(GND),
    .O(state_FSM_FFd10_923)
  );
  X_BUF   \state_FSM_FFd10/DYMUX  (
    .I(\state_FSM_FFd10/BYINV_3172 ),
    .O(\state_FSM_FFd10/DYMUX_3173 )
  );
  X_BUF   \state_FSM_FFd10/BYINV  (
    .I(1'b0),
    .O(\state_FSM_FFd10/BYINV_3172 )
  );
  X_BUF   \state_FSM_FFd10/SRINV  (
    .I(reset_IBUF_898),
    .O(\state_FSM_FFd10/SRINV_3171 )
  );
  X_BUF   \state_FSM_FFd10/CLKINV  (
    .I(clock_BUFGP),
    .O(\state_FSM_FFd10/CLKINV_3170 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_12 (
    .I(\instruction_register<13>/DYMUX_3208 ),
    .CE(\instruction_register<13>/CEINV_3205 ),
    .CLK(\instruction_register<13>/CLKINV_3206 ),
    .SET(GND),
    .RST(GND),
    .O(instruction_register[12])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_13 (
    .I(\instruction_register<13>/DXMUX_3214 ),
    .CE(\instruction_register<13>/CEINV_3205 ),
    .CLK(\instruction_register<13>/CLKINV_3206 ),
    .SET(GND),
    .RST(GND),
    .O(instruction_register[13])
  );
  X_BUF   \instruction_register<13>/DXMUX  (
    .I(memory_data_register_out_13_OBUF_875),
    .O(\instruction_register<13>/DXMUX_3214 )
  );
  X_BUF   \instruction_register<13>/DYMUX  (
    .I(memory_data_register_out_12_OBUF_873),
    .O(\instruction_register<13>/DYMUX_3208 )
  );
  X_BUF   \instruction_register<13>/CLKINV  (
    .I(clock_BUFGP),
    .O(\instruction_register<13>/CLKINV_3206 )
  );
  X_BUF   \instruction_register<13>/CEINV  (
    .I(instruction_register_and0000_0),
    .O(\instruction_register<13>/CEINV_3205 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_15 (
    .I(\instruction_register<15>/DXMUX_3234 ),
    .CE(\instruction_register<15>/CEINV_3225 ),
    .CLK(\instruction_register<15>/CLKINV_3226 ),
    .SET(GND),
    .RST(GND),
    .O(instruction_register[15])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_14 (
    .I(\instruction_register<15>/DYMUX_3228 ),
    .CE(\instruction_register<15>/CEINV_3225 ),
    .CLK(\instruction_register<15>/CLKINV_3226 ),
    .SET(GND),
    .RST(GND),
    .O(instruction_register[14])
  );
  X_BUF   \instruction_register<15>/DXMUX  (
    .I(memory_data_register_out_15_OBUF_882),
    .O(\instruction_register<15>/DXMUX_3234 )
  );
  X_BUF   \instruction_register<15>/DYMUX  (
    .I(memory_data_register_out_14_OBUF_880),
    .O(\instruction_register<15>/DYMUX_3228 )
  );
  X_BUF   \instruction_register<15>/CLKINV  (
    .I(clock_BUFGP),
    .O(\instruction_register<15>/CLKINV_3226 )
  );
  X_BUF   \instruction_register<15>/CEINV  (
    .I(instruction_register_and0000_0),
    .O(\instruction_register<15>/CEINV_3225 )
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_register_ac_addsub0000_lut<1>  (
    .ADR0(register_ac_out_1_OBUF_832),
    .ADR1(memory_data_register_out_1_OBUF_833),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_register_ac_addsub0000_lut[1])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_register_ac_addsub0000_lut<3>  (
    .ADR0(register_ac_out_3_OBUF_839),
    .ADR1(memory_data_register_out_3_OBUF_840),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_register_ac_addsub0000_lut[3])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_register_ac_addsub0000_lut<2>  (
    .ADR0(register_ac_out_2_OBUF_837),
    .ADR1(memory_data_register_out_2_OBUF_838),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_register_ac_addsub0000_lut[2])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_register_ac_addsub0000_lut<0>  (
    .ADR0(register_ac_out_0_OBUF_830),
    .ADR1(memory_data_register_out_0_OBUF_831),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_register_ac_addsub0000_lut[0])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_register_ac_addsub0000_lut<9>  (
    .ADR0(register_ac_out_9_OBUF_860),
    .ADR1(memory_data_register_out_9_OBUF_861),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_register_ac_addsub0000_lut[9])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_register_ac_addsub0000_lut<4>  (
    .ADR0(register_ac_out_4_OBUF_844),
    .ADR1(memory_data_register_out_4_OBUF_845),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_register_ac_addsub0000_lut[4])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_register_ac_addsub0000_lut<6>  (
    .ADR0(register_ac_out_6_OBUF_851),
    .ADR1(memory_data_register_out_6_OBUF_852),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_register_ac_addsub0000_lut[6])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_register_ac_addsub0000_lut<8>  (
    .ADR0(register_ac_out_8_OBUF_858),
    .ADR1(memory_data_register_out_8_OBUF_859),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_register_ac_addsub0000_lut[8])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_register_ac_addsub0000_lut<7>  (
    .ADR0(register_ac_out_7_OBUF_853),
    .ADR1(memory_data_register_out_7_OBUF_854),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_register_ac_addsub0000_lut[7])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_register_ac_addsub0000_lut<5>  (
    .ADR0(register_ac_out_5_OBUF_846),
    .ADR1(memory_data_register_out_5_OBUF_847),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_register_ac_addsub0000_lut[5])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_register_ac_addsub0000_lut<15>  (
    .ADR0(register_ac_out_15_OBUF_881),
    .ADR1(memory_data_register_out_15_OBUF_882),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_register_ac_addsub0000_lut[15])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_register_ac_addsub0000_lut<10>  (
    .ADR0(register_ac_out_10_OBUF_865),
    .ADR1(memory_data_register_out_10_OBUF_866),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_register_ac_addsub0000_lut[10])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_register_ac_addsub0000_lut<12>  (
    .ADR0(register_ac_out_12_OBUF_872),
    .ADR1(memory_data_register_out_12_OBUF_873),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_register_ac_addsub0000_lut[12])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_register_ac_addsub0000_lut<14>  (
    .ADR0(register_ac_out_14_OBUF_879),
    .ADR1(memory_data_register_out_14_OBUF_880),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_register_ac_addsub0000_lut[14])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_register_ac_addsub0000_lut<13>  (
    .ADR0(register_ac_out_13_OBUF_874),
    .ADR1(memory_data_register_out_13_OBUF_875),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_register_ac_addsub0000_lut[13])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_register_ac_addsub0000_lut<11>  (
    .ADR0(register_ac_out_11_OBUF_867),
    .ADR1(memory_data_register_out_11_OBUF_868),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_register_ac_addsub0000_lut[11])
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \register_ac_mux0000<12>  (
    .ADR0(register_ac_addsub0000[3]),
    .ADR1(state_FSM_FFd7_930),
    .ADR2(\register_ac_mux0000<12>_SW0/O ),
    .ADR3(VCC),
    .O(register_ac_mux0000[12])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_1 (
    .I(\register_ac_out_1_OBUF/DXMUX_2140 ),
    .CE(\register_ac_out_1_OBUF/CEINVNOT ),
    .CLK(\register_ac_out_1_OBUF/CLKINV_2124 ),
    .SET(GND),
    .RST(GND),
    .O(register_ac_out_1_OBUF_832)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<13>_SW0  (
    .ADR0(memory_data_register_out_2_OBUF_838),
    .ADR1(register_ac_out_2_OBUF_837),
    .ADR2(state_FSM_FFd5_935),
    .ADR3(N4),
    .O(\register_ac_mux0000<13>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hEEEE ))
  \state_FSM_FFd8-In4  (
    .ADR0(instruction_register[8]),
    .ADR1(instruction_register[9]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\state_FSM_FFd8-In4/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEEE ))
  \state_FSM_FFd8-In9  (
    .ADR0(instruction_register[11]),
    .ADR1(instruction_register[14]),
    .ADR2(instruction_register[10]),
    .ADR3(\state_FSM_FFd8-In4/O ),
    .O(\state_FSM_FFd8-In9_2166 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \register_ac_mux0000<14>  (
    .ADR0(register_ac_addsub0000[1]),
    .ADR1(state_FSM_FFd7_930),
    .ADR2(\register_ac_mux0000<14>_SW0/O ),
    .ADR3(VCC),
    .O(register_ac_mux0000[14])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<12>_SW0  (
    .ADR0(memory_data_register_out_3_OBUF_840),
    .ADR1(register_ac_out_3_OBUF_839),
    .ADR2(state_FSM_FFd5_935),
    .ADR3(N4),
    .O(\register_ac_mux0000<12>_SW0/O_pack_2 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_0 (
    .I(\register_ac_out_0_OBUF/DXMUX_2197 ),
    .CE(\register_ac_out_0_OBUF/CEINVNOT ),
    .CLK(\register_ac_out_0_OBUF/CLKINV_2181 ),
    .SET(GND),
    .RST(GND),
    .O(register_ac_out_0_OBUF_830)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<14>_SW0  (
    .ADR0(memory_data_register_out_1_OBUF_833),
    .ADR1(register_ac_out_1_OBUF_832),
    .ADR2(state_FSM_FFd5_935),
    .ADR3(N4),
    .O(\register_ac_mux0000<14>_SW0/O_pack_2 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_4 (
    .I(\register_ac_out_4_OBUF/DXMUX_2041 ),
    .CE(\register_ac_out_4_OBUF/CEINVNOT ),
    .CLK(\register_ac_out_4_OBUF/CLKINV_2025 ),
    .SET(GND),
    .RST(GND),
    .O(register_ac_out_4_OBUF_844)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_3 (
    .I(\register_ac_out_3_OBUF/DXMUX_2074 ),
    .CE(\register_ac_out_3_OBUF/CEINVNOT ),
    .CLK(\register_ac_out_3_OBUF/CLKINV_2058 ),
    .SET(GND),
    .RST(GND),
    .O(register_ac_out_3_OBUF_839)
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \register_ac_mux0000<13>  (
    .ADR0(register_ac_addsub0000[2]),
    .ADR1(state_FSM_FFd7_930),
    .ADR2(\register_ac_mux0000<13>_SW0/O ),
    .ADR3(VCC),
    .O(register_ac_mux0000[13])
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \register_ac_mux0000<15>  (
    .ADR0(register_ac_addsub0000[0]),
    .ADR1(state_FSM_FFd7_930),
    .ADR2(\register_ac_mux0000<15>_SW0/O ),
    .ADR3(VCC),
    .O(register_ac_mux0000[15])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<15>_SW0  (
    .ADR0(memory_data_register_out_0_OBUF_831),
    .ADR1(register_ac_out_0_OBUF_830),
    .ADR2(state_FSM_FFd5_935),
    .ADR3(N4),
    .O(\register_ac_mux0000<15>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \register_ac_mux0000<11>  (
    .ADR0(register_ac_addsub0000[4]),
    .ADR1(state_FSM_FFd7_930),
    .ADR2(\register_ac_mux0000<11>_SW0/O ),
    .ADR3(VCC),
    .O(register_ac_mux0000[11])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_2 (
    .I(\register_ac_out_2_OBUF/DXMUX_2107 ),
    .CE(\register_ac_out_2_OBUF/CEINVNOT ),
    .CLK(\register_ac_out_2_OBUF/CLKINV_2091 ),
    .SET(GND),
    .RST(GND),
    .O(register_ac_out_2_OBUF_837)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<1>_SW0  (
    .ADR0(memory_data_register_out_14_OBUF_880),
    .ADR1(register_ac_out_14_OBUF_879),
    .ADR2(state_FSM_FFd5_935),
    .ADR3(N4),
    .O(\register_ac_mux0000<1>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFAF8 ))
  \program_counter_mux0000<0>34  (
    .ADR0(program_counter[7]),
    .ADR1(N15_0),
    .ADR2(\program_counter_mux0000<0>12/O ),
    .ADR3(\program_counter_mux0000<0>22_0 ),
    .O(program_counter_mux0000[0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_13 (
    .I(\register_ac_out_13_OBUF/DXMUX_2296 ),
    .CE(\register_ac_out_13_OBUF/CEINVNOT ),
    .CLK(\register_ac_out_13_OBUF/CLKINV_2280 ),
    .SET(GND),
    .RST(GND),
    .O(register_ac_out_13_OBUF_874)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_11 (
    .I(\register_ac_out_11_OBUF/DXMUX_2362 ),
    .CE(\register_ac_out_11_OBUF/CEINVNOT ),
    .CLK(\register_ac_out_11_OBUF/CLKINV_2346 ),
    .SET(GND),
    .RST(GND),
    .O(register_ac_out_11_OBUF_867)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \program_counter_mux0000<0>12  (
    .ADR0(instruction_register[7]),
    .ADR1(\program_counter_mux0000<0>5_0 ),
    .ADR2(N11),
    .ADR3(\Madd_program_counter_addsub0000_cy<5>_0 ),
    .O(\program_counter_mux0000<0>12/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \register_ac_mux0000<1>  (
    .ADR0(state_FSM_FFd7_930),
    .ADR1(register_ac_addsub0000[14]),
    .ADR2(\register_ac_mux0000<1>_SW0/O ),
    .ADR3(VCC),
    .O(register_ac_mux0000[1])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<2>_SW0  (
    .ADR0(memory_data_register_out_13_OBUF_875),
    .ADR1(register_ac_out_13_OBUF_874),
    .ADR2(state_FSM_FFd5_935),
    .ADR3(N4),
    .O(\register_ac_mux0000<2>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \register_ac_mux0000<2>  (
    .ADR0(state_FSM_FFd7_930),
    .ADR1(register_ac_addsub0000[13]),
    .ADR2(\register_ac_mux0000<2>_SW0/O ),
    .ADR3(VCC),
    .O(register_ac_mux0000[2])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_14 (
    .I(\register_ac_out_14_OBUF/DXMUX_2230 ),
    .CE(\register_ac_out_14_OBUF/CEINVNOT ),
    .CLK(\register_ac_out_14_OBUF/CLKINV_2214 ),
    .SET(GND),
    .RST(GND),
    .O(register_ac_out_14_OBUF_879)
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \register_ac_mux0000<3>  (
    .ADR0(state_FSM_FFd7_930),
    .ADR1(register_ac_addsub0000[12]),
    .ADR2(\register_ac_mux0000<3>_SW0/O ),
    .ADR3(VCC),
    .O(register_ac_mux0000[3])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_12 (
    .I(\register_ac_out_12_OBUF/DXMUX_2329 ),
    .CE(\register_ac_out_12_OBUF/CEINVNOT ),
    .CLK(\register_ac_out_12_OBUF/CLKINV_2313 ),
    .SET(GND),
    .RST(GND),
    .O(register_ac_out_12_OBUF_872)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<4>_SW0  (
    .ADR0(memory_data_register_out_11_OBUF_868),
    .ADR1(register_ac_out_11_OBUF_867),
    .ADR2(state_FSM_FFd5_935),
    .ADR3(N4),
    .O(\register_ac_mux0000<4>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \register_ac_mux0000<4>  (
    .ADR0(state_FSM_FFd7_930),
    .ADR1(register_ac_addsub0000[11]),
    .ADR2(\register_ac_mux0000<4>_SW0/O ),
    .ADR3(VCC),
    .O(register_ac_mux0000[4])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  program_counter_7 (
    .I(\program_counter<7>/DXMUX_2263 ),
    .CE(\program_counter<7>/CEINVNOT ),
    .CLK(\program_counter<7>/CLKINV_2248 ),
    .SET(GND),
    .RST(GND),
    .O(program_counter[7])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<3>_SW0  (
    .ADR0(memory_data_register_out_12_OBUF_873),
    .ADR1(register_ac_out_12_OBUF_872),
    .ADR2(state_FSM_FFd5_935),
    .ADR3(N4),
    .O(\register_ac_mux0000<3>_SW0/O_pack_2 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_8 (
    .I(\register_ac_out_8_OBUF/DXMUX_2494 ),
    .CE(\register_ac_out_8_OBUF/CEINVNOT ),
    .CLK(\register_ac_out_8_OBUF/CLKINV_2478 ),
    .SET(GND),
    .RST(GND),
    .O(register_ac_out_8_OBUF_858)
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \register_ac_mux0000<5>  (
    .ADR0(register_ac_addsub0000[10]),
    .ADR1(state_FSM_FFd7_930),
    .ADR2(\register_ac_mux0000<5>_SW0/O ),
    .ADR3(VCC),
    .O(register_ac_mux0000[5])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_10 (
    .I(\register_ac_out_10_OBUF/DXMUX_2428 ),
    .CE(\register_ac_out_10_OBUF/CEINVNOT ),
    .CLK(\register_ac_out_10_OBUF/CLKINV_2412 ),
    .SET(GND),
    .RST(GND),
    .O(register_ac_out_10_OBUF_865)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<7>_SW0  (
    .ADR0(memory_data_register_out_8_OBUF_859),
    .ADR1(register_ac_out_8_OBUF_858),
    .ADR2(state_FSM_FFd5_935),
    .ADR3(N4),
    .O(\register_ac_mux0000<7>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \register_ac_mux0000<8>  (
    .ADR0(register_ac_addsub0000[7]),
    .ADR1(state_FSM_FFd7_930),
    .ADR2(\register_ac_mux0000<8>_SW0/O ),
    .ADR3(VCC),
    .O(register_ac_mux0000[8])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_7 (
    .I(\register_ac_out_7_OBUF/DXMUX_2527 ),
    .CE(\register_ac_out_7_OBUF/CEINVNOT ),
    .CLK(\register_ac_out_7_OBUF/CLKINV_2511 ),
    .SET(GND),
    .RST(GND),
    .O(register_ac_out_7_OBUF_853)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<6>_SW0  (
    .ADR0(memory_data_register_out_9_OBUF_861),
    .ADR1(register_ac_out_9_OBUF_860),
    .ADR2(state_FSM_FFd5_935),
    .ADR3(N4),
    .O(\register_ac_mux0000<6>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hEA60 ))
  \program_counter_mux0000<2>24_SW0  (
    .ADR0(program_counter[5]),
    .ADR1(\Madd_program_counter_addsub0000_cy<4>_0 ),
    .ADR2(state_FSM_FFd8_907),
    .ADR3(N15_0),
    .O(\program_counter_mux0000<2>24_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \register_ac_mux0000<6>  (
    .ADR0(register_ac_addsub0000[9]),
    .ADR1(state_FSM_FFd7_930),
    .ADR2(\register_ac_mux0000<6>_SW0/O ),
    .ADR3(VCC),
    .O(register_ac_mux0000[6])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<8>_SW0  (
    .ADR0(memory_data_register_out_7_OBUF_854),
    .ADR1(register_ac_out_7_OBUF_853),
    .ADR2(state_FSM_FFd5_935),
    .ADR3(N4),
    .O(\register_ac_mux0000<8>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hEA60 ))
  \program_counter_mux0000<1>24_SW2  (
    .ADR0(program_counter[6]),
    .ADR1(\Madd_program_counter_addsub0000_cy<5>_0 ),
    .ADR2(state_FSM_FFd8_907),
    .ADR3(N15_0),
    .O(\program_counter_mux0000<1>24_SW2/O_pack_2 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  program_counter_6 (
    .I(\program_counter<6>/DXMUX_2395 ),
    .CE(\program_counter<6>/CEINVNOT ),
    .CLK(\program_counter<6>/CLKINV_2379 ),
    .SET(GND),
    .RST(GND),
    .O(program_counter[6])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_9 (
    .I(\register_ac_out_9_OBUF/DXMUX_2461 ),
    .CE(\register_ac_out_9_OBUF/CEINVNOT ),
    .CLK(\register_ac_out_9_OBUF/CLKINV_2445 ),
    .SET(GND),
    .RST(GND),
    .O(register_ac_out_9_OBUF_860)
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \register_ac_mux0000<7>  (
    .ADR0(register_ac_addsub0000[8]),
    .ADR1(state_FSM_FFd7_930),
    .ADR2(\register_ac_mux0000<7>_SW0/O ),
    .ADR3(VCC),
    .O(register_ac_mux0000[7])
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \program_counter_mux0000<1>24  (
    .ADR0(instruction_register[6]),
    .ADR1(N11),
    .ADR2(\program_counter_mux0000<1>24_SW2/O ),
    .ADR3(VCC),
    .O(program_counter_mux0000[1])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<5>_SW0  (
    .ADR0(memory_data_register_out_10_OBUF_866),
    .ADR1(register_ac_out_10_OBUF_865),
    .ADR2(state_FSM_FFd5_935),
    .ADR3(N4),
    .O(\register_ac_mux0000<5>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \program_counter_mux0000<2>24  (
    .ADR0(instruction_register[5]),
    .ADR1(N11),
    .ADR2(\program_counter_mux0000<2>24_SW0/O ),
    .ADR3(VCC),
    .O(program_counter_mux0000[2])
  );
  X_LUT4 #(
    .INIT ( 16'h0101 ))
  \register_ac_mux0000<0>11  (
    .ADR0(state_FSM_FFd10_923),
    .ADR1(state_FSM_FFd7_930),
    .ADR2(state_FSM_FFd5_935),
    .ADR3(VCC),
    .O(N4_pack_2)
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \program_counter_mux0000<3>12  (
    .ADR0(instruction_register[4]),
    .ADR1(\Madd_program_counter_addsub0000_cy[2] ),
    .ADR2(\program_counter_mux0000<3>5/O ),
    .ADR3(N11),
    .O(\program_counter_mux0000<3>12_2643 )
  );
  X_LUT4 #(
    .INIT ( 16'hFAF8 ))
  \program_counter_mux0000<3>34  (
    .ADR0(program_counter[4]),
    .ADR1(\program_counter_mux0000<3>22/O ),
    .ADR2(\program_counter_mux0000<3>12_0 ),
    .ADR3(N15_0),
    .O(program_counter_mux0000[3])
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ))
  \program_counter_mux0000<5>10  (
    .ADR0(instruction_register[2]),
    .ADR1(\program_counter_mux0000<5>8_0 ),
    .ADR2(N11),
    .ADR3(VCC),
    .O(\program_counter_mux0000<5>10/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFAF8 ))
  \program_counter_mux0000<5>33  (
    .ADR0(program_counter[2]),
    .ADR1(\program_counter_mux0000<5>21_0 ),
    .ADR2(\program_counter_mux0000<5>10/O ),
    .ADR3(N15_0),
    .O(program_counter_mux0000[5])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  program_counter_5 (
    .I(\program_counter<5>/DXMUX_2560 ),
    .CE(\program_counter<5>/CEINVNOT ),
    .CLK(\program_counter<5>/CLKINV_2544 ),
    .SET(GND),
    .RST(GND),
    .O(program_counter[5])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<0>_SW0  (
    .ADR0(memory_data_register_out_15_OBUF_882),
    .ADR1(register_ac_out_15_OBUF_881),
    .ADR2(state_FSM_FFd5_935),
    .ADR3(N4),
    .O(N43)
  );
  X_LUT4 #(
    .INIT ( 16'h4C4C ))
  \program_counter_mux0000<3>22  (
    .ADR0(program_counter[3]),
    .ADR1(state_FSM_FFd8_907),
    .ADR2(\Madd_program_counter_addsub0000_cy[2] ),
    .ADR3(VCC),
    .O(\program_counter_mux0000<3>22/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<9>_SW0  (
    .ADR0(memory_data_register_out_6_OBUF_852),
    .ADR1(register_ac_out_6_OBUF_851),
    .ADR2(state_FSM_FFd5_935),
    .ADR3(N4),
    .O(\register_ac_mux0000<9>_SW0/O_pack_2 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  program_counter_4 (
    .I(\program_counter<4>/DXMUX_2674 ),
    .CE(\program_counter<4>/CEINVNOT ),
    .CLK(\program_counter<4>/CLKINV_2658 ),
    .SET(GND),
    .RST(GND),
    .O(program_counter[4])
  );
  X_LUT4 #(
    .INIT ( 16'h0808 ))
  \program_counter_mux0000<3>5  (
    .ADR0(program_counter[3]),
    .ADR1(state_FSM_FFd8_907),
    .ADR2(program_counter[4]),
    .ADR3(VCC),
    .O(\program_counter_mux0000<3>5/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \Madd_program_counter_addsub0000_cy<5>11  (
    .ADR0(program_counter[5]),
    .ADR1(program_counter[4]),
    .ADR2(program_counter[3]),
    .ADR3(\Madd_program_counter_addsub0000_cy[2] ),
    .O(\Madd_program_counter_addsub0000_cy[5] )
  );
  X_LUT4 #(
    .INIT ( 16'h8080 ))
  \Madd_program_counter_addsub0000_cy<2>11  (
    .ADR0(program_counter[2]),
    .ADR1(program_counter[1]),
    .ADR2(program_counter[0]),
    .ADR3(VCC),
    .O(\Madd_program_counter_addsub0000_cy<2>_pack_1 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_6 (
    .I(\register_ac_out_6_OBUF/DXMUX_2593 ),
    .CE(\register_ac_out_6_OBUF/CEINVNOT ),
    .CLK(\register_ac_out_6_OBUF/CLKINV_2577 ),
    .SET(GND),
    .RST(GND),
    .O(register_ac_out_6_OBUF_851)
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \register_ac_mux0000<9>  (
    .ADR0(register_ac_addsub0000[6]),
    .ADR1(state_FSM_FFd7_930),
    .ADR2(\register_ac_mux0000<9>_SW0/O ),
    .ADR3(VCC),
    .O(register_ac_mux0000[9])
  );
  X_LUT4 #(
    .INIT ( 16'hFEF4 ))
  \program_counter_mux0000<7>  (
    .ADR0(program_counter[0]),
    .ADR1(state_FSM_FFd8_907),
    .ADR2(N2_0),
    .ADR3(N15_0),
    .O(program_counter_mux0000[7])
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ))
  \register_ac_mux0000<0>  (
    .ADR0(state_FSM_FFd7_930),
    .ADR1(N43_0),
    .ADR2(register_ac_addsub0000[15]),
    .ADR3(VCC),
    .O(register_ac_mux0000[0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd3 (
    .I(\state_FSM_FFd4/DYMUX_2757 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd4/CLKINV_2748 ),
    .SET(GND),
    .RST(\state_FSM_FFd4/SRINV_2749 ),
    .O(state_FSM_FFd3_912)
  );
  X_LUT4 #(
    .INIT ( 16'h0040 ))
  \state_FSM_FFd3-In2  (
    .ADR0(instruction_register[8]),
    .ADR1(instruction_register[10]),
    .ADR2(N5),
    .ADR3(instruction_register[9]),
    .O(\state_FSM_FFd3-In )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_15 (
    .I(\register_ac_out_15_OBUF/DYMUX_2873 ),
    .CE(\register_ac_out_15_OBUF/CEINVNOT ),
    .CLK(\register_ac_out_15_OBUF/CLKINV_2864 ),
    .SET(GND),
    .RST(GND),
    .O(register_ac_out_15_OBUF_881)
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ))
  \memory_address_register<0>1_SW0  (
    .ADR0(state_FSM_FFd2_973),
    .ADR1(state_FSM_FFd1_974),
    .ADR2(state_FSM_FFd7_930),
    .ADR3(VCC),
    .O(N41)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd4 (
    .I(\state_FSM_FFd4/DXMUX_2771 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd4/CLKINV_2748 ),
    .SET(GND),
    .RST(\state_FSM_FFd4/SRINV_2749 ),
    .O(state_FSM_FFd4_921)
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ))
  \state_FSM_FFd4-In1  (
    .ADR0(instruction_register[10]),
    .ADR1(instruction_register[8]),
    .ADR2(N5),
    .ADR3(instruction_register[9]),
    .O(\state_FSM_FFd4-In )
  );
  X_LUT4 #(
    .INIT ( 16'h0040 ))
  \state_FSM_FFd5-In1  (
    .ADR0(instruction_register[10]),
    .ADR1(instruction_register[9]),
    .ADR2(N5),
    .ADR3(instruction_register[8]),
    .O(\state_FSM_FFd5-In )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  program_counter_2 (
    .I(\program_counter<2>/DXMUX_2731 ),
    .CE(\program_counter<2>/CEINVNOT ),
    .CLK(\program_counter<2>/CLKINV_2715 ),
    .SET(GND),
    .RST(GND),
    .O(program_counter[2])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  program_counter_0 (
    .I(\program_counter<0>/DYMUX_2840 ),
    .CE(\program_counter<0>/CEINVNOT ),
    .CLK(\program_counter<0>/CLKINV_2832 ),
    .SET(GND),
    .RST(GND),
    .O(program_counter[0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd6 (
    .I(\memory_write_out_OBUF/DXMUX_2813 ),
    .CE(VCC),
    .CLK(\memory_write_out_OBUF/CLKINV_2790 ),
    .SET(GND),
    .RST(\memory_write_out_OBUF/SRINV_2791 ),
    .O(memory_write_out_OBUF_893)
  );
  X_LUT4 #(
    .INIT ( 16'h2A2A ))
  \program_counter_mux0000<5>21  (
    .ADR0(state_FSM_FFd8_907),
    .ADR1(program_counter[0]),
    .ADR2(program_counter[1]),
    .ADR3(VCC),
    .O(\program_counter_mux0000<5>21_2850 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd5 (
    .I(\memory_write_out_OBUF/DYMUX_2799 ),
    .CE(VCC),
    .CLK(\memory_write_out_OBUF/CLKINV_2790 ),
    .SET(GND),
    .RST(\memory_write_out_OBUF/SRINV_2791 ),
    .O(state_FSM_FFd5_935)
  );
  X_LUT4 #(
    .INIT ( 16'h0040 ))
  \state_FSM_FFd6-In1  (
    .ADR0(instruction_register[10]),
    .ADR1(instruction_register[8]),
    .ADR2(N5),
    .ADR3(instruction_register[9]),
    .O(\state_FSM_FFd6-In )
  );
  X_LUT4 #(
    .INIT ( 16'h2A2A ))
  \program_counter_mux0000<0>22  (
    .ADR0(state_FSM_FFd8_907),
    .ADR1(program_counter[6]),
    .ADR2(\Madd_program_counter_addsub0000_cy<5>_0 ),
    .ADR3(VCC),
    .O(\program_counter_mux0000<0>22_2907 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_3 (
    .I(\instruction_register<3>/DXMUX_2993 ),
    .CE(\instruction_register<3>/CEINV_2984 ),
    .CLK(\instruction_register<3>/CLKINV_2985 ),
    .SET(GND),
    .RST(GND),
    .O(instruction_register[3])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd1 (
    .I(\state_FSM_FFd2/DYMUX_2943 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd2/CLKINV_2940 ),
    .SET(GND),
    .RST(\state_FSM_FFd2/SRINV_2941 ),
    .O(state_FSM_FFd1_974)
  );
  X_LUT4 #(
    .INIT ( 16'h4040 ))
  \program_counter_mux0000<0>5  (
    .ADR0(program_counter[7]),
    .ADR1(program_counter[6]),
    .ADR2(state_FSM_FFd8_907),
    .ADR3(VCC),
    .O(\program_counter_mux0000<0>5_2899 )
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \memory_address_register<0>2  (
    .ADR0(instruction_register[0]),
    .ADR1(program_counter[0]),
    .ADR2(N3),
    .ADR3(N01),
    .O(memory_address_register_out_0_OBUF_2924)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd2 (
    .I(\state_FSM_FFd2/DXMUX_2951 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd2/CLKINV_2940 ),
    .SET(GND),
    .RST(\state_FSM_FFd2/SRINV_2941 ),
    .O(state_FSM_FFd2_973)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_1 (
    .I(\instruction_register<1>/DXMUX_2973 ),
    .CE(\instruction_register<1>/CEINV_2964 ),
    .CLK(\instruction_register<1>/CLKINV_2965 ),
    .SET(GND),
    .RST(GND),
    .O(instruction_register[1])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_2 (
    .I(\instruction_register<3>/DYMUX_2987 ),
    .CE(\instruction_register<3>/CEINV_2984 ),
    .CLK(\instruction_register<3>/CLKINV_2985 ),
    .SET(GND),
    .RST(GND),
    .O(instruction_register[2])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_4 (
    .I(\instruction_register<5>/DYMUX_3007 ),
    .CE(\instruction_register<5>/CEINV_3004 ),
    .CLK(\instruction_register<5>/CLKINV_3005 ),
    .SET(GND),
    .RST(GND),
    .O(instruction_register[4])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \memory_address_register<1>1  (
    .ADR0(instruction_register[1]),
    .ADR1(program_counter[1]),
    .ADR2(N3),
    .ADR3(N01),
    .O(memory_address_register_out_1_OBUF_2931)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_0 (
    .I(\instruction_register<1>/DYMUX_2967 ),
    .CE(\instruction_register<1>/CEINV_2964 ),
    .CLK(\instruction_register<1>/CLKINV_2965 ),
    .SET(GND),
    .RST(GND),
    .O(instruction_register[0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_5 (
    .I(\instruction_register<5>/DXMUX_3013 ),
    .CE(\instruction_register<5>/CEINV_3004 ),
    .CLK(\instruction_register<5>/CLKINV_3005 ),
    .SET(GND),
    .RST(GND),
    .O(instruction_register[5])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \memory_address_register<2>1  (
    .ADR0(instruction_register[2]),
    .ADR1(program_counter[2]),
    .ADR2(N3),
    .ADR3(N01),
    .O(memory_address_register_out_2_OBUF_3032)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \state_FSM_FFd8-In41_G  (
    .ADR0(instruction_register[13]),
    .ADR1(instruction_register[12]),
    .ADR2(instruction_register[15]),
    .ADR3(\state_FSM_FFd8-In9_0 ),
    .O(N53)
  );
  X_LUT4 #(
    .INIT ( 16'hEA60 ))
  \program_counter_mux0000<6>_SW0  (
    .ADR0(program_counter[1]),
    .ADR1(program_counter[0]),
    .ADR2(state_FSM_FFd8_907),
    .ADR3(N15_0),
    .O(\program_counter_mux0000<6>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hEEE4 ))
  \program_counter_mux0000<4>  (
    .ADR0(program_counter[3]),
    .ADR1(N12_0),
    .ADR2(\program_counter_mux0000<4>_SW1/O ),
    .ADR3(N15_0),
    .O(program_counter_mux0000[4])
  );
  X_LUT4 #(
    .INIT ( 16'hAE0C ))
  \program_counter_mux0000<4>_SW1  (
    .ADR0(instruction_register[3]),
    .ADR1(state_FSM_FFd8_907),
    .ADR2(\Madd_program_counter_addsub0000_cy[2] ),
    .ADR3(N11),
    .O(\program_counter_mux0000<4>_SW1/O_pack_2 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd8 (
    .I(\state_FSM_FFd8/DXMUX_1776 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd8/CLKINV_1750 ),
    .SET(GND),
    .RST(\state_FSM_FFd8/SRINV_1751 ),
    .O(state_FSM_FFd8_907)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd9 (
    .I(\state_FSM_FFd8/DYMUX_1760 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd8/CLKINV_1750 ),
    .SET(GND),
    .RST(\state_FSM_FFd8/SRINV_1751 ),
    .O(state_FSM_FFd9_906)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  program_counter_3 (
    .I(\program_counter<3>/DXMUX_1811 ),
    .CE(\program_counter<3>/CEINVNOT ),
    .CLK(\program_counter<3>/CLKINV_1796 ),
    .SET(GND),
    .RST(GND),
    .O(program_counter[3])
  );
  X_LUT4 #(
    .INIT ( 16'h0101 ))
  \state_FSM_FFd8-In41_F  (
    .ADR0(memory_write_out_OBUF_893),
    .ADR1(state_FSM_FFd8_907),
    .ADR2(state_FSM_FFd3_912),
    .ADR3(VCC),
    .O(N52)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \memory_address_register<0>1  (
    .ADR0(state_FSM_FFd3_912),
    .ADR1(state_FSM_FFd8_907),
    .ADR2(state_FSM_FFd5_935),
    .ADR3(N41_0),
    .O(N01_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ))
  \memory_address_register<0>21  (
    .ADR0(state_FSM_FFd9_906),
    .ADR1(state_FSM_FFd4_921),
    .ADR2(memory_write_out_OBUF_893),
    .ADR3(VCC),
    .O(N3_pack_1)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_5 (
    .I(\register_ac_out_5_OBUF/DXMUX_1984 ),
    .CE(\register_ac_out_5_OBUF/CEINVNOT ),
    .CLK(\register_ac_out_5_OBUF/CLKINV_1968 ),
    .SET(GND),
    .RST(GND),
    .O(register_ac_out_5_OBUF_846)
  );
  X_LUT4 #(
    .INIT ( 16'hEAEA ))
  \program_counter_mux0000<0>11  (
    .ADR0(state_FSM_FFd4_921),
    .ADR1(state_FSM_FFd3_912),
    .ADR2(register_ac_out_15_OBUF_881),
    .ADR3(VCC),
    .O(N11_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hEEEE ))
  \program_counter_mux0000<7>1_SW0  (
    .ADR0(state_FSM_FFd10_923),
    .ADR1(state_FSM_FFd8_907),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\program_counter_mux0000<7>1_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \program_counter_mux0000<6>  (
    .ADR0(instruction_register[1]),
    .ADR1(N11),
    .ADR2(\program_counter_mux0000<6>_SW0/O ),
    .ADR3(VCC),
    .O(program_counter_mux0000[6])
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ))
  \state_FSM_FFd7-In1  (
    .ADR0(instruction_register[10]),
    .ADR1(instruction_register[8]),
    .ADR2(N5),
    .ADR3(instruction_register[9]),
    .O(\state_FSM_FFd7-In )
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \memory_address_register<7>1  (
    .ADR0(instruction_register[7]),
    .ADR1(program_counter[7]),
    .ADR2(N3),
    .ADR3(N01),
    .O(memory_address_register_out_7_OBUF_1953)
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \register_ac_mux0000<10>  (
    .ADR0(register_ac_addsub0000[5]),
    .ADR1(state_FSM_FFd7_930),
    .ADR2(\register_ac_mux0000<10>_SW0/O ),
    .ADR3(VCC),
    .O(register_ac_mux0000[10])
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \program_counter_mux0000<4>_SW0  (
    .ADR0(instruction_register[3]),
    .ADR1(state_FSM_FFd8_907),
    .ADR2(\Madd_program_counter_addsub0000_cy[2] ),
    .ADR3(N11),
    .O(N12)
  );
  X_LUT4 #(
    .INIT ( 16'h2227 ))
  \program_counter_mux0000<7>1  (
    .ADR0(state_FSM_FFd3_912),
    .ADR1(register_ac_out_15_OBUF_881),
    .ADR2(state_FSM_FFd4_921),
    .ADR3(\program_counter_mux0000<7>1_SW0/O ),
    .O(N15)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \memory_address_register<6>1  (
    .ADR0(instruction_register[6]),
    .ADR1(program_counter[6]),
    .ADR2(N3),
    .ADR3(N01),
    .O(memory_address_register_out_6_OBUF_1929)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<10>_SW0  (
    .ADR0(memory_data_register_out_5_OBUF_847),
    .ADR1(register_ac_out_5_OBUF_846),
    .ADR2(state_FSM_FFd5_935),
    .ADR3(N4),
    .O(\register_ac_mux0000<10>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \memory_address_register<3>1  (
    .ADR0(instruction_register[3]),
    .ADR1(program_counter[3]),
    .ADR2(N3),
    .ADR3(N01),
    .O(memory_address_register_out_3_OBUF_3039)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  program_counter_1 (
    .I(\program_counter<1>/DXMUX_1844 ),
    .CE(\program_counter<1>/CEINVNOT ),
    .CLK(\program_counter<1>/CLKINV_1828 ),
    .SET(GND),
    .RST(GND),
    .O(program_counter[1])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd7 (
    .I(\state_FSM_FFd7/DXMUX_1901 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd7/CLKINV_1885 ),
    .SET(GND),
    .RST(\state_FSM_FFd7/FFX/RSTAND_1906 ),
    .O(state_FSM_FFd7_930)
  );
  X_BUF   \state_FSM_FFd7/FFX/RSTAND  (
    .I(reset_IBUF_898),
    .O(\state_FSM_FFd7/FFX/RSTAND_1906 )
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ))
  \state_FSM_FFd3-In1  (
    .ADR0(instruction_register[15]),
    .ADR1(instruction_register[14]),
    .ADR2(state_FSM_FFd9_906),
    .ADR3(N02_0),
    .O(N5_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<11>_SW0  (
    .ADR0(memory_data_register_out_4_OBUF_845),
    .ADR1(register_ac_out_4_OBUF_844),
    .ADR2(state_FSM_FFd5_935),
    .ADR3(N4),
    .O(\register_ac_mux0000<11>_SW0/O_pack_2 )
  );
  X_BUF   \register_ac_out<5>/OUTPUT/OFF/OMUX  (
    .I(register_ac_out_5_OBUF_846),
    .O(\register_ac_out<5>/O )
  );
  X_BUF   \register_ac_out<4>/OUTPUT/OFF/OMUX  (
    .I(register_ac_out_4_OBUF_844),
    .O(\register_ac_out<4>/O )
  );
  X_BUF   \register_ac_out<6>/OUTPUT/OFF/OMUX  (
    .I(register_ac_out_6_OBUF_851),
    .O(\register_ac_out<6>/O )
  );
  X_BUF   \register_ac_out<12>/OUTPUT/OFF/OMUX  (
    .I(register_ac_out_12_OBUF_872),
    .O(\register_ac_out<12>/O )
  );
  X_BUF   \register_ac_out<3>/OUTPUT/OFF/OMUX  (
    .I(register_ac_out_3_OBUF_839),
    .O(\register_ac_out<3>/O )
  );
  X_BUF   \register_ac_out<8>/OUTPUT/OFF/OMUX  (
    .I(register_ac_out_8_OBUF_858),
    .O(\register_ac_out<8>/O )
  );
  X_BUF   \register_ac_out<9>/OUTPUT/OFF/OMUX  (
    .I(register_ac_out_9_OBUF_860),
    .O(\register_ac_out<9>/O )
  );
  X_BUF   \register_ac_out<13>/OUTPUT/OFF/OMUX  (
    .I(register_ac_out_13_OBUF_874),
    .O(\register_ac_out<13>/O )
  );
  X_BUF   \register_ac_out<11>/OUTPUT/OFF/OMUX  (
    .I(register_ac_out_11_OBUF_867),
    .O(\register_ac_out<11>/O )
  );
  X_BUF   \register_ac_out<14>/OUTPUT/OFF/OMUX  (
    .I(register_ac_out_14_OBUF_879),
    .O(\register_ac_out<14>/O )
  );
  X_BUF   \register_ac_out<10>/OUTPUT/OFF/OMUX  (
    .I(register_ac_out_10_OBUF_865),
    .O(\register_ac_out<10>/O )
  );
  X_BUF   \register_ac_out<7>/OUTPUT/OFF/OMUX  (
    .I(register_ac_out_7_OBUF_853),
    .O(\register_ac_out<7>/O )
  );
  X_BUF   \program_counter_out<5>/OUTPUT/OFF/OMUX  (
    .I(program_counter[5]),
    .O(\program_counter_out<5>/O )
  );
  X_BUF   \memory_write_out/OUTPUT/OFF/OMUX  (
    .I(memory_write_out_OBUF_893),
    .O(\memory_write_out/O )
  );
  X_BUF   \register_ac_out<15>/OUTPUT/OFF/OMUX  (
    .I(register_ac_out_15_OBUF_881),
    .O(\register_ac_out<15>/O )
  );
  X_BUF   \program_counter_out<2>/OUTPUT/OFF/OMUX  (
    .I(program_counter[2]),
    .O(\program_counter_out<2>/O )
  );
  X_BUF   \program_counter_out<6>/OUTPUT/OFF/OMUX  (
    .I(program_counter[6]),
    .O(\program_counter_out<6>/O )
  );
  X_BUF   \program_counter_out<7>/OUTPUT/OFF/OMUX  (
    .I(program_counter[7]),
    .O(\program_counter_out<7>/O )
  );
  X_BUF   \program_counter_out<0>/OUTPUT/OFF/OMUX  (
    .I(program_counter[0]),
    .O(\program_counter_out<0>/O )
  );
  X_BUF   \program_counter_out<1>/OUTPUT/OFF/OMUX  (
    .I(program_counter[1]),
    .O(\program_counter_out<1>/O )
  );
  X_BUF   \program_counter_out<3>/OUTPUT/OFF/OMUX  (
    .I(program_counter[3]),
    .O(\program_counter_out<3>/O )
  );
  X_BUF   \program_counter_out<4>/OUTPUT/OFF/OMUX  (
    .I(program_counter[4]),
    .O(\program_counter_out<4>/O )
  );
  X_BUF   \memory_data_register_out<12>/OUTPUT/OFF/OMUX  (
    .I(memory_data_register_out_12_OBUF_873),
    .O(\memory_data_register_out<12>/O )
  );
  X_BUF   \memory_data_register_out<0>/OUTPUT/OFF/OMUX  (
    .I(memory_data_register_out_0_OBUF_831),
    .O(\memory_data_register_out<0>/O )
  );
  X_BUF   \memory_address_register_out<6>/OUTPUT/OFF/OMUX  (
    .I(memory_address_register_out_6_OBUF_0),
    .O(\memory_address_register_out<6>/O )
  );
  X_BUF   \memory_data_register_out<7>/OUTPUT/OFF/OMUX  (
    .I(memory_data_register_out_7_OBUF_854),
    .O(\memory_data_register_out<7>/O )
  );
  X_BUF   \memory_address_register_out<7>/OUTPUT/OFF/OMUX  (
    .I(memory_address_register_out_7_OBUF_0),
    .O(\memory_address_register_out<7>/O )
  );
  X_BUF   \memory_address_register_out<5>/OUTPUT/OFF/OMUX  (
    .I(memory_address_register_out_5_OBUF_0),
    .O(\memory_address_register_out<5>/O )
  );
  X_BUF   \memory_address_register_out<0>/OUTPUT/OFF/OMUX  (
    .I(memory_address_register_out_0_OBUF_0),
    .O(\memory_address_register_out<0>/O )
  );
  X_BUF   \memory_address_register_out<4>/OUTPUT/OFF/OMUX  (
    .I(memory_address_register_out_4_OBUF_0),
    .O(\memory_address_register_out<4>/O )
  );
  X_BUF   \memory_data_register_out<5>/OUTPUT/OFF/OMUX  (
    .I(memory_data_register_out_5_OBUF_847),
    .O(\memory_data_register_out<5>/O )
  );
  X_BUF   \memory_data_register_out<1>/OUTPUT/OFF/OMUX  (
    .I(memory_data_register_out_1_OBUF_833),
    .O(\memory_data_register_out<1>/O )
  );
  X_BUF   \memory_data_register_out<2>/OUTPUT/OFF/OMUX  (
    .I(memory_data_register_out_2_OBUF_838),
    .O(\memory_data_register_out<2>/O )
  );
  X_BUF   \memory_data_register_out<6>/OUTPUT/OFF/OMUX  (
    .I(memory_data_register_out_6_OBUF_852),
    .O(\memory_data_register_out<6>/O )
  );
  X_BUF   \memory_address_register_out<2>/OUTPUT/OFF/OMUX  (
    .I(memory_address_register_out_2_OBUF_0),
    .O(\memory_address_register_out<2>/O )
  );
  X_BUF   \memory_data_register_out<3>/OUTPUT/OFF/OMUX  (
    .I(memory_data_register_out_3_OBUF_840),
    .O(\memory_data_register_out<3>/O )
  );
  X_BUF   \memory_address_register_out<1>/OUTPUT/OFF/OMUX  (
    .I(memory_address_register_out_1_OBUF_0),
    .O(\memory_address_register_out<1>/O )
  );
  X_BUF   \memory_data_register_out<10>/OUTPUT/OFF/OMUX  (
    .I(memory_data_register_out_10_OBUF_866),
    .O(\memory_data_register_out<10>/O )
  );
  X_BUF   \memory_data_register_out<8>/OUTPUT/OFF/OMUX  (
    .I(memory_data_register_out_8_OBUF_859),
    .O(\memory_data_register_out<8>/O )
  );
  X_BUF   \memory_data_register_out<9>/OUTPUT/OFF/OMUX  (
    .I(memory_data_register_out_9_OBUF_861),
    .O(\memory_data_register_out<9>/O )
  );
  X_BUF   \memory_address_register_out<3>/OUTPUT/OFF/OMUX  (
    .I(memory_address_register_out_3_OBUF_0),
    .O(\memory_address_register_out<3>/O )
  );
  X_BUF   \memory_data_register_out<4>/OUTPUT/OFF/OMUX  (
    .I(memory_data_register_out_4_OBUF_845),
    .O(\memory_data_register_out<4>/O )
  );
  X_BUF   \memory_data_register_out<11>/OUTPUT/OFF/OMUX  (
    .I(memory_data_register_out_11_OBUF_868),
    .O(\memory_data_register_out<11>/O )
  );
  X_BUF   \register_ac_out<0>/OUTPUT/OFF/OMUX  (
    .I(register_ac_out_0_OBUF_830),
    .O(\register_ac_out<0>/O )
  );
  X_BUF   \memory_data_register_out<13>/OUTPUT/OFF/OMUX  (
    .I(memory_data_register_out_13_OBUF_875),
    .O(\memory_data_register_out<13>/O )
  );
  X_BUF   \memory_data_register_out<14>/OUTPUT/OFF/OMUX  (
    .I(memory_data_register_out_14_OBUF_880),
    .O(\memory_data_register_out<14>/O )
  );
  X_BUF   \register_ac_out<1>/OUTPUT/OFF/OMUX  (
    .I(register_ac_out_1_OBUF_832),
    .O(\register_ac_out<1>/O )
  );
  X_BUF   \register_ac_out<2>/OUTPUT/OFF/OMUX  (
    .I(register_ac_out_2_OBUF_837),
    .O(\register_ac_out<2>/O )
  );
  X_BUF   \memory_data_register_out<15>/OUTPUT/OFF/OMUX  (
    .I(memory_data_register_out_15_OBUF_882),
    .O(\memory_data_register_out<15>/O )
  );
  X_ZERO   NlwBlock_scomp_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_scomp_VCC (
    .O(VCC)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

