-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Aug  9 11:28:12 2020
-- Host        : LAPTOP-CISO1L93 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {D:/Proggetti Reti
--               Logiche/10619348_RL_proj/10619348_RL_proj.sim/sim_1/synth/func/xsim/in_last_wz_func_synth.vhd}
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
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    start_comparing : out STD_LOGIC;
    counter : out STD_LOGIC;
    ctrl : out STD_LOGIC;
    start_comparing_reg_0 : out STD_LOGIC;
    ctrl1 : in STD_LOGIC;
    i_clk_IBUF_BUFG : in STD_LOGIC;
    start_comparing0 : in STD_LOGIC;
    \o_data_reg[7]\ : in STD_LOGIC;
    get_reg_0 : in STD_LOGIC;
    cac_controller : in STD_LOGIC
  );
end clock_controller;

architecture STRUCTURE of clock_controller is
  signal \^counter\ : STD_LOGIC;
  signal counter_i_1_n_0 : STD_LOGIC;
  signal ctrl0 : STD_LOGIC;
  signal get0 : STD_LOGIC;
  signal \^start_comparing\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ctrl_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of get_i_1 : label is "soft_lutpair1";
begin
  counter <= \^counter\;
  start_comparing <= \^start_comparing\;
counter_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter\,
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
      R => ctrl1
    );
ctrl_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^counter\,
      I1 => cac_controller,
      O => ctrl0
    );
ctrl_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => ctrl0,
      Q => ctrl,
      R => ctrl1
    );
get_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^counter\,
      I1 => get_reg_0,
      O => get0
    );
get_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => get0,
      Q => E(0),
      R => ctrl1
    );
\o_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^start_comparing\,
      I1 => \o_data_reg[7]\,
      O => start_comparing_reg_0
    );
start_comparing_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => start_comparing0,
      Q => \^start_comparing\,
      R => ctrl1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity compare_and_codify is
  port (
    o_en_OBUF : out STD_LOGIC;
    cac_controller : out STD_LOGIC;
    Q : out STD_LOGIC;
    \o_address_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_data_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ctrl1 : in STD_LOGIC;
    i_clk_IBUF_BUFG : in STD_LOGIC;
    ctrl_reg_0 : in STD_LOGIC;
    finished : in STD_LOGIC;
    o_done_reg_0 : in STD_LOGIC;
    start_comparing : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    zone : in STD_LOGIC_VECTOR ( 0 to 0 );
    \o_address_reg[0]_0\ : in STD_LOGIC;
    \o_data_reg[7]_1\ : in STD_LOGIC;
    \o_data_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end compare_and_codify;

architecture STRUCTURE of compare_and_codify is
  signal \o_address[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[3]_i_1_n_0\ : STD_LOGIC;
  signal o_done_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_address[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_done_i_1 : label is "soft_lutpair0";
begin
ctrl_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => ctrl_reg_0,
      Q => cac_controller,
      R => '0'
    );
\o_address[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \o_address_reg[0]_0\,
      I1 => o_done_reg_0,
      I2 => start_comparing,
      O => \o_address[0]_i_1_n_0\
    );
\o_address[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => zone(0),
      I1 => o_done_reg_0,
      I2 => start_comparing,
      O => \o_address[3]_i_1_n_0\
    );
\o_address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_address[0]_i_1_n_0\,
      Q => \o_address_reg[3]_0\(0),
      R => ctrl1
    );
\o_address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => D(0),
      Q => \o_address_reg[3]_0\(1),
      R => SR(0)
    );
\o_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => D(1),
      Q => \o_address_reg[3]_0\(2),
      R => SR(0)
    );
\o_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_address[3]_i_1_n_0\,
      Q => \o_address_reg[3]_0\(3),
      R => ctrl1
    );
\o_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data_reg[6]_0\(0),
      Q => \o_data_reg[7]_0\(0),
      R => ctrl1
    );
\o_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data_reg[6]_0\(1),
      Q => \o_data_reg[7]_0\(1),
      R => ctrl1
    );
\o_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data_reg[6]_0\(2),
      Q => \o_data_reg[7]_0\(2),
      R => ctrl1
    );
