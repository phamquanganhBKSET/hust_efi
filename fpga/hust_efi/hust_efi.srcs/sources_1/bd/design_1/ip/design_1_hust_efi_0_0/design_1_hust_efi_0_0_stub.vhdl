-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jul  4 19:17:13 2022
-- Host        : PC113 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/HH/Documents/Embedded_system/hust_efi/fpga/hust_efi/hust_efi.srcs/sources_1/bd/design_1/ip/design_1_hust_efi_0_0/design_1_hust_efi_0_0_stub.vhdl
-- Design      : design_1_hust_efi_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_hust_efi_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    efi_on : in STD_LOGIC;
    ckp : in STD_LOGIC;
    done : in STD_LOGIC_VECTOR ( 3 downto 0 );
    btdc_ready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    crank_counter : out STD_LOGIC_VECTOR ( 5 downto 0 );
    crank_cycle_counter : out STD_LOGIC_VECTOR ( 17 downto 0 );
    cal_rpm : out STD_LOGIC;
    cal_btdc : out STD_LOGIC;
    cal_injection : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cal_ignition : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inject : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ignite : out STD_LOGIC_VECTOR ( 3 downto 0 );
    update_table : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fuel_pump : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_hust_efi_0_0;

architecture stub of design_1_hust_efi_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset_n,efi_on,ckp,done[3:0],btdc_ready[3:0],crank_counter[5:0],crank_cycle_counter[17:0],cal_rpm,cal_btdc,cal_injection[3:0],cal_ignition[3:0],inject[3:0],ignite[3:0],update_table[3:0],fuel_pump[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hust_efi,Vivado 2018.3";
begin
end;
