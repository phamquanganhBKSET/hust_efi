-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jul  4 19:17:13 2022
-- Host        : PC113 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/HH/Documents/Embedded_system/hust_efi/fpga/hust_efi/hust_efi.srcs/sources_1/bd/design_1/ip/design_1_hust_efi_0_0/design_1_hust_efi_0_0_sim_netlist.vhdl
-- Design      : design_1_hust_efi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_hust_efi_0_0_crank_position_control is
  port (
    reset_n_0 : out STD_LOGIC;
    crank_changed : out STD_LOGIC;
    crank_cycle_counter : out STD_LOGIC_VECTOR ( 17 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ckp_0 : out STD_LOGIC;
    crank_tick : out STD_LOGIC;
    allow_injection0_out : out STD_LOGIC;
    cal_btdc : out STD_LOGIC;
    crank_changed_reg_0 : out STD_LOGIC;
    cal_injection1 : out STD_LOGIC;
    \next_state1__0\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_0\ : out STD_LOGIC;
    efi_on_0 : out STD_LOGIC;
    crank_changed_reg_1 : out STD_LOGIC;
    crank_changed_reg_2 : out STD_LOGIC;
    crank_changed_reg_3 : out STD_LOGIC;
    crank_changed_reg_4 : out STD_LOGIC;
    ckp : in STD_LOGIC;
    clk : in STD_LOGIC;
    efi_on : in STD_LOGIC;
    \FSM_sequential_current_state[0]_i_4\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_current_state_reg[2]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_current_state[2]_i_2__0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_current_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_hust_efi_0_0_crank_position_control : entity is "crank_position_control";
end design_1_hust_efi_0_0_crank_position_control;

architecture STRUCTURE of design_1_hust_efi_0_0_crank_position_control is
  signal \FSM_sequential_current_state[0]_i_1__11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1__11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_1__11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^crank_changed\ : STD_LOGIC;
  signal crank_changed_i_2_n_0 : STD_LOGIC;
  signal crank_changed_i_3_n_0 : STD_LOGIC;
  signal crank_changed_i_4_n_0 : STD_LOGIC;
  signal \crank_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \crank_counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \crank_counter[5]_i_4_n_0\ : STD_LOGIC;
  signal \crank_counter[5]_i_6_n_0\ : STD_LOGIC;
  signal \crank_counter[5]_i_7_n_0\ : STD_LOGIC;
  signal crank_counter_input : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^crank_cycle_counter\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \crank_cycle_counter[11]_i_2_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter[11]_i_3_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter[11]_i_4_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter[11]_i_5_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter[15]_i_2_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter[15]_i_3_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter[15]_i_4_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter[15]_i_5_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter[17]_i_1_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter[17]_i_3_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter[17]_i_4_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter[3]_i_3_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter[3]_i_4_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter[3]_i_5_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter[3]_i_6_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter[7]_i_4_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter[7]_i_5_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[17]_i_2_n_3\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[17]_i_2_n_6\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[17]_i_2_n_7\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \crank_cycle_counter_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^crank_tick\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal increase_crank : STD_LOGIC;
  signal last_ckp : STD_LOGIC;
  signal \^next_state1__0\ : STD_LOGIC;
  signal pre_crank_changed : STD_LOGIC;
  signal \reset_crank__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reset_crank_cycle : STD_LOGIC;
  signal \^reset_n_0\ : STD_LOGIC;
  signal \NLW_crank_cycle_counter_reg[17]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_crank_cycle_counter_reg[17]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1__11\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_2__3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_2__4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_2__5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_2__6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1__11\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_1__11\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_4\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "START:001,RESETBDC:011,RESETTDC:010,IDLE:000,UPDATE:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "START:001,RESETBDC:011,RESETTDC:010,IDLE:000,UPDATE:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "START:001,RESETBDC:011,RESETTDC:010,IDLE:000,UPDATE:100";
  attribute SOFT_HLUTNM of cal_btdc_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of crank_changed_i_4 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \crank_counter[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \crank_counter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \crank_counter[4]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \crank_counter[5]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \crank_counter[5]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \crank_counter[5]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \inject[0]_INST_0_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \inject[1]_INST_0_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \inject[1]_INST_0_i_3\ : label is "soft_lutpair9";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
  crank_changed <= \^crank_changed\;
  crank_cycle_counter(17 downto 0) <= \^crank_cycle_counter\(17 downto 0);
  crank_tick <= \^crank_tick\;
  \next_state1__0\ <= \^next_state1__0\;
  reset_n_0 <= \^reset_n_0\;
\FSM_sequential_current_state[0]_i_1__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10110000"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      I2 => ckp,
      I3 => current_state(0),
      I4 => efi_on,
      O => \FSM_sequential_current_state[0]_i_1__11_n_0\
    );
\FSM_sequential_current_state[0]_i_2__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^crank_changed\,
      I1 => ckp,
      I2 => \FSM_sequential_current_state_reg[0]_0\(0),
      O => crank_changed_reg_1
    );
\FSM_sequential_current_state[0]_i_2__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^crank_changed\,
      I1 => ckp,
      I2 => \FSM_sequential_current_state[0]_i_4\(0),
      O => crank_changed_reg_2
    );
\FSM_sequential_current_state[0]_i_2__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^crank_changed\,
      I1 => ckp,
      I2 => \FSM_sequential_current_state[2]_i_2__0\(0),
      O => crank_changed_reg_3
    );
\FSM_sequential_current_state[0]_i_2__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^crank_changed\,
      I1 => ckp,
      I2 => \FSM_sequential_current_state_reg[2]_1\(0),
      O => crank_changed_reg_4
    );
\FSM_sequential_current_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C8080808"
    )
        port map (
      I0 => ckp,
      I1 => \^crank_changed\,
      I2 => \FSM_sequential_current_state[0]_i_4\(2),
      I3 => \^crank_tick\,
      I4 => efi_on,
      I5 => \FSM_sequential_current_state[0]_i_4\(1),
      O => ckp_0
    );
\FSM_sequential_current_state[1]_i_1__11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => efi_on,
      O => \FSM_sequential_current_state[1]_i_1__11_n_0\
    );
\FSM_sequential_current_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808F80808"
    )
        port map (
      I0 => \FSM_sequential_current_state[2]_i_3_n_0\,
      I1 => \FSM_sequential_current_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_current_state_reg[2]_1\(2),
      I3 => \FSM_sequential_current_state_reg[2]_1\(0),
      I4 => efi_on,
      I5 => \^next_state1__0\,
      O => \FSM_sequential_current_state_reg[2]_0\
    );
\FSM_sequential_current_state[2]_i_1__11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2208"
    )
        port map (
      I0 => efi_on,
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => current_state(1),
      O => \FSM_sequential_current_state[2]_i_1__11_n_0\
    );
\FSM_sequential_current_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01F101F1F101F1F1"
    )
        port map (
      I0 => \FSM_sequential_current_state[2]_i_3_n_0\,
      I1 => \FSM_sequential_current_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_current_state_reg[2]_1\(2),
      I3 => \FSM_sequential_current_state_reg[2]_1\(0),
      I4 => efi_on,
      I5 => \^next_state1__0\,
      O => cal_injection1
    );
\FSM_sequential_current_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B40C840C"
    )
        port map (
      I0 => \^crank_tick\,
      I1 => \FSM_sequential_current_state_reg[2]_1\(1),
      I2 => \FSM_sequential_current_state_reg[2]_1\(0),
      I3 => \^crank_changed\,
      I4 => ckp,
      O => \FSM_sequential_current_state[2]_i_3_n_0\
    );
\FSM_sequential_current_state[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20C02FC0A000A000"
    )
        port map (
      I0 => efi_on,
      I1 => \^crank_tick\,
      I2 => \FSM_sequential_current_state[2]_i_2__0\(1),
      I3 => \FSM_sequential_current_state[2]_i_2__0\(0),
      I4 => ckp,
      I5 => \^crank_changed\,
      O => efi_on_0
    );
\FSM_sequential_current_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8F8C0C0"
    )
        port map (
      I0 => \^crank_tick\,
      I1 => \FSM_sequential_current_state_reg[2]_1\(1),
      I2 => \FSM_sequential_current_state_reg[2]_1\(0),
      I3 => ckp,
      I4 => \^crank_changed\,
      O => \FSM_sequential_current_state[2]_i_4_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => \FSM_sequential_current_state[0]_i_1__11_n_0\,
      Q => current_state(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => \FSM_sequential_current_state[1]_i_1__11_n_0\,
      Q => current_state(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => \FSM_sequential_current_state[2]_i_1__11_n_0\,
      Q => current_state(2)
    );
cal_btdc_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => ckp,
      O => cal_btdc
    );
cal_injection_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0480000000000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \^q\(4),
      O => \^crank_tick\
    );
crank_changed_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => crank_changed_i_2_n_0,
      I1 => crank_changed_i_3_n_0,
      O => pre_crank_changed
    );
crank_changed_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFF5155FDFEFDFE"
    )
        port map (
      I0 => \reset_crank__0\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => increase_crank,
      I5 => \reset_crank__0\(1),
      O => crank_changed_i_2_n_0
    );
crank_changed_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF45FF55FFFFFCFC"
    )
        port map (
      I0 => \reset_crank__0\(0),
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => crank_changed_i_4_n_0,
      I4 => \^q\(3),
      I5 => \reset_crank__0\(1),
      O => crank_changed_i_3_n_0
    );
crank_changed_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => increase_crank,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => crank_changed_i_4_n_0
    );
crank_changed_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => pre_crank_changed,
      Q => \^crank_changed\
    );
\crank_counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6EE6"
    )
        port map (
      I0 => \reset_crank__0\(0),
      I1 => \reset_crank__0\(1),
      I2 => \^q\(0),
      I3 => increase_crank,
      O => crank_counter_input(0)
    );
\crank_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A800000"
    )
        port map (
      I0 => \reset_crank__0\(1),
      I1 => \^q\(0),
      I2 => increase_crank,
      I3 => \^q\(1),
      I4 => \reset_crank__0\(0),
      O => crank_counter_input(1)
    );
\crank_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA8000AAAAAAAA"
    )
        port map (
      I0 => \reset_crank__0\(1),
      I1 => increase_crank,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \reset_crank__0\(0),
      O => crank_counter_input(2)
    );
\crank_counter[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => efi_on,
      I4 => ckp,
      I5 => last_ckp,
      O => increase_crank
    );
\crank_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A80AAAA"
    )
        port map (
      I0 => \reset_crank__0\(1),
      I1 => \crank_counter[4]_i_2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \reset_crank__0\(0),
      O => crank_counter_input(3)
    );
\crank_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA8000AAAAAAAA"
    )
        port map (
      I0 => \reset_crank__0\(1),
      I1 => \^q\(2),
      I2 => \crank_counter[4]_i_2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \reset_crank__0\(0),
      O => crank_counter_input(4)
    );
\crank_counter[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => current_state(2),
      I5 => \crank_counter[4]_i_3_n_0\,
      O => \crank_counter[4]_i_2_n_0\
    );
\crank_counter[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => efi_on,
      I1 => ckp,
      I2 => last_ckp,
      O => \crank_counter[4]_i_3_n_0\
    );
\crank_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A800000"
    )
        port map (
      I0 => \reset_crank__0\(1),
      I1 => \crank_counter[5]_i_4_n_0\,
      I2 => \^q\(4),
      I3 => \^q\(5),
      I4 => \reset_crank__0\(0),
      O => crank_counter_input(5)
    );
\crank_counter[5]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => \^reset_n_0\
    );
\crank_counter[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03030300C8C8C8C8"
    )
        port map (
      I0 => ckp,
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \crank_counter[5]_i_6_n_0\,
      I4 => \crank_counter[5]_i_7_n_0\,
      I5 => current_state(2),
      O => \reset_crank__0\(1)
    );
