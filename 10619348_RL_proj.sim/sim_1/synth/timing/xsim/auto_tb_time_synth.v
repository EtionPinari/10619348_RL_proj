// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Aug 11 20:34:27 2020
// Host        : LAPTOP-CISO1L93 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/Proggetti Reti
//               Logiche/10619348_RL_proj/10619348_RL_proj.sim/sim_1/synth/timing/xsim/auto_tb_time_synth.v}
// Design      : project_reti_logiche
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module clock_controller
   (E,
    start_comparing,
    counter,
    ctrl,
    start_comparing_reg_0,
    SR,
    i_clk_IBUF_BUFG,
    start_comparing0,
    \o_data_reg[7] ,
    get_reg_0,
    cac_controller);
  output [0:0]E;
  output start_comparing;
  output counter;
  output ctrl;
  output start_comparing_reg_0;
  input [0:0]SR;
  input i_clk_IBUF_BUFG;
  input start_comparing0;
  input \o_data_reg[7] ;
  input get_reg_0;
  input cac_controller;

  wire [0:0]E;
  wire [0:0]SR;
  wire cac_controller;
  wire counter;
  wire counter_i_1_n_0;
  wire ctrl;
  wire ctrl0;
  wire get0;
  wire get_reg_0;
  wire i_clk_IBUF_BUFG;
  wire \o_data_reg[7] ;
  wire start_comparing;
  wire start_comparing0;
  wire start_comparing_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    counter_i_1
       (.I0(counter),
        .O(counter_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    counter_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_i_1_n_0),
        .Q(counter),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ctrl_i_1
       (.I0(counter),
        .I1(cac_controller),
        .O(ctrl0));
  FDRE #(
    .INIT(1'b0)) 
    ctrl_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ctrl0),
        .Q(ctrl),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    get_i_1
       (.I0(counter),
        .I1(get_reg_0),
        .O(get0));
  FDRE #(
    .INIT(1'b0)) 
    get_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(get0),
        .Q(E),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \o_data[7]_i_1 
       (.I0(start_comparing),
        .I1(\o_data_reg[7] ),
        .O(start_comparing_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    start_comparing_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(start_comparing0),
        .Q(start_comparing),
        .R(SR));
endmodule

module compare_and_codify
   (o_en_OBUF,
    cac_controller,
    Q,
    \o_address_reg[3]_0 ,
    \o_data_reg[7]_0 ,
    ctrl1,
    i_clk_IBUF_BUFG,
    ctrl_reg_0,
    finished,
    o_done_reg_0,
    start_comparing,
    SR,
    D,
    zone,
    \o_address_reg[0]_0 ,
    \o_data_reg[7]_1 ,
    \o_data_reg[6]_0 );
  output o_en_OBUF;
  output cac_controller;
  output Q;
  output [3:0]\o_address_reg[3]_0 ;
  output [7:0]\o_data_reg[7]_0 ;
  input ctrl1;
  input i_clk_IBUF_BUFG;
  input ctrl_reg_0;
  input finished;
  input o_done_reg_0;
  input start_comparing;
  input [0:0]SR;
  input [1:0]D;
  input [0:0]zone;
  input \o_address_reg[0]_0 ;
  input \o_data_reg[7]_1 ;
  input [6:0]\o_data_reg[6]_0 ;

  wire [1:0]D;
  wire Q;
  wire [0:0]SR;
  wire cac_controller;
  wire ctrl1;
  wire ctrl_reg_0;
  wire finished;
  wire i_clk_IBUF_BUFG;
  wire \o_address[0]_i_1_n_0 ;
  wire \o_address[3]_i_1_n_0 ;
  wire \o_address_reg[0]_0 ;
  wire [3:0]\o_address_reg[3]_0 ;
  wire [6:0]\o_data_reg[6]_0 ;
  wire [7:0]\o_data_reg[7]_0 ;
  wire \o_data_reg[7]_1 ;
  wire o_done_i_1_n_0;
  wire o_done_reg_0;
  wire o_en_OBUF;
  wire start_comparing;
  wire [0:0]zone;

  FDRE #(
    .INIT(1'b0)) 
    ctrl_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ctrl_reg_0),
        .Q(cac_controller),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBA)) 
    \o_address[0]_i_1 
       (.I0(\o_address_reg[0]_0 ),
        .I1(o_done_reg_0),
        .I2(start_comparing),
        .O(\o_address[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \o_address[3]_i_1 
       (.I0(zone),
        .I1(o_done_reg_0),
        .I2(start_comparing),
        .O(\o_address[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_address_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_address[0]_i_1_n_0 ),
        .Q(\o_address_reg[3]_0 [0]),
        .R(ctrl1));
  FDRE #(
    .INIT(1'b0)) 
    \o_address_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(\o_address_reg[3]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_address_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(\o_address_reg[3]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_address_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_address[3]_i_1_n_0 ),
        .Q(\o_address_reg[3]_0 [3]),
        .R(ctrl1));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_data_reg[6]_0 [0]),
        .Q(\o_data_reg[7]_0 [0]),
        .R(ctrl1));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_data_reg[6]_0 [1]),
        .Q(\o_data_reg[7]_0 [1]),
        .R(ctrl1));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_data_reg[6]_0 [2]),
        .Q(\o_data_reg[7]_0 [2]),
        .R(ctrl1));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_data_reg[6]_0 [3]),
        .Q(\o_data_reg[7]_0 [3]),
        .R(ctrl1));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_data_reg[6]_0 [4]),
        .Q(\o_data_reg[7]_0 [4]),
        .R(ctrl1));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_data_reg[6]_0 [5]),
        .Q(\o_data_reg[7]_0 [5]),
        .R(ctrl1));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_data_reg[6]_0 [6]),
        .Q(\o_data_reg[7]_0 [6]),
        .R(ctrl1));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_data_reg[7]_1 ),
        .Q(\o_data_reg[7]_0 [7]),
        .R(ctrl1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    o_done_i_1
       (.I0(finished),
        .I1(o_done_reg_0),
        .I2(start_comparing),
        .O(o_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_done_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(o_done_i_1_n_0),
        .Q(Q),
        .R(ctrl1));
  FDRE #(
    .INIT(1'b0)) 
    o_en_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b1),
        .Q(o_en_OBUF),
        .R(ctrl1));
endmodule

module flipflop_td
   (SR,
    \out_ffd_reg[3]_0 ,
    start_comparing_reg,
    Q,
    i_start_IBUF,
    i_rst_IBUF,
    start_comparing,
    finished,
    \o_data_reg[6] ,
    o_zone,
    S,
    o_done_reg_i_3_0,
    \out_ffd_reg[6]_0 ,
    E,
    D,
    i_clk_IBUF_BUFG);
  output [0:0]SR;
  output \out_ffd_reg[3]_0 ;
  output [5:0]start_comparing_reg;
  output [0:0]Q;
  input i_start_IBUF;
  input i_rst_IBUF;
  input start_comparing;
  input finished;
  input \o_data_reg[6] ;
  input [0:0]o_zone;
  input [0:0]S;
  input [6:0]o_done_reg_i_3_0;
  input [0:0]\out_ffd_reg[6]_0 ;
  input [0:0]E;
  input [6:0]D;
  input i_clk_IBUF_BUFG;

  wire [6:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire finished;
  wire [6:0]fixed;
  wire i_clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire i_start_IBUF;
  wire \o_data[3]_i_3_n_0 ;
  wire \o_data[3]_i_4_n_0 ;
  wire \o_data[3]_i_5_n_0 ;
  wire \o_data[3]_i_6_n_0 ;
  wire \o_data_reg[3]_i_2_n_0 ;
  wire \o_data_reg[3]_i_2_n_1 ;
  wire \o_data_reg[3]_i_2_n_2 ;
  wire \o_data_reg[3]_i_2_n_3 ;
  wire \o_data_reg[3]_i_2_n_4 ;
  wire \o_data_reg[3]_i_2_n_5 ;
  wire \o_data_reg[3]_i_2_n_6 ;
  wire \o_data_reg[3]_i_2_n_7 ;
  wire \o_data_reg[6] ;
  wire o_done_i_5_n_0;
  wire o_done_i_6_n_0;
  wire o_done_i_7_n_0;
  wire [6:0]o_done_reg_i_3_0;
  wire o_done_reg_i_3_n_1;
  wire o_done_reg_i_3_n_2;
  wire o_done_reg_i_3_n_3;
  wire o_done_reg_i_3_n_4;
  wire o_done_reg_i_3_n_5;
  wire o_done_reg_i_3_n_6;
  wire o_done_reg_i_3_n_7;
  wire [0:0]o_zone;
  wire \out_ffd_reg[3]_0 ;
  wire [0:0]\out_ffd_reg[6]_0 ;
  wire start_comparing;
  wire [5:0]start_comparing_reg;
  wire [3:3]NLW_o_done_reg_i_3_CO_UNCONNECTED;

  LUT4 #(
    .INIT(16'hDFDD)) 
    \o_address[2]_i_1 
       (.I0(i_start_IBUF),
        .I1(i_rst_IBUF),
        .I2(\out_ffd_reg[3]_0 ),
        .I3(start_comparing),
        .O(SR));
  LUT6 #(
    .INIT(64'h8888888800880F88)) 
    \o_data[0]_i_1 
       (.I0(finished),
        .I1(fixed[0]),
        .I2(\o_data_reg[3]_i_2_n_6 ),
        .I3(start_comparing),
        .I4(\o_data_reg[3]_i_2_n_7 ),
        .I5(\out_ffd_reg[3]_0 ),
        .O(start_comparing_reg[0]));
  LUT6 #(
    .INIT(64'h888888880F880088)) 
    \o_data[1]_i_1 
       (.I0(finished),
        .I1(fixed[1]),
        .I2(\o_data_reg[3]_i_2_n_6 ),
        .I3(start_comparing),
        .I4(\o_data_reg[3]_i_2_n_7 ),
        .I5(\out_ffd_reg[3]_0 ),
        .O(start_comparing_reg[1]));
  LUT6 #(
    .INIT(64'h880F888888008888)) 
    \o_data[2]_i_1 
       (.I0(finished),
        .I1(fixed[2]),
        .I2(\o_data_reg[3]_i_2_n_7 ),
        .I3(\out_ffd_reg[3]_0 ),
        .I4(start_comparing),
        .I5(\o_data_reg[3]_i_2_n_6 ),
        .O(start_comparing_reg[2]));
  LUT6 #(
    .INIT(64'h88F0888888008888)) 
    \o_data[3]_i_1 
       (.I0(finished),
        .I1(fixed[3]),
        .I2(\o_data_reg[3]_i_2_n_7 ),
        .I3(\out_ffd_reg[3]_0 ),
        .I4(start_comparing),
        .I5(\o_data_reg[3]_i_2_n_6 ),
        .O(start_comparing_reg[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \o_data[3]_i_3 
       (.I0(fixed[3]),
        .I1(o_done_reg_i_3_0[3]),
        .O(\o_data[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_data[3]_i_4 
       (.I0(fixed[2]),
        .I1(o_done_reg_i_3_0[2]),
        .O(\o_data[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_data[3]_i_5 
       (.I0(fixed[1]),
        .I1(o_done_reg_i_3_0[1]),
        .O(\o_data[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_data[3]_i_6 
       (.I0(fixed[0]),
        .I1(o_done_reg_i_3_0[0]),
        .O(\o_data[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF7040404)) 
    \o_data[4]_i_1 
       (.I0(o_zone),
        .I1(start_comparing),
        .I2(\out_ffd_reg[3]_0 ),
        .I3(finished),
        .I4(fixed[4]),
        .O(start_comparing_reg[4]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    \o_data[6]_i_1 
       (.I0(\o_data_reg[6] ),
        .I1(start_comparing),
        .I2(\out_ffd_reg[3]_0 ),
        .I3(finished),
        .I4(fixed[6]),
        .O(start_comparing_reg[5]));
  CARRY4 \o_data_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\o_data_reg[3]_i_2_n_0 ,\o_data_reg[3]_i_2_n_1 ,\o_data_reg[3]_i_2_n_2 ,\o_data_reg[3]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI(fixed[3:0]),
        .O({\o_data_reg[3]_i_2_n_4 ,\o_data_reg[3]_i_2_n_5 ,\o_data_reg[3]_i_2_n_6 ,\o_data_reg[3]_i_2_n_7 }),
        .S({\o_data[3]_i_3_n_0 ,\o_data[3]_i_4_n_0 ,\o_data[3]_i_5_n_0 ,\o_data[3]_i_6_n_0 }));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    o_done_i_2
       (.I0(\o_data_reg[3]_i_2_n_4 ),
        .I1(o_done_reg_i_3_n_7),
        .I2(o_done_reg_i_3_n_4),
        .I3(\o_data_reg[3]_i_2_n_5 ),
        .I4(o_done_reg_i_3_n_5),
        .I5(o_done_reg_i_3_n_6),
        .O(\out_ffd_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    o_done_i_5
       (.I0(fixed[6]),
        .I1(o_done_reg_i_3_0[6]),
        .O(o_done_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_done_i_6
       (.I0(Q),
        .I1(o_done_reg_i_3_0[5]),
        .O(o_done_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_done_i_7
       (.I0(fixed[4]),
        .I1(o_done_reg_i_3_0[4]),
        .O(o_done_i_7_n_0));
  CARRY4 o_done_reg_i_3
       (.CI(\o_data_reg[3]_i_2_n_0 ),
        .CO({NLW_o_done_reg_i_3_CO_UNCONNECTED[3],o_done_reg_i_3_n_1,o_done_reg_i_3_n_2,o_done_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,fixed[6],Q,fixed[4]}),
        .O({o_done_reg_i_3_n_4,o_done_reg_i_3_n_5,o_done_reg_i_3_n_6,o_done_reg_i_3_n_7}),
        .S({S,o_done_i_5_n_0,o_done_i_6_n_0,o_done_i_7_n_0}));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(fixed[0]),
        .R(\out_ffd_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(fixed[1]),
        .R(\out_ffd_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(fixed[2]),
        .R(\out_ffd_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(fixed[3]),
        .R(\out_ffd_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(fixed[4]),
        .R(\out_ffd_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(Q),
        .R(\out_ffd_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(fixed[6]),
        .R(\out_ffd_reg[6]_0 ));
endmodule

module flipflop_variable
   (got_first_add_reg_0,
    \o_zone_reg[0]_0 ,
    \o_zone_reg[0]_1 ,
    S,
    \o_zone_reg[2]_0 ,
    \out_ffd_reg[6]_0 ,
    got_first_add_reg_1,
    i_clk_IBUF_BUFG,
    start_comparing,
    \o_data_reg[5] ,
    finished,
    Q,
    ctrl1,
    E,
    D,
    zone,
    i_start_IBUF,
    i_rst_IBUF,
    \o_zone_reg[1]_0 ,
    \o_zone_reg[0]_2 );
  output got_first_add_reg_0;
  output [0:0]\o_zone_reg[0]_0 ;
  output [0:0]\o_zone_reg[0]_1 ;
  output [0:0]S;
  output \o_zone_reg[2]_0 ;
  output [6:0]\out_ffd_reg[6]_0 ;
  input got_first_add_reg_1;
  input i_clk_IBUF_BUFG;
  input start_comparing;
  input \o_data_reg[5] ;
  input finished;
  input [0:0]Q;
  input ctrl1;
  input [0:0]E;
  input [7:0]D;
  input [1:0]zone;
  input i_start_IBUF;
  input i_rst_IBUF;
  input \o_zone_reg[1]_0 ;
  input \o_zone_reg[0]_2 ;

  wire [7:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]S;
  wire ctrl1;
  wire finished;
  wire got_first_add_reg_0;
  wire got_first_add_reg_1;
  wire i_clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire i_start_IBUF;
  wire \o_data_reg[5] ;
  wire [2:1]o_zone;
  wire \o_zone[0]_i_1_n_0 ;
  wire \o_zone[1]_i_1_n_0 ;
  wire \o_zone[2]_i_1_n_0 ;
  wire [0:0]\o_zone_reg[0]_0 ;
  wire [0:0]\o_zone_reg[0]_1 ;
  wire \o_zone_reg[0]_2 ;
  wire \o_zone_reg[1]_0 ;
  wire \o_zone_reg[2]_0 ;
  wire [6:0]\out_ffd_reg[6]_0 ;
  wire \out_ffd_reg_n_0_[7] ;
  wire start_comparing;
  wire [1:0]zone;

  FDRE #(
    .INIT(1'b0)) 
    got_first_add_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(got_first_add_reg_1),
        .Q(got_first_add_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF9F009000900090)) 
    \o_data[5]_i_1 
       (.I0(\o_zone_reg[0]_1 ),
        .I1(o_zone[1]),
        .I2(start_comparing),
        .I3(\o_data_reg[5] ),
        .I4(finished),
        .I5(Q),
        .O(\o_zone_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \o_data[6]_i_2 
       (.I0(o_zone[2]),
        .I1(o_zone[1]),
        .I2(\o_zone_reg[0]_1 ),
        .O(\o_zone_reg[2]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    o_done_i_4
       (.I0(\out_ffd_reg_n_0_[7] ),
        .O(S));
  LUT6 #(
    .INIT(64'hAA0AAAAAAACAAACA)) 
    \o_zone[0]_i_1 
       (.I0(\o_zone_reg[0]_1 ),
        .I1(\o_zone_reg[0]_2 ),
        .I2(i_start_IBUF),
        .I3(i_rst_IBUF),
        .I4(got_first_add_reg_0),
        .I5(zone[1]),
        .O(\o_zone[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA0AAAAAAA3AAA3A)) 
    \o_zone[1]_i_1 
       (.I0(o_zone[1]),
        .I1(\o_zone_reg[1]_0 ),
        .I2(i_start_IBUF),
        .I3(i_rst_IBUF),
        .I4(got_first_add_reg_0),
        .I5(zone[1]),
        .O(\o_zone[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA0AAAAAAACAAACA)) 
    \o_zone[2]_i_1 
       (.I0(o_zone[2]),
        .I1(zone[0]),
        .I2(i_start_IBUF),
        .I3(i_rst_IBUF),
        .I4(got_first_add_reg_0),
        .I5(zone[1]),
        .O(\o_zone[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_zone_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_zone[0]_i_1_n_0 ),
        .Q(\o_zone_reg[0]_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_zone_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_zone[1]_i_1_n_0 ),
        .Q(o_zone[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_zone_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_zone[2]_i_1_n_0 ),
        .Q(o_zone[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(\out_ffd_reg[6]_0 [0]),
        .R(ctrl1));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(\out_ffd_reg[6]_0 [1]),
        .R(ctrl1));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(\out_ffd_reg[6]_0 [2]),
        .R(ctrl1));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(\out_ffd_reg[6]_0 [3]),
        .R(ctrl1));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(\out_ffd_reg[6]_0 [4]),
        .R(ctrl1));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(\out_ffd_reg[6]_0 [5]),
        .R(ctrl1));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(\out_ffd_reg[6]_0 [6]),
        .R(ctrl1));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(\out_ffd_reg_n_0_[7] ),
        .R(ctrl1));
endmodule

module fsm_counter
   (ctrl1,
    start_comparing0,
    \FSM_onehot_current_state_reg[9]_0 ,
    zone,
    finished,
    \FSM_onehot_current_state_reg[1]_0 ,
    D,
    \FSM_onehot_current_state_reg[9]_1 ,
    got_first_add_reg,
    \FSM_onehot_current_state_reg[12]_0 ,
    E,
    i_rst_IBUF,
    i_start_IBUF,
    counter,
    ctrl,
    got_first_add_reg_0,
    start_comparing,
    ctrl_reg,
    i_clk_IBUF_BUFG);
  output ctrl1;
  output start_comparing0;
  output \FSM_onehot_current_state_reg[9]_0 ;
  output [1:0]zone;
  output finished;
  output \FSM_onehot_current_state_reg[1]_0 ;
  output [1:0]D;
  output \FSM_onehot_current_state_reg[9]_1 ;
  output got_first_add_reg;
  output \FSM_onehot_current_state_reg[12]_0 ;
  output [0:0]E;
  input i_rst_IBUF;
  input i_start_IBUF;
  input counter;
  input ctrl;
  input got_first_add_reg_0;
  input start_comparing;
  input ctrl_reg;
  input i_clk_IBUF_BUFG;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state_reg[12]_0 ;
  wire \FSM_onehot_current_state_reg[1]_0 ;
  wire \FSM_onehot_current_state_reg[9]_0 ;
  wire \FSM_onehot_current_state_reg[9]_1 ;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire \FSM_onehot_current_state_reg_n_0_[10] ;
  wire \FSM_onehot_current_state_reg_n_0_[11] ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire \FSM_onehot_current_state_reg_n_0_[3] ;
  wire \FSM_onehot_current_state_reg_n_0_[4] ;
  wire \FSM_onehot_current_state_reg_n_0_[5] ;
  wire \FSM_onehot_current_state_reg_n_0_[6] ;
  wire \FSM_onehot_current_state_reg_n_0_[7] ;
  wire \FSM_onehot_current_state_reg_n_0_[8] ;
  wire \FSM_onehot_current_state_reg_n_0_[9] ;
  wire counter;
  wire ctrl;
  wire ctrl1;
  wire ctrl_reg;
  wire finished;
  wire got_first_add_reg;
  wire got_first_add_reg_0;
  wire i_clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire i_start_IBUF;
  wire start_comparing;
  wire start_comparing0;
  wire start_comparing_i_2_n_0;
  wire [1:0]zone;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(ctrl),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_current_state[0]_i_2 
       (.I0(i_rst_IBUF),
        .I1(i_start_IBUF),
        .O(ctrl1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg[1]_0 ),
        .I1(finished),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .PRE(ctrl1),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl1),
        .D(\FSM_onehot_current_state_reg_n_0_[9] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl1),
        .D(\FSM_onehot_current_state_reg_n_0_[10] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[11] ));
  (* FSM_ENCODED_STATES = "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl1),
        .D(\FSM_onehot_current_state_reg_n_0_[11] ),
        .Q(finished));
  (* FSM_ENCODED_STATES = "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl1),
        .D(\FSM_onehot_current_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_current_state_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl1),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl1),
        .D(\FSM_onehot_current_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl1),
        .D(\FSM_onehot_current_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl1),
        .D(\FSM_onehot_current_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl1),
        .D(\FSM_onehot_current_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl1),
        .D(\FSM_onehot_current_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl1),
        .D(\FSM_onehot_current_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "s3:0000000100000,s4:0000001000000,s2:0000000010000,sfinished:1000000000000,sdefault:0000000000001,swaittwo:0100000000000,s1:0000000001000,s0:0000000000100,swaitone:0010000000000,s7:0001000000000,s6:0000100000000,s8:0000000000010,s5:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl1),
        .D(\FSM_onehot_current_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h00510000)) 
    ctrl_i_1__0
       (.I0(finished),
        .I1(start_comparing),
        .I2(ctrl_reg),
        .I3(i_rst_IBUF),
        .I4(i_start_IBUF),
        .O(\FSM_onehot_current_state_reg[12]_0 ));
  LUT4 #(
    .INIT(16'hFF20)) 
    got_first_add_i_1
       (.I0(i_start_IBUF),
        .I1(i_rst_IBUF),
        .I2(zone[1]),
        .I3(got_first_add_reg_0),
        .O(got_first_add_reg));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \o_address[0]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I2(finished),
        .I3(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[7] ),
        .O(\FSM_onehot_current_state_reg[9]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h55555554)) 
    \o_address[1]_i_1 
       (.I0(finished),
        .I1(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[9] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \o_address[2]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I4(finished),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \o_address[3]_i_2 
       (.I0(finished),
        .I1(\FSM_onehot_current_state_reg[1]_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(zone[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \o_zone[2]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[8] ),
        .O(zone[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \out_ffd[7]_i_1 
       (.I0(got_first_add_reg_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_current_state_reg[1]_0 ),
        .I5(finished),
        .O(E));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    start_comparing_i_1
       (.I0(counter),
        .I1(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I3(start_comparing_i_2_n_0),
        .I4(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_current_state_reg[9]_0 ),
        .O(start_comparing0));
  LUT2 #(
    .INIT(4'hE)) 
    start_comparing_i_2
       (.I0(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[7] ),
        .O(start_comparing_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    start_comparing_i_3
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\FSM_onehot_current_state_reg[9]_0 ));
endmodule

(* NotValidForBitStream *)
module project_reti_logiche
   (i_clk,
    i_start,
    i_rst,
    i_data,
    o_address,
    o_done,
    o_en,
    o_we,
    o_data);
  input i_clk;
  input i_start;
  input i_rst;
  input [7:0]i_data;
  output [15:0]o_address;
  output o_done;
  output o_en;
  output o_we;
  output [7:0]o_data;

  wire cac_controller;
  wire counter__0;
  wire counter_n_10;
  wire counter_n_11;
  wire counter_n_12;
  wire counter_n_2;
  wire counter_n_6;
  wire counter_n_7;
  wire counter_n_8;
  wire counter_n_9;
  wire ctrl;
  wire ctrl1;
  wire finished;
  wire [5:5]fixed;
  wire fixed_memory_n_0;
  wire fixed_memory_n_1;
  wire fixed_memory_n_2;
  wire fixed_memory_n_3;
  wire fixed_memory_n_4;
  wire fixed_memory_n_5;
  wire fixed_memory_n_6;
  wire fixed_memory_n_7;
  wire get;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire [7:0]i_data;
  wire [7:0]i_data_IBUF;
  wire i_rst;
  wire i_rst_IBUF;
  wire i_start;
  wire i_start_IBUF;
  wire logic_controller_n_4;
  wire [15:0]o_address;
  wire [3:0]o_address_OBUF;
  wire [7:0]o_data;
  wire [7:0]o_data_OBUF;
  wire o_done;
  wire o_en;
  wire o_en_OBUF;
  wire o_we;
  wire o_we_OBUF;
  wire [0:0]o_zone;
  wire start_comparing;
  wire start_comparing0;
  wire variable_memory_n_0;
  wire variable_memory_n_1;
  wire variable_memory_n_10;
  wire variable_memory_n_11;
  wire variable_memory_n_3;
  wire variable_memory_n_4;
  wire variable_memory_n_5;
  wire variable_memory_n_6;
  wire variable_memory_n_7;
  wire variable_memory_n_8;
  wire variable_memory_n_9;
  wire [3:2]zone;

initial begin
 $sdf_annotate("auto_tb_time_synth.sdf",,,,"tool_control");
end
  compare_and_codify arithmetic_function
       (.D({counter_n_7,counter_n_8}),
        .Q(o_we_OBUF),
        .SR(fixed_memory_n_0),
        .cac_controller(cac_controller),
        .ctrl1(ctrl1),
        .ctrl_reg_0(counter_n_11),
        .finished(finished),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .\o_address_reg[0]_0 (counter_n_9),
        .\o_address_reg[3]_0 (o_address_OBUF),
        .\o_data_reg[6]_0 ({fixed_memory_n_2,variable_memory_n_1,fixed_memory_n_3,fixed_memory_n_4,fixed_memory_n_5,fixed_memory_n_6,fixed_memory_n_7}),
        .\o_data_reg[7]_0 (o_data_OBUF),
        .\o_data_reg[7]_1 (logic_controller_n_4),
        .o_done_reg_0(fixed_memory_n_1),
        .o_en_OBUF(o_en_OBUF),
        .start_comparing(start_comparing),
        .zone(zone[3]));
  fsm_counter counter
       (.D({counter_n_7,counter_n_8}),
        .E(counter_n_12),
        .\FSM_onehot_current_state_reg[12]_0 (counter_n_11),
        .\FSM_onehot_current_state_reg[1]_0 (counter_n_6),
        .\FSM_onehot_current_state_reg[9]_0 (counter_n_2),
        .\FSM_onehot_current_state_reg[9]_1 (counter_n_9),
        .counter(counter__0),
        .ctrl(ctrl),
        .ctrl1(ctrl1),
        .ctrl_reg(fixed_memory_n_1),
        .finished(finished),
        .got_first_add_reg(counter_n_10),
        .got_first_add_reg_0(variable_memory_n_0),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .i_start_IBUF(i_start_IBUF),
        .start_comparing(start_comparing),
        .start_comparing0(start_comparing0),
        .zone(zone));
  flipflop_td fixed_memory
       (.D(i_data_IBUF[6:0]),
        .E(get),
        .Q(fixed),
        .S(variable_memory_n_3),
        .SR(fixed_memory_n_0),
        .finished(finished),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .i_start_IBUF(i_start_IBUF),
        .\o_data_reg[6] (variable_memory_n_4),
        .o_done_reg_i_3_0({variable_memory_n_5,variable_memory_n_6,variable_memory_n_7,variable_memory_n_8,variable_memory_n_9,variable_memory_n_10,variable_memory_n_11}),
        .o_zone(o_zone),
        .\out_ffd_reg[3]_0 (fixed_memory_n_1),
        .\out_ffd_reg[6]_0 (ctrl1),
        .start_comparing(start_comparing),
        .start_comparing_reg({fixed_memory_n_2,fixed_memory_n_3,fixed_memory_n_4,fixed_memory_n_5,fixed_memory_n_6,fixed_memory_n_7}));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  IBUF \i_data_IBUF[0]_inst 
       (.I(i_data[0]),
        .O(i_data_IBUF[0]));
  IBUF \i_data_IBUF[1]_inst 
       (.I(i_data[1]),
        .O(i_data_IBUF[1]));
  IBUF \i_data_IBUF[2]_inst 
       (.I(i_data[2]),
        .O(i_data_IBUF[2]));
  IBUF \i_data_IBUF[3]_inst 
       (.I(i_data[3]),
        .O(i_data_IBUF[3]));
  IBUF \i_data_IBUF[4]_inst 
       (.I(i_data[4]),
        .O(i_data_IBUF[4]));
  IBUF \i_data_IBUF[5]_inst 
       (.I(i_data[5]),
        .O(i_data_IBUF[5]));
  IBUF \i_data_IBUF[6]_inst 
       (.I(i_data[6]),
        .O(i_data_IBUF[6]));
  IBUF \i_data_IBUF[7]_inst 
       (.I(i_data[7]),
        .O(i_data_IBUF[7]));
  IBUF i_rst_IBUF_inst
       (.I(i_rst),
        .O(i_rst_IBUF));
  IBUF i_start_IBUF_inst
       (.I(i_start),
        .O(i_start_IBUF));
  clock_controller logic_controller
       (.E(get),
        .SR(ctrl1),
        .cac_controller(cac_controller),
        .counter(counter__0),
        .ctrl(ctrl),
        .get_reg_0(counter_n_6),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .\o_data_reg[7] (fixed_memory_n_1),
        .start_comparing(start_comparing),
        .start_comparing0(start_comparing0),
        .start_comparing_reg_0(logic_controller_n_4));
  OBUF \o_address_OBUF[0]_inst 
       (.I(o_address_OBUF[0]),
        .O(o_address[0]));
  OBUF \o_address_OBUF[10]_inst 
       (.I(1'b0),
        .O(o_address[10]));
  OBUF \o_address_OBUF[11]_inst 
       (.I(1'b0),
        .O(o_address[11]));
  OBUF \o_address_OBUF[12]_inst 
       (.I(1'b0),
        .O(o_address[12]));
  OBUF \o_address_OBUF[13]_inst 
       (.I(1'b0),
        .O(o_address[13]));
  OBUF \o_address_OBUF[14]_inst 
       (.I(1'b0),
        .O(o_address[14]));
  OBUF \o_address_OBUF[15]_inst 
       (.I(1'b0),
        .O(o_address[15]));
  OBUF \o_address_OBUF[1]_inst 
       (.I(o_address_OBUF[1]),
        .O(o_address[1]));
  OBUF \o_address_OBUF[2]_inst 
       (.I(o_address_OBUF[2]),
        .O(o_address[2]));
  OBUF \o_address_OBUF[3]_inst 
       (.I(o_address_OBUF[3]),
        .O(o_address[3]));
  OBUF \o_address_OBUF[4]_inst 
       (.I(1'b0),
        .O(o_address[4]));
  OBUF \o_address_OBUF[5]_inst 
       (.I(1'b0),
        .O(o_address[5]));
  OBUF \o_address_OBUF[6]_inst 
       (.I(1'b0),
        .O(o_address[6]));
  OBUF \o_address_OBUF[7]_inst 
       (.I(1'b0),
        .O(o_address[7]));
  OBUF \o_address_OBUF[8]_inst 
       (.I(1'b0),
        .O(o_address[8]));
  OBUF \o_address_OBUF[9]_inst 
       (.I(1'b0),
        .O(o_address[9]));
  OBUF \o_data_OBUF[0]_inst 
       (.I(o_data_OBUF[0]),
        .O(o_data[0]));
  OBUF \o_data_OBUF[1]_inst 
       (.I(o_data_OBUF[1]),
        .O(o_data[1]));
  OBUF \o_data_OBUF[2]_inst 
       (.I(o_data_OBUF[2]),
        .O(o_data[2]));
  OBUF \o_data_OBUF[3]_inst 
       (.I(o_data_OBUF[3]),
        .O(o_data[3]));
  OBUF \o_data_OBUF[4]_inst 
       (.I(o_data_OBUF[4]),
        .O(o_data[4]));
  OBUF \o_data_OBUF[5]_inst 
       (.I(o_data_OBUF[5]),
        .O(o_data[5]));
  OBUF \o_data_OBUF[6]_inst 
       (.I(o_data_OBUF[6]),
        .O(o_data[6]));
  OBUF \o_data_OBUF[7]_inst 
       (.I(o_data_OBUF[7]),
        .O(o_data[7]));
  OBUF o_done_OBUF_inst
       (.I(o_we_OBUF),
        .O(o_done));
  OBUF o_en_OBUF_inst
       (.I(o_en_OBUF),
        .O(o_en));
  OBUF o_we_OBUF_inst
       (.I(o_we_OBUF),
        .O(o_we));
  flipflop_variable variable_memory
       (.D(i_data_IBUF),
        .E(counter_n_12),
        .Q(fixed),
        .S(variable_memory_n_3),
        .ctrl1(ctrl1),
        .finished(finished),
        .got_first_add_reg_0(variable_memory_n_0),
        .got_first_add_reg_1(counter_n_10),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .i_start_IBUF(i_start_IBUF),
        .\o_data_reg[5] (fixed_memory_n_1),
        .\o_zone_reg[0]_0 (variable_memory_n_1),
        .\o_zone_reg[0]_1 (o_zone),
        .\o_zone_reg[0]_2 (counter_n_9),
        .\o_zone_reg[1]_0 (counter_n_2),
        .\o_zone_reg[2]_0 (variable_memory_n_4),
        .\out_ffd_reg[6]_0 ({variable_memory_n_5,variable_memory_n_6,variable_memory_n_7,variable_memory_n_8,variable_memory_n_9,variable_memory_n_10,variable_memory_n_11}),
        .start_comparing(start_comparing),
        .zone(zone));
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