\o_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data_reg[6]_0\(3),
      Q => \o_data_reg[7]_0\(3),
      R => ctrl1
    );
\o_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data_reg[6]_0\(4),
      Q => \o_data_reg[7]_0\(4),
      R => ctrl1
    );
\o_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data_reg[6]_0\(5),
      Q => \o_data_reg[7]_0\(5),
      R => ctrl1
    );
\o_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data_reg[6]_0\(6),
      Q => \o_data_reg[7]_0\(6),
      R => ctrl1
    );
\o_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data_reg[7]_1\,
      Q => \o_data_reg[7]_0\(7),
      R => ctrl1
    );
o_done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
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
      R => ctrl1
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
      R => ctrl1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity flipflop_td is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out_ffd_reg[3]_0\ : out STD_LOGIC;
    start_comparing_reg : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    i_start_IBUF : in STD_LOGIC;
    i_rst_IBUF : in STD_LOGIC;
    start_comparing : in STD_LOGIC;
    finished : in STD_LOGIC;
    \o_data_reg[6]\ : in STD_LOGIC;
    o_zone : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    o_done_reg_i_3_0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    ctrl1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    i_clk_IBUF_BUFG : in STD_LOGIC
  );
end flipflop_td;

architecture STRUCTURE of flipflop_td is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fixed : STD_LOGIC_VECTOR ( 6 downto 0 );
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
  signal \^out_ffd_reg[3]_0\ : STD_LOGIC;
  signal NLW_o_done_reg_i_3_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  Q(0) <= \^q\(0);
  \out_ffd_reg[3]_0\ <= \^out_ffd_reg[3]_0\;
\o_address[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => i_rst_IBUF,
      I2 => \^out_ffd_reg[3]_0\,
      I3 => start_comparing,
      O => SR(0)
    );
\o_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888800880F88"
    )
        port map (
      I0 => finished,
      I1 => fixed(0),
      I2 => \o_data_reg[3]_i_2_n_6\,
      I3 => start_comparing,
      I4 => \o_data_reg[3]_i_2_n_7\,
      I5 => \^out_ffd_reg[3]_0\,
      O => start_comparing_reg(0)
    );
\o_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888880F880088"
    )
        port map (
      I0 => finished,
      I1 => fixed(1),
      I2 => \o_data_reg[3]_i_2_n_6\,
      I3 => start_comparing,
      I4 => \o_data_reg[3]_i_2_n_7\,
      I5 => \^out_ffd_reg[3]_0\,
      O => start_comparing_reg(1)
    );
\o_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"880F888888008888"
    )
        port map (
      I0 => finished,
      I1 => fixed(2),
      I2 => \o_data_reg[3]_i_2_n_7\,
      I3 => \^out_ffd_reg[3]_0\,
      I4 => start_comparing,
      I5 => \o_data_reg[3]_i_2_n_6\,
      O => start_comparing_reg(2)
    );
\o_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F0888888008888"
    )
        port map (
      I0 => finished,
      I1 => fixed(3),
      I2 => \o_data_reg[3]_i_2_n_7\,
      I3 => \^out_ffd_reg[3]_0\,
      I4 => start_comparing,
      I5 => \o_data_reg[3]_i_2_n_6\,
      O => start_comparing_reg(3)
    );
\o_data[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fixed(3),
      I1 => o_done_reg_i_3_0(3),
      O => \o_data[3]_i_3_n_0\
    );
\o_data[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fixed(2),
      I1 => o_done_reg_i_3_0(2),
      O => \o_data[3]_i_4_n_0\
    );
\o_data[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fixed(1),
      I1 => o_done_reg_i_3_0(1),
      O => \o_data[3]_i_5_n_0\
    );
\o_data[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fixed(0),
      I1 => o_done_reg_i_3_0(0),
      O => \o_data[3]_i_6_n_0\
    );
\o_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7040404"
    )
        port map (
      I0 => o_zone(0),
      I1 => start_comparing,
      I2 => \^out_ffd_reg[3]_0\,
      I3 => finished,
      I4 => fixed(4),
      O => start_comparing_reg(4)
    );
