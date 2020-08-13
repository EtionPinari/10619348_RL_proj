-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Aug  9 08:38:40 2020
-- Host        : LAPTOP-CISO1L93 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {D:/Proggetti Reti
--               Logiche/10619348_RL_proj/10619348_RL_proj.sim/sim_1/synth/func/xsim/multiple_starts_in_wz_func_synth.vhd}
-- Design      : project_reti_logiche
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_controller is
  port (
    start_comparing : out STD_LOGIC;
    counter : out STD_LOGIC;
    ctrl : out STD_LOGIC;
    start_comparing_reg_0 : out STD_LOGIC;
    start_comparing_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    start_comparing_reg_2 : out STD_LOGIC;
    i_clk_IBUF_BUFG : in STD_LOGIC;
    ctrl_reg_0 : in STD_LOGIC;
    ctrl_reg_1 : in STD_LOGIC;
    finished : in STD_LOGIC;
    i_start_IBUF : in STD_LOGIC;
    i_rst_IBUF : in STD_LOGIC;
    start_comparing0 : in STD_LOGIC
  );
end clock_controller;

architecture STRUCTURE of clock_controller is
  signal \^counter\ : STD_LOGIC;
  signal counter_i_1_n_0 : STD_LOGIC;
  signal \^start_comparing\ : STD_LOGIC;
  signal start_comparing_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ctrl_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_data[6]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_data[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of start_comparing_i_1 : label is "soft_lutpair1";
begin
  counter <= \^counter\;
  start_comparing <= \^start_comparing\;
counter_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^counter\,
      I1 => i_start_IBUF,
      I2 => i_rst_IBUF,
      O => counter_i_1_n_0
    );
counter_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => counter_i_1_n_0,
      Q => \^counter\,
      R => '0'
    );
ctrl_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005D00"
    )
        port map (
      I0 => \^start_comparing\,
      I1 => ctrl_reg_1,
      I2 => finished,
      I3 => i_start_IBUF,
      I4 => i_rst_IBUF,
      O => start_comparing_reg_0
    );
ctrl_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => ctrl_reg_0,
      Q => ctrl,
      R => '0'
    );
\o_data[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^start_comparing\,
      I1 => i_start_IBUF,
      I2 => i_rst_IBUF,
      O => start_comparing_reg_2
    );
\o_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => i_rst_IBUF,
      I1 => i_start_IBUF,
      I2 => \^start_comparing\,
      I3 => ctrl_reg_1,
      O => start_comparing_reg_1(0)
    );
start_comparing_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \^start_comparing\,
      I1 => i_rst_IBUF,
      I2 => i_start_IBUF,
      I3 => start_comparing0,
      O => start_comparing_i_1_n_0
    );
start_comparing_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => start_comparing_i_1_n_0,
      Q => \^start_comparing\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity compare_and_codify is
  port (
    o_en_OBUF : out STD_LOGIC;
    ctrl_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC;
    \o_address_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_data_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ctrl12_out : in STD_LOGIC;
    i_clk_IBUF_BUFG : in STD_LOGIC;
    ctrl_reg_1 : in STD_LOGIC;
    counter : in STD_LOGIC;
    i_start_IBUF : in STD_LOGIC;
    i_rst_IBUF : in STD_LOGIC;
    finished : in STD_LOGIC;
    o_done_reg_0 : in STD_LOGIC;
    start_comparing : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_data_reg[7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end compare_and_codify;

architecture STRUCTURE of compare_and_codify is
  signal cac_controller : STD_LOGIC;
  signal o_done_i_1_n_0 : STD_LOGIC;
begin
\ctrl_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => cac_controller,
      I1 => counter,
      I2 => i_start_IBUF,
      I3 => i_rst_IBUF,
      O => ctrl_reg_0
    );
ctrl_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => ctrl_reg_1,
      Q => cac_controller,
      R => '0'
    );
\o_address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => D(0),
      Q => \o_address_reg[3]_0\(0),
      R => '0'
    );
\o_address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => D(1),
      Q => \o_address_reg[3]_0\(1),
      R => '0'
    );
\o_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => D(2),
      Q => \o_address_reg[3]_0\(2),
      R => '0'
    );
\o_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => D(3),
      Q => \o_address_reg[3]_0\(3),
      R => '0'
    );
\o_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data_reg[7]_1\(0),
      Q => \o_data_reg[7]_0\(0),
      R => '0'
    );
