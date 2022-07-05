// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:hust_efi:1.0
// IP Revision: 1

(* X_CORE_INFO = "hust_efi,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "design_1_hust_efi_0_0,hust_efi,{}" *)
(* CORE_GENERATION_INFO = "design_1_hust_efi_0_0,hust_efi,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=hust_efi,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,CYLINDERS=100,NUM_TEETH=111011,HALF_NUM_TEETH=29,NUM_LOST_TEETH=000001,CLK_FREQ=50000000,CYCLE_COUNTER_WIDTH=18}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_hust_efi_0_0 (
  clk,
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
  fuel_pump
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 2500000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *)
input wire reset_n;
input wire efi_on;
input wire ckp;
input wire [3 : 0] done;
input wire [3 : 0] btdc_ready;
output wire [5 : 0] crank_counter;
output wire [17 : 0] crank_cycle_counter;
output wire cal_rpm;
output wire cal_btdc;
output wire [3 : 0] cal_injection;
output wire [3 : 0] cal_ignition;
output wire [3 : 0] inject;
output wire [3 : 0] ignite;
output wire [3 : 0] update_table;
output wire [3 : 0] fuel_pump;

  hust_efi #(
    .CYLINDERS(3'B100),
    .NUM_TEETH(6'B111011),
    .HALF_NUM_TEETH(29),
    .NUM_LOST_TEETH(6'B000001),
    .CLK_FREQ(50000000),
    .CYCLE_COUNTER_WIDTH(18)
  ) inst (
    .clk(clk),
    .reset_n(reset_n),
    .efi_on(efi_on),
    .ckp(ckp),
    .done(done),
    .btdc_ready(btdc_ready),
    .crank_counter(crank_counter),
    .crank_cycle_counter(crank_cycle_counter),
    .cal_rpm(cal_rpm),
    .cal_btdc(cal_btdc),
    .cal_injection(cal_injection),
    .cal_ignition(cal_ignition),
    .inject(inject),
    .ignite(ignite),
    .update_table(update_table),
    .fuel_pump(fuel_pump)
  );
endmodule