\o_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \o_data_reg[6]\,
      I1 => start_comparing,
      I2 => \^out_ffd_reg[3]_0\,
      I3 => finished,
      I4 => fixed(6),
      O => start_comparing_reg(5)
    );
\o_data_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_data_reg[3]_i_2_n_0\,
      CO(2) => \o_data_reg[3]_i_2_n_1\,
      CO(1) => \o_data_reg[3]_i_2_n_2\,
      CO(0) => \o_data_reg[3]_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => fixed(3 downto 0),
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
      I0 => \o_data_reg[3]_i_2_n_4\,
      I1 => o_done_reg_i_3_n_7,
      I2 => o_done_reg_i_3_n_4,
      I3 => \o_data_reg[3]_i_2_n_5\,
      I4 => o_done_reg_i_3_n_5,
      I5 => o_done_reg_i_3_n_6,
      O => \^out_ffd_reg[3]_0\
    );
o_done_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fixed(6),
      I1 => o_done_reg_i_3_0(6),
      O => o_done_i_5_n_0
    );
o_done_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => o_done_reg_i_3_0(5),
      O => o_done_i_6_n_0
    );
o_done_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fixed(4),
      I1 => o_done_reg_i_3_0(4),
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
      DI(2) => fixed(6),
      DI(1) => \^q\(0),
      DI(0) => fixed(4),
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
      Q => fixed(0),
      R => ctrl1
    );
\out_ffd_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(1),
      Q => fixed(1),
      R => ctrl1
    );
\out_ffd_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(2),
      Q => fixed(2),
      R => ctrl1
    );
\out_ffd_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(3),
      Q => fixed(3),
      R => ctrl1
    );
\out_ffd_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(4),
      Q => fixed(4),
      R => ctrl1
    );
\out_ffd_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(5),
      Q => \^q\(0),
      R => ctrl1
    );
\out_ffd_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(6),
      Q => fixed(6),
      R => ctrl1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity flipflop_variable is
  port (
    got_first_add_reg_0 : out STD_LOGIC;
    \o_zone_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \o_zone_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \o_zone_reg[2]_0\ : out STD_LOGIC;
    \out_ffd_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    got_first_add_reg_1 : in STD_LOGIC;
    i_clk_IBUF_BUFG : in STD_LOGIC;
    start_comparing : in STD_LOGIC;
    \o_data_reg[5]\ : in STD_LOGIC;
    finished : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ctrl1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    zone : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_start_IBUF : in STD_LOGIC;
    i_rst_IBUF : in STD_LOGIC;
    \o_zone_reg[1]_0\ : in STD_LOGIC;
    \o_zone_reg[0]_2\ : in STD_LOGIC
  );
end flipflop_variable;

architecture STRUCTURE of flipflop_variable is
  signal \^got_first_add_reg_0\ : STD_LOGIC;
  signal o_zone : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \o_zone[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_zone[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_zone[2]_i_1_n_0\ : STD_LOGIC;
  signal \^o_zone_reg[0]_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \out_ffd_reg_n_0_[7]\ : STD_LOGIC;
begin
  got_first_add_reg_0 <= \^got_first_add_reg_0\;
  \o_zone_reg[0]_1\(0) <= \^o_zone_reg[0]_1\(0);
got_first_add_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => got_first_add_reg_1,
      Q => \^got_first_add_reg_0\,
      R => '0'
    );
\o_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9F009000900090"
    )
        port map (
      I0 => \^o_zone_reg[0]_1\(0),
      I1 => o_zone(1),
      I2 => start_comparing,
      I3 => \o_data_reg[5]\,
      I4 => finished,
      I5 => Q(0),
      O => \o_zone_reg[0]_0\(0)
    );
\o_data[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => o_zone(2),
      I1 => o_zone(1),
      I2 => \^o_zone_reg[0]_1\(0),
      O => \o_zone_reg[2]_0\
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
      INIT => X"AA0AAAAAAACAAACA"
    )
        port map (
      I0 => \^o_zone_reg[0]_1\(0),
      I1 => \o_zone_reg[0]_2\,
      I2 => i_start_IBUF,
      I3 => i_rst_IBUF,
      I4 => \^got_first_add_reg_0\,
      I5 => zone(1),
      O => \o_zone[0]_i_1_n_0\
    );
