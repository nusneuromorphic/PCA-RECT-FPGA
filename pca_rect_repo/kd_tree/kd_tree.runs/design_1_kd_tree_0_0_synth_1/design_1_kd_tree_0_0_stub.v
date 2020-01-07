// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Mon May 28 21:43:25 2018
// Host        : mmrl01.ee.nus.edu.sg running 64-bit CentOS Linux release 7.4.1708 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_kd_tree_0_0_stub.v
// Design      : design_1_kd_tree_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "kd_tree,Vivado 2016.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, ena, valid_input, is_full, center_addr, 
  valid_desc, desc, wr_ack, get_addr, address_to_get, valid_bin, address_out, kd_ready_o)
/* synthesis syn_black_box black_box_pad_pin="clk,ena,valid_input,is_full,center_addr[13:0],valid_desc,desc[11:0],wr_ack,get_addr,address_to_get[13:0],valid_bin,address_out[11:0],kd_ready_o" */;
  input clk;
  input ena;
  input valid_input;
  input is_full;
  input [13:0]center_addr;
  input valid_desc;
  input [11:0]desc;
  input wr_ack;
  output get_addr;
  output [13:0]address_to_get;
  output valid_bin;
  output [11:0]address_out;
  output kd_ready_o;
endmodule
