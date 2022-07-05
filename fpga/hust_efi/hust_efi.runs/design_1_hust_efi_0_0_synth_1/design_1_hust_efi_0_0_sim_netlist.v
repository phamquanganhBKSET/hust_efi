// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jul  4 19:17:12 2022
// Host        : PC113 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_hust_efi_0_0_sim_netlist.v
// Design      : design_1_hust_efi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_crank_position_control
   (reset_n_0,
    crank_changed,
    crank_cycle_counter,
    Q,
    ckp_0,
    crank_tick,
    allow_injection0_out,
    cal_btdc,
    crank_changed_reg_0,
    cal_injection1,
    next_state1__0,
    \FSM_sequential_current_state_reg[2]_0 ,
    efi_on_0,
    crank_changed_reg_1,
    crank_changed_reg_2,
    crank_changed_reg_3,
    crank_changed_reg_4,
    ckp,
    clk,
    efi_on,
    \FSM_sequential_current_state[0]_i_4 ,
    \FSM_sequential_current_state_reg[2]_1 ,
    \FSM_sequential_current_state[2]_i_2__0 ,
    \FSM_sequential_current_state_reg[0]_0 ,
    reset_n);
  output reset_n_0;
  output crank_changed;
  output [17:0]crank_cycle_counter;
  output [5:0]Q;
  output ckp_0;
  output crank_tick;
  output allow_injection0_out;
  output cal_btdc;
  output crank_changed_reg_0;
  output cal_injection1;
  output next_state1__0;
  output \FSM_sequential_current_state_reg[2]_0 ;
  output efi_on_0;
  output crank_changed_reg_1;
  output crank_changed_reg_2;
  output crank_changed_reg_3;
  output crank_changed_reg_4;
  input ckp;
  input clk;
  input efi_on;
  input [2:0]\FSM_sequential_current_state[0]_i_4 ;
  input [2:0]\FSM_sequential_current_state_reg[2]_1 ;
  input [1:0]\FSM_sequential_current_state[2]_i_2__0 ;
  input [0:0]\FSM_sequential_current_state_reg[0]_0 ;
  input reset_n;

  wire \FSM_sequential_current_state[0]_i_1__11_n_0 ;
  wire [2:0]\FSM_sequential_current_state[0]_i_4 ;
  wire \FSM_sequential_current_state[1]_i_1__11_n_0 ;
  wire \FSM_sequential_current_state[2]_i_1__11_n_0 ;
  wire [1:0]\FSM_sequential_current_state[2]_i_2__0 ;
  wire \FSM_sequential_current_state[2]_i_3_n_0 ;
  wire \FSM_sequential_current_state[2]_i_4_n_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire [2:0]\FSM_sequential_current_state_reg[2]_1 ;
  wire [5:0]Q;
  wire allow_injection0_out;
  wire cal_btdc;
  wire cal_injection1;
  wire ckp;
  wire ckp_0;
  wire clk;
  wire crank_changed;
  wire crank_changed_i_2_n_0;
  wire crank_changed_i_3_n_0;
  wire crank_changed_i_4_n_0;
  wire crank_changed_reg_0;
  wire crank_changed_reg_1;
  wire crank_changed_reg_2;
  wire crank_changed_reg_3;
  wire crank_changed_reg_4;
  wire \crank_counter[4]_i_2_n_0 ;
  wire \crank_counter[4]_i_3_n_0 ;
  wire \crank_counter[5]_i_4_n_0 ;
  wire \crank_counter[5]_i_6_n_0 ;
  wire \crank_counter[5]_i_7_n_0 ;
  wire [5:0]crank_counter_input;
  wire [17:0]crank_cycle_counter;
  wire \crank_cycle_counter[11]_i_2_n_0 ;
  wire \crank_cycle_counter[11]_i_3_n_0 ;
  wire \crank_cycle_counter[11]_i_4_n_0 ;
  wire \crank_cycle_counter[11]_i_5_n_0 ;
  wire \crank_cycle_counter[15]_i_2_n_0 ;
  wire \crank_cycle_counter[15]_i_3_n_0 ;
  wire \crank_cycle_counter[15]_i_4_n_0 ;
  wire \crank_cycle_counter[15]_i_5_n_0 ;
  wire \crank_cycle_counter[17]_i_1_n_0 ;
  wire \crank_cycle_counter[17]_i_3_n_0 ;
  wire \crank_cycle_counter[17]_i_4_n_0 ;
  wire \crank_cycle_counter[3]_i_2_n_0 ;
  wire \crank_cycle_counter[3]_i_3_n_0 ;
  wire \crank_cycle_counter[3]_i_4_n_0 ;
  wire \crank_cycle_counter[3]_i_5_n_0 ;
  wire \crank_cycle_counter[3]_i_6_n_0 ;
  wire \crank_cycle_counter[7]_i_2_n_0 ;
  wire \crank_cycle_counter[7]_i_3_n_0 ;
  wire \crank_cycle_counter[7]_i_4_n_0 ;
  wire \crank_cycle_counter[7]_i_5_n_0 ;
  wire \crank_cycle_counter_reg[11]_i_1_n_0 ;
  wire \crank_cycle_counter_reg[11]_i_1_n_1 ;
  wire \crank_cycle_counter_reg[11]_i_1_n_2 ;
  wire \crank_cycle_counter_reg[11]_i_1_n_3 ;
  wire \crank_cycle_counter_reg[11]_i_1_n_4 ;
  wire \crank_cycle_counter_reg[11]_i_1_n_5 ;
  wire \crank_cycle_counter_reg[11]_i_1_n_6 ;
  wire \crank_cycle_counter_reg[11]_i_1_n_7 ;
  wire \crank_cycle_counter_reg[15]_i_1_n_0 ;
  wire \crank_cycle_counter_reg[15]_i_1_n_1 ;
  wire \crank_cycle_counter_reg[15]_i_1_n_2 ;
  wire \crank_cycle_counter_reg[15]_i_1_n_3 ;
  wire \crank_cycle_counter_reg[15]_i_1_n_4 ;
  wire \crank_cycle_counter_reg[15]_i_1_n_5 ;
  wire \crank_cycle_counter_reg[15]_i_1_n_6 ;
  wire \crank_cycle_counter_reg[15]_i_1_n_7 ;
  wire \crank_cycle_counter_reg[17]_i_2_n_3 ;
  wire \crank_cycle_counter_reg[17]_i_2_n_6 ;
  wire \crank_cycle_counter_reg[17]_i_2_n_7 ;
  wire \crank_cycle_counter_reg[3]_i_1_n_0 ;
  wire \crank_cycle_counter_reg[3]_i_1_n_1 ;
  wire \crank_cycle_counter_reg[3]_i_1_n_2 ;
  wire \crank_cycle_counter_reg[3]_i_1_n_3 ;
  wire \crank_cycle_counter_reg[3]_i_1_n_4 ;
  wire \crank_cycle_counter_reg[3]_i_1_n_5 ;
  wire \crank_cycle_counter_reg[3]_i_1_n_6 ;
  wire \crank_cycle_counter_reg[3]_i_1_n_7 ;
  wire \crank_cycle_counter_reg[7]_i_1_n_0 ;
  wire \crank_cycle_counter_reg[7]_i_1_n_1 ;
  wire \crank_cycle_counter_reg[7]_i_1_n_2 ;
  wire \crank_cycle_counter_reg[7]_i_1_n_3 ;
  wire \crank_cycle_counter_reg[7]_i_1_n_4 ;
  wire \crank_cycle_counter_reg[7]_i_1_n_5 ;
  wire \crank_cycle_counter_reg[7]_i_1_n_6 ;
  wire \crank_cycle_counter_reg[7]_i_1_n_7 ;
  wire crank_tick;
  wire [2:0]current_state;
  wire efi_on;
  wire efi_on_0;
  wire increase_crank;
  wire last_ckp;
  wire next_state1__0;
  wire pre_crank_changed;
  wire [1:0]reset_crank__0;
  wire reset_crank_cycle;
  wire reset_n;
  wire reset_n_0;
  wire [3:1]\NLW_crank_cycle_counter_reg[17]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_crank_cycle_counter_reg[17]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h10110000)) 
    \FSM_sequential_current_state[0]_i_1__11 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(ckp),
        .I3(current_state[0]),
        .I4(efi_on),
        .O(\FSM_sequential_current_state[0]_i_1__11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_current_state[0]_i_2__3 
       (.I0(crank_changed),
        .I1(ckp),
        .I2(\FSM_sequential_current_state_reg[0]_0 ),
        .O(crank_changed_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_current_state[0]_i_2__4 
       (.I0(crank_changed),
        .I1(ckp),
        .I2(\FSM_sequential_current_state[0]_i_4 [0]),
        .O(crank_changed_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_current_state[0]_i_2__5 
       (.I0(crank_changed),
        .I1(ckp),
        .I2(\FSM_sequential_current_state[2]_i_2__0 [0]),
        .O(crank_changed_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_current_state[0]_i_2__6 
       (.I0(crank_changed),
        .I1(ckp),
        .I2(\FSM_sequential_current_state_reg[2]_1 [0]),
        .O(crank_changed_reg_4));
  LUT6 #(
    .INIT(64'h00000000C8080808)) 
    \FSM_sequential_current_state[0]_i_6 
       (.I0(ckp),
        .I1(crank_changed),
        .I2(\FSM_sequential_current_state[0]_i_4 [2]),
        .I3(crank_tick),
        .I4(efi_on),
        .I5(\FSM_sequential_current_state[0]_i_4 [1]),
        .O(ckp_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_sequential_current_state[1]_i_1__11 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(efi_on),
        .O(\FSM_sequential_current_state[1]_i_1__11_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808F80808)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I1(\FSM_sequential_current_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_current_state_reg[2]_1 [2]),
        .I3(\FSM_sequential_current_state_reg[2]_1 [0]),
        .I4(efi_on),
        .I5(next_state1__0),
        .O(\FSM_sequential_current_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2208)) 
    \FSM_sequential_current_state[2]_i_1__11 
       (.I0(efi_on),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .O(\FSM_sequential_current_state[2]_i_1__11_n_0 ));
  LUT6 #(
    .INIT(64'h01F101F1F101F1F1)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I1(\FSM_sequential_current_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_current_state_reg[2]_1 [2]),
        .I3(\FSM_sequential_current_state_reg[2]_1 [0]),
        .I4(efi_on),
        .I5(next_state1__0),
        .O(cal_injection1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB40C840C)) 
    \FSM_sequential_current_state[2]_i_3 
       (.I0(crank_tick),
        .I1(\FSM_sequential_current_state_reg[2]_1 [1]),
        .I2(\FSM_sequential_current_state_reg[2]_1 [0]),
        .I3(crank_changed),
        .I4(ckp),
        .O(\FSM_sequential_current_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h20C02FC0A000A000)) 
    \FSM_sequential_current_state[2]_i_3__0 
       (.I0(efi_on),
        .I1(crank_tick),
        .I2(\FSM_sequential_current_state[2]_i_2__0 [1]),
        .I3(\FSM_sequential_current_state[2]_i_2__0 [0]),
        .I4(ckp),
        .I5(crank_changed),
        .O(efi_on_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hC8F8C0C0)) 
    \FSM_sequential_current_state[2]_i_4 
       (.I0(crank_tick),
        .I1(\FSM_sequential_current_state_reg[2]_1 [1]),
        .I2(\FSM_sequential_current_state_reg[2]_1 [0]),
        .I3(ckp),
        .I4(crank_changed),
        .O(\FSM_sequential_current_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "START:001,RESETBDC:011,RESETTDC:010,IDLE:000,UPDATE:100" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(\FSM_sequential_current_state[0]_i_1__11_n_0 ),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "START:001,RESETBDC:011,RESETTDC:010,IDLE:000,UPDATE:100" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(\FSM_sequential_current_state[1]_i_1__11_n_0 ),
        .Q(current_state[1]));
  (* FSM_ENCODED_STATES = "START:001,RESETBDC:011,RESETTDC:010,IDLE:000,UPDATE:100" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(\FSM_sequential_current_state[2]_i_1__11_n_0 ),
        .Q(current_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    cal_btdc_INST_0
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(ckp),
        .O(cal_btdc));
  LUT6 #(
    .INIT(64'h0480000000000000)) 
    cal_injection_i_4
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(crank_tick));
  LUT2 #(
    .INIT(4'hE)) 
    crank_changed_i_1
       (.I0(crank_changed_i_2_n_0),
        .I1(crank_changed_i_3_n_0),
        .O(pre_crank_changed));
  LUT6 #(
    .INIT(64'hFBFF5155FDFEFDFE)) 
    crank_changed_i_2
       (.I0(reset_crank__0[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(increase_crank),
        .I5(reset_crank__0[1]),
        .O(crank_changed_i_2_n_0));
  LUT6 #(
    .INIT(64'hEF45FF55FFFFFCFC)) 
    crank_changed_i_3
       (.I0(reset_crank__0[0]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(crank_changed_i_4_n_0),
        .I4(Q[3]),
        .I5(reset_crank__0[1]),
        .O(crank_changed_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    crank_changed_i_4
       (.I0(Q[2]),
        .I1(increase_crank),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(crank_changed_i_4_n_0));
  FDCE crank_changed_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(pre_crank_changed),
        .Q(crank_changed));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6EE6)) 
    \crank_counter[0]_i_1 
       (.I0(reset_crank__0[0]),
        .I1(reset_crank__0[1]),
        .I2(Q[0]),
        .I3(increase_crank),
        .O(crank_counter_input[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2A800000)) 
    \crank_counter[1]_i_1 
       (.I0(reset_crank__0[1]),
        .I1(Q[0]),
        .I2(increase_crank),
        .I3(Q[1]),
        .I4(reset_crank__0[0]),
        .O(crank_counter_input[1]));
  LUT6 #(
    .INIT(64'h2AAA8000AAAAAAAA)) 
    \crank_counter[2]_i_1 
       (.I0(reset_crank__0[1]),
        .I1(increase_crank),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(reset_crank__0[0]),
        .O(crank_counter_input[2]));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \crank_counter[2]_i_2 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(efi_on),
        .I4(ckp),
        .I5(last_ckp),
        .O(increase_crank));
  LUT5 #(
    .INIT(32'h2A80AAAA)) 
    \crank_counter[3]_i_1 
       (.I0(reset_crank__0[1]),
        .I1(\crank_counter[4]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(reset_crank__0[0]),
        .O(crank_counter_input[3]));
  LUT6 #(
    .INIT(64'h2AAA8000AAAAAAAA)) 
    \crank_counter[4]_i_1 
       (.I0(reset_crank__0[1]),
        .I1(Q[2]),
        .I2(\crank_counter[4]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(reset_crank__0[0]),
        .O(crank_counter_input[4]));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \crank_counter[4]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(current_state[2]),
        .I5(\crank_counter[4]_i_3_n_0 ),
        .O(\crank_counter[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \crank_counter[4]_i_3 
       (.I0(efi_on),
        .I1(ckp),
        .I2(last_ckp),
        .O(\crank_counter[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h2A800000)) 
    \crank_counter[5]_i_1 
       (.I0(reset_crank__0[1]),
        .I1(\crank_counter[5]_i_4_n_0 ),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(reset_crank__0[0]),
        .O(crank_counter_input[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \crank_counter[5]_i_2 
       (.I0(reset_n),
        .O(reset_n_0));
  LUT6 #(
    .INIT(64'h03030300C8C8C8C8)) 
    \crank_counter[5]_i_3 
       (.I0(ckp),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\crank_counter[5]_i_6_n_0 ),
        .I4(\crank_counter[5]_i_7_n_0 ),
        .I5(current_state[2]),
        .O(reset_crank__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \crank_counter[5]_i_4 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(increase_crank),
        .I4(Q[2]),
        .O(\crank_counter[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0334)) 
    \crank_counter[5]_i_5 
       (.I0(ckp),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(reset_crank__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \crank_counter[5]_i_6 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(last_ckp),
        .I3(ckp),
        .I4(efi_on),
        .O(\crank_counter[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \crank_counter[5]_i_7 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\crank_counter[5]_i_7_n_0 ));
  FDCE \crank_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(crank_counter_input[0]),
        .Q(Q[0]));
  FDCE \crank_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(crank_counter_input[1]),
        .Q(Q[1]));
  FDCE \crank_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(crank_counter_input[2]),
        .Q(Q[2]));
  FDCE \crank_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(crank_counter_input[3]),
        .Q(Q[3]));
  FDCE \crank_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(crank_counter_input[4]),
        .Q(Q[4]));
  FDCE \crank_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(crank_counter_input[5]),
        .Q(Q[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \crank_cycle_counter[11]_i_2 
       (.I0(crank_cycle_counter[11]),
        .I1(reset_crank_cycle),
        .O(\crank_cycle_counter[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \crank_cycle_counter[11]_i_3 
       (.I0(crank_cycle_counter[10]),
        .I1(reset_crank_cycle),
        .O(\crank_cycle_counter[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \crank_cycle_counter[11]_i_4 
       (.I0(crank_cycle_counter[9]),
        .I1(reset_crank_cycle),
        .O(\crank_cycle_counter[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \crank_cycle_counter[11]_i_5 
       (.I0(crank_cycle_counter[8]),
        .I1(reset_crank_cycle),
        .O(\crank_cycle_counter[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \crank_cycle_counter[15]_i_2 
       (.I0(crank_cycle_counter[15]),
        .I1(reset_crank_cycle),
        .O(\crank_cycle_counter[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \crank_cycle_counter[15]_i_3 
       (.I0(crank_cycle_counter[14]),
        .I1(reset_crank_cycle),
        .O(\crank_cycle_counter[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \crank_cycle_counter[15]_i_4 
       (.I0(crank_cycle_counter[13]),
        .I1(reset_crank_cycle),
        .O(\crank_cycle_counter[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \crank_cycle_counter[15]_i_5 
       (.I0(crank_cycle_counter[12]),
        .I1(reset_crank_cycle),
        .O(\crank_cycle_counter[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0009)) 
    \crank_cycle_counter[17]_i_1 
       (.I0(current_state[2]),
        .I1(efi_on),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .O(\crank_cycle_counter[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \crank_cycle_counter[17]_i_3 
       (.I0(crank_cycle_counter[17]),
        .I1(reset_crank_cycle),
        .O(\crank_cycle_counter[17]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \crank_cycle_counter[17]_i_4 
       (.I0(crank_cycle_counter[16]),
        .I1(reset_crank_cycle),
        .O(\crank_cycle_counter[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001100100010001)) 
    \crank_cycle_counter[17]_i_5 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(efi_on),
        .I3(current_state[2]),
        .I4(last_ckp),
        .I5(ckp),
        .O(reset_crank_cycle));
  LUT2 #(
    .INIT(4'h2)) 
    \crank_cycle_counter[3]_i_2 
       (.I0(crank_cycle_counter[0]),
        .I1(reset_crank_cycle),
        .O(\crank_cycle_counter[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \crank_cycle_counter[3]_i_3 
       (.I0(crank_cycle_counter[3]),
        .I1(reset_crank_cycle),
        .O(\crank_cycle_counter[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \crank_cycle_counter[3]_i_4 
       (.I0(crank_cycle_counter[2]),
        .I1(reset_crank_cycle),
        .O(\crank_cycle_counter[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \crank_cycle_counter[3]_i_5 
       (.I0(crank_cycle_counter[1]),
        .I1(reset_crank_cycle),
        .O(\crank_cycle_counter[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \crank_cycle_counter[3]_i_6 
       (.I0(crank_cycle_counter[0]),
        .I1(reset_crank_cycle),
        .O(\crank_cycle_counter[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \crank_cycle_counter[7]_i_2 
       (.I0(crank_cycle_counter[7]),
        .I1(reset_crank_cycle),
        .O(\crank_cycle_counter[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \crank_cycle_counter[7]_i_3 
       (.I0(crank_cycle_counter[6]),
        .I1(reset_crank_cycle),
        .O(\crank_cycle_counter[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \crank_cycle_counter[7]_i_4 
       (.I0(crank_cycle_counter[5]),
        .I1(reset_crank_cycle),
        .O(\crank_cycle_counter[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \crank_cycle_counter[7]_i_5 
       (.I0(crank_cycle_counter[4]),
        .I1(reset_crank_cycle),
        .O(\crank_cycle_counter[7]_i_5_n_0 ));
  FDCE \crank_cycle_counter_reg[0] 
       (.C(clk),
        .CE(\crank_cycle_counter[17]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\crank_cycle_counter_reg[3]_i_1_n_7 ),
        .Q(crank_cycle_counter[0]));
  FDCE \crank_cycle_counter_reg[10] 
       (.C(clk),
        .CE(\crank_cycle_counter[17]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\crank_cycle_counter_reg[11]_i_1_n_5 ),
        .Q(crank_cycle_counter[10]));
  FDCE \crank_cycle_counter_reg[11] 
       (.C(clk),
        .CE(\crank_cycle_counter[17]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\crank_cycle_counter_reg[11]_i_1_n_4 ),
        .Q(crank_cycle_counter[11]));
  CARRY4 \crank_cycle_counter_reg[11]_i_1 
       (.CI(\crank_cycle_counter_reg[7]_i_1_n_0 ),
        .CO({\crank_cycle_counter_reg[11]_i_1_n_0 ,\crank_cycle_counter_reg[11]_i_1_n_1 ,\crank_cycle_counter_reg[11]_i_1_n_2 ,\crank_cycle_counter_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\crank_cycle_counter_reg[11]_i_1_n_4 ,\crank_cycle_counter_reg[11]_i_1_n_5 ,\crank_cycle_counter_reg[11]_i_1_n_6 ,\crank_cycle_counter_reg[11]_i_1_n_7 }),
        .S({\crank_cycle_counter[11]_i_2_n_0 ,\crank_cycle_counter[11]_i_3_n_0 ,\crank_cycle_counter[11]_i_4_n_0 ,\crank_cycle_counter[11]_i_5_n_0 }));
  FDCE \crank_cycle_counter_reg[12] 
       (.C(clk),
        .CE(\crank_cycle_counter[17]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\crank_cycle_counter_reg[15]_i_1_n_7 ),
        .Q(crank_cycle_counter[12]));
  FDCE \crank_cycle_counter_reg[13] 
       (.C(clk),
        .CE(\crank_cycle_counter[17]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\crank_cycle_counter_reg[15]_i_1_n_6 ),
        .Q(crank_cycle_counter[13]));
  FDCE \crank_cycle_counter_reg[14] 
       (.C(clk),
        .CE(\crank_cycle_counter[17]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\crank_cycle_counter_reg[15]_i_1_n_5 ),
        .Q(crank_cycle_counter[14]));
  FDCE \crank_cycle_counter_reg[15] 
       (.C(clk),
        .CE(\crank_cycle_counter[17]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\crank_cycle_counter_reg[15]_i_1_n_4 ),
        .Q(crank_cycle_counter[15]));
  CARRY4 \crank_cycle_counter_reg[15]_i_1 
       (.CI(\crank_cycle_counter_reg[11]_i_1_n_0 ),
        .CO({\crank_cycle_counter_reg[15]_i_1_n_0 ,\crank_cycle_counter_reg[15]_i_1_n_1 ,\crank_cycle_counter_reg[15]_i_1_n_2 ,\crank_cycle_counter_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\crank_cycle_counter_reg[15]_i_1_n_4 ,\crank_cycle_counter_reg[15]_i_1_n_5 ,\crank_cycle_counter_reg[15]_i_1_n_6 ,\crank_cycle_counter_reg[15]_i_1_n_7 }),
        .S({\crank_cycle_counter[15]_i_2_n_0 ,\crank_cycle_counter[15]_i_3_n_0 ,\crank_cycle_counter[15]_i_4_n_0 ,\crank_cycle_counter[15]_i_5_n_0 }));
  FDCE \crank_cycle_counter_reg[16] 
       (.C(clk),
        .CE(\crank_cycle_counter[17]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\crank_cycle_counter_reg[17]_i_2_n_7 ),
        .Q(crank_cycle_counter[16]));
  FDCE \crank_cycle_counter_reg[17] 
       (.C(clk),
        .CE(\crank_cycle_counter[17]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\crank_cycle_counter_reg[17]_i_2_n_6 ),
        .Q(crank_cycle_counter[17]));
  CARRY4 \crank_cycle_counter_reg[17]_i_2 
       (.CI(\crank_cycle_counter_reg[15]_i_1_n_0 ),
        .CO({\NLW_crank_cycle_counter_reg[17]_i_2_CO_UNCONNECTED [3:1],\crank_cycle_counter_reg[17]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_crank_cycle_counter_reg[17]_i_2_O_UNCONNECTED [3:2],\crank_cycle_counter_reg[17]_i_2_n_6 ,\crank_cycle_counter_reg[17]_i_2_n_7 }),
        .S({1'b0,1'b0,\crank_cycle_counter[17]_i_3_n_0 ,\crank_cycle_counter[17]_i_4_n_0 }));
  FDCE \crank_cycle_counter_reg[1] 
       (.C(clk),
        .CE(\crank_cycle_counter[17]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\crank_cycle_counter_reg[3]_i_1_n_6 ),
        .Q(crank_cycle_counter[1]));
  FDCE \crank_cycle_counter_reg[2] 
       (.C(clk),
        .CE(\crank_cycle_counter[17]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\crank_cycle_counter_reg[3]_i_1_n_5 ),
        .Q(crank_cycle_counter[2]));
  FDCE \crank_cycle_counter_reg[3] 
       (.C(clk),
        .CE(\crank_cycle_counter[17]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\crank_cycle_counter_reg[3]_i_1_n_4 ),
        .Q(crank_cycle_counter[3]));
  CARRY4 \crank_cycle_counter_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\crank_cycle_counter_reg[3]_i_1_n_0 ,\crank_cycle_counter_reg[3]_i_1_n_1 ,\crank_cycle_counter_reg[3]_i_1_n_2 ,\crank_cycle_counter_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\crank_cycle_counter[3]_i_2_n_0 }),
        .O({\crank_cycle_counter_reg[3]_i_1_n_4 ,\crank_cycle_counter_reg[3]_i_1_n_5 ,\crank_cycle_counter_reg[3]_i_1_n_6 ,\crank_cycle_counter_reg[3]_i_1_n_7 }),
        .S({\crank_cycle_counter[3]_i_3_n_0 ,\crank_cycle_counter[3]_i_4_n_0 ,\crank_cycle_counter[3]_i_5_n_0 ,\crank_cycle_counter[3]_i_6_n_0 }));
  FDCE \crank_cycle_counter_reg[4] 
       (.C(clk),
        .CE(\crank_cycle_counter[17]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\crank_cycle_counter_reg[7]_i_1_n_7 ),
        .Q(crank_cycle_counter[4]));
  FDCE \crank_cycle_counter_reg[5] 
       (.C(clk),
        .CE(\crank_cycle_counter[17]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\crank_cycle_counter_reg[7]_i_1_n_6 ),
        .Q(crank_cycle_counter[5]));
  FDCE \crank_cycle_counter_reg[6] 
       (.C(clk),
        .CE(\crank_cycle_counter[17]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\crank_cycle_counter_reg[7]_i_1_n_5 ),
        .Q(crank_cycle_counter[6]));
  FDCE \crank_cycle_counter_reg[7] 
       (.C(clk),
        .CE(\crank_cycle_counter[17]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\crank_cycle_counter_reg[7]_i_1_n_4 ),
        .Q(crank_cycle_counter[7]));
  CARRY4 \crank_cycle_counter_reg[7]_i_1 
       (.CI(\crank_cycle_counter_reg[3]_i_1_n_0 ),
        .CO({\crank_cycle_counter_reg[7]_i_1_n_0 ,\crank_cycle_counter_reg[7]_i_1_n_1 ,\crank_cycle_counter_reg[7]_i_1_n_2 ,\crank_cycle_counter_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\crank_cycle_counter_reg[7]_i_1_n_4 ,\crank_cycle_counter_reg[7]_i_1_n_5 ,\crank_cycle_counter_reg[7]_i_1_n_6 ,\crank_cycle_counter_reg[7]_i_1_n_7 }),
        .S({\crank_cycle_counter[7]_i_2_n_0 ,\crank_cycle_counter[7]_i_3_n_0 ,\crank_cycle_counter[7]_i_4_n_0 ,\crank_cycle_counter[7]_i_5_n_0 }));
  FDCE \crank_cycle_counter_reg[8] 
       (.C(clk),
        .CE(\crank_cycle_counter[17]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\crank_cycle_counter_reg[11]_i_1_n_7 ),
        .Q(crank_cycle_counter[8]));
  FDCE \crank_cycle_counter_reg[9] 
       (.C(clk),
        .CE(\crank_cycle_counter[17]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\crank_cycle_counter_reg[11]_i_1_n_6 ),
        .Q(crank_cycle_counter[9]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \inject[0]_INST_0_i_2 
       (.I0(crank_changed),
        .I1(ckp),
        .O(allow_injection0_out));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \inject[1]_INST_0_i_2 
       (.I0(crank_changed),
        .I1(ckp),
        .O(crank_changed_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \inject[1]_INST_0_i_3 
       (.I0(crank_tick),
        .I1(crank_changed),
        .O(next_state1__0));
  FDCE last_ckp_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(ckp),
        .Q(last_ckp));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_hust_efi_0_0,hust_efi,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "hust_efi,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset_n,
    efi_on,
    ckp,
    done,
    btdc_ready,
    crank_counter,
    crank_cycle_counter,
    cal_rpm,
    cal_btdc,
    cal_injection,
    cal_ignition,
    inject,
    ignite,
    update_table,
    fuel_pump);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 2500000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
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

  wire [3:0]btdc_ready;
  wire cal_btdc;
  wire [3:0]cal_injection;
  wire ckp;
  wire clk;
  wire [5:0]crank_counter;
  wire [17:0]crank_cycle_counter;
  wire [3:0]done;
  wire efi_on;
  wire [3:0]fuel_pump;
  wire [3:0]ignite;
  wire [3:0]inject;
  wire reset_n;
  wire [3:0]update_table;

  assign cal_ignition[3:0] = update_table;
  assign cal_rpm = ckp;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hust_efi inst
       (.Q(crank_counter),
        .btdc_ready(btdc_ready),
        .cal_btdc(cal_btdc),
        .cal_injection(cal_injection),
        .ckp(ckp),
        .clk(clk),
        .crank_cycle_counter(crank_cycle_counter),
        .done(done),
        .efi_on(efi_on),
        .fuel_pump(fuel_pump),
        .ignite(ignite),
        .inject(inject),
        .reset_n(reset_n),
        .update_table(update_table));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fuel_injection_control
   (cal_injection,
    inject,
    Q,
    \FSM_sequential_current_state_reg[2]_0 ,
    fuel_pump,
    cal_injection0,
    clk,
    cal_injection_reg_0,
    inject_0_sp_1,
    done,
    ic_on,
    \FSM_sequential_current_state_reg[0]_0 ,
    \FSM_sequential_current_state_reg[0]_1 ,
    D);
  output [0:0]cal_injection;
  output [0:0]inject;
  output [2:0]Q;
  output \FSM_sequential_current_state_reg[2]_0 ;
  output [0:0]fuel_pump;
  input cal_injection0;
  input clk;
  input cal_injection_reg_0;
  input inject_0_sp_1;
  input [0:0]done;
  input [0:0]ic_on;
  input [0:0]\FSM_sequential_current_state_reg[0]_0 ;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input [1:0]D;

  wire [1:0]D;
  wire \FSM_sequential_current_state[2]_i_1__8_n_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire [2:0]Q;
  wire [0:0]cal_injection;
  wire cal_injection0;
  wire cal_injection_reg_0;
  wire clk;
  wire [0:0]done;
  wire [0:0]fuel_pump;
  wire [0:0]ic_on;
  wire [0:0]inject;
  wire inject_0_sn_1;

  assign inject_0_sn_1 = inject_0_sp_1;
  LUT6 #(
    .INIT(64'h0FB00FB0FFFFF0FF)) 
    \FSM_sequential_current_state[0]_i_4__0 
       (.I0(\FSM_sequential_current_state_reg[0]_0 ),
        .I1(\FSM_sequential_current_state_reg[0]_1 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(done),
        .I5(Q[0]),
        .O(\FSM_sequential_current_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h28080808)) 
    \FSM_sequential_current_state[2]_i_1__8 
       (.I0(ic_on),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(inject_0_sn_1),
        .O(\FSM_sequential_current_state[2]_i_1__8_n_0 ));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(cal_injection_reg_0),
        .D(D[0]),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(cal_injection_reg_0),
        .D(D[1]),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(cal_injection_reg_0),
        .D(\FSM_sequential_current_state[2]_i_1__8_n_0 ),
        .Q(Q[2]));
  FDCE cal_injection_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(cal_injection_reg_0),
        .D(cal_injection0),
        .Q(cal_injection));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h3FFE)) 
    \fuel_pump[0]_INST_0 
       (.I0(ic_on),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(fuel_pump));
  LUT5 #(
    .INIT(32'h00800380)) 
    \inject[0]_INST_0 
       (.I0(inject_0_sn_1),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(done),
        .O(inject));
endmodule

(* ORIG_REF_NAME = "fuel_injection_control" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fuel_injection_control_0
   (cal_injection,
    \FSM_sequential_current_state_reg[0]_0 ,
    \FSM_sequential_current_state_reg[2]_0 ,
    inject,
    fuel_pump,
    cal_injection0,
    clk,
    \FSM_sequential_current_state_reg[2]_1 ,
    \FSM_sequential_current_state_reg[0]_1 ,
    Q,
    \FSM_sequential_current_state_reg[0]_2 ,
    ic_on,
    allow_injection,
    done,
    D);
  output [0:0]cal_injection;
  output \FSM_sequential_current_state_reg[0]_0 ;
  output [2:0]\FSM_sequential_current_state_reg[2]_0 ;
  output [0:0]inject;
  output [0:0]fuel_pump;
  input cal_injection0;
  input clk;
  input \FSM_sequential_current_state_reg[2]_1 ;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input [0:0]Q;
  input \FSM_sequential_current_state_reg[0]_2 ;
  input [0:0]ic_on;
  input [0:0]allow_injection;
  input [0:0]done;
  input [1:0]D;

  wire [1:0]D;
  wire \FSM_sequential_current_state[0]_i_7_n_0 ;
  wire \FSM_sequential_current_state[2]_i_1__1_n_0 ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire \FSM_sequential_current_state_reg[0]_2 ;
  wire [2:0]\FSM_sequential_current_state_reg[2]_0 ;
  wire \FSM_sequential_current_state_reg[2]_1 ;
  wire [0:0]Q;
  wire [0:0]allow_injection;
  wire [0:0]cal_injection;
  wire cal_injection0;
  wire clk;
  wire [0:0]done;
  wire [0:0]fuel_pump;
  wire [0:0]ic_on;
  wire [0:0]inject;

  LUT6 #(
    .INIT(64'hFFFFFFFF001D0000)) 
    \FSM_sequential_current_state[0]_i_4 
       (.I0(\FSM_sequential_current_state_reg[0]_1 ),
        .I1(Q),
        .I2(\FSM_sequential_current_state_reg[0]_2 ),
        .I3(\FSM_sequential_current_state_reg[2]_0 [2]),
        .I4(\FSM_sequential_current_state_reg[2]_0 [1]),
        .I5(\FSM_sequential_current_state[0]_i_7_n_0 ),
        .O(\FSM_sequential_current_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h55E5)) 
    \FSM_sequential_current_state[0]_i_7 
       (.I0(\FSM_sequential_current_state_reg[2]_0 [0]),
        .I1(done),
        .I2(\FSM_sequential_current_state_reg[2]_0 [2]),
        .I3(\FSM_sequential_current_state_reg[2]_0 [1]),
        .O(\FSM_sequential_current_state[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h28080808)) 
    \FSM_sequential_current_state[2]_i_1__1 
       (.I0(ic_on),
        .I1(\FSM_sequential_current_state_reg[2]_0 [2]),
        .I2(\FSM_sequential_current_state_reg[2]_0 [1]),
        .I3(\FSM_sequential_current_state_reg[2]_0 [0]),
        .I4(allow_injection),
        .O(\FSM_sequential_current_state[2]_i_1__1_n_0 ));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[2]_1 ),
        .D(D[0]),
        .Q(\FSM_sequential_current_state_reg[2]_0 [0]));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[2]_1 ),
        .D(D[1]),
        .Q(\FSM_sequential_current_state_reg[2]_0 [1]));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[2]_1 ),
        .D(\FSM_sequential_current_state[2]_i_1__1_n_0 ),
        .Q(\FSM_sequential_current_state_reg[2]_0 [2]));
  FDCE cal_injection_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[2]_1 ),
        .D(cal_injection0),
        .Q(cal_injection));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h3FFE)) 
    \fuel_pump[1]_INST_0 
       (.I0(ic_on),
        .I1(\FSM_sequential_current_state_reg[2]_0 [0]),
        .I2(\FSM_sequential_current_state_reg[2]_0 [1]),
        .I3(\FSM_sequential_current_state_reg[2]_0 [2]),
        .O(fuel_pump));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00800380)) 
    \inject[1]_INST_0 
       (.I0(allow_injection),
        .I1(\FSM_sequential_current_state_reg[2]_0 [0]),
        .I2(\FSM_sequential_current_state_reg[2]_0 [1]),
        .I3(\FSM_sequential_current_state_reg[2]_0 [2]),
        .I4(done),
        .O(inject));
endmodule

(* ORIG_REF_NAME = "fuel_injection_control" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fuel_injection_control_2
   (cal_injection,
    \FSM_sequential_current_state_reg[1]_0 ,
    Q,
    inject,
    fuel_pump,
    cal_injection0,
    clk,
    cal_injection_reg_0,
    allow_injection,
    done,
    ic_on,
    D);
  output [0:0]cal_injection;
  output \FSM_sequential_current_state_reg[1]_0 ;
  output [2:0]Q;
  output [0:0]inject;
  output [0:0]fuel_pump;
  input cal_injection0;
  input clk;
  input cal_injection_reg_0;
  input [0:0]allow_injection;
  input [0:0]done;
  input [0:0]ic_on;
  input [1:0]D;

  wire [1:0]D;
  wire \FSM_sequential_current_state[2]_i_1__4_n_0 ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire [2:0]Q;
  wire [0:0]allow_injection;
  wire [0:0]cal_injection;
  wire cal_injection0;
  wire cal_injection_reg_0;
  wire clk;
  wire [0:0]done;
  wire [0:0]fuel_pump;
  wire [0:0]ic_on;
  wire [0:0]inject;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h3434FFCF)) 
    \FSM_sequential_current_state[0]_i_2__0 
       (.I0(allow_injection),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(done),
        .I4(Q[0]),
        .O(\FSM_sequential_current_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h28080808)) 
    \FSM_sequential_current_state[2]_i_1__4 
       (.I0(ic_on),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(allow_injection),
        .O(\FSM_sequential_current_state[2]_i_1__4_n_0 ));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(cal_injection_reg_0),
        .D(D[0]),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(cal_injection_reg_0),
        .D(D[1]),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(cal_injection_reg_0),
        .D(\FSM_sequential_current_state[2]_i_1__4_n_0 ),
        .Q(Q[2]));
  FDCE cal_injection_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(cal_injection_reg_0),
        .D(cal_injection0),
        .Q(cal_injection));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h3FFE)) 
    \fuel_pump[2]_INST_0 
       (.I0(ic_on),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(fuel_pump));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00800380)) 
    \inject[2]_INST_0 
       (.I0(allow_injection),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(done),
        .O(inject));
endmodule

(* ORIG_REF_NAME = "fuel_injection_control" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fuel_injection_control_4
   (cal_injection,
    Q,
    \FSM_sequential_current_state_reg[1]_0 ,
    inject,
    fuel_pump,
    cal_injection0,
    clk,
    \FSM_sequential_current_state_reg[2]_0 ,
    ic_on,
    \FSM_sequential_current_state_reg[1]_1 ,
    allow_injection,
    done,
    D);
  output [0:0]cal_injection;
  output [1:0]Q;
  output \FSM_sequential_current_state_reg[1]_0 ;
  output [0:0]inject;
  output [0:0]fuel_pump;
  input cal_injection0;
  input clk;
  input \FSM_sequential_current_state_reg[2]_0 ;
  input [0:0]ic_on;
  input \FSM_sequential_current_state_reg[1]_1 ;
  input [0:0]allow_injection;
  input [0:0]done;
  input [0:0]D;

  wire [0:0]D;
  wire \FSM_sequential_current_state[1]_i_1__2_n_0 ;
  wire \FSM_sequential_current_state[2]_i_1__9_n_0 ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire \FSM_sequential_current_state_reg[1]_1 ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire [1:0]Q;
  wire [0:0]allow_injection;
  wire [0:0]cal_injection;
  wire cal_injection0;
  wire clk;
  wire [2:2]current_state;
  wire [0:0]done;
  wire [0:0]fuel_pump;
  wire [0:0]ic_on;
  wire [0:0]inject;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h3434FFCF)) 
    \FSM_sequential_current_state[0]_i_2__2 
       (.I0(allow_injection),
        .I1(Q[1]),
        .I2(current_state),
        .I3(done),
        .I4(Q[0]),
        .O(\FSM_sequential_current_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h000A8A000A0A8A00)) 
    \FSM_sequential_current_state[1]_i_1__2 
       (.I0(ic_on),
        .I1(\FSM_sequential_current_state_reg[1]_1 ),
        .I2(current_state),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(allow_injection),
        .O(\FSM_sequential_current_state[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h28080808)) 
    \FSM_sequential_current_state[2]_i_1__9 
       (.I0(ic_on),
        .I1(current_state),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(allow_injection),
        .O(\FSM_sequential_current_state[2]_i_1__9_n_0 ));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[2]_0 ),
        .D(D),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[2]_0 ),
        .D(\FSM_sequential_current_state[1]_i_1__2_n_0 ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[2]_0 ),
        .D(\FSM_sequential_current_state[2]_i_1__9_n_0 ),
        .Q(current_state));
  FDCE cal_injection_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[2]_0 ),
        .D(cal_injection0),
        .Q(cal_injection));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h3FFE)) 
    \fuel_pump[3]_INST_0 
       (.I0(ic_on),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(current_state),
        .O(fuel_pump));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00800380)) 
    \inject[3]_INST_0 
       (.I0(allow_injection),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(current_state),
        .I4(done),
        .O(inject));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hust_efi
   (Q,
    crank_cycle_counter,
    update_table,
    cal_injection,
    cal_btdc,
    ignite,
    inject,
    fuel_pump,
    ckp,
    efi_on,
    clk,
    btdc_ready,
    done,
    reset_n);
  output [5:0]Q;
  output [17:0]crank_cycle_counter;
  output [3:0]update_table;
  output [3:0]cal_injection;
  output cal_btdc;
  output [3:0]ignite;
  output [3:0]inject;
  output [3:0]fuel_pump;
  input ckp;
  input efi_on;
  input clk;
  input [3:0]btdc_ready;
  input [3:0]done;
  input reset_n;

  wire [5:0]Q;
  wire [3:1]allow_injection;
  wire [3:0]btdc_ready;
  wire cal_btdc;
  wire [3:0]cal_injection;
  wire cal_injection0;
  wire cal_injection0_6;
  wire cal_injection0_7;
  wire cal_injection0_8;
  wire cal_injection1;
  wire ckp;
  wire clk;
  wire crank_changed;
  wire [17:0]crank_cycle_counter;
  wire crank_position_control_inst_n_0;
  wire crank_position_control_inst_n_26;
  wire crank_position_control_inst_n_30;
  wire crank_position_control_inst_n_33;
  wire crank_position_control_inst_n_34;
  wire crank_position_control_inst_n_35;
  wire crank_position_control_inst_n_36;
  wire crank_position_control_inst_n_37;
  wire crank_position_control_inst_n_38;
  wire crank_tick;
  wire [2:0]current_state;
  wire [2:0]current_state_0;
  wire [2:0]current_state_1;
  wire [2:0]current_state_2;
  wire [2:0]current_state_3;
  wire [2:0]current_state_4;
  wire [1:0]current_state_5;
  wire [3:0]done;
  wire efi_on;
  wire [3:0]fuel_pump;
  wire \genblk1[0].fic_n_5 ;
  wire \genblk1[1].fic_n_1 ;
  wire \genblk1[2].fic_n_1 ;
  wire \genblk1[3].fic_n_3 ;
  wire \genblk1_2.stc00/allow_injection0_out ;
  wire [2:0]\genblk1_2.stc00/current_state ;
  wire [1:0]\genblk1_2.stc01/current_state ;
  wire [2:0]\genblk1_2.stc10/current_state ;
  wire \genblk1_2.stc10/next_state1__0 ;
  wire [2:0]\genblk1_2.stc11/current_state ;
  wire [3:0]ic_on;
  wire [3:0]ignite;
  wire [3:0]inject;
  wire reset_n;
  wire stroke_transition_inst_n_0;
  wire stroke_transition_inst_n_11;
  wire stroke_transition_inst_n_12;
  wire stroke_transition_inst_n_14;
  wire stroke_transition_inst_n_15;
  wire stroke_transition_inst_n_16;
  wire stroke_transition_inst_n_17;
  wire stroke_transition_inst_n_18;
  wire stroke_transition_inst_n_29;
  wire stroke_transition_inst_n_3;
  wire stroke_transition_inst_n_30;
  wire stroke_transition_inst_n_31;
  wire stroke_transition_inst_n_32;
  wire stroke_transition_inst_n_33;
  wire stroke_transition_inst_n_34;
  wire stroke_transition_inst_n_35;
  wire stroke_transition_inst_n_37;
  wire stroke_transition_inst_n_39;
  wire stroke_transition_inst_n_40;
  wire stroke_transition_inst_n_41;
  wire stroke_transition_inst_n_8;
  wire [3:0]update_table;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_crank_position_control crank_position_control_inst
       (.\FSM_sequential_current_state[0]_i_4 (\genblk1_2.stc11/current_state ),
        .\FSM_sequential_current_state[2]_i_2__0 (\genblk1_2.stc01/current_state ),
        .\FSM_sequential_current_state_reg[0]_0 (\genblk1_2.stc00/current_state [0]),
        .\FSM_sequential_current_state_reg[2]_0 (crank_position_control_inst_n_33),
        .\FSM_sequential_current_state_reg[2]_1 (\genblk1_2.stc10/current_state ),
        .Q(Q),
        .allow_injection0_out(\genblk1_2.stc00/allow_injection0_out ),
        .cal_btdc(cal_btdc),
        .cal_injection1(cal_injection1),
        .ckp(ckp),
        .ckp_0(crank_position_control_inst_n_26),
        .clk(clk),
        .crank_changed(crank_changed),
        .crank_changed_reg_0(crank_position_control_inst_n_30),
        .crank_changed_reg_1(crank_position_control_inst_n_35),
        .crank_changed_reg_2(crank_position_control_inst_n_36),
        .crank_changed_reg_3(crank_position_control_inst_n_37),
        .crank_changed_reg_4(crank_position_control_inst_n_38),
        .crank_cycle_counter(crank_cycle_counter),
        .crank_tick(crank_tick),
        .efi_on(efi_on),
        .efi_on_0(crank_position_control_inst_n_34),
        .next_state1__0(\genblk1_2.stc10/next_state1__0 ),
        .reset_n(reset_n),
        .reset_n_0(crank_position_control_inst_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fuel_injection_control \genblk1[0].fic 
       (.D({stroke_transition_inst_n_14,stroke_transition_inst_n_15}),
        .\FSM_sequential_current_state_reg[0]_0 (\genblk1_2.stc00/current_state [2]),
        .\FSM_sequential_current_state_reg[0]_1 (stroke_transition_inst_n_40),
        .\FSM_sequential_current_state_reg[2]_0 (\genblk1[0].fic_n_5 ),
        .Q(current_state),
        .cal_injection(cal_injection[0]),
        .cal_injection0(cal_injection0_8),
        .cal_injection_reg_0(crank_position_control_inst_n_0),
        .clk(clk),
        .done(done[0]),
        .fuel_pump(fuel_pump[0]),
        .ic_on(ic_on[0]),
        .inject(inject[0]),
        .inject_0_sp_1(stroke_transition_inst_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ignition_control \genblk1[0].ic 
       (.D(stroke_transition_inst_n_11),
        .Q(current_state_0),
        .cal_ignition_reg_0(stroke_transition_inst_n_16),
        .cal_ignition_reg_1(crank_position_control_inst_n_0),
        .clk(clk),
        .ic_on(ic_on[0]),
        .ignite(ignite[0]),
        .ignite_0_sp_1(stroke_transition_inst_n_12),
        .update_table(update_table[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fuel_injection_control_0 \genblk1[1].fic 
       (.D({stroke_transition_inst_n_17,stroke_transition_inst_n_18}),
        .\FSM_sequential_current_state_reg[0]_0 (\genblk1[1].fic_n_1 ),
        .\FSM_sequential_current_state_reg[0]_1 (stroke_transition_inst_n_31),
        .\FSM_sequential_current_state_reg[0]_2 (crank_position_control_inst_n_26),
        .\FSM_sequential_current_state_reg[2]_0 (current_state_1),
        .\FSM_sequential_current_state_reg[2]_1 (crank_position_control_inst_n_0),
        .Q(\genblk1_2.stc11/current_state [0]),
        .allow_injection(allow_injection[1]),
        .cal_injection(cal_injection[1]),
        .cal_injection0(cal_injection0_6),
        .clk(clk),
        .done(done[1]),
        .fuel_pump(fuel_pump[1]),
        .ic_on(ic_on[1]),
        .inject(inject[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ignition_control_1 \genblk1[1].ic 
       (.D(stroke_transition_inst_n_32),
        .\FSM_sequential_current_state_reg[0]_0 (crank_position_control_inst_n_0),
        .Q(current_state_2),
        .cal_ignition_reg_0(stroke_transition_inst_n_37),
        .clk(clk),
        .ic_on(ic_on[1]),
        .ignite(ignite[1]),
        .\ignite[1] (stroke_transition_inst_n_33),
        .update_table(update_table[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fuel_injection_control_2 \genblk1[2].fic 
       (.D({stroke_transition_inst_n_34,stroke_transition_inst_n_35}),
        .\FSM_sequential_current_state_reg[1]_0 (\genblk1[2].fic_n_1 ),
        .Q(current_state_3),
        .allow_injection(allow_injection[2]),
        .cal_injection(cal_injection[2]),
        .cal_injection0(cal_injection0),
        .cal_injection_reg_0(crank_position_control_inst_n_0),
        .clk(clk),
        .done(done[2]),
        .fuel_pump(fuel_pump[2]),
        .ic_on(ic_on[2]),
        .inject(inject[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ignition_control_3 \genblk1[2].ic 
       (.D(stroke_transition_inst_n_3),
        .Q(current_state_4),
        .cal_ignition_reg_0(stroke_transition_inst_n_39),
        .cal_ignition_reg_1(crank_position_control_inst_n_0),
        .clk(clk),
        .ic_on(ic_on[2]),
        .ignite(ignite[2]),
        .\ignite[2] (stroke_transition_inst_n_8),
        .update_table(update_table[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fuel_injection_control_4 \genblk1[3].fic 
       (.D(stroke_transition_inst_n_29),
        .\FSM_sequential_current_state_reg[1]_0 (\genblk1[3].fic_n_3 ),
        .\FSM_sequential_current_state_reg[1]_1 (crank_position_control_inst_n_33),
        .\FSM_sequential_current_state_reg[2]_0 (crank_position_control_inst_n_0),
        .Q(current_state_5),
        .allow_injection(allow_injection[3]),
        .cal_injection(cal_injection[3]),
        .cal_injection0(cal_injection0_7),
        .clk(clk),
        .done(done[3]),
        .fuel_pump(fuel_pump[3]),
        .ic_on(ic_on[3]),
        .inject(inject[3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ignition_control_5 \genblk1[3].ic 
       (.\FSM_sequential_current_state_reg[0]_0 (crank_position_control_inst_n_0),
        .\FSM_sequential_current_state_reg[2]_0 (stroke_transition_inst_n_41),
        .cal_ignition_reg_0(stroke_transition_inst_n_30),
        .cal_injection1(cal_injection1),
        .clk(clk),
        .ic_on(ic_on[3]),
        .ignite(ignite[3]),
        .update_table(update_table[3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stroke_transition stroke_transition_inst
       (.D(stroke_transition_inst_n_3),
        .\FSM_sequential_current_state_reg[0] (stroke_transition_inst_n_12),
        .\FSM_sequential_current_state_reg[0]_0 (stroke_transition_inst_n_16),
        .\FSM_sequential_current_state_reg[0]_1 (stroke_transition_inst_n_29),
        .\FSM_sequential_current_state_reg[0]_10 (crank_position_control_inst_n_36),
        .\FSM_sequential_current_state_reg[0]_11 (crank_position_control_inst_n_37),
        .\FSM_sequential_current_state_reg[0]_12 (crank_position_control_inst_n_0),
        .\FSM_sequential_current_state_reg[0]_2 (stroke_transition_inst_n_37),
        .\FSM_sequential_current_state_reg[0]_3 (\genblk1[0].fic_n_5 ),
        .\FSM_sequential_current_state_reg[0]_4 (\genblk1[1].fic_n_1 ),
        .\FSM_sequential_current_state_reg[0]_5 (crank_position_control_inst_n_38),
        .\FSM_sequential_current_state_reg[0]_6 (current_state_5),
        .\FSM_sequential_current_state_reg[0]_7 (\genblk1[3].fic_n_3 ),
        .\FSM_sequential_current_state_reg[0]_8 (\genblk1[2].fic_n_1 ),
        .\FSM_sequential_current_state_reg[0]_9 (crank_position_control_inst_n_35),
        .\FSM_sequential_current_state_reg[1] (stroke_transition_inst_n_8),
        .\FSM_sequential_current_state_reg[1]_0 (\genblk1_2.stc01/current_state ),
        .\FSM_sequential_current_state_reg[1]_1 (crank_position_control_inst_n_30),
        .\FSM_sequential_current_state_reg[1]_2 (current_state),
        .\FSM_sequential_current_state_reg[1]_3 (current_state_1),
        .\FSM_sequential_current_state_reg[1]_4 (current_state_3),
        .\FSM_sequential_current_state_reg[1]_5 (crank_position_control_inst_n_34),
        .\FSM_sequential_current_state_reg[2] (stroke_transition_inst_n_11),
        .\FSM_sequential_current_state_reg[2]_0 ({stroke_transition_inst_n_14,stroke_transition_inst_n_15}),
        .\FSM_sequential_current_state_reg[2]_1 ({stroke_transition_inst_n_17,stroke_transition_inst_n_18}),
        .\FSM_sequential_current_state_reg[2]_10 (current_state_4),
        .\FSM_sequential_current_state_reg[2]_11 (current_state_0),
        .\FSM_sequential_current_state_reg[2]_12 (current_state_2),
        .\FSM_sequential_current_state_reg[2]_2 (\genblk1_2.stc11/current_state ),
        .\FSM_sequential_current_state_reg[2]_3 (\genblk1_2.stc10/current_state ),
        .\FSM_sequential_current_state_reg[2]_4 (stroke_transition_inst_n_31),
        .\FSM_sequential_current_state_reg[2]_5 (stroke_transition_inst_n_32),
        .\FSM_sequential_current_state_reg[2]_6 (stroke_transition_inst_n_33),
        .\FSM_sequential_current_state_reg[2]_7 ({stroke_transition_inst_n_34,stroke_transition_inst_n_35}),
        .\FSM_sequential_current_state_reg[2]_8 (stroke_transition_inst_n_39),
        .\FSM_sequential_current_state_reg[2]_9 (stroke_transition_inst_n_41),
        .Q({\genblk1_2.stc00/current_state [2],\genblk1_2.stc00/current_state [0]}),
        .allow_injection(allow_injection),
        .allow_injection0_out(\genblk1_2.stc00/allow_injection0_out ),
        .btdc_ready(btdc_ready),
        .cal_injection0(cal_injection0_8),
        .cal_injection0_0(cal_injection0_7),
        .cal_injection0_1(cal_injection0_6),
        .cal_injection0_2(cal_injection0),
        .ckp(ckp),
        .ckp_0(stroke_transition_inst_n_40),
        .clk(clk),
        .crank_changed(crank_changed),
        .crank_tick(crank_tick),
        .efi_on(efi_on),
        .efi_on_0(stroke_transition_inst_n_0),
        .efi_on_1(stroke_transition_inst_n_30),
        .ic_on(ic_on),
        .next_state1__0(\genblk1_2.stc10/next_state1__0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ignition_control
   (update_table,
    ignite,
    Q,
    cal_ignition_reg_0,
    clk,
    cal_ignition_reg_1,
    ignite_0_sp_1,
    ic_on,
    D);
  output [0:0]update_table;
  output [0:0]ignite;
  output [2:0]Q;
  input cal_ignition_reg_0;
  input clk;
  input cal_ignition_reg_1;
  input ignite_0_sp_1;
  input [0:0]ic_on;
  input [0:0]D;

  wire [0:0]D;
  wire \FSM_sequential_current_state[0]_i_1__6_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1__5_n_0 ;
  wire [2:0]Q;
  wire cal_ignition_reg_0;
  wire cal_ignition_reg_1;
  wire clk;
  wire [0:0]ic_on;
  wire [0:0]ignite;
  wire ignite_0_sn_1;
  wire [0:0]update_table;

  assign ignite_0_sn_1 = ignite_0_sp_1;
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h0A0A20AA)) 
    \FSM_sequential_current_state[0]_i_1__6 
       (.I0(ic_on),
        .I1(ignite_0_sn_1),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\FSM_sequential_current_state[0]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h02222020)) 
    \FSM_sequential_current_state[1]_i_1__5 
       (.I0(ic_on),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ignite_0_sn_1),
        .I4(Q[1]),
        .O(\FSM_sequential_current_state[1]_i_1__5_n_0 ));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(cal_ignition_reg_1),
        .D(\FSM_sequential_current_state[0]_i_1__6_n_0 ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(cal_ignition_reg_1),
        .D(\FSM_sequential_current_state[1]_i_1__5_n_0 ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(cal_ignition_reg_1),
        .D(D),
        .Q(Q[2]));
  FDCE cal_ignition_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(cal_ignition_reg_1),
        .D(cal_ignition_reg_0),
        .Q(update_table));
  LUT4 #(
    .INIT(16'h2000)) 
    \ignite[0]_INST_0 
       (.I0(ignite_0_sn_1),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(ignite));
endmodule

(* ORIG_REF_NAME = "ignition_control" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ignition_control_1
   (update_table,
    ignite,
    Q,
    cal_ignition_reg_0,
    clk,
    \FSM_sequential_current_state_reg[0]_0 ,
    \ignite[1] ,
    ic_on,
    D);
  output [0:0]update_table;
  output [0:0]ignite;
  output [2:0]Q;
  input cal_ignition_reg_0;
  input clk;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input \ignite[1] ;
  input [0:0]ic_on;
  input [0:0]D;

  wire [0:0]D;
  wire \FSM_sequential_current_state[0]_i_1__4_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1__3_n_0 ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire [2:0]Q;
  wire cal_ignition_reg_0;
  wire clk;
  wire [0:0]ic_on;
  wire [0:0]ignite;
  wire \ignite[1] ;
  wire [0:0]update_table;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0A0A20AA)) 
    \FSM_sequential_current_state[0]_i_1__4 
       (.I0(ic_on),
        .I1(\ignite[1] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\FSM_sequential_current_state[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h02222020)) 
    \FSM_sequential_current_state[1]_i_1__3 
       (.I0(ic_on),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\ignite[1] ),
        .I4(Q[1]),
        .O(\FSM_sequential_current_state[1]_i_1__3_n_0 ));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[0]_0 ),
        .D(\FSM_sequential_current_state[0]_i_1__4_n_0 ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[0]_0 ),
        .D(\FSM_sequential_current_state[1]_i_1__3_n_0 ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[0]_0 ),
        .D(D),
        .Q(Q[2]));
  FDCE cal_ignition_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[0]_0 ),
        .D(cal_ignition_reg_0),
        .Q(update_table));
  LUT4 #(
    .INIT(16'h2000)) 
    \ignite[1]_INST_0 
       (.I0(\ignite[1] ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(ignite));
endmodule

(* ORIG_REF_NAME = "ignition_control" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ignition_control_3
   (update_table,
    ignite,
    Q,
    cal_ignition_reg_0,
    clk,
    cal_ignition_reg_1,
    \ignite[2] ,
    ic_on,
    D);
  output [0:0]update_table;
  output [0:0]ignite;
  output [2:0]Q;
  input cal_ignition_reg_0;
  input clk;
  input cal_ignition_reg_1;
  input \ignite[2] ;
  input [0:0]ic_on;
  input [0:0]D;

  wire [0:0]D;
  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire [2:0]Q;
  wire cal_ignition_reg_0;
  wire cal_ignition_reg_1;
  wire clk;
  wire [0:0]ic_on;
  wire [0:0]ignite;
  wire \ignite[2] ;
  wire [0:0]update_table;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h0A0A20AA)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(ic_on),
        .I1(\ignite[2] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h02222020)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(ic_on),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\ignite[2] ),
        .I4(Q[1]),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(cal_ignition_reg_1),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(cal_ignition_reg_1),
        .D(\FSM_sequential_current_state[1]_i_1_n_0 ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(cal_ignition_reg_1),
        .D(D),
        .Q(Q[2]));
  FDCE cal_ignition_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(cal_ignition_reg_1),
        .D(cal_ignition_reg_0),
        .Q(update_table));
  LUT4 #(
    .INIT(16'h2000)) 
    \ignite[2]_INST_0 
       (.I0(\ignite[2] ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(ignite));
endmodule

(* ORIG_REF_NAME = "ignition_control" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ignition_control_5
   (update_table,
    ignite,
    cal_ignition_reg_0,
    clk,
    \FSM_sequential_current_state_reg[0]_0 ,
    cal_injection1,
    ic_on,
    \FSM_sequential_current_state_reg[2]_0 );
  output [0:0]update_table;
  output [0:0]ignite;
  input cal_ignition_reg_0;
  input clk;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input cal_injection1;
  input [0:0]ic_on;
  input \FSM_sequential_current_state_reg[2]_0 ;

  wire \FSM_sequential_current_state[0]_i_1__10_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1__9_n_0 ;
  wire \FSM_sequential_current_state[2]_i_1__2_n_0 ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire cal_ignition_reg_0;
  wire cal_injection1;
  wire clk;
  wire [2:0]current_state;
  wire [0:0]ic_on;
  wire [0:0]ignite;
  wire [0:0]update_table;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h0A0A20AA)) 
    \FSM_sequential_current_state[0]_i_1__10 
       (.I0(ic_on),
        .I1(\FSM_sequential_current_state_reg[2]_0 ),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(current_state[2]),
        .O(\FSM_sequential_current_state[0]_i_1__10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h02222020)) 
    \FSM_sequential_current_state[1]_i_1__9 
       (.I0(ic_on),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(\FSM_sequential_current_state_reg[2]_0 ),
        .I4(current_state[1]),
        .O(\FSM_sequential_current_state[1]_i_1__9_n_0 ));
  LUT6 #(
    .INIT(64'h0C4000C0004000C0)) 
    \FSM_sequential_current_state[2]_i_1__2 
       (.I0(cal_injection1),
        .I1(ic_on),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(\FSM_sequential_current_state_reg[2]_0 ),
        .O(\FSM_sequential_current_state[2]_i_1__2_n_0 ));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[0]_0 ),
        .D(\FSM_sequential_current_state[0]_i_1__10_n_0 ),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[0]_0 ),
        .D(\FSM_sequential_current_state[1]_i_1__9_n_0 ),
        .Q(current_state[1]));
  (* FSM_ENCODED_STATES = "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[0]_0 ),
        .D(\FSM_sequential_current_state[2]_i_1__2_n_0 ),
        .Q(current_state[2]));
  FDCE cal_ignition_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[0]_0 ),
        .D(cal_ignition_reg_0),
        .Q(update_table));
  LUT4 #(
    .INIT(16'h2000)) 
    \ignite[3]_INST_0 
       (.I0(\FSM_sequential_current_state_reg[2]_0 ),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .O(ignite));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stroke_transition
   (efi_on_0,
    Q,
    D,
    ic_on,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[1]_0 ,
    \FSM_sequential_current_state_reg[2] ,
    \FSM_sequential_current_state_reg[0] ,
    cal_injection0,
    \FSM_sequential_current_state_reg[2]_0 ,
    \FSM_sequential_current_state_reg[0]_0 ,
    \FSM_sequential_current_state_reg[2]_1 ,
    allow_injection,
    \FSM_sequential_current_state_reg[2]_2 ,
    \FSM_sequential_current_state_reg[2]_3 ,
    cal_injection0_0,
    \FSM_sequential_current_state_reg[0]_1 ,
    efi_on_1,
    \FSM_sequential_current_state_reg[2]_4 ,
    \FSM_sequential_current_state_reg[2]_5 ,
    \FSM_sequential_current_state_reg[2]_6 ,
    \FSM_sequential_current_state_reg[2]_7 ,
    cal_injection0_1,
    \FSM_sequential_current_state_reg[0]_2 ,
    cal_injection0_2,
    \FSM_sequential_current_state_reg[2]_8 ,
    ckp_0,
    \FSM_sequential_current_state_reg[2]_9 ,
    efi_on,
    next_state1__0,
    allow_injection0_out,
    \FSM_sequential_current_state_reg[2]_10 ,
    \FSM_sequential_current_state_reg[1]_1 ,
    btdc_ready,
    \FSM_sequential_current_state_reg[2]_11 ,
    crank_tick,
    \FSM_sequential_current_state_reg[1]_2 ,
    \FSM_sequential_current_state_reg[0]_3 ,
    \FSM_sequential_current_state_reg[1]_3 ,
    \FSM_sequential_current_state_reg[0]_4 ,
    \FSM_sequential_current_state_reg[0]_5 ,
    \FSM_sequential_current_state_reg[0]_6 ,
    \FSM_sequential_current_state_reg[0]_7 ,
    crank_changed,
    \FSM_sequential_current_state_reg[2]_12 ,
    \FSM_sequential_current_state_reg[1]_4 ,
    \FSM_sequential_current_state_reg[0]_8 ,
    \FSM_sequential_current_state_reg[1]_5 ,
    \FSM_sequential_current_state_reg[0]_9 ,
    \FSM_sequential_current_state_reg[0]_10 ,
    \FSM_sequential_current_state_reg[0]_11 ,
    ckp,
    clk,
    \FSM_sequential_current_state_reg[0]_12 );
  output efi_on_0;
  output [1:0]Q;
  output [0:0]D;
  output [3:0]ic_on;
  output \FSM_sequential_current_state_reg[1] ;
  output [1:0]\FSM_sequential_current_state_reg[1]_0 ;
  output [0:0]\FSM_sequential_current_state_reg[2] ;
  output \FSM_sequential_current_state_reg[0] ;
  output cal_injection0;
  output [1:0]\FSM_sequential_current_state_reg[2]_0 ;
  output \FSM_sequential_current_state_reg[0]_0 ;
  output [1:0]\FSM_sequential_current_state_reg[2]_1 ;
  output [2:0]allow_injection;
  output [2:0]\FSM_sequential_current_state_reg[2]_2 ;
  output [2:0]\FSM_sequential_current_state_reg[2]_3 ;
  output cal_injection0_0;
  output [0:0]\FSM_sequential_current_state_reg[0]_1 ;
  output efi_on_1;
  output \FSM_sequential_current_state_reg[2]_4 ;
  output [0:0]\FSM_sequential_current_state_reg[2]_5 ;
  output \FSM_sequential_current_state_reg[2]_6 ;
  output [1:0]\FSM_sequential_current_state_reg[2]_7 ;
  output cal_injection0_1;
  output \FSM_sequential_current_state_reg[0]_2 ;
  output cal_injection0_2;
  output \FSM_sequential_current_state_reg[2]_8 ;
  output ckp_0;
  output \FSM_sequential_current_state_reg[2]_9 ;
  input efi_on;
  input next_state1__0;
  input allow_injection0_out;
  input [2:0]\FSM_sequential_current_state_reg[2]_10 ;
  input \FSM_sequential_current_state_reg[1]_1 ;
  input [3:0]btdc_ready;
  input [2:0]\FSM_sequential_current_state_reg[2]_11 ;
  input crank_tick;
  input [2:0]\FSM_sequential_current_state_reg[1]_2 ;
  input \FSM_sequential_current_state_reg[0]_3 ;
  input [2:0]\FSM_sequential_current_state_reg[1]_3 ;
  input \FSM_sequential_current_state_reg[0]_4 ;
  input \FSM_sequential_current_state_reg[0]_5 ;
  input [1:0]\FSM_sequential_current_state_reg[0]_6 ;
  input \FSM_sequential_current_state_reg[0]_7 ;
  input crank_changed;
  input [2:0]\FSM_sequential_current_state_reg[2]_12 ;
  input [2:0]\FSM_sequential_current_state_reg[1]_4 ;
  input \FSM_sequential_current_state_reg[0]_8 ;
  input \FSM_sequential_current_state_reg[1]_5 ;
  input \FSM_sequential_current_state_reg[0]_9 ;
  input \FSM_sequential_current_state_reg[0]_10 ;
  input \FSM_sequential_current_state_reg[0]_11 ;
  input ckp;
  input clk;
  input \FSM_sequential_current_state_reg[0]_12 ;

  wire [0:0]D;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[0]_1 ;
  wire \FSM_sequential_current_state_reg[0]_10 ;
  wire \FSM_sequential_current_state_reg[0]_11 ;
  wire \FSM_sequential_current_state_reg[0]_12 ;
  wire \FSM_sequential_current_state_reg[0]_2 ;
  wire \FSM_sequential_current_state_reg[0]_3 ;
  wire \FSM_sequential_current_state_reg[0]_4 ;
  wire \FSM_sequential_current_state_reg[0]_5 ;
  wire [1:0]\FSM_sequential_current_state_reg[0]_6 ;
  wire \FSM_sequential_current_state_reg[0]_7 ;
  wire \FSM_sequential_current_state_reg[0]_8 ;
  wire \FSM_sequential_current_state_reg[0]_9 ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire [1:0]\FSM_sequential_current_state_reg[1]_0 ;
  wire \FSM_sequential_current_state_reg[1]_1 ;
  wire [2:0]\FSM_sequential_current_state_reg[1]_2 ;
  wire [2:0]\FSM_sequential_current_state_reg[1]_3 ;
  wire [2:0]\FSM_sequential_current_state_reg[1]_4 ;
  wire \FSM_sequential_current_state_reg[1]_5 ;
  wire [0:0]\FSM_sequential_current_state_reg[2] ;
  wire [1:0]\FSM_sequential_current_state_reg[2]_0 ;
  wire [1:0]\FSM_sequential_current_state_reg[2]_1 ;
  wire [2:0]\FSM_sequential_current_state_reg[2]_10 ;
  wire [2:0]\FSM_sequential_current_state_reg[2]_11 ;
  wire [2:0]\FSM_sequential_current_state_reg[2]_12 ;
  wire [2:0]\FSM_sequential_current_state_reg[2]_2 ;
  wire [2:0]\FSM_sequential_current_state_reg[2]_3 ;
  wire \FSM_sequential_current_state_reg[2]_4 ;
  wire [0:0]\FSM_sequential_current_state_reg[2]_5 ;
  wire \FSM_sequential_current_state_reg[2]_6 ;
  wire [1:0]\FSM_sequential_current_state_reg[2]_7 ;
  wire \FSM_sequential_current_state_reg[2]_8 ;
  wire \FSM_sequential_current_state_reg[2]_9 ;
  wire [1:0]Q;
  wire [2:0]allow_injection;
  wire allow_injection0_out;
  wire [3:0]btdc_ready;
  wire cal_injection0;
  wire cal_injection0_0;
  wire cal_injection0_1;
  wire cal_injection0_2;
  wire ckp;
  wire ckp_0;
  wire clk;
  wire crank_changed;
  wire crank_tick;
  wire efi_on;
  wire efi_on_0;
  wire efi_on_1;
  wire [3:0]ic_on;
  wire next_state1__0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stroke_transition_00 \genblk1_2.stc00 
       (.\FSM_sequential_current_state_reg[0]_0 (ic_on[0]),
        .\FSM_sequential_current_state_reg[0]_1 (\FSM_sequential_current_state_reg[0] ),
        .\FSM_sequential_current_state_reg[0]_2 (\FSM_sequential_current_state_reg[0]_0 ),
        .\FSM_sequential_current_state_reg[0]_3 (\FSM_sequential_current_state_reg[1]_1 ),
        .\FSM_sequential_current_state_reg[0]_4 (\FSM_sequential_current_state_reg[0]_3 ),
        .\FSM_sequential_current_state_reg[0]_5 (\FSM_sequential_current_state_reg[0]_9 ),
        .\FSM_sequential_current_state_reg[1]_0 (\FSM_sequential_current_state_reg[1]_2 ),
        .\FSM_sequential_current_state_reg[2]_0 (\FSM_sequential_current_state_reg[2] ),
        .\FSM_sequential_current_state_reg[2]_1 (\FSM_sequential_current_state_reg[2]_0 ),
        .\FSM_sequential_current_state_reg[2]_2 (\FSM_sequential_current_state_reg[2]_11 ),
        .\FSM_sequential_current_state_reg[2]_3 (\FSM_sequential_current_state_reg[0]_12 ),
        .Q(Q),
        .allow_injection0_out(allow_injection0_out),
        .btdc_ready(btdc_ready[0]),
        .cal_injection0(cal_injection0),
        .ckp(ckp),
        .ckp_0(ckp_0),
        .clk(clk),
        .crank_changed(crank_changed),
        .crank_tick(crank_tick),
        .efi_on(efi_on),
        .efi_on_0(efi_on_0),
        .next_state1__0(next_state1__0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stroke_transition_01 \genblk1_2.stc01 
       (.D(D),
        .\FSM_sequential_current_state_reg[0]_0 (\FSM_sequential_current_state_reg[0]_8 ),
        .\FSM_sequential_current_state_reg[0]_1 (\FSM_sequential_current_state_reg[0]_11 ),
        .\FSM_sequential_current_state_reg[1]_0 (\FSM_sequential_current_state_reg[1] ),
        .\FSM_sequential_current_state_reg[1]_1 (\FSM_sequential_current_state_reg[1]_4 ),
        .\FSM_sequential_current_state_reg[1]_2 (\FSM_sequential_current_state_reg[1]_5 ),
        .\FSM_sequential_current_state_reg[2]_0 (\FSM_sequential_current_state_reg[2]_7 ),
        .\FSM_sequential_current_state_reg[2]_1 (\FSM_sequential_current_state_reg[2]_8 ),
        .\FSM_sequential_current_state_reg[2]_2 (\FSM_sequential_current_state_reg[2]_10 ),
        .\FSM_sequential_current_state_reg[2]_3 (\FSM_sequential_current_state_reg[1]_1 ),
        .\FSM_sequential_current_state_reg[2]_4 (\FSM_sequential_current_state_reg[0]_12 ),
        .Q(\FSM_sequential_current_state_reg[1]_0 ),
        .allow_injection(allow_injection[1]),
        .allow_injection0_out(allow_injection0_out),
        .btdc_ready(btdc_ready[2]),
        .cal_injection0_2(cal_injection0_2),
        .clk(clk),
        .crank_changed(crank_changed),
        .crank_tick(crank_tick),
        .efi_on(efi_on),
        .efi_on_0(ic_on[2]),
        .next_state1__0(next_state1__0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stroke_transition_10 \genblk1_2.stc10 
       (.\FSM_sequential_current_state_reg[0]_0 (\FSM_sequential_current_state_reg[0]_1 ),
        .\FSM_sequential_current_state_reg[0]_1 (\FSM_sequential_current_state_reg[0]_5 ),
        .\FSM_sequential_current_state_reg[0]_2 (\FSM_sequential_current_state_reg[0]_6 ),
        .\FSM_sequential_current_state_reg[0]_3 (\FSM_sequential_current_state_reg[0]_7 ),
        .\FSM_sequential_current_state_reg[0]_4 (\FSM_sequential_current_state_reg[0]_12 ),
        .\FSM_sequential_current_state_reg[2]_0 (\FSM_sequential_current_state_reg[2]_9 ),
        .Q(\FSM_sequential_current_state_reg[2]_3 ),
        .allow_injection(allow_injection[2]),
        .allow_injection0_out(allow_injection0_out),
        .btdc_ready(btdc_ready[3]),
        .cal_injection0_0(cal_injection0_0),
        .ckp(ckp),
        .clk(clk),
        .crank_changed(crank_changed),
        .crank_tick(crank_tick),
        .efi_on(efi_on),
        .efi_on_0(efi_on_1),
        .ic_on(ic_on[3]),
        .next_state1__0(next_state1__0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stroke_transition_11 \genblk1_2.stc11 
       (.\FSM_sequential_current_state_reg[0]_0 (\FSM_sequential_current_state_reg[0]_2 ),
        .\FSM_sequential_current_state_reg[0]_1 (\FSM_sequential_current_state_reg[0]_4 ),
        .\FSM_sequential_current_state_reg[0]_2 (\FSM_sequential_current_state_reg[0]_10 ),
        .\FSM_sequential_current_state_reg[0]_3 (\FSM_sequential_current_state_reg[0]_12 ),
        .\FSM_sequential_current_state_reg[1]_0 (\FSM_sequential_current_state_reg[1]_3 ),
        .\FSM_sequential_current_state_reg[1]_1 (\FSM_sequential_current_state_reg[1]_1 ),
        .\FSM_sequential_current_state_reg[2]_0 (\FSM_sequential_current_state_reg[2]_1 ),
        .\FSM_sequential_current_state_reg[2]_1 (\FSM_sequential_current_state_reg[2]_4 ),
        .\FSM_sequential_current_state_reg[2]_2 (\FSM_sequential_current_state_reg[2]_5 ),
        .\FSM_sequential_current_state_reg[2]_3 (\FSM_sequential_current_state_reg[2]_6 ),
        .\FSM_sequential_current_state_reg[2]_4 (\FSM_sequential_current_state_reg[2]_12 ),
        .Q(\FSM_sequential_current_state_reg[2]_2 ),
        .allow_injection(allow_injection[0]),
        .allow_injection0_out(allow_injection0_out),
        .btdc_ready(btdc_ready[1]),
        .cal_injection0_1(cal_injection0_1),
        .clk(clk),
        .crank_changed(crank_changed),
        .crank_tick(crank_tick),
        .efi_on(efi_on),
        .efi_on_0(ic_on[1]),
        .next_state1__0(next_state1__0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stroke_transition_00
   (efi_on_0,
    Q,
    \FSM_sequential_current_state_reg[2]_0 ,
    \FSM_sequential_current_state_reg[0]_0 ,
    \FSM_sequential_current_state_reg[0]_1 ,
    cal_injection0,
    \FSM_sequential_current_state_reg[2]_1 ,
    \FSM_sequential_current_state_reg[0]_2 ,
    ckp_0,
    efi_on,
    next_state1__0,
    allow_injection0_out,
    \FSM_sequential_current_state_reg[2]_2 ,
    crank_tick,
    \FSM_sequential_current_state_reg[0]_3 ,
    \FSM_sequential_current_state_reg[1]_0 ,
    \FSM_sequential_current_state_reg[0]_4 ,
    btdc_ready,
    crank_changed,
    \FSM_sequential_current_state_reg[0]_5 ,
    ckp,
    clk,
    \FSM_sequential_current_state_reg[2]_3 );
  output efi_on_0;
  output [1:0]Q;
  output [0:0]\FSM_sequential_current_state_reg[2]_0 ;
  output \FSM_sequential_current_state_reg[0]_0 ;
  output \FSM_sequential_current_state_reg[0]_1 ;
  output cal_injection0;
  output [1:0]\FSM_sequential_current_state_reg[2]_1 ;
  output \FSM_sequential_current_state_reg[0]_2 ;
  output ckp_0;
  input efi_on;
  input next_state1__0;
  input allow_injection0_out;
  input [2:0]\FSM_sequential_current_state_reg[2]_2 ;
  input crank_tick;
  input \FSM_sequential_current_state_reg[0]_3 ;
  input [2:0]\FSM_sequential_current_state_reg[1]_0 ;
  input \FSM_sequential_current_state_reg[0]_4 ;
  input [0:0]btdc_ready;
  input crank_changed;
  input \FSM_sequential_current_state_reg[0]_5 ;
  input ckp;
  input clk;
  input \FSM_sequential_current_state_reg[2]_3 ;

  wire \FSM_sequential_current_state[0]_i_1__7_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1__6_n_0 ;
  wire \FSM_sequential_current_state[2]_i_1__5_n_0 ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire \FSM_sequential_current_state_reg[0]_2 ;
  wire \FSM_sequential_current_state_reg[0]_3 ;
  wire \FSM_sequential_current_state_reg[0]_4 ;
  wire \FSM_sequential_current_state_reg[0]_5 ;
  wire [2:0]\FSM_sequential_current_state_reg[1]_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[2]_0 ;
  wire [1:0]\FSM_sequential_current_state_reg[2]_1 ;
  wire [2:0]\FSM_sequential_current_state_reg[2]_2 ;
  wire \FSM_sequential_current_state_reg[2]_3 ;
  wire [1:0]Q;
  wire allow_injection0_out;
  wire [0:0]btdc_ready;
  wire cal_ignition_i_2_n_0;
  wire cal_injection0;
  wire cal_injection1__2;
  wire ckp;
  wire ckp_0;
  wire clk;
  wire crank_changed;
  wire crank_tick;
  wire [1:1]current_state;
  wire efi_on;
  wire efi_on_0;
  wire next_state1__0;
  wire [1:0]\stroke[0]_0 ;

  LUT6 #(
    .INIT(64'hFF7F000000000000)) 
    \FSM_sequential_current_state[0]_i_1__0 
       (.I0(\stroke[0]_0 [0]),
        .I1(\FSM_sequential_current_state_reg[1]_0 [0]),
        .I2(\stroke[0]_0 [1]),
        .I3(\FSM_sequential_current_state_reg[1]_0 [1]),
        .I4(\FSM_sequential_current_state_reg[0]_0 ),
        .I5(\FSM_sequential_current_state_reg[0]_4 ),
        .O(\FSM_sequential_current_state_reg[2]_1 [0]));
  LUT6 #(
    .INIT(64'h02202AA2022008A0)) 
    \FSM_sequential_current_state[0]_i_1__7 
       (.I0(efi_on),
        .I1(current_state),
        .I2(next_state1__0),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\FSM_sequential_current_state_reg[0]_5 ),
        .O(\FSM_sequential_current_state[0]_i_1__7_n_0 ));
  LUT6 #(
    .INIT(64'hF0F50E0AF0A00E0A)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(Q[1]),
        .I1(efi_on),
        .I2(next_state1__0),
        .I3(current_state),
        .I4(Q[0]),
        .I5(\FSM_sequential_current_state_reg[0]_3 ),
        .O(\stroke[0]_0 [0]));
  LUT6 #(
    .INIT(64'hAAFF9888AAAA9888)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(Q[1]),
        .I1(next_state1__0),
        .I2(efi_on),
        .I3(current_state),
        .I4(Q[0]),
        .I5(\FSM_sequential_current_state_reg[0]_3 ),
        .O(\stroke[0]_0 [1]));
  LUT6 #(
    .INIT(64'h34C4C0C004C4C0C0)) 
    \FSM_sequential_current_state[0]_i_5__0 
       (.I0(ckp),
        .I1(Q[0]),
        .I2(current_state),
        .I3(crank_tick),
        .I4(crank_changed),
        .I5(efi_on),
        .O(ckp_0));
  LUT6 #(
    .INIT(64'h000A8A000A0A8A00)) 
    \FSM_sequential_current_state[1]_i_1__0 
       (.I0(\FSM_sequential_current_state_reg[0]_0 ),
        .I1(cal_ignition_i_2_n_0),
        .I2(\FSM_sequential_current_state_reg[1]_0 [2]),
        .I3(\FSM_sequential_current_state_reg[1]_0 [0]),
        .I4(\FSM_sequential_current_state_reg[1]_0 [1]),
        .I5(efi_on_0),
        .O(\FSM_sequential_current_state_reg[2]_1 [1]));
  LUT6 #(
    .INIT(64'h2220008800A80088)) 
    \FSM_sequential_current_state[1]_i_1__6 
       (.I0(efi_on),
        .I1(current_state),
        .I2(crank_changed),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(next_state1__0),
        .O(\FSM_sequential_current_state[1]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'h0C4000C0004000C0)) 
    \FSM_sequential_current_state[2]_i_1__0 
       (.I0(cal_injection1__2),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[2]_2 [2]),
        .I3(\FSM_sequential_current_state_reg[2]_2 [1]),
        .I4(\FSM_sequential_current_state_reg[2]_2 [0]),
        .I5(\FSM_sequential_current_state_reg[0]_1 ),
        .O(\FSM_sequential_current_state_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h08202020)) 
    \FSM_sequential_current_state[2]_i_1__5 
       (.I0(efi_on),
        .I1(current_state),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(next_state1__0),
        .O(\FSM_sequential_current_state[2]_i_1__5_n_0 ));
  (* FSM_ENCODED_STATES = "START:001,COMPRESSION:100,COMBUSTION:101,IDLE:000,EXHAUST:010,INTAKE:011" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[2]_3 ),
        .D(\FSM_sequential_current_state[0]_i_1__7_n_0 ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "START:001,COMPRESSION:100,COMBUSTION:101,IDLE:000,EXHAUST:010,INTAKE:011" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[2]_3 ),
        .D(\FSM_sequential_current_state[1]_i_1__6_n_0 ),
        .Q(current_state));
  (* FSM_ENCODED_STATES = "START:001,COMPRESSION:100,COMBUSTION:101,IDLE:000,EXHAUST:010,INTAKE:011" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[2]_3 ),
        .D(\FSM_sequential_current_state[2]_i_1__5_n_0 ),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    cal_ignition_i_1
       (.I0(cal_ignition_i_2_n_0),
        .I1(crank_tick),
        .O(\FSM_sequential_current_state_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hCCCC000008083808)) 
    cal_ignition_i_2
       (.I0(\FSM_sequential_current_state_reg[0]_3 ),
        .I1(Q[0]),
        .I2(current_state),
        .I3(efi_on),
        .I4(next_state1__0),
        .I5(Q[1]),
        .O(cal_ignition_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    cal_injection_i_1
       (.I0(cal_injection1__2),
        .I1(crank_tick),
        .O(cal_injection0));
  LUT6 #(
    .INIT(64'h000000003737C7F7)) 
    cal_injection_i_2
       (.I0(\FSM_sequential_current_state_reg[0]_3 ),
        .I1(Q[0]),
        .I2(current_state),
        .I3(efi_on),
        .I4(next_state1__0),
        .I5(Q[1]),
        .O(cal_injection1__2));
  LUT5 #(
    .INIT(32'h0FF80AF8)) 
    \fuel_pump[0]_INST_0_i_1 
       (.I0(Q[0]),
        .I1(crank_changed),
        .I2(Q[1]),
        .I3(current_state),
        .I4(efi_on),
        .O(\FSM_sequential_current_state_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00600000)) 
    \ignite[0]_INST_0_i_1 
       (.I0(Q[0]),
        .I1(next_state1__0),
        .I2(Q[1]),
        .I3(current_state),
        .I4(btdc_ready),
        .O(\FSM_sequential_current_state_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000003F803080)) 
    \inject[0]_INST_0_i_1 
       (.I0(efi_on),
        .I1(next_state1__0),
        .I2(current_state),
        .I3(Q[0]),
        .I4(allow_injection0_out),
        .I5(Q[1]),
        .O(efi_on_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stroke_transition_01
   (D,
    efi_on_0,
    \FSM_sequential_current_state_reg[1]_0 ,
    Q,
    \FSM_sequential_current_state_reg[2]_0 ,
    allow_injection,
    cal_injection0_2,
    \FSM_sequential_current_state_reg[2]_1 ,
    \FSM_sequential_current_state_reg[2]_2 ,
    next_state1__0,
    \FSM_sequential_current_state_reg[2]_3 ,
    btdc_ready,
    \FSM_sequential_current_state_reg[1]_1 ,
    \FSM_sequential_current_state_reg[0]_0 ,
    efi_on,
    crank_tick,
    crank_changed,
    \FSM_sequential_current_state_reg[1]_2 ,
    allow_injection0_out,
    \FSM_sequential_current_state_reg[0]_1 ,
    clk,
    \FSM_sequential_current_state_reg[2]_4 );
  output [0:0]D;
  output efi_on_0;
  output \FSM_sequential_current_state_reg[1]_0 ;
  output [1:0]Q;
  output [1:0]\FSM_sequential_current_state_reg[2]_0 ;
  output [0:0]allow_injection;
  output cal_injection0_2;
  output \FSM_sequential_current_state_reg[2]_1 ;
  input [2:0]\FSM_sequential_current_state_reg[2]_2 ;
  input next_state1__0;
  input \FSM_sequential_current_state_reg[2]_3 ;
  input [0:0]btdc_ready;
  input [2:0]\FSM_sequential_current_state_reg[1]_1 ;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input efi_on;
  input crank_tick;
  input crank_changed;
  input \FSM_sequential_current_state_reg[1]_2 ;
  input allow_injection0_out;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input clk;
  input \FSM_sequential_current_state_reg[2]_4 ;

  wire [0:0]D;
  wire \FSM_sequential_current_state[0]_i_1__9_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1__8_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2__0_n_0 ;
  wire \FSM_sequential_current_state[2]_i_1__7_n_0 ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire [2:0]\FSM_sequential_current_state_reg[1]_1 ;
  wire \FSM_sequential_current_state_reg[1]_2 ;
  wire [1:0]\FSM_sequential_current_state_reg[2]_0 ;
  wire \FSM_sequential_current_state_reg[2]_1 ;
  wire [2:0]\FSM_sequential_current_state_reg[2]_2 ;
  wire \FSM_sequential_current_state_reg[2]_3 ;
  wire \FSM_sequential_current_state_reg[2]_4 ;
  wire [1:0]Q;
  wire [0:0]allow_injection;
  wire allow_injection0_out;
  wire [0:0]btdc_ready;
  wire cal_injection0_2;
  wire cal_injection1__0;
  wire clk;
  wire crank_changed;
  wire crank_tick;
  wire [2:2]current_state;
  wire efi_on;
  wire efi_on_0;
  wire next_state1__0;
  wire [1:0]\stroke[2]_3 ;

  LUT6 #(
    .INIT(64'hFF7F000000000000)) 
    \FSM_sequential_current_state[0]_i_1__5 
       (.I0(\stroke[2]_3 [0]),
        .I1(\FSM_sequential_current_state_reg[1]_1 [0]),
        .I2(\stroke[2]_3 [1]),
        .I3(\FSM_sequential_current_state_reg[1]_1 [1]),
        .I4(efi_on_0),
        .I5(\FSM_sequential_current_state_reg[0]_0 ),
        .O(\FSM_sequential_current_state_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'h02202AA2022008A0)) 
    \FSM_sequential_current_state[0]_i_1__9 
       (.I0(efi_on),
        .I1(Q[1]),
        .I2(next_state1__0),
        .I3(Q[0]),
        .I4(current_state),
        .I5(\FSM_sequential_current_state_reg[0]_1 ),
        .O(\FSM_sequential_current_state[0]_i_1__9_n_0 ));
  LUT6 #(
    .INIT(64'h000A8A000A0A8A00)) 
    \FSM_sequential_current_state[1]_i_1__4 
       (.I0(efi_on_0),
        .I1(\FSM_sequential_current_state[1]_i_2__0_n_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_1 [2]),
        .I3(\FSM_sequential_current_state_reg[1]_1 [0]),
        .I4(\FSM_sequential_current_state_reg[1]_1 [1]),
        .I5(allow_injection),
        .O(\FSM_sequential_current_state_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'h2220008800A80088)) 
    \FSM_sequential_current_state[1]_i_1__8 
       (.I0(efi_on),
        .I1(Q[1]),
        .I2(crank_changed),
        .I3(current_state),
        .I4(Q[0]),
        .I5(next_state1__0),
        .O(\FSM_sequential_current_state[1]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h2EE20000)) 
    \FSM_sequential_current_state[1]_i_2__0 
       (.I0(\FSM_sequential_current_state_reg[1]_2 ),
        .I1(current_state),
        .I2(next_state1__0),
        .I3(Q[0]),
        .I4(\stroke[2]_3 [1]),
        .O(\FSM_sequential_current_state[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0C4000C0004000C0)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(cal_injection1__0),
        .I1(efi_on_0),
        .I2(\FSM_sequential_current_state_reg[2]_2 [2]),
        .I3(\FSM_sequential_current_state_reg[2]_2 [1]),
        .I4(\FSM_sequential_current_state_reg[2]_2 [0]),
        .I5(\FSM_sequential_current_state_reg[1]_0 ),
        .O(D));
  LUT5 #(
    .INIT(32'h08202020)) 
    \FSM_sequential_current_state[2]_i_1__7 
       (.I0(efi_on),
        .I1(Q[1]),
        .I2(current_state),
        .I3(Q[0]),
        .I4(next_state1__0),
        .O(\FSM_sequential_current_state[2]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h0000D11D)) 
    \FSM_sequential_current_state[2]_i_2__0 
       (.I0(\FSM_sequential_current_state_reg[1]_2 ),
        .I1(current_state),
        .I2(next_state1__0),
        .I3(Q[0]),
        .I4(\stroke[2]_3 [1]),
        .O(cal_injection1__0));
  (* FSM_ENCODED_STATES = "START:001,COMPRESSION:101,COMBUSTION:010,IDLE:000,EXHAUST:011,INTAKE:100" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[2]_4 ),
        .D(\FSM_sequential_current_state[0]_i_1__9_n_0 ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "START:001,COMPRESSION:101,COMBUSTION:010,IDLE:000,EXHAUST:011,INTAKE:100" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[2]_4 ),
        .D(\FSM_sequential_current_state[1]_i_1__8_n_0 ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "START:001,COMPRESSION:101,COMBUSTION:010,IDLE:000,EXHAUST:011,INTAKE:100" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[2]_4 ),
        .D(\FSM_sequential_current_state[2]_i_1__7_n_0 ),
        .Q(current_state));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    cal_ignition_i_1__2
       (.I0(\stroke[2]_3 [1]),
        .I1(\stroke[2]_3 [0]),
        .I2(crank_tick),
        .O(\FSM_sequential_current_state_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h10)) 
    cal_injection_i_1__2
       (.I0(\stroke[2]_3 [1]),
        .I1(\stroke[2]_3 [0]),
        .I2(crank_tick),
        .O(cal_injection0_2));
  LUT6 #(
    .INIT(64'h98DD550050005500)) 
    cal_injection_i_2__2
       (.I0(current_state),
        .I1(crank_tick),
        .I2(efi_on),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(crank_changed),
        .O(\stroke[2]_3 [1]));
  LUT6 #(
    .INIT(64'h0E5FF0A00E0AF0A0)) 
    cal_injection_i_3__0
       (.I0(current_state),
        .I1(efi_on),
        .I2(next_state1__0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(allow_injection0_out),
        .O(\stroke[2]_3 [0]));
  LUT5 #(
    .INIT(32'h3B383C3C)) 
    \fuel_pump[2]_INST_0_i_1 
       (.I0(efi_on),
        .I1(Q[1]),
        .I2(current_state),
        .I3(crank_changed),
        .I4(Q[0]),
        .O(efi_on_0));
  LUT6 #(
    .INIT(64'h2304200400000000)) 
    \ignite[2]_INST_0_i_1 
       (.I0(next_state1__0),
        .I1(Q[1]),
        .I2(current_state),
        .I3(Q[0]),
        .I4(\FSM_sequential_current_state_reg[2]_3 ),
        .I5(btdc_ready),
        .O(\FSM_sequential_current_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0080030003000300)) 
    \inject[2]_INST_0_i_1 
       (.I0(efi_on),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(current_state),
        .I4(crank_tick),
        .I5(crank_changed),
        .O(allow_injection));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stroke_transition_10
   (Q,
    cal_injection0_0,
    \FSM_sequential_current_state_reg[0]_0 ,
    ic_on,
    efi_on_0,
    \FSM_sequential_current_state_reg[2]_0 ,
    allow_injection,
    efi_on,
    next_state1__0,
    \FSM_sequential_current_state_reg[0]_1 ,
    crank_tick,
    \FSM_sequential_current_state_reg[0]_2 ,
    \FSM_sequential_current_state_reg[0]_3 ,
    allow_injection0_out,
    btdc_ready,
    crank_changed,
    ckp,
    clk,
    \FSM_sequential_current_state_reg[0]_4 );
  output [2:0]Q;
  output cal_injection0_0;
  output [0:0]\FSM_sequential_current_state_reg[0]_0 ;
  output [0:0]ic_on;
  output efi_on_0;
  output \FSM_sequential_current_state_reg[2]_0 ;
  output [0:0]allow_injection;
  input efi_on;
  input next_state1__0;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input crank_tick;
  input [1:0]\FSM_sequential_current_state_reg[0]_2 ;
  input \FSM_sequential_current_state_reg[0]_3 ;
  input allow_injection0_out;
  input [0:0]btdc_ready;
  input crank_changed;
  input ckp;
  input clk;
  input \FSM_sequential_current_state_reg[0]_4 ;

  wire \FSM_sequential_current_state[0]_i_1__2_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1__10_n_0 ;
  wire \FSM_sequential_current_state[2]_i_1__10_n_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire [1:0]\FSM_sequential_current_state_reg[0]_2 ;
  wire \FSM_sequential_current_state_reg[0]_3 ;
  wire \FSM_sequential_current_state_reg[0]_4 ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire [2:0]Q;
  wire [0:0]allow_injection;
  wire allow_injection0_out;
  wire [0:0]btdc_ready;
  wire cal_injection0_0;
  wire cal_injection_i_5_n_0;
  wire ckp;
  wire clk;
  wire crank_changed;
  wire crank_tick;
  wire efi_on;
  wire efi_on_0;
  wire [0:0]ic_on;
  wire next_state1__0;
  wire [1:0]\stroke[3]_1 ;

  LUT6 #(
    .INIT(64'h02202AA2022008A0)) 
    \FSM_sequential_current_state[0]_i_1__2 
       (.I0(efi_on),
        .I1(Q[1]),
        .I2(next_state1__0),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\FSM_sequential_current_state_reg[0]_1 ),
        .O(\FSM_sequential_current_state[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F000000000000)) 
    \FSM_sequential_current_state[0]_i_1__3 
       (.I0(\stroke[3]_1 [0]),
        .I1(\FSM_sequential_current_state_reg[0]_2 [0]),
        .I2(\stroke[3]_1 [1]),
        .I3(\FSM_sequential_current_state_reg[0]_2 [1]),
        .I4(ic_on),
        .I5(\FSM_sequential_current_state_reg[0]_3 ),
        .O(\FSM_sequential_current_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h2220008800A80088)) 
    \FSM_sequential_current_state[1]_i_1__10 
       (.I0(efi_on),
        .I1(Q[1]),
        .I2(crank_changed),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(next_state1__0),
        .O(\FSM_sequential_current_state[1]_i_1__10_n_0 ));
  LUT5 #(
    .INIT(32'h08202020)) 
    \FSM_sequential_current_state[2]_i_1__10 
       (.I0(efi_on),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(next_state1__0),
        .O(\FSM_sequential_current_state[2]_i_1__10_n_0 ));
  (* FSM_ENCODED_STATES = "START:001,COMPRESSION:010,COMBUSTION:011,IDLE:000,EXHAUST:100,INTAKE:101" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[0]_4 ),
        .D(\FSM_sequential_current_state[0]_i_1__2_n_0 ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "START:001,COMPRESSION:010,COMBUSTION:011,IDLE:000,EXHAUST:100,INTAKE:101" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[0]_4 ),
        .D(\FSM_sequential_current_state[1]_i_1__10_n_0 ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "START:001,COMPRESSION:010,COMBUSTION:011,IDLE:000,EXHAUST:100,INTAKE:101" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[0]_4 ),
        .D(\FSM_sequential_current_state[2]_i_1__10_n_0 ),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    cal_ignition_i_1__0
       (.I0(\stroke[3]_1 [1]),
        .I1(\stroke[3]_1 [0]),
        .I2(crank_tick),
        .O(efi_on_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h10)) 
    cal_injection_i_1__0
       (.I0(\stroke[3]_1 [1]),
        .I1(\stroke[3]_1 [0]),
        .I2(crank_tick),
        .O(cal_injection0_0));
  LUT6 #(
    .INIT(64'h3333380833003808)) 
    cal_injection_i_2__0
       (.I0(efi_on),
        .I1(Q[2]),
        .I2(next_state1__0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(allow_injection0_out),
        .O(\stroke[3]_1 [1]));
  LUT6 #(
    .INIT(64'hF00BF33BF00BC008)) 
    cal_injection_i_3
       (.I0(efi_on),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(next_state1__0),
        .I4(Q[1]),
        .I5(cal_injection_i_5_n_0),
        .O(\stroke[3]_1 [0]));
  LUT3 #(
    .INIT(8'h80)) 
    cal_injection_i_5
       (.I0(Q[0]),
        .I1(crank_changed),
        .I2(ckp),
        .O(cal_injection_i_5_n_0));
  LUT5 #(
    .INIT(32'h00FFFA88)) 
    \fuel_pump[3]_INST_0_i_1 
       (.I0(Q[0]),
        .I1(crank_changed),
        .I2(efi_on),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(ic_on));
  LUT6 #(
    .INIT(64'h0540504000000000)) 
    \ignite[3]_INST_0_i_1 
       (.I0(Q[2]),
        .I1(allow_injection0_out),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(next_state1__0),
        .I5(btdc_ready),
        .O(\FSM_sequential_current_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0444044440000000)) 
    \inject[3]_INST_0_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(crank_tick),
        .I3(crank_changed),
        .I4(efi_on),
        .I5(Q[0]),
        .O(allow_injection));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stroke_transition_11
   (\FSM_sequential_current_state_reg[2]_0 ,
    efi_on_0,
    allow_injection,
    Q,
    \FSM_sequential_current_state_reg[2]_1 ,
    \FSM_sequential_current_state_reg[2]_2 ,
    \FSM_sequential_current_state_reg[2]_3 ,
    cal_injection0_1,
    \FSM_sequential_current_state_reg[0]_0 ,
    \FSM_sequential_current_state_reg[1]_0 ,
    \FSM_sequential_current_state_reg[0]_1 ,
    \FSM_sequential_current_state_reg[1]_1 ,
    efi_on,
    next_state1__0,
    crank_tick,
    crank_changed,
    \FSM_sequential_current_state_reg[2]_4 ,
    btdc_ready,
    allow_injection0_out,
    \FSM_sequential_current_state_reg[0]_2 ,
    clk,
    \FSM_sequential_current_state_reg[0]_3 );
  output [1:0]\FSM_sequential_current_state_reg[2]_0 ;
  output efi_on_0;
  output [0:0]allow_injection;
  output [2:0]Q;
  output \FSM_sequential_current_state_reg[2]_1 ;
  output [0:0]\FSM_sequential_current_state_reg[2]_2 ;
  output \FSM_sequential_current_state_reg[2]_3 ;
  output cal_injection0_1;
  output \FSM_sequential_current_state_reg[0]_0 ;
  input [2:0]\FSM_sequential_current_state_reg[1]_0 ;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input \FSM_sequential_current_state_reg[1]_1 ;
  input efi_on;
  input next_state1__0;
  input crank_tick;
  input crank_changed;
  input [2:0]\FSM_sequential_current_state_reg[2]_4 ;
  input [0:0]btdc_ready;
  input allow_injection0_out;
  input \FSM_sequential_current_state_reg[0]_2 ;
  input clk;
  input \FSM_sequential_current_state_reg[0]_3 ;

  wire \FSM_sequential_current_state[0]_i_1__8_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1__7_n_0 ;
  wire \FSM_sequential_current_state[2]_i_1__6_n_0 ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire \FSM_sequential_current_state_reg[0]_2 ;
  wire \FSM_sequential_current_state_reg[0]_3 ;
  wire [2:0]\FSM_sequential_current_state_reg[1]_0 ;
  wire \FSM_sequential_current_state_reg[1]_1 ;
  wire [1:0]\FSM_sequential_current_state_reg[2]_0 ;
  wire \FSM_sequential_current_state_reg[2]_1 ;
  wire [0:0]\FSM_sequential_current_state_reg[2]_2 ;
  wire \FSM_sequential_current_state_reg[2]_3 ;
  wire [2:0]\FSM_sequential_current_state_reg[2]_4 ;
  wire [2:0]Q;
  wire [0:0]allow_injection;
  wire allow_injection0_out;
  wire [0:0]btdc_ready;
  wire cal_ignition_i_2__0_n_0;
  wire cal_injection0_1;
  wire cal_injection1__1;
  wire clk;
  wire crank_changed;
  wire crank_tick;
  wire efi_on;
  wire efi_on_0;
  wire next_state1__0;
  wire [1:0]\stroke[1]_2 ;

  LUT6 #(
    .INIT(64'hFF7F000000000000)) 
    \FSM_sequential_current_state[0]_i_1__1 
       (.I0(\stroke[1]_2 [0]),
        .I1(\FSM_sequential_current_state_reg[1]_0 [0]),
        .I2(\stroke[1]_2 [1]),
        .I3(\FSM_sequential_current_state_reg[1]_0 [1]),
        .I4(efi_on_0),
        .I5(\FSM_sequential_current_state_reg[0]_1 ),
        .O(\FSM_sequential_current_state_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'h02202AA2022008A0)) 
    \FSM_sequential_current_state[0]_i_1__8 
       (.I0(efi_on),
        .I1(Q[1]),
        .I2(next_state1__0),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\FSM_sequential_current_state_reg[0]_2 ),
        .O(\FSM_sequential_current_state[0]_i_1__8_n_0 ));
  LUT6 #(
    .INIT(64'h0B3BF0C00B08F0C0)) 
    \FSM_sequential_current_state[0]_i_2__1 
       (.I0(efi_on),
        .I1(Q[2]),
        .I2(next_state1__0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(allow_injection0_out),
        .O(\stroke[1]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h3088CCCC)) 
    \FSM_sequential_current_state[0]_i_3__0 
       (.I0(efi_on),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(next_state1__0),
        .I4(Q[0]),
        .O(\stroke[1]_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    \FSM_sequential_current_state[0]_i_5 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(crank_tick),
        .I3(crank_changed),
        .O(\FSM_sequential_current_state_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h000A8A000A0A8A00)) 
    \FSM_sequential_current_state[1]_i_1__1 
       (.I0(efi_on_0),
        .I1(cal_ignition_i_2__0_n_0),
        .I2(\FSM_sequential_current_state_reg[1]_0 [2]),
        .I3(\FSM_sequential_current_state_reg[1]_0 [0]),
        .I4(\FSM_sequential_current_state_reg[1]_0 [1]),
        .I5(allow_injection),
        .O(\FSM_sequential_current_state_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'h2220008800A80088)) 
    \FSM_sequential_current_state[1]_i_1__7 
       (.I0(efi_on),
        .I1(Q[1]),
        .I2(crank_changed),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(next_state1__0),
        .O(\FSM_sequential_current_state[1]_i_1__7_n_0 ));
  LUT6 #(
    .INIT(64'h0C4000C0004000C0)) 
    \FSM_sequential_current_state[2]_i_1__3 
       (.I0(cal_injection1__1),
        .I1(efi_on_0),
        .I2(\FSM_sequential_current_state_reg[2]_4 [2]),
        .I3(\FSM_sequential_current_state_reg[2]_4 [1]),
        .I4(\FSM_sequential_current_state_reg[2]_4 [0]),
        .I5(\FSM_sequential_current_state_reg[2]_3 ),
        .O(\FSM_sequential_current_state_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h08202020)) 
    \FSM_sequential_current_state[2]_i_1__6 
       (.I0(efi_on),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(next_state1__0),
        .O(\FSM_sequential_current_state[2]_i_1__6_n_0 ));
  (* FSM_ENCODED_STATES = "START:001,COMPRESSION:011,COMBUSTION:100,IDLE:000,EXHAUST:101,INTAKE:010" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[0]_3 ),
        .D(\FSM_sequential_current_state[0]_i_1__8_n_0 ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "START:001,COMPRESSION:011,COMBUSTION:100,IDLE:000,EXHAUST:101,INTAKE:010" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[0]_3 ),
        .D(\FSM_sequential_current_state[1]_i_1__7_n_0 ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "START:001,COMPRESSION:011,COMBUSTION:100,IDLE:000,EXHAUST:101,INTAKE:010" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[0]_3 ),
        .D(\FSM_sequential_current_state[2]_i_1__6_n_0 ),
        .Q(Q[2]));
  LUT2 #(
    .INIT(4'h8)) 
    cal_ignition_i_1__1
       (.I0(cal_ignition_i_2__0_n_0),
        .I1(crank_tick),
        .O(\FSM_sequential_current_state_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h6040)) 
    cal_ignition_i_2__0
       (.I0(Q[0]),
        .I1(next_state1__0),
        .I2(Q[2]),
        .I3(efi_on),
        .O(cal_ignition_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    cal_injection_i_1__1
       (.I0(cal_injection1__1),
        .I1(crank_tick),
        .O(cal_injection0_1));
  LUT6 #(
    .INIT(64'hC0C00377CCCC0377)) 
    cal_injection_i_2__1
       (.I0(allow_injection0_out),
        .I1(Q[0]),
        .I2(next_state1__0),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(efi_on),
        .O(cal_injection1__1));
  LUT5 #(
    .INIT(32'h3B383C3C)) 
    \fuel_pump[1]_INST_0_i_1 
       (.I0(efi_on),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(crank_changed),
        .I4(Q[0]),
        .O(efi_on_0));
  LUT5 #(
    .INIT(32'h20040000)) 
    \ignite[1]_INST_0_i_1 
       (.I0(next_state1__0),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(btdc_ready),
        .O(\FSM_sequential_current_state_reg[2]_3 ));
  LUT6 #(
    .INIT(64'h0000C0A0000F00A0)) 
    \inject[1]_INST_0_i_1 
       (.I0(\FSM_sequential_current_state_reg[1]_1 ),
        .I1(efi_on),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(next_state1__0),
        .O(allow_injection));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