\o_zone[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0AAAAAAA3AAA3A"
    )
        port map (
      I0 => o_zone(1),
      I1 => \o_zone_reg[1]_0\,
      I2 => i_start_IBUF,
      I3 => i_rst_IBUF,
      I4 => \^got_first_add_reg_0\,
      I5 => zone(1),
      O => \o_zone[1]_i_1_n_0\
    );
\o_zone[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0AAAAAAACAAACA"
    )
        port map (
      I0 => o_zone(2),
      I1 => zone(0),
      I2 => i_start_IBUF,
      I3 => i_rst_IBUF,
      I4 => \^got_first_add_reg_0\,
      I5 => zone(1),
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
      Q => \^o_zone_reg[0]_1\(0),
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
      Q => o_zone(1),
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
      Q => o_zone(2),
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
      Q => \out_ffd_reg[6]_0\(0),
      R => ctrl1
    );
\out_ffd_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(1),
      Q => \out_ffd_reg[6]_0\(1),
      R => ctrl1
    );
\out_ffd_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(2),
      Q => \out_ffd_reg[6]_0\(2),
      R => ctrl1
    );
\out_ffd_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(3),
      Q => \out_ffd_reg[6]_0\(3),
      R => ctrl1
    );
\out_ffd_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(4),
      Q => \out_ffd_reg[6]_0\(4),
      R => ctrl1
    );
\out_ffd_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(5),
      Q => \out_ffd_reg[6]_0\(5),
      R => ctrl1
    );
\out_ffd_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => E(0),
      D => D(6),
      Q => \out_ffd_reg[6]_0\(6),
      R => ctrl1
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
      R => ctrl1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fsm_counter is
  port (
    ctrl1 : out STD_LOGIC;
    start_comparing0 : out STD_LOGIC;
    \FSM_onehot_current_state_reg[9]_0\ : out STD_LOGIC;
    zone : out STD_LOGIC_VECTOR ( 1 downto 0 );
    finished : out STD_LOGIC;
    \FSM_onehot_current_state_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_current_state_reg[9]_1\ : out STD_LOGIC;
    got_first_add_reg : out STD_LOGIC;
    \FSM_onehot_current_state_reg[12]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    i_rst_IBUF : in STD_LOGIC;
    i_start_IBUF : in STD_LOGIC;
    counter : in STD_LOGIC;
    ctrl : in STD_LOGIC;
    got_first_add_reg_0 : in STD_LOGIC;
    start_comparing : in STD_LOGIC;
    ctrl_reg : in STD_LOGIC;
    i_clk_IBUF_BUFG : in STD_LOGIC
  );
end fsm_counter;

architecture STRUCTURE of fsm_counter is
  signal \FSM_onehot_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_current_state_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_current_state_reg[9]_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[9]\ : STD_LOGIC;
  signal \^ctrl1\ : STD_LOGIC;
  signal \^finished\ : STD_LOGIC;
  signal start_comparing_i_2_n_0 : STD_LOGIC;
  signal \^zone\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[2]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[10]\ : label is "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[11]\ : label is "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[12]\ : label is "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[3]\ : label is "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[4]\ : label is "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[5]\ : label is "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[6]\ : label is "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[7]\ : label is "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[8]\ : label is "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[9]\ : label is "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000";
  attribute SOFT_HLUTNM of \o_address[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_address[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_address[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_zone[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of start_comparing_i_3 : label is "soft_lutpair4";
begin
  \FSM_onehot_current_state_reg[1]_0\ <= \^fsm_onehot_current_state_reg[1]_0\;
  \FSM_onehot_current_state_reg[9]_0\ <= \^fsm_onehot_current_state_reg[9]_0\;
  ctrl1 <= \^ctrl1\;
  finished <= \^finished\;
  zone(1 downto 0) <= \^zone\(1 downto 0);
\FSM_onehot_current_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => ctrl,
      O => \FSM_onehot_current_state[0]_i_1_n_0\
    );
\FSM_onehot_current_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_rst_IBUF,
      I1 => i_start_IBUF,
      O => \^ctrl1\
    );
\FSM_onehot_current_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^fsm_onehot_current_state_reg[1]_0\,
      I1 => \^finished\,
      O => \FSM_onehot_current_state[2]_i_1_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_current_state[0]_i_1_n_0\,
      PRE => \^ctrl1\,
      Q => \FSM_onehot_current_state_reg_n_0_[0]\
    );
\FSM_onehot_current_state_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl1\,
      D => \FSM_onehot_current_state_reg_n_0_[9]\,
      Q => \FSM_onehot_current_state_reg_n_0_[10]\
    );
