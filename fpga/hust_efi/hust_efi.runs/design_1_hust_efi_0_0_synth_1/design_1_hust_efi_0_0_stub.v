// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jul  4 19:17:12 2022
// Host        : PC113 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_hust_efi_0_0_stub.v
// Design      : design_1_hust_efi_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "hust_efi,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset_n, efi_on, ckp, done, btdc_ready, 
  crank_counter, crank_cycle_counter, cal_rpm, cal_btdc, cal_injection, cal_ignition, inject, 
  ignite, update_table, fuel_pump)
/* synthesis syn_black_box black_box_pad_pin="clk,reset_n,efi_on,ckp,done[3:0],btdc_ready[3:0],crank_counter[5:0],crank_cycle_counter[17:0],cal_rpm,cal_btdc,cal_injection[3:0],cal_ignition[3:0],inject[3:0],ignite[3:0],update_table[3:0],fuel_pump[3:0]" */;
  input clk;
  input reset_n;
  input efi_on;
  input ckp;
  input [3:0]done;
  input [3:0]btdc_ready;
  output [5:0]crank_counter;
  output [17:0]crank_cycle_counter;
  output cal_rpm;
  output cal_btdc;
  output [3:0]cal_injection;
  output [3:0]cal_ignition;
  output [3:0]inject;
  output [3:0]ignite;
  output [3:0]update_table;
  output [3:0]fuel_pump;
endmodule