\o_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data_reg[7]_1\(1),
      Q => \o_data_reg[7]_0\(1),
      R => '0'
    );
\o_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data_reg[7]_1\(2),
      Q => \o_data_reg[7]_0\(2),
      R => '0'
    );
\o_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data_reg[7]_1\(3),
      Q => \o_data_reg[7]_0\(3),
      R => '0'
    );
\o_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data_reg[7]_1\(4),
      Q => \o_data_reg[7]_0\(4),
      R => '0'
    );
\o_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data_reg[7]_1\(5),
      Q => \o_data_reg[7]_0\(5),
      R => '0'
    );
\o_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data_reg[7]_1\(6),
      Q => \o_data_reg[7]_0\(6),
      R => '0'
    );
\o_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data_reg[7]_1\(7),
      Q => \o_data_reg[7]_0\(7),
      R => '0'
    );
o_done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => finished,
      I1 => o_done_reg_0,
      I2 => start_comparing,
      O => o_done_i_1_n_0
    );
o_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => o_done_i_1_n_0,
      Q => Q,
      R => ctrl12_out
    );
o_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => '1',
      Q => o_en_OBUF,
      R => ctrl12_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity flipflop_td is
  port (
    \FSM_onehot_current_state_reg[10]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \out_ffd_reg[6]_0\ : out STD_LOGIC;
    finished : in STD_LOGIC;
    \o_data_reg[0]\ : in STD_LOGIC;
    o_zone : in STD_LOGIC_VECTOR ( 2 downto 0 );
    start_comparing : in STD_LOGIC;
    ctrl12_out : in STD_LOGIC;
    \o_data_reg[6]\ : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    i_clk_IBUF_BUFG : in STD_LOGIC
  );
end flipflop_td;

architecture STRUCTURE of flipflop_td is
  signal \o_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \o_data[3]_i_4_n_0\ : STD_LOGIC;
  signal \o_data[3]_i_5_n_0\ : STD_LOGIC;
  signal \o_data[3]_i_6_n_0\ : STD_LOGIC;
  signal \o_data_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \o_data_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \o_data_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \o_data_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \o_data_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \o_data_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \o_data_reg[3]_i_2_n_6\ : STD_LOGIC;
  signal \o_data_reg[3]_i_2_n_7\ : STD_LOGIC;
  signal o_done_i_5_n_0 : STD_LOGIC;
  signal o_done_i_6_n_0 : STD_LOGIC;
  signal o_done_i_7_n_0 : STD_LOGIC;
  signal o_done_reg_i_3_n_1 : STD_LOGIC;
  signal o_done_reg_i_3_n_2 : STD_LOGIC;
  signal o_done_reg_i_3_n_3 : STD_LOGIC;
  signal o_done_reg_i_3_n_4 : STD_LOGIC;
  signal o_done_reg_i_3_n_5 : STD_LOGIC;
  signal o_done_reg_i_3_n_6 : STD_LOGIC;
  signal o_done_reg_i_3_n_7 : STD_LOGIC;
  signal out_ffd : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^out_ffd_reg[6]_0\ : STD_LOGIC;
  signal NLW_o_done_reg_i_3_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  \out_ffd_reg[6]_0\ <= \^out_ffd_reg[6]_0\;
\o_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000011110000"
    )
        port map (
      I0 => \o_data_reg[3]_i_2_n_7\,
      I1 => \o_data_reg[3]_i_2_n_6\,
      I2 => out_ffd(0),
      I3 => finished,
      I4 => \o_data_reg[0]\,
      I5 => \^out_ffd_reg[6]_0\,
      O => \FSM_onehot_current_state_reg[10]\(0)
    );
\o_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000022220000"
    )
        port map (
      I0 => \o_data_reg[3]_i_2_n_7\,
      I1 => \o_data_reg[3]_i_2_n_6\,
      I2 => out_ffd(1),
      I3 => finished,
      I4 => \o_data_reg[0]\,
      I5 => \^out_ffd_reg[6]_0\,
      O => \FSM_onehot_current_state_reg[10]\(1)
    );
\o_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000022220000"
    )
        port map (
      I0 => \o_data_reg[3]_i_2_n_6\,
      I1 => \o_data_reg[3]_i_2_n_7\,
      I2 => out_ffd(2),
      I3 => finished,
      I4 => \o_data_reg[0]\,
      I5 => \^out_ffd_reg[6]_0\,
      O => \FSM_onehot_current_state_reg[10]\(2)
    );