\FSM_onehot_current_state_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl1\,
      D => \FSM_onehot_current_state_reg_n_0_[10]\,
      Q => \FSM_onehot_current_state_reg_n_0_[11]\
    );
\FSM_onehot_current_state_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl1\,
      D => \FSM_onehot_current_state_reg_n_0_[11]\,
      Q => \^finished\
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl1\,
      D => \FSM_onehot_current_state_reg_n_0_[0]\,
      Q => \^fsm_onehot_current_state_reg[1]_0\
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl1\,
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
      CLR => \^ctrl1\,
      D => \FSM_onehot_current_state_reg_n_0_[2]\,
      Q => \FSM_onehot_current_state_reg_n_0_[3]\
    );
\FSM_onehot_current_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl1\,
      D => \FSM_onehot_current_state_reg_n_0_[3]\,
      Q => \FSM_onehot_current_state_reg_n_0_[4]\
    );
\FSM_onehot_current_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl1\,
      D => \FSM_onehot_current_state_reg_n_0_[4]\,
      Q => \FSM_onehot_current_state_reg_n_0_[5]\
    );
\FSM_onehot_current_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl1\,
      D => \FSM_onehot_current_state_reg_n_0_[5]\,
      Q => \FSM_onehot_current_state_reg_n_0_[6]\
    );
\FSM_onehot_current_state_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl1\,
      D => \FSM_onehot_current_state_reg_n_0_[6]\,
      Q => \FSM_onehot_current_state_reg_n_0_[7]\
    );
\FSM_onehot_current_state_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl1\,
      D => \FSM_onehot_current_state_reg_n_0_[7]\,
      Q => \FSM_onehot_current_state_reg_n_0_[8]\
    );
\FSM_onehot_current_state_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => ctrl,
      CLR => \^ctrl1\,
      D => \FSM_onehot_current_state_reg_n_0_[8]\,
      Q => \FSM_onehot_current_state_reg_n_0_[9]\
    );
\ctrl_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00510000"
    )
        port map (
      I0 => \^finished\,
      I1 => start_comparing,
      I2 => ctrl_reg,
      I3 => i_rst_IBUF,
      I4 => i_start_IBUF,
      O => \FSM_onehot_current_state_reg[12]_0\
    );
got_first_add_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => i_rst_IBUF,
      I2 => \^zone\(1),
      I3 => got_first_add_reg_0,
      O => got_first_add_reg
    );
\o_address[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I2 => \^finished\,
      I3 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[7]\,
      O => \FSM_onehot_current_state_reg[9]_1\
    );
\o_address[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555554"
    )
        port map (
      I0 => \^finished\,
      I1 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[9]\,
      O => D(0)
    );
\o_address[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I4 => \^finished\,
      O => D(1)
    );
\o_address[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^finished\,
      I1 => \^fsm_onehot_current_state_reg[1]_0\,
      I2 => \FSM_onehot_current_state_reg_n_0_[11]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[10]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \^zone\(1)
    );
\o_zone[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[8]\,
      O => \^zone\(0)
    );
\out_ffd[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => got_first_add_reg_0,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[10]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[11]\,
      I4 => \^fsm_onehot_current_state_reg[1]_0\,
      I5 => \^finished\,
      O => E(0)
    );
start_comparing_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => counter,
      I1 => \FSM_onehot_current_state_reg_n_0_[10]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[11]\,
      I3 => start_comparing_i_2_n_0,
      I4 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I5 => \^fsm_onehot_current_state_reg[9]_0\,
      O => start_comparing0
    );
start_comparing_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[7]\,
      O => start_comparing_i_2_n_0
    );
