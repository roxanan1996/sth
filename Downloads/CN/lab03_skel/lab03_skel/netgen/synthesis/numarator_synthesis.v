////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: numarator_synthesis.v
// /___/   /\     Timestamp: Mon Mar 13 15:08:47 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim numarator.ngc numarator_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: numarator.ngc
// Output file	: C:\Users\Alex\Desktop\lab03_skel\lab03_skel\netgen\synthesis\numarator_synthesis.v
// # of Modules	: 1
// Design Name	: numarator
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

module numarator (
  button, reset, clk, led
);
  input button;
  input reset;
  input clk;
  output [7 : 0] led;
  wire button_IBUF_0;
  wire reset_IBUF_1;
  wire clk_BUFGP_2;
  wire \db/button_out_3 ;
  wire N0;
  wire N1;
  wire \db/button_tmp_30 ;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<6>1 ;
  wire \Result<7>1 ;
  wire \db/GND_2_o_GND_2_o_equal_5_o<15>1_80 ;
  wire \Mcount_counter_cy<1>_rt_92 ;
  wire \Mcount_counter_cy<2>_rt_93 ;
  wire \Mcount_counter_cy<3>_rt_94 ;
  wire \Mcount_counter_cy<4>_rt_95 ;
  wire \Mcount_counter_cy<5>_rt_96 ;
  wire \Mcount_counter_cy<6>_rt_97 ;
  wire \db/Mcount_count_cy<1>_rt_98 ;
  wire \db/Mcount_count_cy<2>_rt_99 ;
  wire \db/Mcount_count_cy<3>_rt_100 ;
  wire \db/Mcount_count_cy<4>_rt_101 ;
  wire \db/Mcount_count_cy<5>_rt_102 ;
  wire \db/Mcount_count_cy<6>_rt_103 ;
  wire \db/Mcount_count_cy<7>_rt_104 ;
  wire \db/Mcount_count_cy<8>_rt_105 ;
  wire \db/Mcount_count_cy<9>_rt_106 ;
  wire \db/Mcount_count_cy<10>_rt_107 ;
  wire \db/Mcount_count_cy<11>_rt_108 ;
  wire \db/Mcount_count_cy<12>_rt_109 ;
  wire \db/Mcount_count_cy<13>_rt_110 ;
  wire \db/Mcount_count_cy<14>_rt_111 ;
  wire \Mcount_counter_xor<7>_rt_112 ;
  wire \db/Mcount_count_xor<15>_rt_113 ;
  wire \db/button_out_dpot_114 ;
  wire N4;
  wire [7 : 0] counter;
  wire [15 : 0] \db/count ;
  wire [15 : 0] Result;
  wire [0 : 0] Mcount_counter_lut;
  wire [6 : 0] Mcount_counter_cy;
  wire [0 : 0] \db/Mcount_count_lut ;
  wire [14 : 0] \db/Mcount_count_cy ;
  wire [15 : 15] \db/GND_2_o_GND_2_o_equal_5_o ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  FDE   \db/button_out  (
    .C(clk_BUFGP_2),
    .CE(\db/GND_2_o_GND_2_o_equal_5_o<15>1_80 ),
    .D(\db/button_out_dpot_114 ),
    .Q(\db/button_out_3 )
  );
  FDR   \db/button_tmp  (
    .C(clk_BUFGP_2),
    .D(button_IBUF_0),
    .R(reset_IBUF_1),
    .Q(\db/button_tmp_30 )
  );
  FDR   counter_0 (
    .C(\db/button_out_3 ),
    .D(Result[0]),
    .R(reset_IBUF_1),
    .Q(counter[0])
  );
  FDR   counter_1 (
    .C(\db/button_out_3 ),
    .D(Result[1]),
    .R(reset_IBUF_1),
    .Q(counter[1])
  );
  FDR   counter_2 (
    .C(\db/button_out_3 ),
    .D(Result[2]),
    .R(reset_IBUF_1),
    .Q(counter[2])
  );
  FDR   counter_3 (
    .C(\db/button_out_3 ),
    .D(Result[3]),
    .R(reset_IBUF_1),
    .Q(counter[3])
  );
  FDR   counter_4 (
    .C(\db/button_out_3 ),
    .D(Result[4]),
    .R(reset_IBUF_1),
    .Q(counter[4])
  );
  FDR   counter_5 (
    .C(\db/button_out_3 ),
    .D(Result[5]),
    .R(reset_IBUF_1),
    .Q(counter[5])
  );
  FDR   counter_6 (
    .C(\db/button_out_3 ),
    .D(Result[6]),
    .R(reset_IBUF_1),
    .Q(counter[6])
  );
  FDR   counter_7 (
    .C(\db/button_out_3 ),
    .D(Result[7]),
    .R(reset_IBUF_1),
    .Q(counter[7])
  );
  FDR   \db/count_0  (
    .C(clk_BUFGP_2),
    .D(\Result<0>1 ),
    .R(reset_IBUF_1),
    .Q(\db/count [0])
  );
  FDR   \db/count_1  (
    .C(clk_BUFGP_2),
    .D(\Result<1>1 ),
    .R(reset_IBUF_1),
    .Q(\db/count [1])
  );
  FDR   \db/count_2  (
    .C(clk_BUFGP_2),
    .D(\Result<2>1 ),
    .R(reset_IBUF_1),
    .Q(\db/count [2])
  );
  FDR   \db/count_3  (
    .C(clk_BUFGP_2),
    .D(\Result<3>1 ),
    .R(reset_IBUF_1),
    .Q(\db/count [3])
  );
  FDR   \db/count_4  (
    .C(clk_BUFGP_2),
    .D(\Result<4>1 ),
    .R(reset_IBUF_1),
    .Q(\db/count [4])
  );
  FDR   \db/count_5  (
    .C(clk_BUFGP_2),
    .D(\Result<5>1 ),
    .R(reset_IBUF_1),
    .Q(\db/count [5])
  );
  FDR   \db/count_6  (
    .C(clk_BUFGP_2),
    .D(\Result<6>1 ),
    .R(reset_IBUF_1),
    .Q(\db/count [6])
  );
  FDR   \db/count_7  (
    .C(clk_BUFGP_2),
    .D(\Result<7>1 ),
    .R(reset_IBUF_1),
    .Q(\db/count [7])
  );
  FDR   \db/count_8  (
    .C(clk_BUFGP_2),
    .D(Result[8]),
    .R(reset_IBUF_1),
    .Q(\db/count [8])
  );
  FDR   \db/count_9  (
    .C(clk_BUFGP_2),
    .D(Result[9]),
    .R(reset_IBUF_1),
    .Q(\db/count [9])
  );
  FDR   \db/count_10  (
    .C(clk_BUFGP_2),
    .D(Result[10]),
    .R(reset_IBUF_1),
    .Q(\db/count [10])
  );
  FDR   \db/count_11  (
    .C(clk_BUFGP_2),
    .D(Result[11]),
    .R(reset_IBUF_1),
    .Q(\db/count [11])
  );
  FDR   \db/count_12  (
    .C(clk_BUFGP_2),
    .D(Result[12]),
    .R(reset_IBUF_1),
    .Q(\db/count [12])
  );
  FDR   \db/count_13  (
    .C(clk_BUFGP_2),
    .D(Result[13]),
    .R(reset_IBUF_1),
    .Q(\db/count [13])
  );
  FDR   \db/count_14  (
    .C(clk_BUFGP_2),
    .D(Result[14]),
    .R(reset_IBUF_1),
    .Q(\db/count [14])
  );
  FDR   \db/count_15  (
    .C(clk_BUFGP_2),
    .D(Result[15]),
    .R(reset_IBUF_1),
    .Q(\db/count [15])
  );
  MUXCY   \Mcount_counter_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(Mcount_counter_lut[0]),
    .O(Mcount_counter_cy[0])
  );
  XORCY   \Mcount_counter_xor<0>  (
    .CI(N1),
    .LI(Mcount_counter_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_counter_cy<1>  (
    .CI(Mcount_counter_cy[0]),
    .DI(N1),
    .S(\Mcount_counter_cy<1>_rt_92 ),
    .O(Mcount_counter_cy[1])
  );
  XORCY   \Mcount_counter_xor<1>  (
    .CI(Mcount_counter_cy[0]),
    .LI(\Mcount_counter_cy<1>_rt_92 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_counter_cy<2>  (
    .CI(Mcount_counter_cy[1]),
    .DI(N1),
    .S(\Mcount_counter_cy<2>_rt_93 ),
    .O(Mcount_counter_cy[2])
  );
  XORCY   \Mcount_counter_xor<2>  (
    .CI(Mcount_counter_cy[1]),
    .LI(\Mcount_counter_cy<2>_rt_93 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_counter_cy<3>  (
    .CI(Mcount_counter_cy[2]),
    .DI(N1),
    .S(\Mcount_counter_cy<3>_rt_94 ),
    .O(Mcount_counter_cy[3])
  );
  XORCY   \Mcount_counter_xor<3>  (
    .CI(Mcount_counter_cy[2]),
    .LI(\Mcount_counter_cy<3>_rt_94 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_counter_cy<4>  (
    .CI(Mcount_counter_cy[3]),
    .DI(N1),
    .S(\Mcount_counter_cy<4>_rt_95 ),
    .O(Mcount_counter_cy[4])
  );
  XORCY   \Mcount_counter_xor<4>  (
    .CI(Mcount_counter_cy[3]),
    .LI(\Mcount_counter_cy<4>_rt_95 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_counter_cy<5>  (
    .CI(Mcount_counter_cy[4]),
    .DI(N1),
    .S(\Mcount_counter_cy<5>_rt_96 ),
    .O(Mcount_counter_cy[5])
  );
  XORCY   \Mcount_counter_xor<5>  (
    .CI(Mcount_counter_cy[4]),
    .LI(\Mcount_counter_cy<5>_rt_96 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_counter_cy<6>  (
    .CI(Mcount_counter_cy[5]),
    .DI(N1),
    .S(\Mcount_counter_cy<6>_rt_97 ),
    .O(Mcount_counter_cy[6])
  );
  XORCY   \Mcount_counter_xor<6>  (
    .CI(Mcount_counter_cy[5]),
    .LI(\Mcount_counter_cy<6>_rt_97 ),
    .O(Result[6])
  );
  XORCY   \Mcount_counter_xor<7>  (
    .CI(Mcount_counter_cy[6]),
    .LI(\Mcount_counter_xor<7>_rt_112 ),
    .O(Result[7])
  );
  MUXCY   \db/Mcount_count_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\db/Mcount_count_lut [0]),
    .O(\db/Mcount_count_cy [0])
  );
  XORCY   \db/Mcount_count_xor<0>  (
    .CI(N1),
    .LI(\db/Mcount_count_lut [0]),
    .O(\Result<0>1 )
  );
  MUXCY   \db/Mcount_count_cy<1>  (
    .CI(\db/Mcount_count_cy [0]),
    .DI(N1),
    .S(\db/Mcount_count_cy<1>_rt_98 ),
    .O(\db/Mcount_count_cy [1])
  );
  XORCY   \db/Mcount_count_xor<1>  (
    .CI(\db/Mcount_count_cy [0]),
    .LI(\db/Mcount_count_cy<1>_rt_98 ),
    .O(\Result<1>1 )
  );
  MUXCY   \db/Mcount_count_cy<2>  (
    .CI(\db/Mcount_count_cy [1]),
    .DI(N1),
    .S(\db/Mcount_count_cy<2>_rt_99 ),
    .O(\db/Mcount_count_cy [2])
  );
  XORCY   \db/Mcount_count_xor<2>  (
    .CI(\db/Mcount_count_cy [1]),
    .LI(\db/Mcount_count_cy<2>_rt_99 ),
    .O(\Result<2>1 )
  );
  MUXCY   \db/Mcount_count_cy<3>  (
    .CI(\db/Mcount_count_cy [2]),
    .DI(N1),
    .S(\db/Mcount_count_cy<3>_rt_100 ),
    .O(\db/Mcount_count_cy [3])
  );
  XORCY   \db/Mcount_count_xor<3>  (
    .CI(\db/Mcount_count_cy [2]),
    .LI(\db/Mcount_count_cy<3>_rt_100 ),
    .O(\Result<3>1 )
  );
  MUXCY   \db/Mcount_count_cy<4>  (
    .CI(\db/Mcount_count_cy [3]),
    .DI(N1),
    .S(\db/Mcount_count_cy<4>_rt_101 ),
    .O(\db/Mcount_count_cy [4])
  );
  XORCY   \db/Mcount_count_xor<4>  (
    .CI(\db/Mcount_count_cy [3]),
    .LI(\db/Mcount_count_cy<4>_rt_101 ),
    .O(\Result<4>1 )
  );
  MUXCY   \db/Mcount_count_cy<5>  (
    .CI(\db/Mcount_count_cy [4]),
    .DI(N1),
    .S(\db/Mcount_count_cy<5>_rt_102 ),
    .O(\db/Mcount_count_cy [5])
  );
  XORCY   \db/Mcount_count_xor<5>  (
    .CI(\db/Mcount_count_cy [4]),
    .LI(\db/Mcount_count_cy<5>_rt_102 ),
    .O(\Result<5>1 )
  );
  MUXCY   \db/Mcount_count_cy<6>  (
    .CI(\db/Mcount_count_cy [5]),
    .DI(N1),
    .S(\db/Mcount_count_cy<6>_rt_103 ),
    .O(\db/Mcount_count_cy [6])
  );
  XORCY   \db/Mcount_count_xor<6>  (
    .CI(\db/Mcount_count_cy [5]),
    .LI(\db/Mcount_count_cy<6>_rt_103 ),
    .O(\Result<6>1 )
  );
  MUXCY   \db/Mcount_count_cy<7>  (
    .CI(\db/Mcount_count_cy [6]),
    .DI(N1),
    .S(\db/Mcount_count_cy<7>_rt_104 ),
    .O(\db/Mcount_count_cy [7])
  );
  XORCY   \db/Mcount_count_xor<7>  (
    .CI(\db/Mcount_count_cy [6]),
    .LI(\db/Mcount_count_cy<7>_rt_104 ),
    .O(\Result<7>1 )
  );
  MUXCY   \db/Mcount_count_cy<8>  (
    .CI(\db/Mcount_count_cy [7]),
    .DI(N1),
    .S(\db/Mcount_count_cy<8>_rt_105 ),
    .O(\db/Mcount_count_cy [8])
  );
  XORCY   \db/Mcount_count_xor<8>  (
    .CI(\db/Mcount_count_cy [7]),
    .LI(\db/Mcount_count_cy<8>_rt_105 ),
    .O(Result[8])
  );
  MUXCY   \db/Mcount_count_cy<9>  (
    .CI(\db/Mcount_count_cy [8]),
    .DI(N1),
    .S(\db/Mcount_count_cy<9>_rt_106 ),
    .O(\db/Mcount_count_cy [9])
  );
  XORCY   \db/Mcount_count_xor<9>  (
    .CI(\db/Mcount_count_cy [8]),
    .LI(\db/Mcount_count_cy<9>_rt_106 ),
    .O(Result[9])
  );
  MUXCY   \db/Mcount_count_cy<10>  (
    .CI(\db/Mcount_count_cy [9]),
    .DI(N1),
    .S(\db/Mcount_count_cy<10>_rt_107 ),
    .O(\db/Mcount_count_cy [10])
  );
  XORCY   \db/Mcount_count_xor<10>  (
    .CI(\db/Mcount_count_cy [9]),
    .LI(\db/Mcount_count_cy<10>_rt_107 ),
    .O(Result[10])
  );
  MUXCY   \db/Mcount_count_cy<11>  (
    .CI(\db/Mcount_count_cy [10]),
    .DI(N1),
    .S(\db/Mcount_count_cy<11>_rt_108 ),
    .O(\db/Mcount_count_cy [11])
  );
  XORCY   \db/Mcount_count_xor<11>  (
    .CI(\db/Mcount_count_cy [10]),
    .LI(\db/Mcount_count_cy<11>_rt_108 ),
    .O(Result[11])
  );
  MUXCY   \db/Mcount_count_cy<12>  (
    .CI(\db/Mcount_count_cy [11]),
    .DI(N1),
    .S(\db/Mcount_count_cy<12>_rt_109 ),
    .O(\db/Mcount_count_cy [12])
  );
  XORCY   \db/Mcount_count_xor<12>  (
    .CI(\db/Mcount_count_cy [11]),
    .LI(\db/Mcount_count_cy<12>_rt_109 ),
    .O(Result[12])
  );
  MUXCY   \db/Mcount_count_cy<13>  (
    .CI(\db/Mcount_count_cy [12]),
    .DI(N1),
    .S(\db/Mcount_count_cy<13>_rt_110 ),
    .O(\db/Mcount_count_cy [13])
  );
  XORCY   \db/Mcount_count_xor<13>  (
    .CI(\db/Mcount_count_cy [12]),
    .LI(\db/Mcount_count_cy<13>_rt_110 ),
    .O(Result[13])
  );
  MUXCY   \db/Mcount_count_cy<14>  (
    .CI(\db/Mcount_count_cy [13]),
    .DI(N1),
    .S(\db/Mcount_count_cy<14>_rt_111 ),
    .O(\db/Mcount_count_cy [14])
  );
  XORCY   \db/Mcount_count_xor<14>  (
    .CI(\db/Mcount_count_cy [13]),
    .LI(\db/Mcount_count_cy<14>_rt_111 ),
    .O(Result[14])
  );
  XORCY   \db/Mcount_count_xor<15>  (
    .CI(\db/Mcount_count_cy [14]),
    .LI(\db/Mcount_count_xor<15>_rt_113 ),
    .O(Result[15])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \db/GND_2_o_GND_2_o_equal_5_o<15>1  (
    .I0(\db/count [1]),
    .I1(\db/count [0]),
    .I2(\db/count [2]),
    .I3(\db/count [3]),
    .I4(\db/count [4]),
    .I5(\db/count [5]),
    .O(\db/GND_2_o_GND_2_o_equal_5_o [15])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \db/GND_2_o_GND_2_o_equal_5_o<15>2  (
    .I0(\db/count [7]),
    .I1(\db/count [6]),
    .I2(\db/count [8]),
    .I3(\db/count [9]),
    .I4(\db/count [10]),
    .I5(\db/count [11]),
    .O(\db/GND_2_o_GND_2_o_equal_5_o<15>1_80 )
  );
  IBUF   button_IBUF (
    .I(button),
    .O(button_IBUF_0)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_1)
  );
  OBUF   led_7_OBUF (
    .I(counter[7]),
    .O(led[7])
  );
  OBUF   led_6_OBUF (
    .I(counter[6]),
    .O(led[6])
  );
  OBUF   led_5_OBUF (
    .I(counter[5]),
    .O(led[5])
  );
  OBUF   led_4_OBUF (
    .I(counter[4]),
    .O(led[4])
  );
  OBUF   led_3_OBUF (
    .I(counter[3]),
    .O(led[3])
  );
  OBUF   led_2_OBUF (
    .I(counter[2]),
    .O(led[2])
  );
  OBUF   led_1_OBUF (
    .I(counter[1]),
    .O(led[1])
  );
  OBUF   led_0_OBUF (
    .I(counter[0]),
    .O(led[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<1>_rt  (
    .I0(counter[1]),
    .O(\Mcount_counter_cy<1>_rt_92 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<2>_rt  (
    .I0(counter[2]),
    .O(\Mcount_counter_cy<2>_rt_93 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<3>_rt  (
    .I0(counter[3]),
    .O(\Mcount_counter_cy<3>_rt_94 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<4>_rt  (
    .I0(counter[4]),
    .O(\Mcount_counter_cy<4>_rt_95 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<5>_rt  (
    .I0(counter[5]),
    .O(\Mcount_counter_cy<5>_rt_96 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<6>_rt  (
    .I0(counter[6]),
    .O(\Mcount_counter_cy<6>_rt_97 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db/Mcount_count_cy<1>_rt  (
    .I0(\db/count [1]),
    .O(\db/Mcount_count_cy<1>_rt_98 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db/Mcount_count_cy<2>_rt  (
    .I0(\db/count [2]),
    .O(\db/Mcount_count_cy<2>_rt_99 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db/Mcount_count_cy<3>_rt  (
    .I0(\db/count [3]),
    .O(\db/Mcount_count_cy<3>_rt_100 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db/Mcount_count_cy<4>_rt  (
    .I0(\db/count [4]),
    .O(\db/Mcount_count_cy<4>_rt_101 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db/Mcount_count_cy<5>_rt  (
    .I0(\db/count [5]),
    .O(\db/Mcount_count_cy<5>_rt_102 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db/Mcount_count_cy<6>_rt  (
    .I0(\db/count [6]),
    .O(\db/Mcount_count_cy<6>_rt_103 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db/Mcount_count_cy<7>_rt  (
    .I0(\db/count [7]),
    .O(\db/Mcount_count_cy<7>_rt_104 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db/Mcount_count_cy<8>_rt  (
    .I0(\db/count [8]),
    .O(\db/Mcount_count_cy<8>_rt_105 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db/Mcount_count_cy<9>_rt  (
    .I0(\db/count [9]),
    .O(\db/Mcount_count_cy<9>_rt_106 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db/Mcount_count_cy<10>_rt  (
    .I0(\db/count [10]),
    .O(\db/Mcount_count_cy<10>_rt_107 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db/Mcount_count_cy<11>_rt  (
    .I0(\db/count [11]),
    .O(\db/Mcount_count_cy<11>_rt_108 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db/Mcount_count_cy<12>_rt  (
    .I0(\db/count [12]),
    .O(\db/Mcount_count_cy<12>_rt_109 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db/Mcount_count_cy<13>_rt  (
    .I0(\db/count [13]),
    .O(\db/Mcount_count_cy<13>_rt_110 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db/Mcount_count_cy<14>_rt  (
    .I0(\db/count [14]),
    .O(\db/Mcount_count_cy<14>_rt_111 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_xor<7>_rt  (
    .I0(counter[7]),
    .O(\Mcount_counter_xor<7>_rt_112 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db/Mcount_count_xor<15>_rt  (
    .I0(\db/count [15]),
    .O(\db/Mcount_count_xor<15>_rt_113 )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \db/GND_2_o_GND_2_o_equal_5_o<15>3_rstpot_SW0  (
    .I0(\db/button_tmp_30 ),
    .I1(\db/count [12]),
    .I2(\db/button_out_3 ),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hFF01FE00FF00FF00 ))
  \db/button_out_dpot  (
    .I0(\db/count [13]),
    .I1(\db/count [14]),
    .I2(\db/count [15]),
    .I3(\db/button_out_3 ),
    .I4(N4),
    .I5(\db/GND_2_o_GND_2_o_equal_5_o [15]),
    .O(\db/button_out_dpot_114 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_2)
  );
  INV   \Mcount_counter_lut<0>_INV_0  (
    .I(counter[0]),
    .O(Mcount_counter_lut[0])
  );
  INV   \db/Mcount_count_lut<0>_INV_0  (
    .I(\db/count [0]),
    .O(\db/Mcount_count_lut [0])
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