\o_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000088880000"
    )
        port map (
      I0 => \o_data_reg[3]_i_2_n_7\,
      I1 => \o_data_reg[3]_i_2_n_6\,
      I2 => out_ffd(3),
      I3 => finished,
      I4 => \o_data_reg[0]\,
      I5 => \^out_ffd_reg[6]_0\,
      O => \FSM_onehot_current_state_reg[10]\(3)
    );
\o_data[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => out_ffd(3),
      I1 => Q(3),
      O => \o_data[3]_i_3_n_0\
    );
\o_data[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => out_ffd(2),
      I1 => Q(2),
      O => \o_data[3]_i_4_n_0\
    );
\o_data[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => out_ffd(1),
      I1 => Q(1),
      O => \o_data[3]_i_5_n_0\
    );
\o_data[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => out_ffd(0),
      I1 => Q(0),
      O => \o_data[3]_i_6_n_0\
    );
\o_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C00000005500"
    )
        port map (
      I0 => o_zone(0),
      I1 => out_ffd(4),
      I2 => finished,
      I3 => start_comparing,
      I4 => ctrl12_out,
      I5 => \^out_ffd_reg[6]_0\,
      O => \FSM_onehot_current_state_reg[10]\(4)
    );
\o_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80F08000800080F0"
    )
        port map (
      I0 => finished,
      I1 => out_ffd(5),
      I2 => \o_data_reg[0]\,
      I3 => \^out_ffd_reg[6]_0\,
      I4 => o_zone(0),
      I5 => o_zone(1),
      O => \FSM_onehot_current_state_reg[10]\(5)
    );
\o_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80F08000800080F0"
    )
        port map (
      I0 => finished,
      I1 => out_ffd(6),
      I2 => \o_data_reg[0]\,
      I3 => \^out_ffd_reg[6]_0\,
      I4 => \o_data_reg[6]\,
      I5 => o_zone(2),
      O => \FSM_onehot_current_state_reg[10]\(6)
    );
\o_data_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_data_reg[3]_i_2_n_0\,
      CO(2) => \o_data_reg[3]_i_2_n_1\,
      CO(1) => \o_data_reg[3]_i_2_n_2\,
      CO(0) => \o_data_reg[3]_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => out_ffd(3 downto 0),
      O(3) => \o_data_reg[3]_i_2_n_4\,
      O(2) => \o_data_reg[3]_i_2_n_5\,
      O(1) => \o_data_reg[3]_i_2_n_6\,
      O(0) => \o_data_reg[3]_i_2_n_7\,
      S(3) => \o_data[3]_i_3_n_0\,
      S(2) => \o_data[3]_i_4_n_0\,
      S(1) => \o_data[3]_i_5_n_0\,
      S(0) => \o_data[3]_i_6_n_0\
    );
o_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => o_done_reg_i_3_n_5,
      I1 => o_done_reg_i_3_n_4,
      I2 => o_done_reg_i_3_n_7,
      I3 => o_done_reg_i_3_n_6,
      I4 => \o_data_reg[3]_i_2_n_4\,
      I5 => \o_data_reg[3]_i_2_n_5\,
      O => \^out_ffd_reg[6]_0\
    );
o_done_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => out_ffd(6),
      I1 => Q(6),
      O => o_done_i_5_n_0
    );
o_done_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => out_ffd(5),
      I1 => Q(5),
      O => o_done_i_6_n_0
    );
o_done_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => out_ffd(4),
      I1 => Q(4),
      O => o_done_i_7_n_0
    );
o_done_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => \o_data_reg[3]_i_2_n_0\,
      CO(3) => NLW_o_done_reg_i_3_CO_UNCONNECTED(3),
      CO(2) => o_done_reg_i_3_n_1,
      CO(1) => o_done_reg_i_3_n_2,
      CO(0) => o_done_reg_i_3_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => out_ffd(6 downto 4),
      O(3) => o_done_reg_i_3_n_4,
      O(2) => o_done_reg_i_3_n_5,
      O(1) => o_done_reg_i_3_n_6,
      O(0) => o_done_reg_i_3_n_7,
      S(3) => S(0),
      S(2) => o_done_i_5_n_0,
      S(1) => o_done_i_6_n_0,
      S(0) => o_done_i_7_n_0
    );
\out_ffd_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(0),
      Q => out_ffd(0),
      R => ctrl12_out
    );
\out_ffd_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(1),
      Q => out_ffd(1),
      R => ctrl12_out
    );