start_comparing_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[4]\,
      O => \^fsm_onehot_current_state_reg[9]_0\
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
  signal cac_controller : STD_LOGIC;
  signal cc_cont_n_4 : STD_LOGIC;
  signal counter : STD_LOGIC;
  signal ctrl : STD_LOGIC;
  signal ctrl1 : STD_LOGIC;
  signal ffd_n_0 : STD_LOGIC;
  signal ffd_n_1 : STD_LOGIC;
  signal ffd_n_2 : STD_LOGIC;
  signal ffd_n_3 : STD_LOGIC;
  signal ffd_n_4 : STD_LOGIC;
  signal ffd_n_5 : STD_LOGIC;
  signal ffd_n_6 : STD_LOGIC;
  signal ffd_n_7 : STD_LOGIC;
  signal ffd_variable_n_0 : STD_LOGIC;
  signal ffd_variable_n_1 : STD_LOGIC;
  signal ffd_variable_n_10 : STD_LOGIC;
  signal ffd_variable_n_11 : STD_LOGIC;
  signal ffd_variable_n_3 : STD_LOGIC;
  signal ffd_variable_n_4 : STD_LOGIC;
  signal ffd_variable_n_5 : STD_LOGIC;
  signal ffd_variable_n_6 : STD_LOGIC;
  signal ffd_variable_n_7 : STD_LOGIC;
  signal ffd_variable_n_8 : STD_LOGIC;
  signal ffd_variable_n_9 : STD_LOGIC;
  signal finished : STD_LOGIC;
  signal fixed : STD_LOGIC_VECTOR ( 5 to 5 );
  signal fsm_c_n_10 : STD_LOGIC;
  signal fsm_c_n_11 : STD_LOGIC;
  signal fsm_c_n_12 : STD_LOGIC;
  signal fsm_c_n_2 : STD_LOGIC;
  signal fsm_c_n_6 : STD_LOGIC;
  signal fsm_c_n_7 : STD_LOGIC;
  signal fsm_c_n_8 : STD_LOGIC;
  signal fsm_c_n_9 : STD_LOGIC;
  signal get : STD_LOGIC;
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_rst_IBUF : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal o_address_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal o_data_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_en_OBUF : STD_LOGIC;
  signal o_we_OBUF : STD_LOGIC;
  signal o_zone : STD_LOGIC_VECTOR ( 0 to 0 );
  signal start_comparing : STD_LOGIC;
  signal start_comparing0 : STD_LOGIC;
  signal zone : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
cac: entity work.compare_and_codify
     port map (
      D(1) => fsm_c_n_7,
      D(0) => fsm_c_n_8,
      Q => o_we_OBUF,
      SR(0) => ffd_n_0,
      cac_controller => cac_controller,
      ctrl1 => ctrl1,
      ctrl_reg_0 => fsm_c_n_11,
      finished => finished,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      \o_address_reg[0]_0\ => fsm_c_n_9,
      \o_address_reg[3]_0\(3 downto 0) => o_address_OBUF(3 downto 0),
      \o_data_reg[6]_0\(6) => ffd_n_2,
      \o_data_reg[6]_0\(5) => ffd_variable_n_1,
      \o_data_reg[6]_0\(4) => ffd_n_3,
      \o_data_reg[6]_0\(3) => ffd_n_4,
      \o_data_reg[6]_0\(2) => ffd_n_5,
      \o_data_reg[6]_0\(1) => ffd_n_6,
      \o_data_reg[6]_0\(0) => ffd_n_7,
      \o_data_reg[7]_0\(7 downto 0) => o_data_OBUF(7 downto 0),
      \o_data_reg[7]_1\ => cc_cont_n_4,
      o_done_reg_0 => ffd_n_1,
      o_en_OBUF => o_en_OBUF,
      start_comparing => start_comparing,
      zone(0) => zone(3)
    );
cc_cont: entity work.clock_controller
     port map (
      E(0) => get,
      cac_controller => cac_controller,
      counter => counter,
      ctrl => ctrl,
      ctrl1 => ctrl1,
      get_reg_0 => fsm_c_n_6,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      \o_data_reg[7]\ => ffd_n_1,
      start_comparing => start_comparing,
      start_comparing0 => start_comparing0,
      start_comparing_reg_0 => cc_cont_n_4
    );