\crank_counter[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => increase_crank,
      I4 => \^q\(2),
      O => \crank_counter[5]_i_4_n_0\
    );
\crank_counter[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0334"
    )
        port map (
      I0 => ckp,
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(2),
      O => \reset_crank__0\(0)
    );
\crank_counter[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => last_ckp,
      I3 => ckp,
      I4 => efi_on,
      O => \crank_counter[5]_i_6_n_0\
    );
\crank_counter[5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \crank_counter[5]_i_7_n_0\
    );
\crank_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => crank_counter_input(0),
      Q => \^q\(0)
    );
\crank_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => crank_counter_input(1),
      Q => \^q\(1)
    );
\crank_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => crank_counter_input(2),
      Q => \^q\(2)
    );
\crank_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => crank_counter_input(3),
      Q => \^q\(3)
    );
\crank_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => crank_counter_input(4),
      Q => \^q\(4)
    );
\crank_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => crank_counter_input(5),
      Q => \^q\(5)
    );
\crank_cycle_counter[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^crank_cycle_counter\(11),
      I1 => reset_crank_cycle,
      O => \crank_cycle_counter[11]_i_2_n_0\
    );
\crank_cycle_counter[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^crank_cycle_counter\(10),
      I1 => reset_crank_cycle,
      O => \crank_cycle_counter[11]_i_3_n_0\
    );
\crank_cycle_counter[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^crank_cycle_counter\(9),
      I1 => reset_crank_cycle,
      O => \crank_cycle_counter[11]_i_4_n_0\
    );
\crank_cycle_counter[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^crank_cycle_counter\(8),
      I1 => reset_crank_cycle,
      O => \crank_cycle_counter[11]_i_5_n_0\
    );
\crank_cycle_counter[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^crank_cycle_counter\(15),
      I1 => reset_crank_cycle,
      O => \crank_cycle_counter[15]_i_2_n_0\
    );
\crank_cycle_counter[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^crank_cycle_counter\(14),
      I1 => reset_crank_cycle,
      O => \crank_cycle_counter[15]_i_3_n_0\
    );
\crank_cycle_counter[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^crank_cycle_counter\(13),
      I1 => reset_crank_cycle,
      O => \crank_cycle_counter[15]_i_4_n_0\
    );
\crank_cycle_counter[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^crank_cycle_counter\(12),
      I1 => reset_crank_cycle,
      O => \crank_cycle_counter[15]_i_5_n_0\
    );
\crank_cycle_counter[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0009"
    )
        port map (
      I0 => current_state(2),
      I1 => efi_on,
      I2 => current_state(0),
      I3 => current_state(1),
      O => \crank_cycle_counter[17]_i_1_n_0\
    );
\crank_cycle_counter[17]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^crank_cycle_counter\(17),
      I1 => reset_crank_cycle,
      O => \crank_cycle_counter[17]_i_3_n_0\
    );
\crank_cycle_counter[17]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^crank_cycle_counter\(16),
      I1 => reset_crank_cycle,
      O => \crank_cycle_counter[17]_i_4_n_0\
    );
\crank_cycle_counter[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001100100010001"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => efi_on,
      I3 => current_state(2),
      I4 => last_ckp,
      I5 => ckp,
      O => reset_crank_cycle
    );
\crank_cycle_counter[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^crank_cycle_counter\(0),
      I1 => reset_crank_cycle,
      O => \crank_cycle_counter[3]_i_2_n_0\
    );
\crank_cycle_counter[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^crank_cycle_counter\(3),
      I1 => reset_crank_cycle,
      O => \crank_cycle_counter[3]_i_3_n_0\
    );
\crank_cycle_counter[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^crank_cycle_counter\(2),
      I1 => reset_crank_cycle,
      O => \crank_cycle_counter[3]_i_4_n_0\
    );
\crank_cycle_counter[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^crank_cycle_counter\(1),
      I1 => reset_crank_cycle,
      O => \crank_cycle_counter[3]_i_5_n_0\
    );
\crank_cycle_counter[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^crank_cycle_counter\(0),
      I1 => reset_crank_cycle,
      O => \crank_cycle_counter[3]_i_6_n_0\
    );
\crank_cycle_counter[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^crank_cycle_counter\(7),
      I1 => reset_crank_cycle,
      O => \crank_cycle_counter[7]_i_2_n_0\
    );
\crank_cycle_counter[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^crank_cycle_counter\(6),
      I1 => reset_crank_cycle,
      O => \crank_cycle_counter[7]_i_3_n_0\
    );
\crank_cycle_counter[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^crank_cycle_counter\(5),
      I1 => reset_crank_cycle,
      O => \crank_cycle_counter[7]_i_4_n_0\
    );
\crank_cycle_counter[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^crank_cycle_counter\(4),
      I1 => reset_crank_cycle,
      O => \crank_cycle_counter[7]_i_5_n_0\
    );
\crank_cycle_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \crank_cycle_counter[17]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \crank_cycle_counter_reg[3]_i_1_n_7\,
      Q => \^crank_cycle_counter\(0)
    );
\crank_cycle_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \crank_cycle_counter[17]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \crank_cycle_counter_reg[11]_i_1_n_5\,
      Q => \^crank_cycle_counter\(10)
    );
\crank_cycle_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \crank_cycle_counter[17]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \crank_cycle_counter_reg[11]_i_1_n_4\,
      Q => \^crank_cycle_counter\(11)
    );
\crank_cycle_counter_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \crank_cycle_counter_reg[7]_i_1_n_0\,
      CO(3) => \crank_cycle_counter_reg[11]_i_1_n_0\,
      CO(2) => \crank_cycle_counter_reg[11]_i_1_n_1\,
      CO(1) => \crank_cycle_counter_reg[11]_i_1_n_2\,
      CO(0) => \crank_cycle_counter_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \crank_cycle_counter_reg[11]_i_1_n_4\,
      O(2) => \crank_cycle_counter_reg[11]_i_1_n_5\,
      O(1) => \crank_cycle_counter_reg[11]_i_1_n_6\,
      O(0) => \crank_cycle_counter_reg[11]_i_1_n_7\,
      S(3) => \crank_cycle_counter[11]_i_2_n_0\,
      S(2) => \crank_cycle_counter[11]_i_3_n_0\,
      S(1) => \crank_cycle_counter[11]_i_4_n_0\,
      S(0) => \crank_cycle_counter[11]_i_5_n_0\
    );
\crank_cycle_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \crank_cycle_counter[17]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \crank_cycle_counter_reg[15]_i_1_n_7\,
      Q => \^crank_cycle_counter\(12)
    );
\crank_cycle_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \crank_cycle_counter[17]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \crank_cycle_counter_reg[15]_i_1_n_6\,
      Q => \^crank_cycle_counter\(13)
    );
\crank_cycle_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \crank_cycle_counter[17]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \crank_cycle_counter_reg[15]_i_1_n_5\,
      Q => \^crank_cycle_counter\(14)
    );
\crank_cycle_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \crank_cycle_counter[17]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \crank_cycle_counter_reg[15]_i_1_n_4\,
      Q => \^crank_cycle_counter\(15)
    );
\crank_cycle_counter_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \crank_cycle_counter_reg[11]_i_1_n_0\,
      CO(3) => \crank_cycle_counter_reg[15]_i_1_n_0\,
      CO(2) => \crank_cycle_counter_reg[15]_i_1_n_1\,
      CO(1) => \crank_cycle_counter_reg[15]_i_1_n_2\,
      CO(0) => \crank_cycle_counter_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \crank_cycle_counter_reg[15]_i_1_n_4\,
      O(2) => \crank_cycle_counter_reg[15]_i_1_n_5\,
      O(1) => \crank_cycle_counter_reg[15]_i_1_n_6\,
      O(0) => \crank_cycle_counter_reg[15]_i_1_n_7\,
      S(3) => \crank_cycle_counter[15]_i_2_n_0\,
      S(2) => \crank_cycle_counter[15]_i_3_n_0\,
      S(1) => \crank_cycle_counter[15]_i_4_n_0\,
      S(0) => \crank_cycle_counter[15]_i_5_n_0\
    );
\crank_cycle_counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \crank_cycle_counter[17]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \crank_cycle_counter_reg[17]_i_2_n_7\,
      Q => \^crank_cycle_counter\(16)
    );
\crank_cycle_counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \crank_cycle_counter[17]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \crank_cycle_counter_reg[17]_i_2_n_6\,
      Q => \^crank_cycle_counter\(17)
    );
\crank_cycle_counter_reg[17]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \crank_cycle_counter_reg[15]_i_1_n_0\,
      CO(3 downto 1) => \NLW_crank_cycle_counter_reg[17]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \crank_cycle_counter_reg[17]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_crank_cycle_counter_reg[17]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1) => \crank_cycle_counter_reg[17]_i_2_n_6\,
      O(0) => \crank_cycle_counter_reg[17]_i_2_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \crank_cycle_counter[17]_i_3_n_0\,
      S(0) => \crank_cycle_counter[17]_i_4_n_0\
    );
\crank_cycle_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \crank_cycle_counter[17]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \crank_cycle_counter_reg[3]_i_1_n_6\,
      Q => \^crank_cycle_counter\(1)
    );
\crank_cycle_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \crank_cycle_counter[17]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \crank_cycle_counter_reg[3]_i_1_n_5\,
      Q => \^crank_cycle_counter\(2)
    );
\crank_cycle_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \crank_cycle_counter[17]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \crank_cycle_counter_reg[3]_i_1_n_4\,
      Q => \^crank_cycle_counter\(3)
    );
\crank_cycle_counter_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \crank_cycle_counter_reg[3]_i_1_n_0\,
      CO(2) => \crank_cycle_counter_reg[3]_i_1_n_1\,
      CO(1) => \crank_cycle_counter_reg[3]_i_1_n_2\,
      CO(0) => \crank_cycle_counter_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \crank_cycle_counter[3]_i_2_n_0\,
      O(3) => \crank_cycle_counter_reg[3]_i_1_n_4\,
      O(2) => \crank_cycle_counter_reg[3]_i_1_n_5\,
      O(1) => \crank_cycle_counter_reg[3]_i_1_n_6\,
      O(0) => \crank_cycle_counter_reg[3]_i_1_n_7\,
      S(3) => \crank_cycle_counter[3]_i_3_n_0\,
      S(2) => \crank_cycle_counter[3]_i_4_n_0\,
      S(1) => \crank_cycle_counter[3]_i_5_n_0\,
      S(0) => \crank_cycle_counter[3]_i_6_n_0\
    );
\crank_cycle_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \crank_cycle_counter[17]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \crank_cycle_counter_reg[7]_i_1_n_7\,
      Q => \^crank_cycle_counter\(4)
    );
\crank_cycle_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \crank_cycle_counter[17]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \crank_cycle_counter_reg[7]_i_1_n_6\,
      Q => \^crank_cycle_counter\(5)
    );
\crank_cycle_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \crank_cycle_counter[17]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \crank_cycle_counter_reg[7]_i_1_n_5\,
      Q => \^crank_cycle_counter\(6)
    );
\crank_cycle_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \crank_cycle_counter[17]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \crank_cycle_counter_reg[7]_i_1_n_4\,
      Q => \^crank_cycle_counter\(7)
    );
\crank_cycle_counter_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \crank_cycle_counter_reg[3]_i_1_n_0\,
      CO(3) => \crank_cycle_counter_reg[7]_i_1_n_0\,
      CO(2) => \crank_cycle_counter_reg[7]_i_1_n_1\,
      CO(1) => \crank_cycle_counter_reg[7]_i_1_n_2\,
      CO(0) => \crank_cycle_counter_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \crank_cycle_counter_reg[7]_i_1_n_4\,
      O(2) => \crank_cycle_counter_reg[7]_i_1_n_5\,
      O(1) => \crank_cycle_counter_reg[7]_i_1_n_6\,
      O(0) => \crank_cycle_counter_reg[7]_i_1_n_7\,
      S(3) => \crank_cycle_counter[7]_i_2_n_0\,
      S(2) => \crank_cycle_counter[7]_i_3_n_0\,
      S(1) => \crank_cycle_counter[7]_i_4_n_0\,
      S(0) => \crank_cycle_counter[7]_i_5_n_0\
    );