\out_ffd_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(2),
      Q => out_ffd(2),
      R => ctrl12_out
    );
\out_ffd_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(3),
      Q => out_ffd(3),
      R => ctrl12_out
    );
\out_ffd_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(4),
      Q => out_ffd(4),
      R => ctrl12_out
    );
\out_ffd_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(5),
      Q => out_ffd(5),
      R => ctrl12_out
    );
\out_ffd_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(6),
      Q => out_ffd(6),
      R => ctrl12_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity flipflop_variable is
  port (
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \o_zone_reg[0]_0\ : out STD_LOGIC;
    o_zone : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ctrl12_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_clk_IBUF_BUFG : in STD_LOGIC;
    \o_zone_reg[2]_0\ : in STD_LOGIC;
    \o_zone_reg[2]_1\ : in STD_LOGIC;
    \o_zone_reg[2]_2\ : in STD_LOGIC;
    \o_zone_reg[2]_3\ : in STD_LOGIC;
    \o_zone_reg[2]_4\ : in STD_LOGIC;
    \o_zone_reg[1]_0\ : in STD_LOGIC;
    \o_zone_reg[1]_1\ : in STD_LOGIC;
    \o_zone_reg[0]_1\ : in STD_LOGIC
  );
end flipflop_variable;

architecture STRUCTURE of flipflop_variable is
  signal \^o_zone\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \o_zone[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_zone[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_zone[2]_i_1_n_0\ : STD_LOGIC;
  signal \out_ffd_reg_n_0_[7]\ : STD_LOGIC;
begin
  o_zone(2 downto 0) <= \^o_zone\(2 downto 0);
\o_data[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^o_zone\(0),
      I1 => \^o_zone\(1),
      O => \o_zone_reg[0]_0\
    );
o_done_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out_ffd_reg_n_0_[7]\,
      O => S(0)
    );
\o_zone[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => \o_zone_reg[1]_0\,
      I1 => \o_zone_reg[0]_1\,
      I2 => \o_zone_reg[2]_2\,
      I3 => \o_zone_reg[2]_0\,
      I4 => \o_zone_reg[2]_4\,
      I5 => \^o_zone\(0),
      O => \o_zone[0]_i_1_n_0\
    );
\o_zone[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => \o_zone_reg[1]_0\,
      I1 => \o_zone_reg[1]_1\,
      I2 => \o_zone_reg[2]_2\,
      I3 => \o_zone_reg[2]_3\,
      I4 => \o_zone_reg[2]_4\,
      I5 => \^o_zone\(1),
      O => \o_zone[1]_i_1_n_0\
    );
\o_zone[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => \o_zone_reg[2]_0\,
      I1 => \o_zone_reg[2]_1\,
      I2 => \o_zone_reg[2]_2\,
      I3 => \o_zone_reg[2]_3\,
      I4 => \o_zone_reg[2]_4\,
      I5 => \^o_zone\(2),
      O => \o_zone[2]_i_1_n_0\
    );
\o_zone_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_zone[0]_i_1_n_0\,
      Q => \^o_zone\(0),
      R => '0'
    );
\o_zone_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_zone[1]_i_1_n_0\,
      Q => \^o_zone\(1),
      R => '0'
    );
\o_zone_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_zone[2]_i_1_n_0\,
      Q => \^o_zone\(2),
      R => '0'
    );
\out_ffd_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(0),
      Q => Q(0),
      R => ctrl12_out
    );
\out_ffd_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(1),
      Q => Q(1),
      R => ctrl12_out
    );
\out_ffd_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(2),
      Q => Q(2),
      R => ctrl12_out
    );
\out_ffd_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(3),
      Q => Q(3),
      R => ctrl12_out
    );
\out_ffd_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(4),
      Q => Q(4),
      R => ctrl12_out
    );
\out_ffd_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(5),
      Q => Q(5),
      R => ctrl12_out
    );
\out_ffd_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(6),
      Q => Q(6),
      R => ctrl12_out
    );