ffd: entity work.flipflop_td
     port map (
      D(6 downto 0) => i_data_IBUF(6 downto 0),
      E(0) => get,
      Q(0) => fixed(5),
      S(0) => ffd_variable_n_3,
      SR(0) => ffd_n_0,
      ctrl1 => ctrl1,
      finished => finished,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      i_rst_IBUF => i_rst_IBUF,
      i_start_IBUF => i_start_IBUF,
      \o_data_reg[6]\ => ffd_variable_n_4,
      o_done_reg_i_3_0(6) => ffd_variable_n_5,
      o_done_reg_i_3_0(5) => ffd_variable_n_6,
      o_done_reg_i_3_0(4) => ffd_variable_n_7,
      o_done_reg_i_3_0(3) => ffd_variable_n_8,
      o_done_reg_i_3_0(2) => ffd_variable_n_9,
      o_done_reg_i_3_0(1) => ffd_variable_n_10,
      o_done_reg_i_3_0(0) => ffd_variable_n_11,
      o_zone(0) => o_zone(0),
      \out_ffd_reg[3]_0\ => ffd_n_1,
      start_comparing => start_comparing,
      start_comparing_reg(5) => ffd_n_2,
      start_comparing_reg(4) => ffd_n_3,
      start_comparing_reg(3) => ffd_n_4,
      start_comparing_reg(2) => ffd_n_5,
      start_comparing_reg(1) => ffd_n_6,
      start_comparing_reg(0) => ffd_n_7
    );
ffd_variable: entity work.flipflop_variable
     port map (
      D(7 downto 0) => i_data_IBUF(7 downto 0),
      E(0) => fsm_c_n_12,
      Q(0) => fixed(5),
      S(0) => ffd_variable_n_3,
      ctrl1 => ctrl1,
      finished => finished,
      got_first_add_reg_0 => ffd_variable_n_0,
      got_first_add_reg_1 => fsm_c_n_10,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      i_rst_IBUF => i_rst_IBUF,
      i_start_IBUF => i_start_IBUF,
      \o_data_reg[5]\ => ffd_n_1,
      \o_zone_reg[0]_0\(0) => ffd_variable_n_1,
      \o_zone_reg[0]_1\(0) => o_zone(0),
      \o_zone_reg[0]_2\ => fsm_c_n_9,
      \o_zone_reg[1]_0\ => fsm_c_n_2,
      \o_zone_reg[2]_0\ => ffd_variable_n_4,
      \out_ffd_reg[6]_0\(6) => ffd_variable_n_5,
      \out_ffd_reg[6]_0\(5) => ffd_variable_n_6,
      \out_ffd_reg[6]_0\(4) => ffd_variable_n_7,
      \out_ffd_reg[6]_0\(3) => ffd_variable_n_8,
      \out_ffd_reg[6]_0\(2) => ffd_variable_n_9,
      \out_ffd_reg[6]_0\(1) => ffd_variable_n_10,
      \out_ffd_reg[6]_0\(0) => ffd_variable_n_11,
      start_comparing => start_comparing,
      zone(1 downto 0) => zone(3 downto 2)
    );
fsm_c: entity work.fsm_counter
     port map (
      D(1) => fsm_c_n_7,
      D(0) => fsm_c_n_8,
      E(0) => fsm_c_n_12,
      \FSM_onehot_current_state_reg[12]_0\ => fsm_c_n_11,
      \FSM_onehot_current_state_reg[1]_0\ => fsm_c_n_6,
      \FSM_onehot_current_state_reg[9]_0\ => fsm_c_n_2,
      \FSM_onehot_current_state_reg[9]_1\ => fsm_c_n_9,
      counter => counter,
      ctrl => ctrl,
      ctrl1 => ctrl1,
      ctrl_reg => ffd_n_1,
      finished => finished,
      got_first_add_reg => fsm_c_n_10,
      got_first_add_reg_0 => ffd_variable_n_0,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      i_rst_IBUF => i_rst_IBUF,
      i_start_IBUF => i_start_IBUF,
      start_comparing => start_comparing,
      start_comparing0 => start_comparing0,
      zone(1 downto 0) => zone(3 downto 2)
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
