// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1_AR70908 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Aug 15 21:04:00 2018
// Host        : ANDREWPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/git_repos/aes_encryption_vhdl_implementation/vivado_project/pynq_testing/pynq_testing.srcs/sources_1/bd/design_1/ip/design_1_aes_encryption_wrapp_0_0/design_1_aes_encryption_wrapp_0_0_stub.v
// Design      : design_1_aes_encryption_wrapp_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "aes_encryption_wrapper,Vivado 2018.1_AR70908" *)
module design_1_aes_encryption_wrapp_0_0(clock, reset, o_valid, o_word1, o_word2, o_word3, 
  o_word4)
/* synthesis syn_black_box black_box_pad_pin="clock,reset,o_valid,o_word1[31:0],o_word2[31:0],o_word3[31:0],o_word4[31:0]" */;
  input clock;
  input reset;
  output o_valid;
  output [31:0]o_word1;
  output [31:0]o_word2;
  output [31:0]o_word3;
  output [31:0]o_word4;
endmodule