\out_ffd_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(7),
      Q => \out_ffd_reg_n_0_[7]\,
      R => ctrl12_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fsm_counter is
  port (
    \FSM_onehot_current_state_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    finished : out STD_LOGIC;
    ctrl12_out : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_current_state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    start_comparing0 : out STD_LOGIC;
    \FSM_onehot_current_state_reg[5]_0\ : out STD_LOGIC;
    \FSM_onehot_current_state_reg[4]_0\ : out STD_LOGIC;
    \FSM_onehot_current_state_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_current_state_reg[9]_0\ : out STD_LOGIC;
    \FSM_onehot_current_state_reg[8]_0\ : out STD_LOGIC;
    \FSM_onehot_current_state_reg[7]_0\ : out STD_LOGIC;
    \FSM_onehot_current_state_reg[6]_0\ : out STD_LOGIC;
    i_start_IBUF : in STD_LOGIC;
    i_rst_IBUF : in STD_LOGIC;
    \o_address_reg[2]\ : in STD_LOGIC;
    start_comparing : in STD_LOGIC;
    counter : in STD_LOGIC;
    ctrl : in STD_LOGIC;
    i_clk_IBUF_BUFG : in STD_LOGIC
  );
end fsm_counter;

architecture STRUCTURE of fsm_counter is
  signal \FSM_onehot_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_current_state_reg[3]_0\ : STD_LOGIC;
  signal \^fsm_onehot_current_state_reg[4]_0\ : STD_LOGIC;
  signal \^fsm_onehot_current_state_reg[5]_0\ : STD_LOGIC;
  signal \^fsm_onehot_current_state_reg[6]_0\ : STD_LOGIC;
  signal \^fsm_onehot_current_state_reg[7]_0\ : STD_LOGIC;
  signal \^fsm_onehot_current_state_reg[8]_0\ : STD_LOGIC;
  signal \^fsm_onehot_current_state_reg[9]_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^ctrl12_out\ : STD_LOGIC;
  signal \^finished\ : STD_LOGIC;
  signal zone : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[2]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[10]\ : label is "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[3]\ : label is "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[4]\ : label is "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[5]\ : label is "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[6]\ : label is "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[7]\ : label is "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[8]\ : label is "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[9]\ : label is "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000";
  attribute SOFT_HLUTNM of \o_zone[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \out_ffd[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \out_ffd[7]_i_1\ : label is "soft_lutpair2";
begin
  \FSM_onehot_current_state_reg[3]_0\ <= \^fsm_onehot_current_state_reg[3]_0\;
  \FSM_onehot_current_state_reg[4]_0\ <= \^fsm_onehot_current_state_reg[4]_0\;
  \FSM_onehot_current_state_reg[5]_0\ <= \^fsm_onehot_current_state_reg[5]_0\;
  \FSM_onehot_current_state_reg[6]_0\ <= \^fsm_onehot_current_state_reg[6]_0\;
  \FSM_onehot_current_state_reg[7]_0\ <= \^fsm_onehot_current_state_reg[7]_0\;
  \FSM_onehot_current_state_reg[8]_0\ <= \^fsm_onehot_current_state_reg[8]_0\;
  \FSM_onehot_current_state_reg[9]_0\ <= \^fsm_onehot_current_state_reg[9]_0\;
  ctrl12_out <= \^ctrl12_out\;
  finished <= \^finished\;
\FSM_onehot_current_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => ctrl,
      O => \FSM_onehot_current_state[0]_i_1_n_0\
    );
\FSM_onehot_current_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FACC"
    )
        port map (
      I0 => \^finished\,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I3 => ctrl,
      O => \FSM_onehot_current_state[2]_i_1_n_0\
    );
\FSM_onehot_current_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_rst_IBUF,
      I1 => i_start_IBUF,
      O => \^ctrl12_out\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_current_state[0]_i_1_n_0\,
      PRE => \^ctrl12_out\,
      Q => \FSM_onehot_current_state_reg_n_0_[0]\
    );
\FSM_onehot_current_state_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl12_out\,
      D => \^fsm_onehot_current_state_reg[9]_0\,
      Q => \^finished\
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl12_out\,
      D => \FSM_onehot_current_state_reg_n_0_[0]\,
      Q => \FSM_onehot_current_state_reg_n_0_[1]\
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => \^ctrl12_out\,
      D => \FSM_onehot_current_state[2]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\
    );
\FSM_onehot_current_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl12_out\,
      D => \FSM_onehot_current_state_reg_n_0_[2]\,
      Q => \^fsm_onehot_current_state_reg[3]_0\
    );
\FSM_onehot_current_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl12_out\,
      D => \^fsm_onehot_current_state_reg[3]_0\,
      Q => \^fsm_onehot_current_state_reg[4]_0\
    );
\FSM_onehot_current_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl12_out\,
      D => \^fsm_onehot_current_state_reg[4]_0\,
      Q => \^fsm_onehot_current_state_reg[5]_0\
    );
