////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: scomp_translate.v
// /___/   /\     Timestamp: Fri Dec 31 17:20:02 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim scomp.ngd scomp_translate.v 
// Device	: 3s50pq208-5
// Input file	: scomp.ngd
// Output file	: C:\Users\LATITUDE\Documents\term5\computerArchitecture\Az.architecture\11\scomp\netgen\translate\scomp_translate.v
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
  wire \Madd_program_counter_addsub0000_cy[2] ;
  wire \Madd_program_counter_addsub0000_cy[4] ;
  wire \Madd_program_counter_addsub0000_cy[5] ;
  wire N0;
  wire N01;
  wire N02;
  wire N1;
  wire N10;
  wire N11;
  wire N12;
  wire N13;
  wire N15;
  wire N151;
  wire N17;
  wire N19;
  wire N2;
  wire N21;
  wire N23;
  wire N25;
  wire N27;
  wire N29;
  wire N3;
  wire N31;
  wire N33;
  wire N35;
  wire N37;
  wire N39;
  wire N4;
  wire N41;
  wire N411;
  wire N43;
  wire N48;
  wire N5;
  wire N50;
  wire N52;
  wire N53;
  wire N54;
  wire N55;
  wire N56;
  wire N57;
  wire N58;
  wire N59;
  wire N6;
  wire N8;
  wire clock_BUFGP;
  wire instruction_register_and0000;
  wire memory_address_register_out_0_OBUF_105;
  wire memory_address_register_out_1_OBUF_106;
  wire memory_address_register_out_2_OBUF_107;
  wire memory_address_register_out_3_OBUF_108;
  wire memory_address_register_out_4_OBUF_109;
  wire memory_address_register_out_5_OBUF_110;
  wire memory_address_register_out_6_OBUF_111;
  wire memory_address_register_out_7_OBUF_112;
  wire memory_data_register_out_0_OBUF_129;
  wire memory_data_register_out_10_OBUF_130;
  wire memory_data_register_out_11_OBUF_131;
  wire memory_data_register_out_12_OBUF_132;
  wire memory_data_register_out_13_OBUF_133;
  wire memory_data_register_out_14_OBUF_134;
  wire memory_data_register_out_15_OBUF_135;
  wire memory_data_register_out_1_OBUF_136;
  wire memory_data_register_out_2_OBUF_137;
  wire memory_data_register_out_3_OBUF_138;
  wire memory_data_register_out_4_OBUF_139;
  wire memory_data_register_out_5_OBUF_140;
  wire memory_data_register_out_6_OBUF_141;
  wire memory_data_register_out_7_OBUF_142;
  wire memory_data_register_out_8_OBUF_143;
  wire memory_data_register_out_9_OBUF_144;
  wire memory_write_out_OBUF_146;
  wire \program_counter_mux0000<0>12_156 ;
  wire \program_counter_mux0000<0>22_157 ;
  wire \program_counter_mux0000<0>5_158 ;
  wire \program_counter_mux0000<3>12_162 ;
  wire \program_counter_mux0000<3>22_163 ;
  wire \program_counter_mux0000<3>5_164 ;
  wire \program_counter_mux0000<5>10_167 ;
  wire \program_counter_mux0000<5>21_168 ;
  wire \program_counter_mux0000<5>8_169 ;
  wire register_ac_out_0_OBUF_228;
  wire register_ac_out_10_OBUF_229;
  wire register_ac_out_11_OBUF_230;
  wire register_ac_out_12_OBUF_231;
  wire register_ac_out_13_OBUF_232;
  wire register_ac_out_14_OBUF_233;
  wire register_ac_out_15_OBUF_234;
  wire register_ac_out_1_OBUF_235;
  wire register_ac_out_2_OBUF_236;
  wire register_ac_out_3_OBUF_237;
  wire register_ac_out_4_OBUF_238;
  wire register_ac_out_5_OBUF_239;
  wire register_ac_out_6_OBUF_240;
  wire register_ac_out_7_OBUF_241;
  wire register_ac_out_8_OBUF_242;
  wire register_ac_out_9_OBUF_243;
  wire reset_IBUF_245;
  wire reset_inv;
  wire state_FSM_FFd1_247;
  wire state_FSM_FFd10_248;
  wire state_FSM_FFd2_249;
  wire state_FSM_FFd3_250;
  wire \state_FSM_FFd3-In ;
  wire state_FSM_FFd4_252;
  wire \state_FSM_FFd4-In ;
  wire state_FSM_FFd5_254;
  wire \state_FSM_FFd5-In ;
  wire \state_FSM_FFd6-In ;
  wire state_FSM_FFd7_257;
  wire \state_FSM_FFd7-In ;
  wire state_FSM_FFd8_259;
  wire \state_FSM_FFd8-In ;
  wire \state_FSM_FFd8-In4_261 ;
  wire \state_FSM_FFd8-In9_262 ;
  wire state_FSM_FFd9_263;
  wire \register_ac_mux0000<15>_SW0/O ;
  wire \program_counter_mux0000<7>1_SW0/O ;
  wire \program_counter_mux0000<6>_SW0/O ;
  wire \state_FSM_FFd8-In4/O ;
  wire \program_counter_mux0000<4>_SW1/O ;
  wire \program_counter_mux0000<5>10/O ;
  wire \program_counter_mux0000<3>5/O ;
  wire \program_counter_mux0000<3>22/O ;
  wire \register_ac_mux0000<14>_SW0/O ;
  wire \register_ac_mux0000<13>_SW0/O ;
  wire \register_ac_mux0000<12>_SW0/O ;
  wire \register_ac_mux0000<11>_SW0/O ;
  wire \register_ac_mux0000<10>_SW0/O ;
  wire \register_ac_mux0000<9>_SW0/O ;
  wire \register_ac_mux0000<8>_SW0/O ;
  wire \register_ac_mux0000<7>_SW0/O ;
  wire \register_ac_mux0000<6>_SW0/O ;
  wire \register_ac_mux0000<5>_SW0/O ;
  wire \register_ac_mux0000<4>_SW0/O ;
  wire \register_ac_mux0000<3>_SW0/O ;
  wire \register_ac_mux0000<2>_SW0/O ;
  wire \register_ac_mux0000<1>_SW0/O ;
  wire \program_counter_mux0000<0>12/O ;
  wire \program_counter_mux0000<2>24_SW0/O ;
  wire \program_counter_mux0000<1>24_SW2/O ;
  wire \clock_BUFGP/IBUFG_2 ;
  wire GND;
  wire VCC;
  wire \NLW_Mram_ram_block_DOP[1]_UNCONNECTED ;
  wire \NLW_Mram_ram_block_DOP[0]_UNCONNECTED ;
  wire [14 : 0] Madd_register_ac_addsub0000_cy;
  wire [15 : 0] Madd_register_ac_addsub0000_lut;
  wire [15 : 0] instruction_register;
  wire [7 : 0] program_counter;
  wire [7 : 0] program_counter_mux0000;
  wire [15 : 0] register_ac_addsub0000;
  wire [15 : 0] register_ac_mux0000;
  X_ZERO   XST_GND (
    .O(N0)
  );
  X_ONE   XST_VCC (
    .O(N1)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_0 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(register_ac_mux0000[15]),
    .O(register_ac_out_0_OBUF_228),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_1 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(register_ac_mux0000[14]),
    .O(register_ac_out_1_OBUF_235),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_2 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(register_ac_mux0000[13]),
    .O(register_ac_out_2_OBUF_236),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_3 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(register_ac_mux0000[12]),
    .O(register_ac_out_3_OBUF_237),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_4 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(register_ac_mux0000[11]),
    .O(register_ac_out_4_OBUF_238),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_5 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(register_ac_mux0000[10]),
    .O(register_ac_out_5_OBUF_239),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_6 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(register_ac_mux0000[9]),
    .O(register_ac_out_6_OBUF_240),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_7 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(register_ac_mux0000[8]),
    .O(register_ac_out_7_OBUF_241),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_8 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(register_ac_mux0000[7]),
    .O(register_ac_out_8_OBUF_242),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_9 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(register_ac_mux0000[6]),
    .O(register_ac_out_9_OBUF_243),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_10 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(register_ac_mux0000[5]),
    .O(register_ac_out_10_OBUF_229),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_11 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(register_ac_mux0000[4]),
    .O(register_ac_out_11_OBUF_230),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_12 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(register_ac_mux0000[3]),
    .O(register_ac_out_12_OBUF_231),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_13 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(register_ac_mux0000[2]),
    .O(register_ac_out_13_OBUF_232),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_14 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(register_ac_mux0000[1]),
    .O(register_ac_out_14_OBUF_233),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  register_ac_15 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(register_ac_mux0000[0]),
    .O(register_ac_out_15_OBUF_234),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  program_counter_0 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(program_counter_mux0000[7]),
    .O(program_counter[0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  program_counter_1 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(program_counter_mux0000[6]),
    .O(program_counter[1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  program_counter_2 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(program_counter_mux0000[5]),
    .O(program_counter[2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  program_counter_3 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(program_counter_mux0000[4]),
    .O(program_counter[3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  program_counter_4 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(program_counter_mux0000[3]),
    .O(program_counter[4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  program_counter_5 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(program_counter_mux0000[2]),
    .O(program_counter[5]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  program_counter_6 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(program_counter_mux0000[1]),
    .O(program_counter[6]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  program_counter_7 (
    .CLK(clock_BUFGP),
    .CE(reset_inv),
    .I(program_counter_mux0000[0]),
    .O(program_counter[7]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_0 (
    .CLK(clock_BUFGP),
    .CE(instruction_register_and0000),
    .I(memory_data_register_out_0_OBUF_129),
    .O(instruction_register[0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_1 (
    .CLK(clock_BUFGP),
    .CE(instruction_register_and0000),
    .I(memory_data_register_out_1_OBUF_136),
    .O(instruction_register[1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_2 (
    .CLK(clock_BUFGP),
    .CE(instruction_register_and0000),
    .I(memory_data_register_out_2_OBUF_137),
    .O(instruction_register[2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_3 (
    .CLK(clock_BUFGP),
    .CE(instruction_register_and0000),
    .I(memory_data_register_out_3_OBUF_138),
    .O(instruction_register[3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_4 (
    .CLK(clock_BUFGP),
    .CE(instruction_register_and0000),
    .I(memory_data_register_out_4_OBUF_139),
    .O(instruction_register[4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_5 (
    .CLK(clock_BUFGP),
    .CE(instruction_register_and0000),
    .I(memory_data_register_out_5_OBUF_140),
    .O(instruction_register[5]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_6 (
    .CLK(clock_BUFGP),
    .CE(instruction_register_and0000),
    .I(memory_data_register_out_6_OBUF_141),
    .O(instruction_register[6]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_7 (
    .CLK(clock_BUFGP),
    .CE(instruction_register_and0000),
    .I(memory_data_register_out_7_OBUF_142),
    .O(instruction_register[7]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_8 (
    .CLK(clock_BUFGP),
    .CE(instruction_register_and0000),
    .I(memory_data_register_out_8_OBUF_143),
    .O(instruction_register[8]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_9 (
    .CLK(clock_BUFGP),
    .CE(instruction_register_and0000),
    .I(memory_data_register_out_9_OBUF_144),
    .O(instruction_register[9]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_10 (
    .CLK(clock_BUFGP),
    .CE(instruction_register_and0000),
    .I(memory_data_register_out_10_OBUF_130),
    .O(instruction_register[10]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_11 (
    .CLK(clock_BUFGP),
    .CE(instruction_register_and0000),
    .I(memory_data_register_out_11_OBUF_131),
    .O(instruction_register[11]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_12 (
    .CLK(clock_BUFGP),
    .CE(instruction_register_and0000),
    .I(memory_data_register_out_12_OBUF_132),
    .O(instruction_register[12]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_13 (
    .CLK(clock_BUFGP),
    .CE(instruction_register_and0000),
    .I(memory_data_register_out_13_OBUF_133),
    .O(instruction_register[13]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_14 (
    .CLK(clock_BUFGP),
    .CE(instruction_register_and0000),
    .I(memory_data_register_out_14_OBUF_134),
    .O(instruction_register[14]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  instruction_register_15 (
    .CLK(clock_BUFGP),
    .CE(instruction_register_and0000),
    .I(memory_data_register_out_15_OBUF_135),
    .O(instruction_register[15]),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_register_ac_addsub0000_lut<0>  (
    .ADR0(memory_data_register_out_0_OBUF_129),
    .ADR1(register_ac_out_0_OBUF_228),
    .O(Madd_register_ac_addsub0000_lut[0])
  );
  X_MUX2   \Madd_register_ac_addsub0000_cy<0>  (
    .IB(N0),
    .IA(register_ac_out_0_OBUF_228),
    .SEL(Madd_register_ac_addsub0000_lut[0]),
    .O(Madd_register_ac_addsub0000_cy[0])
  );
  X_XOR2   \Madd_register_ac_addsub0000_xor<0>  (
    .I0(N0),
    .I1(Madd_register_ac_addsub0000_lut[0]),
    .O(register_ac_addsub0000[0])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_register_ac_addsub0000_lut<1>  (
    .ADR0(memory_data_register_out_1_OBUF_136),
    .ADR1(register_ac_out_1_OBUF_235),
    .O(Madd_register_ac_addsub0000_lut[1])
  );
  X_MUX2   \Madd_register_ac_addsub0000_cy<1>  (
    .IB(Madd_register_ac_addsub0000_cy[0]),
    .IA(register_ac_out_1_OBUF_235),
    .SEL(Madd_register_ac_addsub0000_lut[1]),
    .O(Madd_register_ac_addsub0000_cy[1])
  );
  X_XOR2   \Madd_register_ac_addsub0000_xor<1>  (
    .I0(Madd_register_ac_addsub0000_cy[0]),
    .I1(Madd_register_ac_addsub0000_lut[1]),
    .O(register_ac_addsub0000[1])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_register_ac_addsub0000_lut<2>  (
    .ADR0(memory_data_register_out_2_OBUF_137),
    .ADR1(register_ac_out_2_OBUF_236),
    .O(Madd_register_ac_addsub0000_lut[2])
  );
  X_MUX2   \Madd_register_ac_addsub0000_cy<2>  (
    .IB(Madd_register_ac_addsub0000_cy[1]),
    .IA(register_ac_out_2_OBUF_236),
    .SEL(Madd_register_ac_addsub0000_lut[2]),
    .O(Madd_register_ac_addsub0000_cy[2])
  );
  X_XOR2   \Madd_register_ac_addsub0000_xor<2>  (
    .I0(Madd_register_ac_addsub0000_cy[1]),
    .I1(Madd_register_ac_addsub0000_lut[2]),
    .O(register_ac_addsub0000[2])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_register_ac_addsub0000_lut<3>  (
    .ADR0(memory_data_register_out_3_OBUF_138),
    .ADR1(register_ac_out_3_OBUF_237),
    .O(Madd_register_ac_addsub0000_lut[3])
  );
  X_MUX2   \Madd_register_ac_addsub0000_cy<3>  (
    .IB(Madd_register_ac_addsub0000_cy[2]),
    .IA(register_ac_out_3_OBUF_237),
    .SEL(Madd_register_ac_addsub0000_lut[3]),
    .O(Madd_register_ac_addsub0000_cy[3])
  );
  X_XOR2   \Madd_register_ac_addsub0000_xor<3>  (
    .I0(Madd_register_ac_addsub0000_cy[2]),
    .I1(Madd_register_ac_addsub0000_lut[3]),
    .O(register_ac_addsub0000[3])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_register_ac_addsub0000_lut<4>  (
    .ADR0(memory_data_register_out_4_OBUF_139),
    .ADR1(register_ac_out_4_OBUF_238),
    .O(Madd_register_ac_addsub0000_lut[4])
  );
  X_MUX2   \Madd_register_ac_addsub0000_cy<4>  (
    .IB(Madd_register_ac_addsub0000_cy[3]),
    .IA(register_ac_out_4_OBUF_238),
    .SEL(Madd_register_ac_addsub0000_lut[4]),
    .O(Madd_register_ac_addsub0000_cy[4])
  );
  X_XOR2   \Madd_register_ac_addsub0000_xor<4>  (
    .I0(Madd_register_ac_addsub0000_cy[3]),
    .I1(Madd_register_ac_addsub0000_lut[4]),
    .O(register_ac_addsub0000[4])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_register_ac_addsub0000_lut<5>  (
    .ADR0(memory_data_register_out_5_OBUF_140),
    .ADR1(register_ac_out_5_OBUF_239),
    .O(Madd_register_ac_addsub0000_lut[5])
  );
  X_MUX2   \Madd_register_ac_addsub0000_cy<5>  (
    .IB(Madd_register_ac_addsub0000_cy[4]),
    .IA(register_ac_out_5_OBUF_239),
    .SEL(Madd_register_ac_addsub0000_lut[5]),
    .O(Madd_register_ac_addsub0000_cy[5])
  );
  X_XOR2   \Madd_register_ac_addsub0000_xor<5>  (
    .I0(Madd_register_ac_addsub0000_cy[4]),
    .I1(Madd_register_ac_addsub0000_lut[5]),
    .O(register_ac_addsub0000[5])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_register_ac_addsub0000_lut<6>  (
    .ADR0(memory_data_register_out_6_OBUF_141),
    .ADR1(register_ac_out_6_OBUF_240),
    .O(Madd_register_ac_addsub0000_lut[6])
  );
  X_MUX2   \Madd_register_ac_addsub0000_cy<6>  (
    .IB(Madd_register_ac_addsub0000_cy[5]),
    .IA(register_ac_out_6_OBUF_240),
    .SEL(Madd_register_ac_addsub0000_lut[6]),
    .O(Madd_register_ac_addsub0000_cy[6])
  );
  X_XOR2   \Madd_register_ac_addsub0000_xor<6>  (
    .I0(Madd_register_ac_addsub0000_cy[5]),
    .I1(Madd_register_ac_addsub0000_lut[6]),
    .O(register_ac_addsub0000[6])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_register_ac_addsub0000_lut<7>  (
    .ADR0(memory_data_register_out_7_OBUF_142),
    .ADR1(register_ac_out_7_OBUF_241),
    .O(Madd_register_ac_addsub0000_lut[7])
  );
  X_MUX2   \Madd_register_ac_addsub0000_cy<7>  (
    .IB(Madd_register_ac_addsub0000_cy[6]),
    .IA(register_ac_out_7_OBUF_241),
    .SEL(Madd_register_ac_addsub0000_lut[7]),
    .O(Madd_register_ac_addsub0000_cy[7])
  );
  X_XOR2   \Madd_register_ac_addsub0000_xor<7>  (
    .I0(Madd_register_ac_addsub0000_cy[6]),
    .I1(Madd_register_ac_addsub0000_lut[7]),
    .O(register_ac_addsub0000[7])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_register_ac_addsub0000_lut<8>  (
    .ADR0(memory_data_register_out_8_OBUF_143),
    .ADR1(register_ac_out_8_OBUF_242),
    .O(Madd_register_ac_addsub0000_lut[8])
  );
  X_MUX2   \Madd_register_ac_addsub0000_cy<8>  (
    .IB(Madd_register_ac_addsub0000_cy[7]),
    .IA(register_ac_out_8_OBUF_242),
    .SEL(Madd_register_ac_addsub0000_lut[8]),
    .O(Madd_register_ac_addsub0000_cy[8])
  );
  X_XOR2   \Madd_register_ac_addsub0000_xor<8>  (
    .I0(Madd_register_ac_addsub0000_cy[7]),
    .I1(Madd_register_ac_addsub0000_lut[8]),
    .O(register_ac_addsub0000[8])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_register_ac_addsub0000_lut<9>  (
    .ADR0(memory_data_register_out_9_OBUF_144),
    .ADR1(register_ac_out_9_OBUF_243),
    .O(Madd_register_ac_addsub0000_lut[9])
  );
  X_MUX2   \Madd_register_ac_addsub0000_cy<9>  (
    .IB(Madd_register_ac_addsub0000_cy[8]),
    .IA(register_ac_out_9_OBUF_243),
    .SEL(Madd_register_ac_addsub0000_lut[9]),
    .O(Madd_register_ac_addsub0000_cy[9])
  );
  X_XOR2   \Madd_register_ac_addsub0000_xor<9>  (
    .I0(Madd_register_ac_addsub0000_cy[8]),
    .I1(Madd_register_ac_addsub0000_lut[9]),
    .O(register_ac_addsub0000[9])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_register_ac_addsub0000_lut<10>  (
    .ADR0(memory_data_register_out_10_OBUF_130),
    .ADR1(register_ac_out_10_OBUF_229),
    .O(Madd_register_ac_addsub0000_lut[10])
  );
  X_MUX2   \Madd_register_ac_addsub0000_cy<10>  (
    .IB(Madd_register_ac_addsub0000_cy[9]),
    .IA(register_ac_out_10_OBUF_229),
    .SEL(Madd_register_ac_addsub0000_lut[10]),
    .O(Madd_register_ac_addsub0000_cy[10])
  );
  X_XOR2   \Madd_register_ac_addsub0000_xor<10>  (
    .I0(Madd_register_ac_addsub0000_cy[9]),
    .I1(Madd_register_ac_addsub0000_lut[10]),
    .O(register_ac_addsub0000[10])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_register_ac_addsub0000_lut<11>  (
    .ADR0(memory_data_register_out_11_OBUF_131),
    .ADR1(register_ac_out_11_OBUF_230),
    .O(Madd_register_ac_addsub0000_lut[11])
  );
  X_MUX2   \Madd_register_ac_addsub0000_cy<11>  (
    .IB(Madd_register_ac_addsub0000_cy[10]),
    .IA(register_ac_out_11_OBUF_230),
    .SEL(Madd_register_ac_addsub0000_lut[11]),
    .O(Madd_register_ac_addsub0000_cy[11])
  );
  X_XOR2   \Madd_register_ac_addsub0000_xor<11>  (
    .I0(Madd_register_ac_addsub0000_cy[10]),
    .I1(Madd_register_ac_addsub0000_lut[11]),
    .O(register_ac_addsub0000[11])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_register_ac_addsub0000_lut<12>  (
    .ADR0(memory_data_register_out_12_OBUF_132),
    .ADR1(register_ac_out_12_OBUF_231),
    .O(Madd_register_ac_addsub0000_lut[12])
  );
  X_MUX2   \Madd_register_ac_addsub0000_cy<12>  (
    .IB(Madd_register_ac_addsub0000_cy[11]),
    .IA(register_ac_out_12_OBUF_231),
    .SEL(Madd_register_ac_addsub0000_lut[12]),
    .O(Madd_register_ac_addsub0000_cy[12])
  );
  X_XOR2   \Madd_register_ac_addsub0000_xor<12>  (
    .I0(Madd_register_ac_addsub0000_cy[11]),
    .I1(Madd_register_ac_addsub0000_lut[12]),
    .O(register_ac_addsub0000[12])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_register_ac_addsub0000_lut<13>  (
    .ADR0(register_ac_out_13_OBUF_232),
    .ADR1(memory_data_register_out_13_OBUF_133),
    .O(Madd_register_ac_addsub0000_lut[13])
  );
  X_MUX2   \Madd_register_ac_addsub0000_cy<13>  (
    .IB(Madd_register_ac_addsub0000_cy[12]),
    .IA(register_ac_out_13_OBUF_232),
    .SEL(Madd_register_ac_addsub0000_lut[13]),
    .O(Madd_register_ac_addsub0000_cy[13])
  );
  X_XOR2   \Madd_register_ac_addsub0000_xor<13>  (
    .I0(Madd_register_ac_addsub0000_cy[12]),
    .I1(Madd_register_ac_addsub0000_lut[13]),
    .O(register_ac_addsub0000[13])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_register_ac_addsub0000_lut<14>  (
    .ADR0(register_ac_out_14_OBUF_233),
    .ADR1(memory_data_register_out_14_OBUF_134),
    .O(Madd_register_ac_addsub0000_lut[14])
  );
  X_MUX2   \Madd_register_ac_addsub0000_cy<14>  (
    .IB(Madd_register_ac_addsub0000_cy[13]),
    .IA(register_ac_out_14_OBUF_233),
    .SEL(Madd_register_ac_addsub0000_lut[14]),
    .O(Madd_register_ac_addsub0000_cy[14])
  );
  X_XOR2   \Madd_register_ac_addsub0000_xor<14>  (
    .I0(Madd_register_ac_addsub0000_cy[13]),
    .I1(Madd_register_ac_addsub0000_lut[14]),
    .O(register_ac_addsub0000[14])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_register_ac_addsub0000_lut<15>  (
    .ADR0(register_ac_out_15_OBUF_234),
    .ADR1(memory_data_register_out_15_OBUF_135),
    .O(Madd_register_ac_addsub0000_lut[15])
  );
  X_XOR2   \Madd_register_ac_addsub0000_xor<15>  (
    .I0(Madd_register_ac_addsub0000_cy[14]),
    .I1(Madd_register_ac_addsub0000_lut[15]),
    .O(register_ac_addsub0000[15])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd3 (
    .CLK(clock_BUFGP),
    .RST(reset_IBUF_245),
    .I(\state_FSM_FFd3-In ),
    .O(state_FSM_FFd3_250),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd4 (
    .CLK(clock_BUFGP),
    .RST(reset_IBUF_245),
    .I(\state_FSM_FFd4-In ),
    .O(state_FSM_FFd4_252),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd5 (
    .CLK(clock_BUFGP),
    .RST(reset_IBUF_245),
    .I(\state_FSM_FFd5-In ),
    .O(state_FSM_FFd5_254),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd8 (
    .CLK(clock_BUFGP),
    .RST(reset_IBUF_245),
    .I(\state_FSM_FFd8-In ),
    .O(state_FSM_FFd8_259),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd6 (
    .CLK(clock_BUFGP),
    .RST(reset_IBUF_245),
    .I(\state_FSM_FFd6-In ),
    .O(memory_write_out_OBUF_146),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd7 (
    .CLK(clock_BUFGP),
    .RST(reset_IBUF_245),
    .I(\state_FSM_FFd7-In ),
    .O(state_FSM_FFd7_257),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  state_FSM_FFd10 (
    .CLK(clock_BUFGP),
    .I(N0),
    .SET(reset_IBUF_245),
    .O(state_FSM_FFd10_248),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd1 (
    .CLK(clock_BUFGP),
    .RST(reset_IBUF_245),
    .I(state_FSM_FFd3_250),
    .O(state_FSM_FFd1_247),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd2 (
    .CLK(clock_BUFGP),
    .RST(reset_IBUF_245),
    .I(memory_write_out_OBUF_146),
    .O(state_FSM_FFd2_249),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd9 (
    .CLK(clock_BUFGP),
    .RST(reset_IBUF_245),
    .I(state_FSM_FFd8_259),
    .O(state_FSM_FFd9_263),
    .CE(VCC),
    .SET(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  instruction_register_and00001 (
    .ADR0(reset_IBUF_245),
    .ADR1(state_FSM_FFd8_259),
    .O(instruction_register_and0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ))
  \state_FSM_FFd7-In1  (
    .ADR0(instruction_register[10]),
    .ADR1(instruction_register[8]),
    .ADR2(N57),
    .ADR3(instruction_register[9]),
    .O(\state_FSM_FFd7-In )
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
    .INIT ( 16'h0040 ))
  \state_FSM_FFd5-In1  (
    .ADR0(instruction_register[10]),
    .ADR1(instruction_register[9]),
    .ADR2(N5),
    .ADR3(instruction_register[8]),
    .O(\state_FSM_FFd5-In )
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
  \state_FSM_FFd3-In2  (
    .ADR0(instruction_register[8]),
    .ADR1(instruction_register[10]),
    .ADR2(N5),
    .ADR3(instruction_register[9]),
    .O(\state_FSM_FFd3-In )
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \state_FSM_FFd3-In1_SW0  (
    .ADR0(instruction_register[13]),
    .ADR1(instruction_register[12]),
    .ADR2(instruction_register[11]),
    .O(N02)
  );
  X_LUT4 #(
    .INIT ( 16'hCC80 ))
  \program_counter_mux0000<7>_SW0  (
    .ADR0(state_FSM_FFd3_250),
    .ADR1(instruction_register[0]),
    .ADR2(register_ac_out_15_OBUF_234),
    .ADR3(state_FSM_FFd4_252),
    .O(N2)
  );
  X_LUT4 #(
    .INIT ( 16'hFEF4 ))
  \program_counter_mux0000<7>  (
    .ADR0(program_counter[0]),
    .ADR1(state_FSM_FFd8_259),
    .ADR2(N2),
    .ADR3(N15),
    .O(program_counter_mux0000[7])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \memory_address_register<7>1  (
    .ADR0(instruction_register[7]),
    .ADR1(program_counter[7]),
    .ADR2(N3),
    .ADR3(N58),
    .O(memory_address_register_out_7_OBUF_112)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \memory_address_register<6>1  (
    .ADR0(instruction_register[6]),
    .ADR1(program_counter[6]),
    .ADR2(N54),
    .ADR3(N01),
    .O(memory_address_register_out_6_OBUF_111)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \memory_address_register<5>1  (
    .ADR0(instruction_register[5]),
    .ADR1(program_counter[5]),
    .ADR2(N3),
    .ADR3(N01),
    .O(memory_address_register_out_5_OBUF_110)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \memory_address_register<4>1  (
    .ADR0(instruction_register[4]),
    .ADR1(program_counter[4]),
    .ADR2(N3),
    .ADR3(N01),
    .O(memory_address_register_out_4_OBUF_109)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \memory_address_register<3>1  (
    .ADR0(instruction_register[3]),
    .ADR1(program_counter[3]),
    .ADR2(N3),
    .ADR3(N01),
    .O(memory_address_register_out_3_OBUF_108)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \memory_address_register<2>1  (
    .ADR0(instruction_register[2]),
    .ADR1(program_counter[2]),
    .ADR2(N3),
    .ADR3(N01),
    .O(memory_address_register_out_2_OBUF_107)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \memory_address_register<1>1  (
    .ADR0(instruction_register[1]),
    .ADR1(program_counter[1]),
    .ADR2(N3),
    .ADR3(N01),
    .O(memory_address_register_out_1_OBUF_106)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \memory_address_register<0>2  (
    .ADR0(instruction_register[0]),
    .ADR1(program_counter[0]),
    .ADR2(N3),
    .ADR3(N01),
    .O(memory_address_register_out_0_OBUF_105)
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \memory_address_register<0>1_SW0  (
    .ADR0(state_FSM_FFd2_249),
    .ADR1(state_FSM_FFd1_247),
    .ADR2(state_FSM_FFd7_257),
    .O(N41)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \register_ac_mux0000<15>  (
    .ADR0(register_ac_addsub0000[0]),
    .ADR1(state_FSM_FFd7_257),
    .ADR2(N6),
    .O(register_ac_mux0000[15])
  );
  X_LUT4 #(
    .INIT ( 16'h2227 ))
  \program_counter_mux0000<7>1  (
    .ADR0(state_FSM_FFd3_250),
    .ADR1(register_ac_out_15_OBUF_234),
    .ADR2(state_FSM_FFd4_252),
    .ADR3(N8),
    .O(N15)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \program_counter_mux0000<6>  (
    .ADR0(instruction_register[1]),
    .ADR1(N11),
    .ADR2(N10),
    .O(program_counter_mux0000[6])
  );
  X_LUT4 #(
    .INIT ( 16'hFEEE ))
  \state_FSM_FFd8-In9  (
    .ADR0(instruction_register[11]),
    .ADR1(instruction_register[14]),
    .ADR2(instruction_register[10]),
    .ADR3(\state_FSM_FFd8-In4_261 ),
    .O(\state_FSM_FFd8-In9_262 )
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \program_counter_mux0000<4>_SW0  (
    .ADR0(instruction_register[3]),
    .ADR1(state_FSM_FFd8_259),
    .ADR2(\Madd_program_counter_addsub0000_cy[2] ),
    .ADR3(N56),
    .O(N12)
  );
  X_LUT4 #(
    .INIT ( 16'hEEE4 ))
  \program_counter_mux0000<4>  (
    .ADR0(program_counter[3]),
    .ADR1(N12),
    .ADR2(N13),
    .ADR3(N15),
    .O(program_counter_mux0000[4])
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ))
  \program_counter_mux0000<5>8  (
    .ADR0(program_counter[2]),
    .ADR1(program_counter[1]),
    .ADR2(state_FSM_FFd8_259),
    .ADR3(program_counter[0]),
    .O(\program_counter_mux0000<5>8_169 )
  );
  X_LUT3 #(
    .INIT ( 8'h2A ))
  \program_counter_mux0000<5>21  (
    .ADR0(state_FSM_FFd8_259),
    .ADR1(program_counter[0]),
    .ADR2(program_counter[1]),
    .O(\program_counter_mux0000<5>21_168 )
  );
  X_LUT4 #(
    .INIT ( 16'hFAF8 ))
  \program_counter_mux0000<5>33  (
    .ADR0(program_counter[2]),
    .ADR1(\program_counter_mux0000<5>21_168 ),
    .ADR2(\program_counter_mux0000<5>10_167 ),
    .ADR3(N15),
    .O(program_counter_mux0000[5])
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \program_counter_mux0000<3>12  (
    .ADR0(instruction_register[4]),
    .ADR1(\Madd_program_counter_addsub0000_cy[2] ),
    .ADR2(\program_counter_mux0000<3>5_164 ),
    .ADR3(N11),
    .O(\program_counter_mux0000<3>12_162 )
  );
  X_LUT4 #(
    .INIT ( 16'hFAF8 ))
  \program_counter_mux0000<3>34  (
    .ADR0(program_counter[4]),
    .ADR1(\program_counter_mux0000<3>22_163 ),
    .ADR2(\program_counter_mux0000<3>12_162 ),
    .ADR3(N15),
    .O(program_counter_mux0000[3])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \register_ac_mux0000<14>  (
    .ADR0(register_ac_addsub0000[1]),
    .ADR1(state_FSM_FFd7_257),
    .ADR2(N151),
    .O(register_ac_mux0000[14])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \register_ac_mux0000<13>  (
    .ADR0(register_ac_addsub0000[2]),
    .ADR1(state_FSM_FFd7_257),
    .ADR2(N17),
    .O(register_ac_mux0000[13])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \register_ac_mux0000<12>  (
    .ADR0(register_ac_addsub0000[3]),
    .ADR1(state_FSM_FFd7_257),
    .ADR2(N19),
    .O(register_ac_mux0000[12])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \register_ac_mux0000<11>  (
    .ADR0(register_ac_addsub0000[4]),
    .ADR1(state_FSM_FFd7_257),
    .ADR2(N21),
    .O(register_ac_mux0000[11])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \register_ac_mux0000<10>  (
    .ADR0(register_ac_addsub0000[5]),
    .ADR1(state_FSM_FFd7_257),
    .ADR2(N23),
    .O(register_ac_mux0000[10])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \register_ac_mux0000<9>  (
    .ADR0(register_ac_addsub0000[6]),
    .ADR1(state_FSM_FFd7_257),
    .ADR2(N25),
    .O(register_ac_mux0000[9])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \register_ac_mux0000<8>  (
    .ADR0(register_ac_addsub0000[7]),
    .ADR1(state_FSM_FFd7_257),
    .ADR2(N27),
    .O(register_ac_mux0000[8])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \register_ac_mux0000<7>  (
    .ADR0(register_ac_addsub0000[8]),
    .ADR1(state_FSM_FFd7_257),
    .ADR2(N29),
    .O(register_ac_mux0000[7])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \register_ac_mux0000<6>  (
    .ADR0(register_ac_addsub0000[9]),
    .ADR1(state_FSM_FFd7_257),
    .ADR2(N31),
    .O(register_ac_mux0000[6])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \register_ac_mux0000<5>  (
    .ADR0(register_ac_addsub0000[10]),
    .ADR1(state_FSM_FFd7_257),
    .ADR2(N33),
    .O(register_ac_mux0000[5])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \register_ac_mux0000<4>  (
    .ADR0(state_FSM_FFd7_257),
    .ADR1(register_ac_addsub0000[11]),
    .ADR2(N35),
    .O(register_ac_mux0000[4])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \register_ac_mux0000<3>  (
    .ADR0(state_FSM_FFd7_257),
    .ADR1(register_ac_addsub0000[12]),
    .ADR2(N37),
    .O(register_ac_mux0000[3])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \register_ac_mux0000<2>  (
    .ADR0(state_FSM_FFd7_257),
    .ADR1(register_ac_addsub0000[13]),
    .ADR2(N39),
    .O(register_ac_mux0000[2])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \register_ac_mux0000<1>  (
    .ADR0(state_FSM_FFd7_257),
    .ADR1(register_ac_addsub0000[14]),
    .ADR2(N411),
    .O(register_ac_mux0000[1])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<0>_SW0  (
    .ADR0(memory_data_register_out_15_OBUF_135),
    .ADR1(register_ac_out_15_OBUF_234),
    .ADR2(state_FSM_FFd5_254),
    .ADR3(N55),
    .O(N43)
  );
  X_LUT3 #(
    .INIT ( 8'hEC ))
  \register_ac_mux0000<0>  (
    .ADR0(state_FSM_FFd7_257),
    .ADR1(N43),
    .ADR2(register_ac_addsub0000[15]),
    .O(register_ac_mux0000[0])
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \Madd_program_counter_addsub0000_cy<4>11  (
    .ADR0(program_counter[4]),
    .ADR1(program_counter[3]),
    .ADR2(\Madd_program_counter_addsub0000_cy[2] ),
    .O(\Madd_program_counter_addsub0000_cy[4] )
  );
  X_LUT3 #(
    .INIT ( 8'h40 ))
  \program_counter_mux0000<0>5  (
    .ADR0(program_counter[7]),
    .ADR1(program_counter[6]),
    .ADR2(state_FSM_FFd8_259),
    .O(\program_counter_mux0000<0>5_158 )
  );
  X_LUT3 #(
    .INIT ( 8'h2A ))
  \program_counter_mux0000<0>22  (
    .ADR0(state_FSM_FFd8_259),
    .ADR1(program_counter[6]),
    .ADR2(\Madd_program_counter_addsub0000_cy[5] ),
    .O(\program_counter_mux0000<0>22_157 )
  );
  X_LUT4 #(
    .INIT ( 16'hFAF8 ))
  \program_counter_mux0000<0>34  (
    .ADR0(program_counter[7]),
    .ADR1(N15),
    .ADR2(\program_counter_mux0000<0>12_156 ),
    .ADR3(\program_counter_mux0000<0>22_157 ),
    .O(program_counter_mux0000[0])
  );
  X_BUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_245)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \Madd_program_counter_addsub0000_cy<5>11  (
    .ADR0(program_counter[5]),
    .ADR1(program_counter[4]),
    .ADR2(program_counter[3]),
    .ADR3(N59),
    .O(\Madd_program_counter_addsub0000_cy[5] )
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \program_counter_mux0000<2>24  (
    .ADR0(instruction_register[5]),
    .ADR1(N11),
    .ADR2(N48),
    .O(program_counter_mux0000[2])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \program_counter_mux0000<1>24  (
    .ADR0(instruction_register[6]),
    .ADR1(N11),
    .ADR2(N50),
    .O(program_counter_mux0000[1])
  );
  X_INV   reset_inv1_INV_0 (
    .I(reset_IBUF_245),
    .O(reset_inv)
  );
  X_MUX2   \state_FSM_FFd8-In41  (
    .IA(N52),
    .IB(N53),
    .SEL(state_FSM_FFd9_263),
    .O(\state_FSM_FFd8-In )
  );
  X_LUT3 #(
    .INIT ( 8'h01 ))
  \state_FSM_FFd8-In41_F  (
    .ADR0(memory_write_out_OBUF_146),
    .ADR1(state_FSM_FFd8_259),
    .ADR2(state_FSM_FFd3_250),
    .O(N52)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \state_FSM_FFd8-In41_G  (
    .ADR0(instruction_register[13]),
    .ADR1(instruction_register[12]),
    .ADR2(instruction_register[15]),
    .ADR3(\state_FSM_FFd8-In9_262 ),
    .O(N53)
  );
  X_RAMB16_S18 #(
    .WRITE_MODE ( "READ_FIRST" ),
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
    .INIT ( 18'h00000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL ( 18'h00000 ))
  Mram_ram_block (
    .CLK(clock_BUFGP),
    .EN(N1),
    .WE(memory_write_out_OBUF_146),
    .SSR(N0),
    .DIP({N0, N0}),
    .ADDR({N0, N0, memory_address_register_out_7_OBUF_112, memory_address_register_out_6_OBUF_111, memory_address_register_out_5_OBUF_110, 
memory_address_register_out_4_OBUF_109, memory_address_register_out_3_OBUF_108, memory_address_register_out_2_OBUF_107, 
memory_address_register_out_1_OBUF_106, memory_address_register_out_0_OBUF_105}),
    .DI({register_ac_out_15_OBUF_234, register_ac_out_14_OBUF_233, register_ac_out_13_OBUF_232, register_ac_out_12_OBUF_231, 
register_ac_out_11_OBUF_230, register_ac_out_10_OBUF_229, register_ac_out_9_OBUF_243, register_ac_out_8_OBUF_242, register_ac_out_7_OBUF_241, 
register_ac_out_6_OBUF_240, register_ac_out_5_OBUF_239, register_ac_out_4_OBUF_238, register_ac_out_3_OBUF_237, register_ac_out_2_OBUF_236, 
register_ac_out_1_OBUF_235, register_ac_out_0_OBUF_228}),
    .DO({memory_data_register_out_15_OBUF_135, memory_data_register_out_14_OBUF_134, memory_data_register_out_13_OBUF_133, 
memory_data_register_out_12_OBUF_132, memory_data_register_out_11_OBUF_131, memory_data_register_out_10_OBUF_130, memory_data_register_out_9_OBUF_144
, memory_data_register_out_8_OBUF_143, memory_data_register_out_7_OBUF_142, memory_data_register_out_6_OBUF_141, memory_data_register_out_5_OBUF_140, 
memory_data_register_out_4_OBUF_139, memory_data_register_out_3_OBUF_138, memory_data_register_out_2_OBUF_137, memory_data_register_out_1_OBUF_136, 
memory_data_register_out_0_OBUF_129}),
    .DOP({\NLW_Mram_ram_block_DOP[1]_UNCONNECTED , \NLW_Mram_ram_block_DOP[0]_UNCONNECTED })
  );
  X_BUF   \memory_address_register<0>21/LUT3_D_BUF  (
    .I(N3),
    .O(N54)
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \memory_address_register<0>21  (
    .ADR0(state_FSM_FFd9_263),
    .ADR1(state_FSM_FFd4_252),
    .ADR2(memory_write_out_OBUF_146),
    .O(N3)
  );
  X_BUF   \register_ac_mux0000<0>11/LUT3_D_BUF  (
    .I(N4),
    .O(N55)
  );
  X_LUT3 #(
    .INIT ( 8'h01 ))
  \register_ac_mux0000<0>11  (
    .ADR0(state_FSM_FFd10_248),
    .ADR1(state_FSM_FFd7_257),
    .ADR2(state_FSM_FFd5_254),
    .O(N4)
  );
  X_BUF   \program_counter_mux0000<0>11/LUT3_D_BUF  (
    .I(N11),
    .O(N56)
  );
  X_LUT3 #(
    .INIT ( 8'hEA ))
  \program_counter_mux0000<0>11  (
    .ADR0(state_FSM_FFd4_252),
    .ADR1(state_FSM_FFd3_250),
    .ADR2(register_ac_out_15_OBUF_234),
    .O(N11)
  );
  X_BUF   \state_FSM_FFd3-In1/LUT4_D_BUF  (
    .I(N5),
    .O(N57)
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ))
  \state_FSM_FFd3-In1  (
    .ADR0(instruction_register[15]),
    .ADR1(instruction_register[14]),
    .ADR2(state_FSM_FFd9_263),
    .ADR3(N02),
    .O(N5)
  );
  X_BUF   \memory_address_register<0>1/LUT4_D_BUF  (
    .I(N01),
    .O(N58)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \memory_address_register<0>1  (
    .ADR0(state_FSM_FFd3_250),
    .ADR1(state_FSM_FFd8_259),
    .ADR2(state_FSM_FFd5_254),
    .ADR3(N41),
    .O(N01)
  );
  X_BUF   \register_ac_mux0000<15>_SW0/LUT4_L_BUF  (
    .I(\register_ac_mux0000<15>_SW0/O ),
    .O(N6)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<15>_SW0  (
    .ADR0(memory_data_register_out_0_OBUF_129),
    .ADR1(register_ac_out_0_OBUF_228),
    .ADR2(state_FSM_FFd5_254),
    .ADR3(N4),
    .O(\register_ac_mux0000<15>_SW0/O )
  );
  X_BUF   \program_counter_mux0000<7>1_SW0/LUT2_L_BUF  (
    .I(\program_counter_mux0000<7>1_SW0/O ),
    .O(N8)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \program_counter_mux0000<7>1_SW0  (
    .ADR0(state_FSM_FFd10_248),
    .ADR1(state_FSM_FFd8_259),
    .O(\program_counter_mux0000<7>1_SW0/O )
  );
  X_BUF   \program_counter_mux0000<6>_SW0/LUT4_L_BUF  (
    .I(\program_counter_mux0000<6>_SW0/O ),
    .O(N10)
  );
  X_LUT4 #(
    .INIT ( 16'hEA60 ))
  \program_counter_mux0000<6>_SW0  (
    .ADR0(program_counter[1]),
    .ADR1(program_counter[0]),
    .ADR2(state_FSM_FFd8_259),
    .ADR3(N15),
    .O(\program_counter_mux0000<6>_SW0/O )
  );
  X_BUF   \state_FSM_FFd8-In4/LUT2_L_BUF  (
    .I(\state_FSM_FFd8-In4/O ),
    .O(\state_FSM_FFd8-In4_261 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \state_FSM_FFd8-In4  (
    .ADR0(instruction_register[8]),
    .ADR1(instruction_register[9]),
    .O(\state_FSM_FFd8-In4/O )
  );
  X_BUF   \program_counter_mux0000<4>_SW1/LUT4_L_BUF  (
    .I(\program_counter_mux0000<4>_SW1/O ),
    .O(N13)
  );
  X_LUT4 #(
    .INIT ( 16'hAE0C ))
  \program_counter_mux0000<4>_SW1  (
    .ADR0(instruction_register[3]),
    .ADR1(state_FSM_FFd8_259),
    .ADR2(\Madd_program_counter_addsub0000_cy[2] ),
    .ADR3(N11),
    .O(\program_counter_mux0000<4>_SW1/O )
  );
  X_BUF   \program_counter_mux0000<5>10/LUT3_L_BUF  (
    .I(\program_counter_mux0000<5>10/O ),
    .O(\program_counter_mux0000<5>10_167 )
  );
  X_LUT3 #(
    .INIT ( 8'hEC ))
  \program_counter_mux0000<5>10  (
    .ADR0(instruction_register[2]),
    .ADR1(\program_counter_mux0000<5>8_169 ),
    .ADR2(N11),
    .O(\program_counter_mux0000<5>10/O )
  );
  X_BUF   \program_counter_mux0000<3>5/LUT3_L_BUF  (
    .I(\program_counter_mux0000<3>5/O ),
    .O(\program_counter_mux0000<3>5_164 )
  );
  X_LUT3 #(
    .INIT ( 8'h08 ))
  \program_counter_mux0000<3>5  (
    .ADR0(program_counter[3]),
    .ADR1(state_FSM_FFd8_259),
    .ADR2(program_counter[4]),
    .O(\program_counter_mux0000<3>5/O )
  );
  X_BUF   \program_counter_mux0000<3>22/LUT3_L_BUF  (
    .I(\program_counter_mux0000<3>22/O ),
    .O(\program_counter_mux0000<3>22_163 )
  );
  X_LUT3 #(
    .INIT ( 8'h4C ))
  \program_counter_mux0000<3>22  (
    .ADR0(program_counter[3]),
    .ADR1(state_FSM_FFd8_259),
    .ADR2(\Madd_program_counter_addsub0000_cy[2] ),
    .O(\program_counter_mux0000<3>22/O )
  );
  X_BUF   \register_ac_mux0000<14>_SW0/LUT4_L_BUF  (
    .I(\register_ac_mux0000<14>_SW0/O ),
    .O(N151)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<14>_SW0  (
    .ADR0(memory_data_register_out_1_OBUF_136),
    .ADR1(register_ac_out_1_OBUF_235),
    .ADR2(state_FSM_FFd5_254),
    .ADR3(N4),
    .O(\register_ac_mux0000<14>_SW0/O )
  );
  X_BUF   \register_ac_mux0000<13>_SW0/LUT4_L_BUF  (
    .I(\register_ac_mux0000<13>_SW0/O ),
    .O(N17)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<13>_SW0  (
    .ADR0(memory_data_register_out_2_OBUF_137),
    .ADR1(register_ac_out_2_OBUF_236),
    .ADR2(state_FSM_FFd5_254),
    .ADR3(N4),
    .O(\register_ac_mux0000<13>_SW0/O )
  );
  X_BUF   \register_ac_mux0000<12>_SW0/LUT4_L_BUF  (
    .I(\register_ac_mux0000<12>_SW0/O ),
    .O(N19)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<12>_SW0  (
    .ADR0(memory_data_register_out_3_OBUF_138),
    .ADR1(register_ac_out_3_OBUF_237),
    .ADR2(state_FSM_FFd5_254),
    .ADR3(N4),
    .O(\register_ac_mux0000<12>_SW0/O )
  );
  X_BUF   \register_ac_mux0000<11>_SW0/LUT4_L_BUF  (
    .I(\register_ac_mux0000<11>_SW0/O ),
    .O(N21)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<11>_SW0  (
    .ADR0(memory_data_register_out_4_OBUF_139),
    .ADR1(register_ac_out_4_OBUF_238),
    .ADR2(state_FSM_FFd5_254),
    .ADR3(N4),
    .O(\register_ac_mux0000<11>_SW0/O )
  );
  X_BUF   \register_ac_mux0000<10>_SW0/LUT4_L_BUF  (
    .I(\register_ac_mux0000<10>_SW0/O ),
    .O(N23)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<10>_SW0  (
    .ADR0(memory_data_register_out_5_OBUF_140),
    .ADR1(register_ac_out_5_OBUF_239),
    .ADR2(state_FSM_FFd5_254),
    .ADR3(N4),
    .O(\register_ac_mux0000<10>_SW0/O )
  );
  X_BUF   \register_ac_mux0000<9>_SW0/LUT4_L_BUF  (
    .I(\register_ac_mux0000<9>_SW0/O ),
    .O(N25)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<9>_SW0  (
    .ADR0(memory_data_register_out_6_OBUF_141),
    .ADR1(register_ac_out_6_OBUF_240),
    .ADR2(state_FSM_FFd5_254),
    .ADR3(N4),
    .O(\register_ac_mux0000<9>_SW0/O )
  );
  X_BUF   \register_ac_mux0000<8>_SW0/LUT4_L_BUF  (
    .I(\register_ac_mux0000<8>_SW0/O ),
    .O(N27)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<8>_SW0  (
    .ADR0(memory_data_register_out_7_OBUF_142),
    .ADR1(register_ac_out_7_OBUF_241),
    .ADR2(state_FSM_FFd5_254),
    .ADR3(N4),
    .O(\register_ac_mux0000<8>_SW0/O )
  );
  X_BUF   \register_ac_mux0000<7>_SW0/LUT4_L_BUF  (
    .I(\register_ac_mux0000<7>_SW0/O ),
    .O(N29)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<7>_SW0  (
    .ADR0(memory_data_register_out_8_OBUF_143),
    .ADR1(register_ac_out_8_OBUF_242),
    .ADR2(state_FSM_FFd5_254),
    .ADR3(N4),
    .O(\register_ac_mux0000<7>_SW0/O )
  );
  X_BUF   \register_ac_mux0000<6>_SW0/LUT4_L_BUF  (
    .I(\register_ac_mux0000<6>_SW0/O ),
    .O(N31)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<6>_SW0  (
    .ADR0(memory_data_register_out_9_OBUF_144),
    .ADR1(register_ac_out_9_OBUF_243),
    .ADR2(state_FSM_FFd5_254),
    .ADR3(N4),
    .O(\register_ac_mux0000<6>_SW0/O )
  );
  X_BUF   \register_ac_mux0000<5>_SW0/LUT4_L_BUF  (
    .I(\register_ac_mux0000<5>_SW0/O ),
    .O(N33)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<5>_SW0  (
    .ADR0(memory_data_register_out_10_OBUF_130),
    .ADR1(register_ac_out_10_OBUF_229),
    .ADR2(state_FSM_FFd5_254),
    .ADR3(N4),
    .O(\register_ac_mux0000<5>_SW0/O )
  );
  X_BUF   \register_ac_mux0000<4>_SW0/LUT4_L_BUF  (
    .I(\register_ac_mux0000<4>_SW0/O ),
    .O(N35)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<4>_SW0  (
    .ADR0(memory_data_register_out_11_OBUF_131),
    .ADR1(register_ac_out_11_OBUF_230),
    .ADR2(state_FSM_FFd5_254),
    .ADR3(N4),
    .O(\register_ac_mux0000<4>_SW0/O )
  );
  X_BUF   \register_ac_mux0000<3>_SW0/LUT4_L_BUF  (
    .I(\register_ac_mux0000<3>_SW0/O ),
    .O(N37)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<3>_SW0  (
    .ADR0(memory_data_register_out_12_OBUF_132),
    .ADR1(register_ac_out_12_OBUF_231),
    .ADR2(state_FSM_FFd5_254),
    .ADR3(N4),
    .O(\register_ac_mux0000<3>_SW0/O )
  );
  X_BUF   \register_ac_mux0000<2>_SW0/LUT4_L_BUF  (
    .I(\register_ac_mux0000<2>_SW0/O ),
    .O(N39)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<2>_SW0  (
    .ADR0(memory_data_register_out_13_OBUF_133),
    .ADR1(register_ac_out_13_OBUF_232),
    .ADR2(state_FSM_FFd5_254),
    .ADR3(N4),
    .O(\register_ac_mux0000<2>_SW0/O )
  );
  X_BUF   \register_ac_mux0000<1>_SW0/LUT4_L_BUF  (
    .I(\register_ac_mux0000<1>_SW0/O ),
    .O(N411)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \register_ac_mux0000<1>_SW0  (
    .ADR0(memory_data_register_out_14_OBUF_134),
    .ADR1(register_ac_out_14_OBUF_233),
    .ADR2(state_FSM_FFd5_254),
    .ADR3(N4),
    .O(\register_ac_mux0000<1>_SW0/O )
  );
  X_BUF   \Madd_program_counter_addsub0000_cy<2>11/LUT3_D_BUF  (
    .I(\Madd_program_counter_addsub0000_cy[2] ),
    .O(N59)
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \Madd_program_counter_addsub0000_cy<2>11  (
    .ADR0(program_counter[2]),
    .ADR1(program_counter[1]),
    .ADR2(program_counter[0]),
    .O(\Madd_program_counter_addsub0000_cy[2] )
  );
  X_BUF   \program_counter_mux0000<0>12/LUT4_L_BUF  (
    .I(\program_counter_mux0000<0>12/O ),
    .O(\program_counter_mux0000<0>12_156 )
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \program_counter_mux0000<0>12  (
    .ADR0(instruction_register[7]),
    .ADR1(\program_counter_mux0000<0>5_158 ),
    .ADR2(N11),
    .ADR3(\Madd_program_counter_addsub0000_cy[5] ),
    .O(\program_counter_mux0000<0>12/O )
  );
  X_BUF   \program_counter_mux0000<2>24_SW0/LUT4_L_BUF  (
    .I(\program_counter_mux0000<2>24_SW0/O ),
    .O(N48)
  );
  X_LUT4 #(
    .INIT ( 16'hEA60 ))
  \program_counter_mux0000<2>24_SW0  (
    .ADR0(program_counter[5]),
    .ADR1(\Madd_program_counter_addsub0000_cy[4] ),
    .ADR2(state_FSM_FFd8_259),
    .ADR3(N15),
    .O(\program_counter_mux0000<2>24_SW0/O )
  );
  X_BUF   \program_counter_mux0000<1>24_SW2/LUT4_L_BUF  (
    .I(\program_counter_mux0000<1>24_SW2/O ),
    .O(N50)
  );
  X_LUT4 #(
    .INIT ( 16'hEA60 ))
  \program_counter_mux0000<1>24_SW2  (
    .ADR0(program_counter[6]),
    .ADR1(\Madd_program_counter_addsub0000_cy[5] ),
    .ADR2(state_FSM_FFd8_259),
    .ADR3(N15),
    .O(\program_counter_mux0000<1>24_SW2/O )
  );
  X_IPAD   clock_272 (
    .PAD(clock)
  );
  X_OPAD   \memory_address_register_out<0>  (
    .PAD(memory_address_register_out[0])
  );
  X_OPAD   \memory_address_register_out<1>  (
    .PAD(memory_address_register_out[1])
  );
  X_OPAD   \memory_address_register_out<2>  (
    .PAD(memory_address_register_out[2])
  );
  X_OPAD   \memory_address_register_out<3>  (
    .PAD(memory_address_register_out[3])
  );
  X_OPAD   \memory_address_register_out<4>  (
    .PAD(memory_address_register_out[4])
  );
  X_OPAD   \memory_address_register_out<5>  (
    .PAD(memory_address_register_out[5])
  );
  X_OPAD   \memory_address_register_out<6>  (
    .PAD(memory_address_register_out[6])
  );
  X_OPAD   \memory_address_register_out<7>  (
    .PAD(memory_address_register_out[7])
  );
  X_OPAD   \memory_data_register_out<0>  (
    .PAD(memory_data_register_out[0])
  );
  X_OPAD   \memory_data_register_out<10>  (
    .PAD(memory_data_register_out[10])
  );
  X_OPAD   \memory_data_register_out<11>  (
    .PAD(memory_data_register_out[11])
  );
  X_OPAD   \memory_data_register_out<12>  (
    .PAD(memory_data_register_out[12])
  );
  X_OPAD   \memory_data_register_out<13>  (
    .PAD(memory_data_register_out[13])
  );
  X_OPAD   \memory_data_register_out<14>  (
    .PAD(memory_data_register_out[14])
  );
  X_OPAD   \memory_data_register_out<15>  (
    .PAD(memory_data_register_out[15])
  );
  X_OPAD   \memory_data_register_out<1>  (
    .PAD(memory_data_register_out[1])
  );
  X_OPAD   \memory_data_register_out<2>  (
    .PAD(memory_data_register_out[2])
  );
  X_OPAD   \memory_data_register_out<3>  (
    .PAD(memory_data_register_out[3])
  );
  X_OPAD   \memory_data_register_out<4>  (
    .PAD(memory_data_register_out[4])
  );
  X_OPAD   \memory_data_register_out<5>  (
    .PAD(memory_data_register_out[5])
  );
  X_OPAD   \memory_data_register_out<6>  (
    .PAD(memory_data_register_out[6])
  );
  X_OPAD   \memory_data_register_out<7>  (
    .PAD(memory_data_register_out[7])
  );
  X_OPAD   \memory_data_register_out<8>  (
    .PAD(memory_data_register_out[8])
  );
  X_OPAD   \memory_data_register_out<9>  (
    .PAD(memory_data_register_out[9])
  );
  X_OPAD   memory_write_out_297 (
    .PAD(memory_write_out)
  );
  X_OPAD   \program_counter_out<0>  (
    .PAD(program_counter_out[0])
  );
  X_OPAD   \program_counter_out<1>  (
    .PAD(program_counter_out[1])
  );
  X_OPAD   \program_counter_out<2>  (
    .PAD(program_counter_out[2])
  );
  X_OPAD   \program_counter_out<3>  (
    .PAD(program_counter_out[3])
  );
  X_OPAD   \program_counter_out<4>  (
    .PAD(program_counter_out[4])
  );
  X_OPAD   \program_counter_out<5>  (
    .PAD(program_counter_out[5])
  );
  X_OPAD   \program_counter_out<6>  (
    .PAD(program_counter_out[6])
  );
  X_OPAD   \program_counter_out<7>  (
    .PAD(program_counter_out[7])
  );
  X_OPAD   \register_ac_out<0>  (
    .PAD(register_ac_out[0])
  );
  X_OPAD   \register_ac_out<10>  (
    .PAD(register_ac_out[10])
  );
  X_OPAD   \register_ac_out<11>  (
    .PAD(register_ac_out[11])
  );
  X_OPAD   \register_ac_out<12>  (
    .PAD(register_ac_out[12])
  );
  X_OPAD   \register_ac_out<13>  (
    .PAD(register_ac_out[13])
  );
  X_OPAD   \register_ac_out<14>  (
    .PAD(register_ac_out[14])
  );
  X_OPAD   \register_ac_out<15>  (
    .PAD(register_ac_out[15])
  );
  X_OPAD   \register_ac_out<1>  (
    .PAD(register_ac_out[1])
  );
  X_OPAD   \register_ac_out<2>  (
    .PAD(register_ac_out[2])
  );
  X_OPAD   \register_ac_out<3>  (
    .PAD(register_ac_out[3])
  );
  X_OPAD   \register_ac_out<4>  (
    .PAD(register_ac_out[4])
  );
  X_OPAD   \register_ac_out<5>  (
    .PAD(register_ac_out[5])
  );
  X_OPAD   \register_ac_out<6>  (
    .PAD(register_ac_out[6])
  );
  X_OPAD   \register_ac_out<7>  (
    .PAD(register_ac_out[7])
  );
  X_OPAD   \register_ac_out<8>  (
    .PAD(register_ac_out[8])
  );
  X_OPAD   \register_ac_out<9>  (
    .PAD(register_ac_out[9])
  );
  X_IPAD   reset_322 (
    .PAD(reset)
  );
  X_CKBUF   \clock_BUFGP/BUFG  (
    .I(\clock_BUFGP/IBUFG_2 ),
    .O(clock_BUFGP)
  );
  X_CKBUF   \clock_BUFGP/IBUFG  (
    .I(clock),
    .O(\clock_BUFGP/IBUFG_2 )
  );
  X_OBUF   memory_address_register_out_0_OBUF (
    .I(memory_address_register_out_0_OBUF_105),
    .O(memory_address_register_out[0])
  );
  X_OBUF   memory_address_register_out_1_OBUF (
    .I(memory_address_register_out_1_OBUF_106),
    .O(memory_address_register_out[1])
  );
  X_OBUF   memory_address_register_out_2_OBUF (
    .I(memory_address_register_out_2_OBUF_107),
    .O(memory_address_register_out[2])
  );
  X_OBUF   memory_address_register_out_3_OBUF (
    .I(memory_address_register_out_3_OBUF_108),
    .O(memory_address_register_out[3])
  );
  X_OBUF   memory_address_register_out_4_OBUF (
    .I(memory_address_register_out_4_OBUF_109),
    .O(memory_address_register_out[4])
  );
  X_OBUF   memory_address_register_out_5_OBUF (
    .I(memory_address_register_out_5_OBUF_110),
    .O(memory_address_register_out[5])
  );
  X_OBUF   memory_address_register_out_6_OBUF (
    .I(memory_address_register_out_6_OBUF_111),
    .O(memory_address_register_out[6])
  );
  X_OBUF   memory_address_register_out_7_OBUF (
    .I(memory_address_register_out_7_OBUF_112),
    .O(memory_address_register_out[7])
  );
  X_OBUF   memory_data_register_out_0_OBUF (
    .I(memory_data_register_out_0_OBUF_129),
    .O(memory_data_register_out[0])
  );
  X_OBUF   memory_data_register_out_10_OBUF (
    .I(memory_data_register_out_10_OBUF_130),
    .O(memory_data_register_out[10])
  );
  X_OBUF   memory_data_register_out_11_OBUF (
    .I(memory_data_register_out_11_OBUF_131),
    .O(memory_data_register_out[11])
  );
  X_OBUF   memory_data_register_out_12_OBUF (
    .I(memory_data_register_out_12_OBUF_132),
    .O(memory_data_register_out[12])
  );
  X_OBUF   memory_data_register_out_13_OBUF (
    .I(memory_data_register_out_13_OBUF_133),
    .O(memory_data_register_out[13])
  );
  X_OBUF   memory_data_register_out_14_OBUF (
    .I(memory_data_register_out_14_OBUF_134),
    .O(memory_data_register_out[14])
  );
  X_OBUF   memory_data_register_out_15_OBUF (
    .I(memory_data_register_out_15_OBUF_135),
    .O(memory_data_register_out[15])
  );
  X_OBUF   memory_data_register_out_1_OBUF (
    .I(memory_data_register_out_1_OBUF_136),
    .O(memory_data_register_out[1])
  );
  X_OBUF   memory_data_register_out_2_OBUF (
    .I(memory_data_register_out_2_OBUF_137),
    .O(memory_data_register_out[2])
  );
  X_OBUF   memory_data_register_out_3_OBUF (
    .I(memory_data_register_out_3_OBUF_138),
    .O(memory_data_register_out[3])
  );
  X_OBUF   memory_data_register_out_4_OBUF (
    .I(memory_data_register_out_4_OBUF_139),
    .O(memory_data_register_out[4])
  );
  X_OBUF   memory_data_register_out_5_OBUF (
    .I(memory_data_register_out_5_OBUF_140),
    .O(memory_data_register_out[5])
  );
  X_OBUF   memory_data_register_out_6_OBUF (
    .I(memory_data_register_out_6_OBUF_141),
    .O(memory_data_register_out[6])
  );
  X_OBUF   memory_data_register_out_7_OBUF (
    .I(memory_data_register_out_7_OBUF_142),
    .O(memory_data_register_out[7])
  );
  X_OBUF   memory_data_register_out_8_OBUF (
    .I(memory_data_register_out_8_OBUF_143),
    .O(memory_data_register_out[8])
  );
  X_OBUF   memory_data_register_out_9_OBUF (
    .I(memory_data_register_out_9_OBUF_144),
    .O(memory_data_register_out[9])
  );
  X_OBUF   memory_write_out_OBUF (
    .I(memory_write_out_OBUF_146),
    .O(memory_write_out)
  );
  X_OBUF   program_counter_out_0_OBUF (
    .I(program_counter[0]),
    .O(program_counter_out[0])
  );
  X_OBUF   program_counter_out_1_OBUF (
    .I(program_counter[1]),
    .O(program_counter_out[1])
  );
  X_OBUF   program_counter_out_2_OBUF (
    .I(program_counter[2]),
    .O(program_counter_out[2])
  );
  X_OBUF   program_counter_out_3_OBUF (
    .I(program_counter[3]),
    .O(program_counter_out[3])
  );
  X_OBUF   program_counter_out_4_OBUF (
    .I(program_counter[4]),
    .O(program_counter_out[4])
  );
  X_OBUF   program_counter_out_5_OBUF (
    .I(program_counter[5]),
    .O(program_counter_out[5])
  );
  X_OBUF   program_counter_out_6_OBUF (
    .I(program_counter[6]),
    .O(program_counter_out[6])
  );
  X_OBUF   program_counter_out_7_OBUF (
    .I(program_counter[7]),
    .O(program_counter_out[7])
  );
  X_OBUF   register_ac_out_0_OBUF (
    .I(register_ac_out_0_OBUF_228),
    .O(register_ac_out[0])
  );
  X_OBUF   register_ac_out_10_OBUF (
    .I(register_ac_out_10_OBUF_229),
    .O(register_ac_out[10])
  );
  X_OBUF   register_ac_out_11_OBUF (
    .I(register_ac_out_11_OBUF_230),
    .O(register_ac_out[11])
  );
  X_OBUF   register_ac_out_12_OBUF (
    .I(register_ac_out_12_OBUF_231),
    .O(register_ac_out[12])
  );
  X_OBUF   register_ac_out_13_OBUF (
    .I(register_ac_out_13_OBUF_232),
    .O(register_ac_out[13])
  );
  X_OBUF   register_ac_out_14_OBUF (
    .I(register_ac_out_14_OBUF_233),
    .O(register_ac_out[14])
  );
  X_OBUF   register_ac_out_15_OBUF (
    .I(register_ac_out_15_OBUF_234),
    .O(register_ac_out[15])
  );
  X_OBUF   register_ac_out_1_OBUF (
    .I(register_ac_out_1_OBUF_235),
    .O(register_ac_out[1])
  );
  X_OBUF   register_ac_out_2_OBUF (
    .I(register_ac_out_2_OBUF_236),
    .O(register_ac_out[2])
  );
  X_OBUF   register_ac_out_3_OBUF (
    .I(register_ac_out_3_OBUF_237),
    .O(register_ac_out[3])
  );
  X_OBUF   register_ac_out_4_OBUF (
    .I(register_ac_out_4_OBUF_238),
    .O(register_ac_out[4])
  );
  X_OBUF   register_ac_out_5_OBUF (
    .I(register_ac_out_5_OBUF_239),
    .O(register_ac_out[5])
  );
  X_OBUF   register_ac_out_6_OBUF (
    .I(register_ac_out_6_OBUF_240),
    .O(register_ac_out[6])
  );
  X_OBUF   register_ac_out_7_OBUF (
    .I(register_ac_out_7_OBUF_241),
    .O(register_ac_out[7])
  );
  X_OBUF   register_ac_out_8_OBUF (
    .I(register_ac_out_8_OBUF_242),
    .O(register_ac_out[8])
  );
  X_OBUF   register_ac_out_9_OBUF (
    .I(register_ac_out_9_OBUF_243),
    .O(register_ac_out[9])
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