\crank_cycle_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \crank_cycle_counter[17]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \crank_cycle_counter_reg[11]_i_1_n_7\,
      Q => \^crank_cycle_counter\(8)
    );
\crank_cycle_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \crank_cycle_counter[17]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \crank_cycle_counter_reg[11]_i_1_n_6\,
      Q => \^crank_cycle_counter\(9)
    );
\inject[0]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^crank_changed\,
      I1 => ckp,
      O => allow_injection0_out
    );
\inject[1]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^crank_changed\,
      I1 => ckp,
      O => crank_changed_reg_0
    );
\inject[1]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^crank_tick\,
      I1 => \^crank_changed\,
      O => \^next_state1__0\
    );
last_ckp_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => ckp,
      Q => last_ckp
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_hust_efi_0_0_fuel_injection_control is
  port (
    cal_injection : out STD_LOGIC_VECTOR ( 0 to 0 );
    inject : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_current_state_reg[2]_0\ : out STD_LOGIC;
    fuel_pump : out STD_LOGIC_VECTOR ( 0 to 0 );
    cal_injection0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    cal_injection_reg_0 : in STD_LOGIC;
    inject_0_sp_1 : in STD_LOGIC;
    done : in STD_LOGIC_VECTOR ( 0 to 0 );
    ic_on : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[0]_1\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_hust_efi_0_0_fuel_injection_control : entity is "fuel_injection_control";
end design_1_hust_efi_0_0_fuel_injection_control;

architecture STRUCTURE of design_1_hust_efi_0_0_fuel_injection_control is
  signal \FSM_sequential_current_state[2]_i_1__8_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal inject_0_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_1__8\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001";
  attribute SOFT_HLUTNM of \fuel_pump[0]_INST_0\ : label is "soft_lutpair10";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  inject_0_sn_1 <= inject_0_sp_1;
\FSM_sequential_current_state[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FB00FB0FFFFF0FF"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[0]_0\(0),
      I1 => \FSM_sequential_current_state_reg[0]_1\,
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => done(0),
      I5 => \^q\(0),
      O => \FSM_sequential_current_state_reg[2]_0\
    );
\FSM_sequential_current_state[2]_i_1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28080808"
    )
        port map (
      I0 => ic_on(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => inject_0_sn_1,
      O => \FSM_sequential_current_state[2]_i_1__8_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => cal_injection_reg_0,
      D => D(0),
      Q => \^q\(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => cal_injection_reg_0,
      D => D(1),
      Q => \^q\(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => cal_injection_reg_0,
      D => \FSM_sequential_current_state[2]_i_1__8_n_0\,
      Q => \^q\(2)
    );
cal_injection_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => cal_injection_reg_0,
      D => cal_injection0,
      Q => cal_injection(0)
    );
\fuel_pump[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FFE"
    )
        port map (
      I0 => ic_on(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => fuel_pump(0)
    );
\inject[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800380"
    )
        port map (
      I0 => inject_0_sn_1,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => done(0),
      O => inject(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_hust_efi_0_0_fuel_injection_control_0 is
  port (
    cal_injection : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    inject : out STD_LOGIC_VECTOR ( 0 to 0 );
    fuel_pump : out STD_LOGIC_VECTOR ( 0 to 0 );
    cal_injection0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_1\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[0]_2\ : in STD_LOGIC;
    ic_on : in STD_LOGIC_VECTOR ( 0 to 0 );
    allow_injection : in STD_LOGIC_VECTOR ( 0 to 0 );
    done : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_hust_efi_0_0_fuel_injection_control_0 : entity is "fuel_injection_control";
end design_1_hust_efi_0_0_fuel_injection_control_0;

architecture STRUCTURE of design_1_hust_efi_0_0_fuel_injection_control_0 is
  signal \FSM_sequential_current_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_current_state_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_1__1\ : label is "soft_lutpair12";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001";
  attribute SOFT_HLUTNM of \fuel_pump[1]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \inject[1]_INST_0\ : label is "soft_lutpair13";
begin
  \FSM_sequential_current_state_reg[2]_0\(2 downto 0) <= \^fsm_sequential_current_state_reg[2]_0\(2 downto 0);
\FSM_sequential_current_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF001D0000"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[0]_1\,
      I1 => Q(0),
      I2 => \FSM_sequential_current_state_reg[0]_2\,
      I3 => \^fsm_sequential_current_state_reg[2]_0\(2),
      I4 => \^fsm_sequential_current_state_reg[2]_0\(1),
      I5 => \FSM_sequential_current_state[0]_i_7_n_0\,
      O => \FSM_sequential_current_state_reg[0]_0\
    );
\FSM_sequential_current_state[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"55E5"
    )
        port map (
      I0 => \^fsm_sequential_current_state_reg[2]_0\(0),
      I1 => done(0),
      I2 => \^fsm_sequential_current_state_reg[2]_0\(2),
      I3 => \^fsm_sequential_current_state_reg[2]_0\(1),
      O => \FSM_sequential_current_state[0]_i_7_n_0\
    );
\FSM_sequential_current_state[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28080808"
    )
        port map (
      I0 => ic_on(0),
      I1 => \^fsm_sequential_current_state_reg[2]_0\(2),
      I2 => \^fsm_sequential_current_state_reg[2]_0\(1),
      I3 => \^fsm_sequential_current_state_reg[2]_0\(0),
      I4 => allow_injection(0),
      O => \FSM_sequential_current_state[2]_i_1__1_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[2]_1\,
      D => D(0),
      Q => \^fsm_sequential_current_state_reg[2]_0\(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[2]_1\,
      D => D(1),
      Q => \^fsm_sequential_current_state_reg[2]_0\(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[2]_1\,
      D => \FSM_sequential_current_state[2]_i_1__1_n_0\,
      Q => \^fsm_sequential_current_state_reg[2]_0\(2)
    );
cal_injection_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[2]_1\,
      D => cal_injection0,
      Q => cal_injection(0)
    );
\fuel_pump[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FFE"
    )
        port map (
      I0 => ic_on(0),
      I1 => \^fsm_sequential_current_state_reg[2]_0\(0),
      I2 => \^fsm_sequential_current_state_reg[2]_0\(1),
      I3 => \^fsm_sequential_current_state_reg[2]_0\(2),
      O => fuel_pump(0)
    );
\inject[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800380"
    )
        port map (
      I0 => allow_injection(0),
      I1 => \^fsm_sequential_current_state_reg[2]_0\(0),
      I2 => \^fsm_sequential_current_state_reg[2]_0\(1),
      I3 => \^fsm_sequential_current_state_reg[2]_0\(2),
      I4 => done(0),
      O => inject(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_hust_efi_0_0_fuel_injection_control_2 is
  port (
    cal_injection : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[1]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    inject : out STD_LOGIC_VECTOR ( 0 to 0 );
    fuel_pump : out STD_LOGIC_VECTOR ( 0 to 0 );
    cal_injection0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    cal_injection_reg_0 : in STD_LOGIC;
    allow_injection : in STD_LOGIC_VECTOR ( 0 to 0 );
    done : in STD_LOGIC_VECTOR ( 0 to 0 );
    ic_on : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_hust_efi_0_0_fuel_injection_control_2 : entity is "fuel_injection_control";
end design_1_hust_efi_0_0_fuel_injection_control_2;

architecture STRUCTURE of design_1_hust_efi_0_0_fuel_injection_control_2 is
  signal \FSM_sequential_current_state[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_2__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_1__4\ : label is "soft_lutpair16";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001";
  attribute SOFT_HLUTNM of \fuel_pump[2]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \inject[2]_INST_0\ : label is "soft_lutpair15";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\FSM_sequential_current_state[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3434FFCF"
    )
        port map (
      I0 => allow_injection(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => done(0),
      I4 => \^q\(0),
      O => \FSM_sequential_current_state_reg[1]_0\
    );
\FSM_sequential_current_state[2]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28080808"
    )
        port map (
      I0 => ic_on(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => allow_injection(0),
      O => \FSM_sequential_current_state[2]_i_1__4_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => cal_injection_reg_0,
      D => D(0),
      Q => \^q\(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => cal_injection_reg_0,
      D => D(1),
      Q => \^q\(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => cal_injection_reg_0,
      D => \FSM_sequential_current_state[2]_i_1__4_n_0\,
      Q => \^q\(2)
    );
cal_injection_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => cal_injection_reg_0,
      D => cal_injection0,
      Q => cal_injection(0)
    );
\fuel_pump[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FFE"
    )
        port map (
      I0 => ic_on(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => fuel_pump(0)
    );
\inject[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800380"
    )
        port map (
      I0 => allow_injection(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => done(0),
      O => inject(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_hust_efi_0_0_fuel_injection_control_4 is
  port (
    cal_injection : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_current_state_reg[1]_0\ : out STD_LOGIC;
    inject : out STD_LOGIC_VECTOR ( 0 to 0 );
    fuel_pump : out STD_LOGIC_VECTOR ( 0 to 0 );
    cal_injection0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_0\ : in STD_LOGIC;
    ic_on : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[1]_1\ : in STD_LOGIC;
    allow_injection : in STD_LOGIC_VECTOR ( 0 to 0 );
    done : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_hust_efi_0_0_fuel_injection_control_4 : entity is "fuel_injection_control";
end design_1_hust_efi_0_0_fuel_injection_control_4;

architecture STRUCTURE of design_1_hust_efi_0_0_fuel_injection_control_4 is
  signal \FSM_sequential_current_state[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_1__9_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal current_state : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_2__2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_1__9\ : label is "soft_lutpair19";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "CALCULATE:010,WAITINJECT:011,INJECT:100,WAITUPDATE:101,UPDATE:110,IDLE:000,START:001";
  attribute SOFT_HLUTNM of \fuel_pump[3]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \inject[3]_INST_0\ : label is "soft_lutpair18";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\FSM_sequential_current_state[0]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3434FFCF"
    )
        port map (
      I0 => allow_injection(0),
      I1 => \^q\(1),
      I2 => current_state(2),
      I3 => done(0),
      I4 => \^q\(0),
      O => \FSM_sequential_current_state_reg[1]_0\
    );
\FSM_sequential_current_state[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A8A000A0A8A00"
    )
        port map (
      I0 => ic_on(0),
      I1 => \FSM_sequential_current_state_reg[1]_1\,
      I2 => current_state(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => allow_injection(0),
      O => \FSM_sequential_current_state[1]_i_1__2_n_0\
    );
\FSM_sequential_current_state[2]_i_1__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28080808"
    )
        port map (
      I0 => ic_on(0),
      I1 => current_state(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => allow_injection(0),
      O => \FSM_sequential_current_state[2]_i_1__9_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[2]_0\,
      D => D(0),
      Q => \^q\(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[2]_0\,
      D => \FSM_sequential_current_state[1]_i_1__2_n_0\,
      Q => \^q\(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[2]_0\,
      D => \FSM_sequential_current_state[2]_i_1__9_n_0\,
      Q => current_state(2)
    );
cal_injection_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[2]_0\,
      D => cal_injection0,
      Q => cal_injection(0)
    );
\fuel_pump[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FFE"
    )
        port map (
      I0 => ic_on(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => current_state(2),
      O => fuel_pump(0)
    );
\inject[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800380"
    )
        port map (
      I0 => allow_injection(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => current_state(2),
      I4 => done(0),
      O => inject(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_hust_efi_0_0_ignition_control is
  port (
    update_table : out STD_LOGIC_VECTOR ( 0 to 0 );
    ignite : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cal_ignition_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    cal_ignition_reg_1 : in STD_LOGIC;
    ignite_0_sp_1 : in STD_LOGIC;
    ic_on : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_hust_efi_0_0_ignition_control : entity is "ignition_control";
end design_1_hust_efi_0_0_ignition_control;

architecture STRUCTURE of design_1_hust_efi_0_0_ignition_control is
  signal \FSM_sequential_current_state[0]_i_1__6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1__5_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ignite_0_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1__6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1__5\ : label is "soft_lutpair11";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  ignite_0_sn_1 <= ignite_0_sp_1;
\FSM_sequential_current_state[0]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A20AA"
    )
        port map (
      I0 => ic_on(0),
      I1 => ignite_0_sn_1,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \FSM_sequential_current_state[0]_i_1__6_n_0\
    );
\FSM_sequential_current_state[1]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222020"
    )
        port map (
      I0 => ic_on(0),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => ignite_0_sn_1,
      I4 => \^q\(1),
      O => \FSM_sequential_current_state[1]_i_1__5_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => cal_ignition_reg_1,
      D => \FSM_sequential_current_state[0]_i_1__6_n_0\,
      Q => \^q\(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => cal_ignition_reg_1,
      D => \FSM_sequential_current_state[1]_i_1__5_n_0\,
      Q => \^q\(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => cal_ignition_reg_1,
      D => D(0),
      Q => \^q\(2)
    );
cal_ignition_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => cal_ignition_reg_1,
      D => cal_ignition_reg_0,
      Q => update_table(0)
    );
\ignite[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => ignite_0_sn_1,
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => ignite(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_hust_efi_0_0_ignition_control_1 is
  port (
    update_table : out STD_LOGIC_VECTOR ( 0 to 0 );
    ignite : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cal_ignition_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_0\ : in STD_LOGIC;
    \ignite[1]\ : in STD_LOGIC;
    ic_on : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_hust_efi_0_0_ignition_control_1 : entity is "ignition_control";
end design_1_hust_efi_0_0_ignition_control_1;

architecture STRUCTURE of design_1_hust_efi_0_0_ignition_control_1 is
  signal \FSM_sequential_current_state[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1__4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1__3\ : label is "soft_lutpair14";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\FSM_sequential_current_state[0]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A20AA"
    )
        port map (
      I0 => ic_on(0),
      I1 => \ignite[1]\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \FSM_sequential_current_state[0]_i_1__4_n_0\
    );
\FSM_sequential_current_state[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222020"
    )
        port map (
      I0 => ic_on(0),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \ignite[1]\,
      I4 => \^q\(1),
      O => \FSM_sequential_current_state[1]_i_1__3_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[0]_0\,
      D => \FSM_sequential_current_state[0]_i_1__4_n_0\,
      Q => \^q\(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[0]_0\,
      D => \FSM_sequential_current_state[1]_i_1__3_n_0\,
      Q => \^q\(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[0]_0\,
      D => D(0),
      Q => \^q\(2)
    );
cal_ignition_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[0]_0\,
      D => cal_ignition_reg_0,
      Q => update_table(0)
    );
\ignite[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \ignite[1]\,
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => ignite(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_hust_efi_0_0_ignition_control_3 is
  port (
    update_table : out STD_LOGIC_VECTOR ( 0 to 0 );
    ignite : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cal_ignition_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    cal_ignition_reg_1 : in STD_LOGIC;
    \ignite[2]\ : in STD_LOGIC;
    ic_on : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_hust_efi_0_0_ignition_control_3 : entity is "ignition_control";
end design_1_hust_efi_0_0_ignition_control_3;

architecture STRUCTURE of design_1_hust_efi_0_0_ignition_control_3 is
  signal \FSM_sequential_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1\ : label is "soft_lutpair17";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A20AA"
    )
        port map (
      I0 => ic_on(0),
      I1 => \ignite[2]\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \FSM_sequential_current_state[0]_i_1_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222020"
    )
        port map (
      I0 => ic_on(0),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \ignite[2]\,
      I4 => \^q\(1),
      O => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => cal_ignition_reg_1,
      D => \FSM_sequential_current_state[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => cal_ignition_reg_1,
      D => \FSM_sequential_current_state[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => cal_ignition_reg_1,
      D => D(0),
      Q => \^q\(2)
    );
cal_ignition_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => cal_ignition_reg_1,
      D => cal_ignition_reg_0,
      Q => update_table(0)
    );
\ignite[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \ignite[2]\,
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => ignite(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_hust_efi_0_0_ignition_control_5 is
  port (
    update_table : out STD_LOGIC_VECTOR ( 0 to 0 );
    ignite : out STD_LOGIC_VECTOR ( 0 to 0 );
    cal_ignition_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_0\ : in STD_LOGIC;
    cal_injection1 : in STD_LOGIC;
    ic_on : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[2]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_hust_efi_0_0_ignition_control_5 : entity is "ignition_control";
end design_1_hust_efi_0_0_ignition_control_5;

architecture STRUCTURE of design_1_hust_efi_0_0_ignition_control_5 is
  signal \FSM_sequential_current_state[0]_i_1__10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1__9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_1__2_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1__10\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1__9\ : label is "soft_lutpair20";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "CALCULATE:010,WAITIGNITE:011,IGNITE:100,IDLE:000,WAITINTAKE:101,START:001";
begin
\FSM_sequential_current_state[0]_i_1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A20AA"
    )
        port map (
      I0 => ic_on(0),
      I1 => \FSM_sequential_current_state_reg[2]_0\,
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => current_state(2),
      O => \FSM_sequential_current_state[0]_i_1__10_n_0\
    );
\FSM_sequential_current_state[1]_i_1__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222020"
    )
        port map (
      I0 => ic_on(0),
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => \FSM_sequential_current_state_reg[2]_0\,
      I4 => current_state(1),
      O => \FSM_sequential_current_state[1]_i_1__9_n_0\
    );
\FSM_sequential_current_state[2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C4000C0004000C0"
    )
        port map (
      I0 => cal_injection1,
      I1 => ic_on(0),
      I2 => current_state(2),
      I3 => current_state(1),
      I4 => current_state(0),
      I5 => \FSM_sequential_current_state_reg[2]_0\,
      O => \FSM_sequential_current_state[2]_i_1__2_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[0]_0\,
      D => \FSM_sequential_current_state[0]_i_1__10_n_0\,
      Q => current_state(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[0]_0\,
      D => \FSM_sequential_current_state[1]_i_1__9_n_0\,
      Q => current_state(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[0]_0\,
      D => \FSM_sequential_current_state[2]_i_1__2_n_0\,
      Q => current_state(2)
    );
cal_ignition_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[0]_0\,
      D => cal_ignition_reg_0,
      Q => update_table(0)
    );
\ignite[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[2]_0\,
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => current_state(1),
      O => ignite(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_hust_efi_0_0_stroke_transition_00 is
  port (
    efi_on_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_current_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_1\ : out STD_LOGIC;
    cal_injection0 : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_current_state_reg[0]_2\ : out STD_LOGIC;
    ckp_0 : out STD_LOGIC;
    efi_on : in STD_LOGIC;
    \next_state1__0\ : in STD_LOGIC;
    allow_injection0_out : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    crank_tick : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_3\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_current_state_reg[0]_4\ : in STD_LOGIC;
    btdc_ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    crank_changed : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_5\ : in STD_LOGIC;
    ckp : in STD_LOGIC;
    clk : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_3\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_hust_efi_0_0_stroke_transition_00 : entity is "stroke_transition_00";
end design_1_hust_efi_0_0_stroke_transition_00;

architecture STRUCTURE of design_1_hust_efi_0_0_stroke_transition_00 is
  signal \FSM_sequential_current_state[0]_i_1__7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1__6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_1__5_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_current_state_reg[0]_0\ : STD_LOGIC;
  signal \^fsm_sequential_current_state_reg[0]_1\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cal_ignition_i_2_n_0 : STD_LOGIC;
  signal \cal_injection1__2\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^efi_on_0\ : STD_LOGIC;
  signal \stroke[0]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "START:001,COMPRESSION:100,COMBUSTION:101,IDLE:000,EXHAUST:010,INTAKE:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "START:001,COMPRESSION:100,COMBUSTION:101,IDLE:000,EXHAUST:010,INTAKE:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "START:001,COMPRESSION:100,COMBUSTION:101,IDLE:000,EXHAUST:010,INTAKE:011";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cal_ignition_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of cal_injection_i_1 : label is "soft_lutpair21";
begin
  \FSM_sequential_current_state_reg[0]_0\ <= \^fsm_sequential_current_state_reg[0]_0\;
  \FSM_sequential_current_state_reg[0]_1\ <= \^fsm_sequential_current_state_reg[0]_1\;
  Q(1 downto 0) <= \^q\(1 downto 0);
  efi_on_0 <= \^efi_on_0\;
\FSM_sequential_current_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F000000000000"
    )
        port map (
      I0 => \stroke[0]_0\(0),
      I1 => \FSM_sequential_current_state_reg[1]_0\(0),
      I2 => \stroke[0]_0\(1),
      I3 => \FSM_sequential_current_state_reg[1]_0\(1),
      I4 => \^fsm_sequential_current_state_reg[0]_0\,
      I5 => \FSM_sequential_current_state_reg[0]_4\,
      O => \FSM_sequential_current_state_reg[2]_1\(0)
    );
\FSM_sequential_current_state[0]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02202AA2022008A0"
    )
        port map (
      I0 => efi_on,
      I1 => current_state(1),
      I2 => \next_state1__0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \FSM_sequential_current_state_reg[0]_5\,
      O => \FSM_sequential_current_state[0]_i_1__7_n_0\
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F50E0AF0A00E0A"
    )
        port map (
      I0 => \^q\(1),
      I1 => efi_on,
      I2 => \next_state1__0\,
      I3 => current_state(1),
      I4 => \^q\(0),
      I5 => \FSM_sequential_current_state_reg[0]_3\,
      O => \stroke[0]_0\(0)
    );
\FSM_sequential_current_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFF9888AAAA9888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \next_state1__0\,
      I2 => efi_on,
      I3 => current_state(1),
      I4 => \^q\(0),
      I5 => \FSM_sequential_current_state_reg[0]_3\,
      O => \stroke[0]_0\(1)
    );
\FSM_sequential_current_state[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"34C4C0C004C4C0C0"
    )
        port map (
      I0 => ckp,
      I1 => \^q\(0),
      I2 => current_state(1),
      I3 => crank_tick,
      I4 => crank_changed,
      I5 => efi_on,
      O => ckp_0
    );
\FSM_sequential_current_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A8A000A0A8A00"
    )
        port map (
      I0 => \^fsm_sequential_current_state_reg[0]_0\,
      I1 => cal_ignition_i_2_n_0,
      I2 => \FSM_sequential_current_state_reg[1]_0\(2),
      I3 => \FSM_sequential_current_state_reg[1]_0\(0),
      I4 => \FSM_sequential_current_state_reg[1]_0\(1),
      I5 => \^efi_on_0\,
      O => \FSM_sequential_current_state_reg[2]_1\(1)
    );
\FSM_sequential_current_state[1]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220008800A80088"
    )
        port map (
      I0 => efi_on,
      I1 => current_state(1),
      I2 => crank_changed,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \next_state1__0\,
      O => \FSM_sequential_current_state[1]_i_1__6_n_0\
    );
\FSM_sequential_current_state[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C4000C0004000C0"
    )
        port map (
      I0 => \cal_injection1__2\,
      I1 => \^fsm_sequential_current_state_reg[0]_0\,
      I2 => \FSM_sequential_current_state_reg[2]_2\(2),
      I3 => \FSM_sequential_current_state_reg[2]_2\(1),
      I4 => \FSM_sequential_current_state_reg[2]_2\(0),
      I5 => \^fsm_sequential_current_state_reg[0]_1\,
      O => \FSM_sequential_current_state_reg[2]_0\(0)
    );
\FSM_sequential_current_state[2]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08202020"
    )
        port map (
      I0 => efi_on,
      I1 => current_state(1),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \next_state1__0\,
      O => \FSM_sequential_current_state[2]_i_1__5_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[2]_3\,
      D => \FSM_sequential_current_state[0]_i_1__7_n_0\,
      Q => \^q\(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[2]_3\,
      D => \FSM_sequential_current_state[1]_i_1__6_n_0\,
      Q => current_state(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[2]_3\,
      D => \FSM_sequential_current_state[2]_i_1__5_n_0\,
      Q => \^q\(1)
    );
cal_ignition_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cal_ignition_i_2_n_0,
      I1 => crank_tick,
      O => \FSM_sequential_current_state_reg[0]_2\
    );
cal_ignition_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC000008083808"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[0]_3\,
      I1 => \^q\(0),
      I2 => current_state(1),
      I3 => efi_on,
      I4 => \next_state1__0\,
      I5 => \^q\(1),
      O => cal_ignition_i_2_n_0
    );
cal_injection_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cal_injection1__2\,
      I1 => crank_tick,
      O => cal_injection0
    );
cal_injection_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003737C7F7"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[0]_3\,
      I1 => \^q\(0),
      I2 => current_state(1),
      I3 => efi_on,
      I4 => \next_state1__0\,
      I5 => \^q\(1),
      O => \cal_injection1__2\
    );
\fuel_pump[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FF80AF8"
    )
        port map (
      I0 => \^q\(0),
      I1 => crank_changed,
      I2 => \^q\(1),
      I3 => current_state(1),
      I4 => efi_on,
      O => \^fsm_sequential_current_state_reg[0]_0\
    );
\ignite[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00600000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \next_state1__0\,
      I2 => \^q\(1),
      I3 => current_state(1),
      I4 => btdc_ready(0),
      O => \^fsm_sequential_current_state_reg[0]_1\
    );
\inject[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003F803080"
    )
        port map (
      I0 => efi_on,
      I1 => \next_state1__0\,
      I2 => current_state(1),
      I3 => \^q\(0),
      I4 => allow_injection0_out,
      I5 => \^q\(1),
      O => \^efi_on_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_hust_efi_0_0_stroke_transition_01 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    efi_on_0 : out STD_LOGIC;
    \FSM_sequential_current_state_reg[1]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_current_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    allow_injection : out STD_LOGIC_VECTOR ( 0 to 0 );
    cal_injection0_2 : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_1\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \next_state1__0\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_3\ : in STD_LOGIC;
    btdc_ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[1]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_current_state_reg[0]_0\ : in STD_LOGIC;
    efi_on : in STD_LOGIC;
    crank_tick : in STD_LOGIC;
    crank_changed : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]_2\ : in STD_LOGIC;
    allow_injection0_out : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_4\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_hust_efi_0_0_stroke_transition_01 : entity is "stroke_transition_01";
end design_1_hust_efi_0_0_stroke_transition_01;

architecture STRUCTURE of design_1_hust_efi_0_0_stroke_transition_01 is
  signal \FSM_sequential_current_state[0]_i_1__9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1__8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_1__7_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_current_state_reg[1]_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^allow_injection\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cal_injection1__0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^efi_on_0\ : STD_LOGIC;
  signal \stroke[2]_3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_2__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_2__0\ : label is "soft_lutpair22";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "START:001,COMPRESSION:101,COMBUSTION:010,IDLE:000,EXHAUST:011,INTAKE:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "START:001,COMPRESSION:101,COMBUSTION:010,IDLE:000,EXHAUST:011,INTAKE:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "START:001,COMPRESSION:101,COMBUSTION:010,IDLE:000,EXHAUST:011,INTAKE:100";
  attribute SOFT_HLUTNM of \cal_ignition_i_1__2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cal_injection_i_1__2\ : label is "soft_lutpair23";
begin
  \FSM_sequential_current_state_reg[1]_0\ <= \^fsm_sequential_current_state_reg[1]_0\;
  Q(1 downto 0) <= \^q\(1 downto 0);
  allow_injection(0) <= \^allow_injection\(0);
  efi_on_0 <= \^efi_on_0\;
\FSM_sequential_current_state[0]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F000000000000"
    )
        port map (
      I0 => \stroke[2]_3\(0),
      I1 => \FSM_sequential_current_state_reg[1]_1\(0),
      I2 => \stroke[2]_3\(1),
      I3 => \FSM_sequential_current_state_reg[1]_1\(1),
      I4 => \^efi_on_0\,
      I5 => \FSM_sequential_current_state_reg[0]_0\,
      O => \FSM_sequential_current_state_reg[2]_0\(0)
    );
\FSM_sequential_current_state[0]_i_1__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02202AA2022008A0"
    )
        port map (
      I0 => efi_on,
      I1 => \^q\(1),
      I2 => \next_state1__0\,
      I3 => \^q\(0),
      I4 => current_state(2),
      I5 => \FSM_sequential_current_state_reg[0]_1\,
      O => \FSM_sequential_current_state[0]_i_1__9_n_0\
    );
\FSM_sequential_current_state[1]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A8A000A0A8A00"
    )
        port map (
      I0 => \^efi_on_0\,
      I1 => \FSM_sequential_current_state[1]_i_2__0_n_0\,
      I2 => \FSM_sequential_current_state_reg[1]_1\(2),
      I3 => \FSM_sequential_current_state_reg[1]_1\(0),
      I4 => \FSM_sequential_current_state_reg[1]_1\(1),
      I5 => \^allow_injection\(0),
      O => \FSM_sequential_current_state_reg[2]_0\(1)
    );
\FSM_sequential_current_state[1]_i_1__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220008800A80088"
    )
        port map (
      I0 => efi_on,
      I1 => \^q\(1),
      I2 => crank_changed,
      I3 => current_state(2),
      I4 => \^q\(0),
      I5 => \next_state1__0\,
      O => \FSM_sequential_current_state[1]_i_1__8_n_0\
    );
\FSM_sequential_current_state[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2EE20000"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[1]_2\,
      I1 => current_state(2),
      I2 => \next_state1__0\,
      I3 => \^q\(0),
      I4 => \stroke[2]_3\(1),
      O => \FSM_sequential_current_state[1]_i_2__0_n_0\
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C4000C0004000C0"
    )
        port map (
      I0 => \cal_injection1__0\,
      I1 => \^efi_on_0\,
      I2 => \FSM_sequential_current_state_reg[2]_2\(2),
      I3 => \FSM_sequential_current_state_reg[2]_2\(1),
      I4 => \FSM_sequential_current_state_reg[2]_2\(0),
      I5 => \^fsm_sequential_current_state_reg[1]_0\,
      O => D(0)
    );
\FSM_sequential_current_state[2]_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08202020"
    )
        port map (
      I0 => efi_on,
      I1 => \^q\(1),
      I2 => current_state(2),
      I3 => \^q\(0),
      I4 => \next_state1__0\,
      O => \FSM_sequential_current_state[2]_i_1__7_n_0\
    );
\FSM_sequential_current_state[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D11D"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[1]_2\,
      I1 => current_state(2),
      I2 => \next_state1__0\,
      I3 => \^q\(0),
      I4 => \stroke[2]_3\(1),
      O => \cal_injection1__0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[2]_4\,
      D => \FSM_sequential_current_state[0]_i_1__9_n_0\,
      Q => \^q\(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[2]_4\,
      D => \FSM_sequential_current_state[1]_i_1__8_n_0\,
      Q => \^q\(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[2]_4\,
      D => \FSM_sequential_current_state[2]_i_1__7_n_0\,
      Q => current_state(2)
    );
\cal_ignition_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \stroke[2]_3\(1),
      I1 => \stroke[2]_3\(0),
      I2 => crank_tick,
      O => \FSM_sequential_current_state_reg[2]_1\
    );
\cal_injection_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \stroke[2]_3\(1),
      I1 => \stroke[2]_3\(0),
      I2 => crank_tick,
      O => cal_injection0_2
    );
\cal_injection_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"98DD550050005500"
    )
        port map (
      I0 => current_state(2),
      I1 => crank_tick,
      I2 => efi_on,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => crank_changed,
      O => \stroke[2]_3\(1)
    );
\cal_injection_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E5FF0A00E0AF0A0"
    )
        port map (
      I0 => current_state(2),
      I1 => efi_on,
      I2 => \next_state1__0\,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => allow_injection0_out,
      O => \stroke[2]_3\(0)
    );
\fuel_pump[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383C3C"
    )
        port map (
      I0 => efi_on,
      I1 => \^q\(1),
      I2 => current_state(2),
      I3 => crank_changed,
      I4 => \^q\(0),
      O => \^efi_on_0\
    );
\ignite[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2304200400000000"
    )
        port map (
      I0 => \next_state1__0\,
      I1 => \^q\(1),
      I2 => current_state(2),
      I3 => \^q\(0),
      I4 => \FSM_sequential_current_state_reg[2]_3\,
      I5 => btdc_ready(0),
      O => \^fsm_sequential_current_state_reg[1]_0\
    );
\inject[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080030003000300"
    )
        port map (
      I0 => efi_on,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => current_state(2),
      I4 => crank_tick,
      I5 => crank_changed,
      O => \^allow_injection\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_hust_efi_0_0_stroke_transition_10 is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cal_injection0_0 : out STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ic_on : out STD_LOGIC_VECTOR ( 0 to 0 );
    efi_on_0 : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_0\ : out STD_LOGIC;
    allow_injection : out STD_LOGIC_VECTOR ( 0 to 0 );
    efi_on : in STD_LOGIC;
    \next_state1__0\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_1\ : in STD_LOGIC;
    crank_tick : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_current_state_reg[0]_3\ : in STD_LOGIC;
    allow_injection0_out : in STD_LOGIC;
    btdc_ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    crank_changed : in STD_LOGIC;
    ckp : in STD_LOGIC;
    clk : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_4\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_hust_efi_0_0_stroke_transition_10 : entity is "stroke_transition_10";
end design_1_hust_efi_0_0_stroke_transition_10;

architecture STRUCTURE of design_1_hust_efi_0_0_stroke_transition_10 is
  signal \FSM_sequential_current_state[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1__10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_1__10_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cal_injection_i_5_n_0 : STD_LOGIC;
  signal \^ic_on\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \stroke[3]_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "START:001,COMPRESSION:010,COMBUSTION:011,IDLE:000,EXHAUST:100,INTAKE:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "START:001,COMPRESSION:010,COMBUSTION:011,IDLE:000,EXHAUST:100,INTAKE:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "START:001,COMPRESSION:010,COMBUSTION:011,IDLE:000,EXHAUST:100,INTAKE:101";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cal_ignition_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \cal_injection_i_1__0\ : label is "soft_lutpair24";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  ic_on(0) <= \^ic_on\(0);
\FSM_sequential_current_state[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02202AA2022008A0"
    )
        port map (
      I0 => efi_on,
      I1 => \^q\(1),
      I2 => \next_state1__0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \FSM_sequential_current_state_reg[0]_1\,
      O => \FSM_sequential_current_state[0]_i_1__2_n_0\
    );
\FSM_sequential_current_state[0]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F000000000000"
    )
        port map (
      I0 => \stroke[3]_1\(0),
      I1 => \FSM_sequential_current_state_reg[0]_2\(0),
      I2 => \stroke[3]_1\(1),
      I3 => \FSM_sequential_current_state_reg[0]_2\(1),
      I4 => \^ic_on\(0),
      I5 => \FSM_sequential_current_state_reg[0]_3\,
      O => \FSM_sequential_current_state_reg[0]_0\(0)
    );
\FSM_sequential_current_state[1]_i_1__10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220008800A80088"
    )
        port map (
      I0 => efi_on,
      I1 => \^q\(1),
      I2 => crank_changed,
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \next_state1__0\,
      O => \FSM_sequential_current_state[1]_i_1__10_n_0\
    );
\FSM_sequential_current_state[2]_i_1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08202020"
    )
        port map (
      I0 => efi_on,
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \next_state1__0\,
      O => \FSM_sequential_current_state[2]_i_1__10_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[0]_4\,
      D => \FSM_sequential_current_state[0]_i_1__2_n_0\,
      Q => \^q\(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[0]_4\,
      D => \FSM_sequential_current_state[1]_i_1__10_n_0\,
      Q => \^q\(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[0]_4\,
      D => \FSM_sequential_current_state[2]_i_1__10_n_0\,
      Q => \^q\(2)
    );
\cal_ignition_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \stroke[3]_1\(1),
      I1 => \stroke[3]_1\(0),
      I2 => crank_tick,
      O => efi_on_0
    );
\cal_injection_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \stroke[3]_1\(1),
      I1 => \stroke[3]_1\(0),
      I2 => crank_tick,
      O => cal_injection0_0
    );
\cal_injection_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333380833003808"
    )
        port map (
      I0 => efi_on,
      I1 => \^q\(2),
      I2 => \next_state1__0\,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => allow_injection0_out,
      O => \stroke[3]_1\(1)
    );
cal_injection_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00BF33BF00BC008"
    )
        port map (
      I0 => efi_on,
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \next_state1__0\,
      I4 => \^q\(1),
      I5 => cal_injection_i_5_n_0,
      O => \stroke[3]_1\(0)
    );
cal_injection_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(0),
      I1 => crank_changed,
      I2 => ckp,
      O => cal_injection_i_5_n_0
    );
\fuel_pump[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFFA88"
    )
        port map (
      I0 => \^q\(0),
      I1 => crank_changed,
      I2 => efi_on,
      I3 => \^q\(2),
      I4 => \^q\(1),
      O => \^ic_on\(0)
    );
\ignite[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0540504000000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => allow_injection0_out,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \next_state1__0\,
      I5 => btdc_ready(0),
      O => \FSM_sequential_current_state_reg[2]_0\
    );
\inject[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444044440000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => crank_tick,
      I3 => crank_changed,
      I4 => efi_on,
      I5 => \^q\(0),
      O => allow_injection(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_hust_efi_0_0_stroke_transition_11 is
  port (
    \FSM_sequential_current_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    efi_on_0 : out STD_LOGIC;
    allow_injection : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_current_state_reg[2]_1\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[2]_3\ : out STD_LOGIC;
    cal_injection0_1 : out STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[1]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_current_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]_1\ : in STD_LOGIC;
    efi_on : in STD_LOGIC;
    \next_state1__0\ : in STD_LOGIC;
    crank_tick : in STD_LOGIC;
    crank_changed : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_4\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    btdc_ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    allow_injection0_out : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_2\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_3\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_hust_efi_0_0_stroke_transition_11 : entity is "stroke_transition_11";
end design_1_hust_efi_0_0_stroke_transition_11;

architecture STRUCTURE of design_1_hust_efi_0_0_stroke_transition_11 is
  signal \FSM_sequential_current_state[0]_i_1__8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1__7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_1__6_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_current_state_reg[2]_3\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^allow_injection\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cal_ignition_i_2__0_n_0\ : STD_LOGIC;
  signal \cal_injection1__1\ : STD_LOGIC;
  signal \^efi_on_0\ : STD_LOGIC;
  signal \stroke[1]_2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_3__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_5\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_1__6\ : label is "soft_lutpair25";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "START:001,COMPRESSION:011,COMBUSTION:100,IDLE:000,EXHAUST:101,INTAKE:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "START:001,COMPRESSION:011,COMBUSTION:100,IDLE:000,EXHAUST:101,INTAKE:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "START:001,COMPRESSION:011,COMBUSTION:100,IDLE:000,EXHAUST:101,INTAKE:010";
  attribute SOFT_HLUTNM of \cal_injection_i_1__1\ : label is "soft_lutpair26";
begin
  \FSM_sequential_current_state_reg[2]_3\ <= \^fsm_sequential_current_state_reg[2]_3\;
  Q(2 downto 0) <= \^q\(2 downto 0);
  allow_injection(0) <= \^allow_injection\(0);
  efi_on_0 <= \^efi_on_0\;
\FSM_sequential_current_state[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F000000000000"
    )
        port map (
      I0 => \stroke[1]_2\(0),
      I1 => \FSM_sequential_current_state_reg[1]_0\(0),
      I2 => \stroke[1]_2\(1),
      I3 => \FSM_sequential_current_state_reg[1]_0\(1),
      I4 => \^efi_on_0\,
      I5 => \FSM_sequential_current_state_reg[0]_1\,
      O => \FSM_sequential_current_state_reg[2]_0\(0)
    );
\FSM_sequential_current_state[0]_i_1__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02202AA2022008A0"
    )
        port map (
      I0 => efi_on,
      I1 => \^q\(1),
      I2 => \next_state1__0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \FSM_sequential_current_state_reg[0]_2\,
      O => \FSM_sequential_current_state[0]_i_1__8_n_0\
    );
\FSM_sequential_current_state[0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B3BF0C00B08F0C0"
    )
        port map (
      I0 => efi_on,
      I1 => \^q\(2),
      I2 => \next_state1__0\,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => allow_injection0_out,
      O => \stroke[1]_2\(0)
    );
\FSM_sequential_current_state[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3088CCCC"
    )
        port map (
      I0 => efi_on,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \next_state1__0\,
      I4 => \^q\(0),
      O => \stroke[1]_2\(1)
    );
\FSM_sequential_current_state[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => crank_tick,
      I3 => crank_changed,
      O => \FSM_sequential_current_state_reg[2]_1\
    );
\FSM_sequential_current_state[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A8A000A0A8A00"
    )
        port map (
      I0 => \^efi_on_0\,
      I1 => \cal_ignition_i_2__0_n_0\,
      I2 => \FSM_sequential_current_state_reg[1]_0\(2),
      I3 => \FSM_sequential_current_state_reg[1]_0\(0),
      I4 => \FSM_sequential_current_state_reg[1]_0\(1),
      I5 => \^allow_injection\(0),
      O => \FSM_sequential_current_state_reg[2]_0\(1)
    );
\FSM_sequential_current_state[1]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220008800A80088"
    )
        port map (
      I0 => efi_on,
      I1 => \^q\(1),
      I2 => crank_changed,
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \next_state1__0\,
      O => \FSM_sequential_current_state[1]_i_1__7_n_0\
    );
\FSM_sequential_current_state[2]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C4000C0004000C0"
    )
        port map (
      I0 => \cal_injection1__1\,
      I1 => \^efi_on_0\,
      I2 => \FSM_sequential_current_state_reg[2]_4\(2),
      I3 => \FSM_sequential_current_state_reg[2]_4\(1),
      I4 => \FSM_sequential_current_state_reg[2]_4\(0),
      I5 => \^fsm_sequential_current_state_reg[2]_3\,
      O => \FSM_sequential_current_state_reg[2]_2\(0)
    );
\FSM_sequential_current_state[2]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08202020"
    )
        port map (
      I0 => efi_on,
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \next_state1__0\,
      O => \FSM_sequential_current_state[2]_i_1__6_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[0]_3\,
      D => \FSM_sequential_current_state[0]_i_1__8_n_0\,
      Q => \^q\(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[0]_3\,
      D => \FSM_sequential_current_state[1]_i_1__7_n_0\,
      Q => \^q\(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_current_state_reg[0]_3\,
      D => \FSM_sequential_current_state[2]_i_1__6_n_0\,
      Q => \^q\(2)
    );
\cal_ignition_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cal_ignition_i_2__0_n_0\,
      I1 => crank_tick,
      O => \FSM_sequential_current_state_reg[0]_0\
    );
\cal_ignition_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6040"
    )
        port map (
      I0 => \^q\(0),
      I1 => \next_state1__0\,
      I2 => \^q\(2),
      I3 => efi_on,
      O => \cal_ignition_i_2__0_n_0\
    );
\cal_injection_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cal_injection1__1\,
      I1 => crank_tick,
      O => cal_injection0_1
    );
\cal_injection_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C00377CCCC0377"
    )
        port map (
      I0 => allow_injection0_out,
      I1 => \^q\(0),
      I2 => \next_state1__0\,
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => efi_on,
      O => \cal_injection1__1\
    );
\fuel_pump[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383C3C"
    )
        port map (
      I0 => efi_on,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => crank_changed,
      I4 => \^q\(0),
      O => \^efi_on_0\
    );
\ignite[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20040000"
    )
        port map (
      I0 => \next_state1__0\,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => btdc_ready(0),
      O => \^fsm_sequential_current_state_reg[2]_3\
    );
\inject[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C0A0000F00A0"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[1]_1\,
      I1 => efi_on,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \next_state1__0\,
      O => \^allow_injection\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_hust_efi_0_0_stroke_transition is
  port (
    efi_on_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    ic_on : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_current_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_current_state_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[0]\ : out STD_LOGIC;
    cal_injection0 : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_current_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    allow_injection : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_current_state_reg[2]_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_current_state_reg[2]_3\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cal_injection0_0 : out STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    efi_on_1 : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_4\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[2]_6\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_7\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cal_injection0_1 : out STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_2\ : out STD_LOGIC;
    cal_injection0_2 : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_8\ : out STD_LOGIC;
    ckp_0 : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_9\ : out STD_LOGIC;
    efi_on : in STD_LOGIC;
    \next_state1__0\ : in STD_LOGIC;
    allow_injection0_out : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_10\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_current_state_reg[1]_1\ : in STD_LOGIC;
    btdc_ready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_current_state_reg[2]_11\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    crank_tick : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_current_state_reg[0]_3\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]_3\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_current_state_reg[0]_4\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_5\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_6\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_current_state_reg[0]_7\ : in STD_LOGIC;
    crank_changed : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_12\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_current_state_reg[1]_4\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_current_state_reg[0]_8\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]_5\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_9\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_10\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_11\ : in STD_LOGIC;
    ckp : in STD_LOGIC;
    clk : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_12\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_hust_efi_0_0_stroke_transition : entity is "stroke_transition";
end design_1_hust_efi_0_0_stroke_transition;

architecture STRUCTURE of design_1_hust_efi_0_0_stroke_transition is
begin
\genblk1_2.stc00\: entity work.design_1_hust_efi_0_0_stroke_transition_00
     port map (
      \FSM_sequential_current_state_reg[0]_0\ => ic_on(0),
      \FSM_sequential_current_state_reg[0]_1\ => \FSM_sequential_current_state_reg[0]\,
      \FSM_sequential_current_state_reg[0]_2\ => \FSM_sequential_current_state_reg[0]_0\,
      \FSM_sequential_current_state_reg[0]_3\ => \FSM_sequential_current_state_reg[1]_1\,
      \FSM_sequential_current_state_reg[0]_4\ => \FSM_sequential_current_state_reg[0]_3\,
      \FSM_sequential_current_state_reg[0]_5\ => \FSM_sequential_current_state_reg[0]_9\,
      \FSM_sequential_current_state_reg[1]_0\(2 downto 0) => \FSM_sequential_current_state_reg[1]_2\(2 downto 0),
      \FSM_sequential_current_state_reg[2]_0\(0) => \FSM_sequential_current_state_reg[2]\(0),
      \FSM_sequential_current_state_reg[2]_1\(1 downto 0) => \FSM_sequential_current_state_reg[2]_0\(1 downto 0),
      \FSM_sequential_current_state_reg[2]_2\(2 downto 0) => \FSM_sequential_current_state_reg[2]_11\(2 downto 0),
      \FSM_sequential_current_state_reg[2]_3\ => \FSM_sequential_current_state_reg[0]_12\,
      Q(1 downto 0) => Q(1 downto 0),
      allow_injection0_out => allow_injection0_out,
      btdc_ready(0) => btdc_ready(0),
      cal_injection0 => cal_injection0,
      ckp => ckp,
      ckp_0 => ckp_0,
      clk => clk,
      crank_changed => crank_changed,
      crank_tick => crank_tick,
      efi_on => efi_on,
      efi_on_0 => efi_on_0,
      \next_state1__0\ => \next_state1__0\
    );
\genblk1_2.stc01\: entity work.design_1_hust_efi_0_0_stroke_transition_01
     port map (
      D(0) => D(0),
      \FSM_sequential_current_state_reg[0]_0\ => \FSM_sequential_current_state_reg[0]_8\,
      \FSM_sequential_current_state_reg[0]_1\ => \FSM_sequential_current_state_reg[0]_11\,
      \FSM_sequential_current_state_reg[1]_0\ => \FSM_sequential_current_state_reg[1]\,
      \FSM_sequential_current_state_reg[1]_1\(2 downto 0) => \FSM_sequential_current_state_reg[1]_4\(2 downto 0),
      \FSM_sequential_current_state_reg[1]_2\ => \FSM_sequential_current_state_reg[1]_5\,
      \FSM_sequential_current_state_reg[2]_0\(1 downto 0) => \FSM_sequential_current_state_reg[2]_7\(1 downto 0),
      \FSM_sequential_current_state_reg[2]_1\ => \FSM_sequential_current_state_reg[2]_8\,
      \FSM_sequential_current_state_reg[2]_2\(2 downto 0) => \FSM_sequential_current_state_reg[2]_10\(2 downto 0),
      \FSM_sequential_current_state_reg[2]_3\ => \FSM_sequential_current_state_reg[1]_1\,
      \FSM_sequential_current_state_reg[2]_4\ => \FSM_sequential_current_state_reg[0]_12\,
      Q(1 downto 0) => \FSM_sequential_current_state_reg[1]_0\(1 downto 0),
      allow_injection(0) => allow_injection(1),
      allow_injection0_out => allow_injection0_out,
      btdc_ready(0) => btdc_ready(2),
      cal_injection0_2 => cal_injection0_2,
      clk => clk,
      crank_changed => crank_changed,
      crank_tick => crank_tick,
      efi_on => efi_on,
      efi_on_0 => ic_on(2),
      \next_state1__0\ => \next_state1__0\
    );
\genblk1_2.stc10\: entity work.design_1_hust_efi_0_0_stroke_transition_10
     port map (
      \FSM_sequential_current_state_reg[0]_0\(0) => \FSM_sequential_current_state_reg[0]_1\(0),
      \FSM_sequential_current_state_reg[0]_1\ => \FSM_sequential_current_state_reg[0]_5\,
      \FSM_sequential_current_state_reg[0]_2\(1 downto 0) => \FSM_sequential_current_state_reg[0]_6\(1 downto 0),
      \FSM_sequential_current_state_reg[0]_3\ => \FSM_sequential_current_state_reg[0]_7\,
      \FSM_sequential_current_state_reg[0]_4\ => \FSM_sequential_current_state_reg[0]_12\,
      \FSM_sequential_current_state_reg[2]_0\ => \FSM_sequential_current_state_reg[2]_9\,
      Q(2 downto 0) => \FSM_sequential_current_state_reg[2]_3\(2 downto 0),
      allow_injection(0) => allow_injection(2),
      allow_injection0_out => allow_injection0_out,
      btdc_ready(0) => btdc_ready(3),
      cal_injection0_0 => cal_injection0_0,
      ckp => ckp,
      clk => clk,
      crank_changed => crank_changed,
      crank_tick => crank_tick,
      efi_on => efi_on,
      efi_on_0 => efi_on_1,
      ic_on(0) => ic_on(3),
      \next_state1__0\ => \next_state1__0\
    );
\genblk1_2.stc11\: entity work.design_1_hust_efi_0_0_stroke_transition_11
     port map (
      \FSM_sequential_current_state_reg[0]_0\ => \FSM_sequential_current_state_reg[0]_2\,
      \FSM_sequential_current_state_reg[0]_1\ => \FSM_sequential_current_state_reg[0]_4\,
      \FSM_sequential_current_state_reg[0]_2\ => \FSM_sequential_current_state_reg[0]_10\,
      \FSM_sequential_current_state_reg[0]_3\ => \FSM_sequential_current_state_reg[0]_12\,
      \FSM_sequential_current_state_reg[1]_0\(2 downto 0) => \FSM_sequential_current_state_reg[1]_3\(2 downto 0),
      \FSM_sequential_current_state_reg[1]_1\ => \FSM_sequential_current_state_reg[1]_1\,
      \FSM_sequential_current_state_reg[2]_0\(1 downto 0) => \FSM_sequential_current_state_reg[2]_1\(1 downto 0),
      \FSM_sequential_current_state_reg[2]_1\ => \FSM_sequential_current_state_reg[2]_4\,
      \FSM_sequential_current_state_reg[2]_2\(0) => \FSM_sequential_current_state_reg[2]_5\(0),
      \FSM_sequential_current_state_reg[2]_3\ => \FSM_sequential_current_state_reg[2]_6\,
      \FSM_sequential_current_state_reg[2]_4\(2 downto 0) => \FSM_sequential_current_state_reg[2]_12\(2 downto 0),
      Q(2 downto 0) => \FSM_sequential_current_state_reg[2]_2\(2 downto 0),
      allow_injection(0) => allow_injection(0),
      allow_injection0_out => allow_injection0_out,
      btdc_ready(0) => btdc_ready(1),
      cal_injection0_1 => cal_injection0_1,
      clk => clk,
      crank_changed => crank_changed,
      crank_tick => crank_tick,
      efi_on => efi_on,
      efi_on_0 => ic_on(1),
      \next_state1__0\ => \next_state1__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_hust_efi_0_0_hust_efi is
  port (
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    crank_cycle_counter : out STD_LOGIC_VECTOR ( 17 downto 0 );
    update_table : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cal_injection : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cal_btdc : out STD_LOGIC;
    ignite : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inject : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fuel_pump : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ckp : in STD_LOGIC;
    efi_on : in STD_LOGIC;
    clk : in STD_LOGIC;
    btdc_ready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    done : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reset_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_hust_efi_0_0_hust_efi : entity is "hust_efi";
end design_1_hust_efi_0_0_hust_efi;

architecture STRUCTURE of design_1_hust_efi_0_0_hust_efi is
  signal allow_injection : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal cal_injection0 : STD_LOGIC;
  signal cal_injection0_6 : STD_LOGIC;
  signal cal_injection0_7 : STD_LOGIC;
  signal cal_injection0_8 : STD_LOGIC;
  signal cal_injection1 : STD_LOGIC;
  signal crank_changed : STD_LOGIC;
  signal crank_position_control_inst_n_0 : STD_LOGIC;
  signal crank_position_control_inst_n_26 : STD_LOGIC;
  signal crank_position_control_inst_n_30 : STD_LOGIC;
  signal crank_position_control_inst_n_33 : STD_LOGIC;
  signal crank_position_control_inst_n_34 : STD_LOGIC;
  signal crank_position_control_inst_n_35 : STD_LOGIC;
  signal crank_position_control_inst_n_36 : STD_LOGIC;
  signal crank_position_control_inst_n_37 : STD_LOGIC;
  signal crank_position_control_inst_n_38 : STD_LOGIC;
  signal crank_tick : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal current_state_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal current_state_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal current_state_2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal current_state_3 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal current_state_4 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal current_state_5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \genblk1[0].fic_n_5\ : STD_LOGIC;
  signal \genblk1[1].fic_n_1\ : STD_LOGIC;
  signal \genblk1[2].fic_n_1\ : STD_LOGIC;
  signal \genblk1[3].fic_n_3\ : STD_LOGIC;
  signal \genblk1_2.stc00/allow_injection0_out\ : STD_LOGIC;
  signal \genblk1_2.stc00/current_state\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \genblk1_2.stc01/current_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \genblk1_2.stc10/current_state\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \genblk1_2.stc10/next_state1__0\ : STD_LOGIC;
  signal \genblk1_2.stc11/current_state\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ic_on : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal stroke_transition_inst_n_0 : STD_LOGIC;
  signal stroke_transition_inst_n_11 : STD_LOGIC;
  signal stroke_transition_inst_n_12 : STD_LOGIC;
  signal stroke_transition_inst_n_14 : STD_LOGIC;
  signal stroke_transition_inst_n_15 : STD_LOGIC;
  signal stroke_transition_inst_n_16 : STD_LOGIC;
  signal stroke_transition_inst_n_17 : STD_LOGIC;
  signal stroke_transition_inst_n_18 : STD_LOGIC;
  signal stroke_transition_inst_n_29 : STD_LOGIC;
  signal stroke_transition_inst_n_3 : STD_LOGIC;
  signal stroke_transition_inst_n_30 : STD_LOGIC;
  signal stroke_transition_inst_n_31 : STD_LOGIC;
  signal stroke_transition_inst_n_32 : STD_LOGIC;
  signal stroke_transition_inst_n_33 : STD_LOGIC;
  signal stroke_transition_inst_n_34 : STD_LOGIC;
  signal stroke_transition_inst_n_35 : STD_LOGIC;
  signal stroke_transition_inst_n_37 : STD_LOGIC;
  signal stroke_transition_inst_n_39 : STD_LOGIC;
  signal stroke_transition_inst_n_40 : STD_LOGIC;
  signal stroke_transition_inst_n_41 : STD_LOGIC;
  signal stroke_transition_inst_n_8 : STD_LOGIC;
begin
crank_position_control_inst: entity work.design_1_hust_efi_0_0_crank_position_control
     port map (
      \FSM_sequential_current_state[0]_i_4\(2 downto 0) => \genblk1_2.stc11/current_state\(2 downto 0),
      \FSM_sequential_current_state[2]_i_2__0\(1 downto 0) => \genblk1_2.stc01/current_state\(1 downto 0),
      \FSM_sequential_current_state_reg[0]_0\(0) => \genblk1_2.stc00/current_state\(0),
      \FSM_sequential_current_state_reg[2]_0\ => crank_position_control_inst_n_33,
      \FSM_sequential_current_state_reg[2]_1\(2 downto 0) => \genblk1_2.stc10/current_state\(2 downto 0),
      Q(5 downto 0) => Q(5 downto 0),
      allow_injection0_out => \genblk1_2.stc00/allow_injection0_out\,
      cal_btdc => cal_btdc,
      cal_injection1 => cal_injection1,
      ckp => ckp,
      ckp_0 => crank_position_control_inst_n_26,
      clk => clk,
      crank_changed => crank_changed,
      crank_changed_reg_0 => crank_position_control_inst_n_30,
      crank_changed_reg_1 => crank_position_control_inst_n_35,
      crank_changed_reg_2 => crank_position_control_inst_n_36,
      crank_changed_reg_3 => crank_position_control_inst_n_37,
      crank_changed_reg_4 => crank_position_control_inst_n_38,
      crank_cycle_counter(17 downto 0) => crank_cycle_counter(17 downto 0),
      crank_tick => crank_tick,
      efi_on => efi_on,
      efi_on_0 => crank_position_control_inst_n_34,
      \next_state1__0\ => \genblk1_2.stc10/next_state1__0\,
      reset_n => reset_n,
      reset_n_0 => crank_position_control_inst_n_0
    );
\genblk1[0].fic\: entity work.design_1_hust_efi_0_0_fuel_injection_control
     port map (
      D(1) => stroke_transition_inst_n_14,
      D(0) => stroke_transition_inst_n_15,
      \FSM_sequential_current_state_reg[0]_0\(0) => \genblk1_2.stc00/current_state\(2),
      \FSM_sequential_current_state_reg[0]_1\ => stroke_transition_inst_n_40,
      \FSM_sequential_current_state_reg[2]_0\ => \genblk1[0].fic_n_5\,
      Q(2 downto 0) => current_state(2 downto 0),
      cal_injection(0) => cal_injection(0),
      cal_injection0 => cal_injection0_8,
      cal_injection_reg_0 => crank_position_control_inst_n_0,
      clk => clk,
      done(0) => done(0),
      fuel_pump(0) => fuel_pump(0),
      ic_on(0) => ic_on(0),
      inject(0) => inject(0),
      inject_0_sp_1 => stroke_transition_inst_n_0
    );
\genblk1[0].ic\: entity work.design_1_hust_efi_0_0_ignition_control
     port map (
      D(0) => stroke_transition_inst_n_11,
      Q(2 downto 0) => current_state_0(2 downto 0),
      cal_ignition_reg_0 => stroke_transition_inst_n_16,
      cal_ignition_reg_1 => crank_position_control_inst_n_0,
      clk => clk,
      ic_on(0) => ic_on(0),
      ignite(0) => ignite(0),
      ignite_0_sp_1 => stroke_transition_inst_n_12,
      update_table(0) => update_table(0)
    );
\genblk1[1].fic\: entity work.design_1_hust_efi_0_0_fuel_injection_control_0
     port map (
      D(1) => stroke_transition_inst_n_17,
      D(0) => stroke_transition_inst_n_18,
      \FSM_sequential_current_state_reg[0]_0\ => \genblk1[1].fic_n_1\,
      \FSM_sequential_current_state_reg[0]_1\ => stroke_transition_inst_n_31,
      \FSM_sequential_current_state_reg[0]_2\ => crank_position_control_inst_n_26,
      \FSM_sequential_current_state_reg[2]_0\(2 downto 0) => current_state_1(2 downto 0),
      \FSM_sequential_current_state_reg[2]_1\ => crank_position_control_inst_n_0,
      Q(0) => \genblk1_2.stc11/current_state\(0),
      allow_injection(0) => allow_injection(1),
      cal_injection(0) => cal_injection(1),
      cal_injection0 => cal_injection0_6,
      clk => clk,
      done(0) => done(1),
      fuel_pump(0) => fuel_pump(1),
      ic_on(0) => ic_on(1),
      inject(0) => inject(1)
    );
\genblk1[1].ic\: entity work.design_1_hust_efi_0_0_ignition_control_1
     port map (
      D(0) => stroke_transition_inst_n_32,
      \FSM_sequential_current_state_reg[0]_0\ => crank_position_control_inst_n_0,
      Q(2 downto 0) => current_state_2(2 downto 0),
      cal_ignition_reg_0 => stroke_transition_inst_n_37,
      clk => clk,
      ic_on(0) => ic_on(1),
      ignite(0) => ignite(1),
      \ignite[1]\ => stroke_transition_inst_n_33,
      update_table(0) => update_table(1)
    );
\genblk1[2].fic\: entity work.design_1_hust_efi_0_0_fuel_injection_control_2
     port map (
      D(1) => stroke_transition_inst_n_34,
      D(0) => stroke_transition_inst_n_35,
      \FSM_sequential_current_state_reg[1]_0\ => \genblk1[2].fic_n_1\,
      Q(2 downto 0) => current_state_3(2 downto 0),
      allow_injection(0) => allow_injection(2),
      cal_injection(0) => cal_injection(2),
      cal_injection0 => cal_injection0,
      cal_injection_reg_0 => crank_position_control_inst_n_0,
      clk => clk,
      done(0) => done(2),
      fuel_pump(0) => fuel_pump(2),
      ic_on(0) => ic_on(2),
      inject(0) => inject(2)
    );
\genblk1[2].ic\: entity work.design_1_hust_efi_0_0_ignition_control_3
     port map (
      D(0) => stroke_transition_inst_n_3,
      Q(2 downto 0) => current_state_4(2 downto 0),
      cal_ignition_reg_0 => stroke_transition_inst_n_39,
      cal_ignition_reg_1 => crank_position_control_inst_n_0,
      clk => clk,
      ic_on(0) => ic_on(2),
      ignite(0) => ignite(2),
      \ignite[2]\ => stroke_transition_inst_n_8,
      update_table(0) => update_table(2)
    );
\genblk1[3].fic\: entity work.design_1_hust_efi_0_0_fuel_injection_control_4
     port map (
      D(0) => stroke_transition_inst_n_29,
      \FSM_sequential_current_state_reg[1]_0\ => \genblk1[3].fic_n_3\,
      \FSM_sequential_current_state_reg[1]_1\ => crank_position_control_inst_n_33,
      \FSM_sequential_current_state_reg[2]_0\ => crank_position_control_inst_n_0,
      Q(1 downto 0) => current_state_5(1 downto 0),
      allow_injection(0) => allow_injection(3),
      cal_injection(0) => cal_injection(3),
      cal_injection0 => cal_injection0_7,
      clk => clk,
      done(0) => done(3),
      fuel_pump(0) => fuel_pump(3),
      ic_on(0) => ic_on(3),
      inject(0) => inject(3)
    );
\genblk1[3].ic\: entity work.design_1_hust_efi_0_0_ignition_control_5
     port map (
      \FSM_sequential_current_state_reg[0]_0\ => crank_position_control_inst_n_0,
      \FSM_sequential_current_state_reg[2]_0\ => stroke_transition_inst_n_41,
      cal_ignition_reg_0 => stroke_transition_inst_n_30,
      cal_injection1 => cal_injection1,
      clk => clk,
      ic_on(0) => ic_on(3),
      ignite(0) => ignite(3),
      update_table(0) => update_table(3)
    );
stroke_transition_inst: entity work.design_1_hust_efi_0_0_stroke_transition
     port map (
      D(0) => stroke_transition_inst_n_3,
      \FSM_sequential_current_state_reg[0]\ => stroke_transition_inst_n_12,
      \FSM_sequential_current_state_reg[0]_0\ => stroke_transition_inst_n_16,
      \FSM_sequential_current_state_reg[0]_1\(0) => stroke_transition_inst_n_29,
      \FSM_sequential_current_state_reg[0]_10\ => crank_position_control_inst_n_36,
      \FSM_sequential_current_state_reg[0]_11\ => crank_position_control_inst_n_37,
      \FSM_sequential_current_state_reg[0]_12\ => crank_position_control_inst_n_0,
      \FSM_sequential_current_state_reg[0]_2\ => stroke_transition_inst_n_37,
      \FSM_sequential_current_state_reg[0]_3\ => \genblk1[0].fic_n_5\,
      \FSM_sequential_current_state_reg[0]_4\ => \genblk1[1].fic_n_1\,
      \FSM_sequential_current_state_reg[0]_5\ => crank_position_control_inst_n_38,
      \FSM_sequential_current_state_reg[0]_6\(1 downto 0) => current_state_5(1 downto 0),
      \FSM_sequential_current_state_reg[0]_7\ => \genblk1[3].fic_n_3\,
      \FSM_sequential_current_state_reg[0]_8\ => \genblk1[2].fic_n_1\,
      \FSM_sequential_current_state_reg[0]_9\ => crank_position_control_inst_n_35,
      \FSM_sequential_current_state_reg[1]\ => stroke_transition_inst_n_8,
      \FSM_sequential_current_state_reg[1]_0\(1 downto 0) => \genblk1_2.stc01/current_state\(1 downto 0),
      \FSM_sequential_current_state_reg[1]_1\ => crank_position_control_inst_n_30,
      \FSM_sequential_current_state_reg[1]_2\(2 downto 0) => current_state(2 downto 0),
      \FSM_sequential_current_state_reg[1]_3\(2 downto 0) => current_state_1(2 downto 0),
      \FSM_sequential_current_state_reg[1]_4\(2 downto 0) => current_state_3(2 downto 0),
      \FSM_sequential_current_state_reg[1]_5\ => crank_position_control_inst_n_34,
      \FSM_sequential_current_state_reg[2]\(0) => stroke_transition_inst_n_11,
      \FSM_sequential_current_state_reg[2]_0\(1) => stroke_transition_inst_n_14,
      \FSM_sequential_current_state_reg[2]_0\(0) => stroke_transition_inst_n_15,
      \FSM_sequential_current_state_reg[2]_1\(1) => stroke_transition_inst_n_17,
      \FSM_sequential_current_state_reg[2]_1\(0) => stroke_transition_inst_n_18,
      \FSM_sequential_current_state_reg[2]_10\(2 downto 0) => current_state_4(2 downto 0),
      \FSM_sequential_current_state_reg[2]_11\(2 downto 0) => current_state_0(2 downto 0),
      \FSM_sequential_current_state_reg[2]_12\(2 downto 0) => current_state_2(2 downto 0),
      \FSM_sequential_current_state_reg[2]_2\(2 downto 0) => \genblk1_2.stc11/current_state\(2 downto 0),
      \FSM_sequential_current_state_reg[2]_3\(2 downto 0) => \genblk1_2.stc10/current_state\(2 downto 0),
      \FSM_sequential_current_state_reg[2]_4\ => stroke_transition_inst_n_31,
      \FSM_sequential_current_state_reg[2]_5\(0) => stroke_transition_inst_n_32,
      \FSM_sequential_current_state_reg[2]_6\ => stroke_transition_inst_n_33,
      \FSM_sequential_current_state_reg[2]_7\(1) => stroke_transition_inst_n_34,
      \FSM_sequential_current_state_reg[2]_7\(0) => stroke_transition_inst_n_35,
      \FSM_sequential_current_state_reg[2]_8\ => stroke_transition_inst_n_39,
      \FSM_sequential_current_state_reg[2]_9\ => stroke_transition_inst_n_41,
      Q(1) => \genblk1_2.stc00/current_state\(2),
      Q(0) => \genblk1_2.stc00/current_state\(0),
      allow_injection(2 downto 0) => allow_injection(3 downto 1),
      allow_injection0_out => \genblk1_2.stc00/allow_injection0_out\,
      btdc_ready(3 downto 0) => btdc_ready(3 downto 0),
      cal_injection0 => cal_injection0_8,
      cal_injection0_0 => cal_injection0_7,
      cal_injection0_1 => cal_injection0_6,
      cal_injection0_2 => cal_injection0,
      ckp => ckp,
      ckp_0 => stroke_transition_inst_n_40,
      clk => clk,
      crank_changed => crank_changed,
      crank_tick => crank_tick,
      efi_on => efi_on,
      efi_on_0 => stroke_transition_inst_n_0,
      efi_on_1 => stroke_transition_inst_n_30,
      ic_on(3 downto 0) => ic_on(3 downto 0),
      \next_state1__0\ => \genblk1_2.stc10/next_state1__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_hust_efi_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_hust_efi_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_hust_efi_0_0 : entity is "design_1_hust_efi_0_0,hust_efi,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_hust_efi_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_hust_efi_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_hust_efi_0_0 : entity is "hust_efi,Vivado 2018.3";
end design_1_hust_efi_0_0;

architecture STRUCTURE of design_1_hust_efi_0_0 is
  signal \^ckp\ : STD_LOGIC;
  signal \^update_table\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 2500000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute X_INTERFACE_PARAMETER of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^ckp\ <= ckp;
  cal_ignition(3 downto 0) <= \^update_table\(3 downto 0);
  cal_rpm <= \^ckp\;
  update_table(3 downto 0) <= \^update_table\(3 downto 0);
inst: entity work.design_1_hust_efi_0_0_hust_efi
     port map (
      Q(5 downto 0) => crank_counter(5 downto 0),
      btdc_ready(3 downto 0) => btdc_ready(3 downto 0),
      cal_btdc => cal_btdc,
      cal_injection(3 downto 0) => cal_injection(3 downto 0),
      ckp => \^ckp\,
      clk => clk,
      crank_cycle_counter(17 downto 0) => crank_cycle_counter(17 downto 0),
      done(3 downto 0) => done(3 downto 0),
      efi_on => efi_on,
      fuel_pump(3 downto 0) => fuel_pump(3 downto 0),
      ignite(3 downto 0) => ignite(3 downto 0),
      inject(3 downto 0) => inject(3 downto 0),
      reset_n => reset_n,
      update_table(3 downto 0) => \^update_table\(3 downto 0)
    );
end STRUCTURE;