\FSM_onehot_current_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl12_out\,
      D => \^fsm_onehot_current_state_reg[5]_0\,
      Q => \^fsm_onehot_current_state_reg[6]_0\
    );
\FSM_onehot_current_state_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl12_out\,
      D => \^fsm_onehot_current_state_reg[6]_0\,
      Q => \^fsm_onehot_current_state_reg[7]_0\
    );
\FSM_onehot_current_state_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl12_out\,
      D => \^fsm_onehot_current_state_reg[7]_0\,
      Q => \^fsm_onehot_current_state_reg[8]_0\
    );
\FSM_onehot_current_state_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl12_out\,
      D => \^fsm_onehot_current_state_reg[8]_0\,
      Q => \^fsm_onehot_current_state_reg[9]_0\
    );
\o_address[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFCC0000"
    )
        port map (
      I0 => \^finished\,
      I1 => zone(0),
      I2 => \o_address_reg[2]\,
      I3 => start_comparing,
      I4 => i_start_IBUF,
      I5 => i_rst_IBUF,
      O => D(0)
    );
\o_address[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^fsm_onehot_current_state_reg[5]_0\,
      I1 => \^fsm_onehot_current_state_reg[3]_0\,
      I2 => \^fsm_onehot_current_state_reg[9]_0\,
      I3 => \^fsm_onehot_current_state_reg[7]_0\,
      O => zone(0)
    );
\o_address[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000020202020"
    )
        port map (
      I0 => zone(1),
      I1 => i_rst_IBUF,
      I2 => i_start_IBUF,
      I3 => \^finished\,
      I4 => \o_address_reg[2]\,
      I5 => start_comparing,
      O => D(1)
    );
\o_address[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^fsm_onehot_current_state_reg[5]_0\,
      I1 => \^fsm_onehot_current_state_reg[4]_0\,
      I2 => \^fsm_onehot_current_state_reg[9]_0\,
      I3 => \^fsm_onehot_current_state_reg[8]_0\,
      O => zone(1)
    );
\o_address[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000020202020"
    )
        port map (
      I0 => zone(2),
      I1 => i_rst_IBUF,
      I2 => i_start_IBUF,
      I3 => \^finished\,
      I4 => \o_address_reg[2]\,
      I5 => start_comparing,
      O => D(2)
    );
\o_address[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^fsm_onehot_current_state_reg[7]_0\,
      I1 => \^fsm_onehot_current_state_reg[6]_0\,
      I2 => \^fsm_onehot_current_state_reg[9]_0\,
      I3 => \^fsm_onehot_current_state_reg[8]_0\,
      O => zone(2)
    );
\o_address[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFFFCFC"
    )
        port map (
      I0 => \^finished\,
      I1 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I3 => \o_address_reg[2]\,
      I4 => start_comparing,
      I5 => \^ctrl12_out\,
      O => D(3)
    );
\o_zone[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => i_start_IBUF,
      I3 => i_rst_IBUF,
      O => \FSM_onehot_current_state_reg[1]_0\
    );
\out_ffd[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => \FSM_onehot_current_state_reg[0]_0\(0)
    );
\out_ffd[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => E(0)
    );
start_comparing_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00FE00"
    )
        port map (
      I0 => zone(2),
      I1 => \^fsm_onehot_current_state_reg[5]_0\,
      I2 => \^fsm_onehot_current_state_reg[4]_0\,
      I3 => counter,
      I4 => \^finished\,
      I5 => \^fsm_onehot_current_state_reg[3]_0\,
      O => start_comparing0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_reti_logiche is
  port (
    i_clk : in STD_LOGIC;
    i_start : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_address : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_done : out STD_LOGIC;
    o_en : out STD_LOGIC;
    o_we : out STD_LOGIC;
    o_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of project_reti_logiche : entity is true;
end project_reti_logiche;

architecture STRUCTURE of project_reti_logiche is
  signal cac_n_1 : STD_LOGIC;
  signal cc_cont_n_3 : STD_LOGIC;
  signal cc_cont_n_5 : STD_LOGIC;
  signal counter : STD_LOGIC;
  signal ctrl : STD_LOGIC;
  signal ctrl12_out : STD_LOGIC;
  signal ffd_n_7 : STD_LOGIC;
  signal ffd_variable_n_1 : STD_LOGIC;
  signal ffd_variable_n_10 : STD_LOGIC;
  signal ffd_variable_n_11 : STD_LOGIC;
  signal ffd_variable_n_5 : STD_LOGIC;
  signal ffd_variable_n_6 : STD_LOGIC;
  signal ffd_variable_n_7 : STD_LOGIC;
  signal ffd_variable_n_8 : STD_LOGIC;
  signal ffd_variable_n_9 : STD_LOGIC;
  signal finished : STD_LOGIC;
  signal fsm_c_n_0 : STD_LOGIC;
  signal fsm_c_n_1 : STD_LOGIC;
  signal fsm_c_n_10 : STD_LOGIC;
  signal fsm_c_n_11 : STD_LOGIC;
  signal fsm_c_n_12 : STD_LOGIC;
  signal fsm_c_n_13 : STD_LOGIC;
  signal fsm_c_n_14 : STD_LOGIC;
  signal fsm_c_n_15 : STD_LOGIC;
  signal fsm_c_n_16 : STD_LOGIC;
  signal fsm_c_n_2 : STD_LOGIC;
  signal fsm_c_n_3 : STD_LOGIC;
  signal fsm_c_n_4 : STD_LOGIC;
  signal fsm_c_n_7 : STD_LOGIC;
  signal get : STD_LOGIC;
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_rst_IBUF : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal o_address_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal o_data_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_data_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_en_OBUF : STD_LOGIC;
  signal o_we_OBUF : STD_LOGIC;
  signal o_zone : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 to 7 );
  signal start_comparing : STD_LOGIC;
  signal start_comparing0 : STD_LOGIC;
begin
cac: entity work.compare_and_codify
     port map (
      D(3) => fsm_c_n_1,
      D(2) => fsm_c_n_2,
      D(1) => fsm_c_n_3,
      D(0) => fsm_c_n_4,
      Q => o_we_OBUF,
      counter => counter,
      ctrl12_out => ctrl12_out,
      ctrl_reg_0 => cac_n_1,
      ctrl_reg_1 => cc_cont_n_3,
      finished => finished,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      i_rst_IBUF => i_rst_IBUF,
      i_start_IBUF => i_start_IBUF,
      \o_address_reg[3]_0\(3 downto 0) => o_address_OBUF(3 downto 0),
      \o_data_reg[7]_0\(7 downto 0) => o_data_OBUF(7 downto 0),
      \o_data_reg[7]_1\(7 downto 0) => o_data_0(7 downto 0),
      o_done_reg_0 => ffd_n_7,
      o_en_OBUF => o_en_OBUF,
      start_comparing => start_comparing
    );
cc_cont: entity work.clock_controller
     port map (
      counter => counter,
      ctrl => ctrl,
      ctrl_reg_0 => cac_n_1,
      ctrl_reg_1 => ffd_n_7,
      finished => finished,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      i_rst_IBUF => i_rst_IBUF,
      i_start_IBUF => i_start_IBUF,
      start_comparing => start_comparing,
      start_comparing0 => start_comparing0,
      start_comparing_reg_0 => cc_cont_n_3,
      start_comparing_reg_1(0) => o_data_0(7),
      start_comparing_reg_2 => cc_cont_n_5
    );
ffd: entity work.flipflop_td
     port map (
      D(6 downto 0) => i_data_IBUF(6 downto 0),
      E(0) => get,
      \FSM_onehot_current_state_reg[10]\(6 downto 0) => o_data_0(6 downto 0),
      Q(6) => ffd_variable_n_5,
      Q(5) => ffd_variable_n_6,
      Q(4) => ffd_variable_n_7,
      Q(3) => ffd_variable_n_8,
      Q(2) => ffd_variable_n_9,
      Q(1) => ffd_variable_n_10,
      Q(0) => ffd_variable_n_11,
      S(0) => p_0_in(7),
      ctrl12_out => ctrl12_out,
      finished => finished,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      \o_data_reg[0]\ => cc_cont_n_5,
      \o_data_reg[6]\ => ffd_variable_n_1,
      o_zone(2 downto 0) => o_zone(2 downto 0),
      \out_ffd_reg[6]_0\ => ffd_n_7,
      start_comparing => start_comparing
    );
ffd_variable: entity work.flipflop_variable
     port map (
      D(7 downto 0) => i_data_IBUF(7 downto 0),
      E(0) => fsm_c_n_7,
      Q(6) => ffd_variable_n_5,
      Q(5) => ffd_variable_n_6,
      Q(4) => ffd_variable_n_7,
      Q(3) => ffd_variable_n_8,
      Q(2) => ffd_variable_n_9,
      Q(1) => ffd_variable_n_10,
      Q(0) => ffd_variable_n_11,
      S(0) => p_0_in(7),
      ctrl12_out => ctrl12_out,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      o_zone(2 downto 0) => o_zone(2 downto 0),
      \o_zone_reg[0]_0\ => ffd_variable_n_1,
      \o_zone_reg[0]_1\ => fsm_c_n_12,
      \o_zone_reg[1]_0\ => fsm_c_n_10,
      \o_zone_reg[1]_1\ => fsm_c_n_11,
      \o_zone_reg[2]_0\ => fsm_c_n_15,
      \o_zone_reg[2]_1\ => fsm_c_n_16,
      \o_zone_reg[2]_2\ => fsm_c_n_13,
      \o_zone_reg[2]_3\ => fsm_c_n_14,
      \o_zone_reg[2]_4\ => fsm_c_n_0
    );
fsm_c: entity work.fsm_counter
     port map (
      D(3) => fsm_c_n_1,
      D(2) => fsm_c_n_2,
      D(1) => fsm_c_n_3,
      D(0) => fsm_c_n_4,
      E(0) => fsm_c_n_7,
      \FSM_onehot_current_state_reg[0]_0\(0) => get,
      \FSM_onehot_current_state_reg[1]_0\ => fsm_c_n_0,
      \FSM_onehot_current_state_reg[3]_0\ => fsm_c_n_12,
      \FSM_onehot_current_state_reg[4]_0\ => fsm_c_n_11,
      \FSM_onehot_current_state_reg[5]_0\ => fsm_c_n_10,
      \FSM_onehot_current_state_reg[6]_0\ => fsm_c_n_16,
      \FSM_onehot_current_state_reg[7]_0\ => fsm_c_n_15,
      \FSM_onehot_current_state_reg[8]_0\ => fsm_c_n_14,
      \FSM_onehot_current_state_reg[9]_0\ => fsm_c_n_13,
      counter => counter,
      ctrl => ctrl,
      ctrl12_out => ctrl12_out,
      finished => finished,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      i_rst_IBUF => i_rst_IBUF,
      i_start_IBUF => i_start_IBUF,
      \o_address_reg[2]\ => ffd_n_7,
      start_comparing => start_comparing,
      start_comparing0 => start_comparing0
    );
i_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => i_clk_IBUF,
      O => i_clk_IBUF_BUFG
    );
i_clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_clk,
      O => i_clk_IBUF
    );
\i_data_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(0),
      O => i_data_IBUF(0)
    );
\i_data_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(1),
      O => i_data_IBUF(1)
    );
\i_data_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(2),
      O => i_data_IBUF(2)
    );
\i_data_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(3),
      O => i_data_IBUF(3)
    );
\i_data_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(4),
      O => i_data_IBUF(4)
    );
\i_data_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(5),
      O => i_data_IBUF(5)
    );
\i_data_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(6),
      O => i_data_IBUF(6)
    );
\i_data_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(7),
      O => i_data_IBUF(7)
    );
i_rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_rst,
      O => i_rst_IBUF
    );
i_start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_start,
      O => i_start_IBUF
    );
\o_address_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(0),
      O => o_address(0)
    );
\o_address_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(10)
    );
\o_address_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(11)
    );
\o_address_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(12)
    );
\o_address_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(13)
    );
\o_address_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(14)
    );
\o_address_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(15)
    );
\o_address_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(1),
      O => o_address(1)
    );
\o_address_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(2),
      O => o_address(2)
    );
\o_address_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(3),
      O => o_address(3)
    );
\o_address_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(4)
    );
\o_address_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(5)
    );
\o_address_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(6)
    );
\o_address_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(7)
    );
\o_address_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(8)
    );
\o_address_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(9)
    );
\o_data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(0),
      O => o_data(0)
    );
\o_data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(1),
      O => o_data(1)
    );
\o_data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(2),
      O => o_data(2)
    );
\o_data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(3),
      O => o_data(3)
    );
\o_data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(4),
      O => o_data(4)
    );
\o_data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(5),
      O => o_data(5)
    );
\o_data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(6),
      O => o_data(6)
    );
\o_data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(7),
      O => o_data(7)
    );
o_done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_we_OBUF,
      O => o_done
    );
o_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_en_OBUF,
      O => o_en
    );
o_we_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_we_OBUF,
      O => o_we
    );
end STRUCTURE;
