// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Aug  8 18:56:43 2020
// Host        : LAPTOP-CISO1L93 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/Proggetti Reti
//               Logiche/10619348_RL_proj/10619348_RL_proj.sim/sim_1/synth/timing/xsim/no_Wz_time_synth.v}
// Design      : project_reti_logiche
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module clock_controller
   (start_comparing,
    counter,
    ctrl,
    start_comparing_reg_0,
    start_comparing_reg_1,
    i_clk_IBUF_BUFG,
    ctrl_reg_0,
    i_rst_IBUF,
    i_start_IBUF,
    finished,
    \o_data_reg[7] ,
    ctrl_reg_1,
    compare_fsm);
  output start_comparing;
  output counter;
  output ctrl;
  output start_comparing_reg_0;
  output start_comparing_reg_1;
  input i_clk_IBUF_BUFG;
  input ctrl_reg_0;
  input i_rst_IBUF;
  input i_start_IBUF;
  input finished;
  input \o_data_reg[7] ;
  input ctrl_reg_1;
  input compare_fsm;

  wire compare_fsm;
  wire counter;
  wire counter_i_1_n_0;
  wire ctrl;
  wire ctrl_reg_0;
  wire ctrl_reg_1;
  wire finished;
  wire i_clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire i_start_IBUF;
  wire \o_data_reg[7] ;
  wire start_comparing;
  wire start_comparing_i_1_n_0;
  wire start_comparing_reg_0;
  wire start_comparing_reg_1;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    counter_i_1
       (.I0(counter),
        .I1(i_start_IBUF),
        .I2(i_rst_IBUF),
        .O(counter_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    counter_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_i_1_n_0),
        .Q(counter),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00005D00)) 
    ctrl_i_1
       (.I0(start_comparing),
        .I1(ctrl_reg_1),
        .I2(finished),
        .I3(i_start_IBUF),
        .I4(i_rst_IBUF),
        .O(start_comparing_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    ctrl_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ctrl_reg_0),
        .Q(ctrl),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0444)) 
    \o_data[7]_i_1 
       (.I0(i_rst_IBUF),
        .I1(i_start_IBUF),
        .I2(start_comparing),
        .I3(finished),
        .I4(\o_data_reg[7] ),
        .O(start_comparing_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBA8A8A8A)) 
    start_comparing_i_1
       (.I0(start_comparing),
        .I1(i_rst_IBUF),
        .I2(i_start_IBUF),
        .I3(counter),
        .I4(compare_fsm),
        .O(start_comparing_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start_comparing_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(start_comparing_i_1_n_0),
        .Q(start_comparing),
        .R(1'b0));
endmodule

module compare_and_codify
   (o_we_OBUF,
    o_en_OBUF,
    ctrl_reg_0,
    o_address_OBUF,
    o_data_OBUF,
    o_done_reg_0,
    i_clk_IBUF_BUFG,
    ctrl_reg_1,
    ctrl12_out,
    counter,
    i_start_IBUF,
    i_rst_IBUF,
    \o_address_reg[3]_0 ,
    \o_address_reg[2]_0 ,
    \o_address_reg[1]_0 ,
    \o_address_reg[0]_0 ,
    \o_data_reg[7]_0 ,
    \o_data_reg[6]_0 ,
    \o_data_reg[5]_0 ,
    \o_data_reg[4]_0 ,
    \o_data_reg[3]_0 ,
    \o_data_reg[2]_0 ,
    \o_data_reg[1]_0 ,
    \o_data_reg[0]_0 );
  output o_we_OBUF;
  output o_en_OBUF;
  output ctrl_reg_0;
  output [3:0]o_address_OBUF;
  output [7:0]o_data_OBUF;
  input o_done_reg_0;
  input i_clk_IBUF_BUFG;
  input ctrl_reg_1;
  input ctrl12_out;
  input counter;
  input i_start_IBUF;
  input i_rst_IBUF;
  input \o_address_reg[3]_0 ;
  input \o_address_reg[2]_0 ;
  input \o_address_reg[1]_0 ;
  input \o_address_reg[0]_0 ;
  input \o_data_reg[7]_0 ;
  input \o_data_reg[6]_0 ;
  input \o_data_reg[5]_0 ;
  input \o_data_reg[4]_0 ;
  input \o_data_reg[3]_0 ;
  input \o_data_reg[2]_0 ;
  input \o_data_reg[1]_0 ;
  input \o_data_reg[0]_0 ;

  wire cac_controller;
  wire counter;
  wire ctrl12_out;
  wire ctrl_reg_0;
  wire ctrl_reg_1;
  wire i_clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire i_start_IBUF;
  wire [3:0]o_address_OBUF;
  wire \o_address_reg[0]_0 ;
  wire \o_address_reg[1]_0 ;
  wire \o_address_reg[2]_0 ;
  wire \o_address_reg[3]_0 ;
  wire [7:0]o_data_OBUF;
  wire \o_data_reg[0]_0 ;
  wire \o_data_reg[1]_0 ;
  wire \o_data_reg[2]_0 ;
  wire \o_data_reg[3]_0 ;
  wire \o_data_reg[4]_0 ;
  wire \o_data_reg[5]_0 ;
  wire \o_data_reg[6]_0 ;
  wire \o_data_reg[7]_0 ;
  wire o_done_reg_0;
  wire o_en_OBUF;
  wire o_we_OBUF;

  LUT4 #(
    .INIT(16'h0080)) 
    ctrl_i_1__0
       (.I0(cac_controller),
        .I1(counter),
        .I2(i_start_IBUF),
        .I3(i_rst_IBUF),
        .O(ctrl_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    ctrl_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ctrl_reg_1),
        .Q(cac_controller),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_address_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_address_reg[0]_0 ),
        .Q(o_address_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_address_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_address_reg[1]_0 ),
        .Q(o_address_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_address_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_address_reg[2]_0 ),
        .Q(o_address_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_address_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_address_reg[3]_0 ),
        .Q(o_address_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_data_reg[0]_0 ),
        .Q(o_data_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_data_reg[1]_0 ),
        .Q(o_data_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_data_reg[2]_0 ),
        .Q(o_data_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_data_reg[3]_0 ),
        .Q(o_data_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_data_reg[4]_0 ),
        .Q(o_data_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_data_reg[5]_0 ),
        .Q(o_data_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_data_reg[6]_0 ),
        .Q(o_data_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_data_reg[7]_0 ),
        .Q(o_data_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    o_done_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(o_done_reg_0),
        .Q(o_we_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    o_en_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b1),
        .Q(o_en_OBUF),
        .R(ctrl12_out));
endmodule

module flipflop_td
   (\out_ffd_reg[0]_0 ,
    i_start,
    \out_ffd_reg[1]_0 ,
    \out_ffd_reg[2]_0 ,
    \out_ffd_reg[3]_0 ,
    start_comparing_reg,
    \out_ffd_reg[6]_0 ,
    \out_ffd_reg[5]_0 ,
    \out_ffd_reg[6]_1 ,
    start_comparing_reg_0,
    finished,
    start_comparing,
    \o_data_reg[2] ,
    o_zone,
    ctrl12_out,
    \o_data_reg[6] ,
    i_start_IBUF,
    i_rst_IBUF,
    S,
    Q,
    E,
    D,
    i_clk_IBUF_BUFG);
  output \out_ffd_reg[0]_0 ;
  output i_start;
  output \out_ffd_reg[1]_0 ;
  output \out_ffd_reg[2]_0 ;
  output \out_ffd_reg[3]_0 ;
  output start_comparing_reg;
  output \out_ffd_reg[6]_0 ;
  output \out_ffd_reg[5]_0 ;
  output \out_ffd_reg[6]_1 ;
  output start_comparing_reg_0;
  input finished;
  input start_comparing;
  input \o_data_reg[2] ;
  input [2:0]o_zone;
  input ctrl12_out;
  input \o_data_reg[6] ;
  input i_start_IBUF;
  input i_rst_IBUF;
  input [0:0]S;
  input [6:0]Q;
  input [0:0]E;
  input [6:0]D;
  input i_clk_IBUF_BUFG;

  wire [6:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire [0:0]S;
  wire ctrl12_out;
  wire finished;
  wire i_clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire i_start;
  wire i_start_IBUF;
  wire \o_data[0]_i_2_n_0 ;
  wire \o_data[1]_i_2_n_0 ;
  wire \o_data[3]_i_3_n_0 ;
  wire \o_data[3]_i_4_n_0 ;
  wire \o_data[3]_i_5_n_0 ;
  wire \o_data[3]_i_6_n_0 ;
  wire \o_data[4]_i_5_n_0 ;
  wire \o_data[4]_i_6_n_0 ;
  wire \o_data[4]_i_7_n_0 ;
  wire \o_data[6]_i_2_n_0 ;
  wire \o_data_reg[2] ;
  wire \o_data_reg[3]_i_2_n_0 ;
  wire \o_data_reg[3]_i_2_n_1 ;
  wire \o_data_reg[3]_i_2_n_2 ;
  wire \o_data_reg[3]_i_2_n_3 ;
  wire \o_data_reg[3]_i_2_n_4 ;
  wire \o_data_reg[3]_i_2_n_5 ;
  wire \o_data_reg[3]_i_2_n_6 ;
  wire \o_data_reg[3]_i_2_n_7 ;
  wire \o_data_reg[4]_i_3_n_1 ;
  wire \o_data_reg[4]_i_3_n_2 ;
  wire \o_data_reg[4]_i_3_n_3 ;
  wire \o_data_reg[4]_i_3_n_4 ;
  wire \o_data_reg[4]_i_3_n_5 ;
  wire \o_data_reg[4]_i_3_n_6 ;
  wire \o_data_reg[4]_i_3_n_7 ;
  wire \o_data_reg[6] ;
  wire [2:0]o_zone;
  wire [6:0]out_ffd;
  wire \out_ffd_reg[0]_0 ;
  wire \out_ffd_reg[1]_0 ;
  wire \out_ffd_reg[2]_0 ;
  wire \out_ffd_reg[3]_0 ;
  wire \out_ffd_reg[5]_0 ;
  wire \out_ffd_reg[6]_0 ;
  wire \out_ffd_reg[6]_1 ;
  wire start_comparing;
  wire start_comparing_reg;
  wire start_comparing_reg_0;
  wire [3:3]\NLW_o_data_reg[4]_i_3_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \o_data[0]_i_1 
       (.I0(\o_data[6]_i_2_n_0 ),
        .I1(out_ffd[0]),
        .I2(finished),
        .I3(start_comparing),
        .I4(i_start),
        .I5(\o_data[0]_i_2_n_0 ),
        .O(\out_ffd_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_data[0]_i_2 
       (.I0(\o_data_reg[3]_i_2_n_6 ),
        .I1(start_comparing),
        .I2(\o_data_reg[3]_i_2_n_7 ),
        .O(\o_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA200A200A200)) 
    \o_data[1]_i_1 
       (.I0(\o_data[6]_i_2_n_0 ),
        .I1(finished),
        .I2(out_ffd[1]),
        .I3(start_comparing),
        .I4(i_start),
        .I5(\o_data[1]_i_2_n_0 ),
        .O(\out_ffd_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \o_data[1]_i_2 
       (.I0(\o_data_reg[3]_i_2_n_6 ),
        .I1(\o_data_reg[3]_i_2_n_7 ),
        .I2(start_comparing),
        .O(\o_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBAAABAAABAAA)) 
    \o_data[2]_i_1 
       (.I0(\o_data_reg[2] ),
        .I1(\o_data_reg[3]_i_2_n_7 ),
        .I2(\o_data_reg[3]_i_2_n_6 ),
        .I3(i_start),
        .I4(out_ffd[2]),
        .I5(\o_data[6]_i_2_n_0 ),
        .O(\out_ffd_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \o_data[3]_i_1 
       (.I0(\o_data_reg[2] ),
        .I1(\o_data_reg[3]_i_2_n_6 ),
        .I2(\o_data_reg[3]_i_2_n_7 ),
        .I3(i_start),
        .I4(out_ffd[3]),
        .I5(\o_data[6]_i_2_n_0 ),
        .O(\out_ffd_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_data[3]_i_3 
       (.I0(out_ffd[3]),
        .I1(Q[3]),
        .O(\o_data[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_data[3]_i_4 
       (.I0(out_ffd[2]),
        .I1(Q[2]),
        .O(\o_data[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_data[3]_i_5 
       (.I0(out_ffd[1]),
        .I1(Q[1]),
        .O(\o_data[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_data[3]_i_6 
       (.I0(out_ffd[0]),
        .I1(Q[0]),
        .O(\o_data[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF775F5F)) 
    \o_data[4]_i_1 
       (.I0(start_comparing),
        .I1(finished),
        .I2(o_zone[0]),
        .I3(out_ffd[4]),
        .I4(\out_ffd_reg[6]_0 ),
        .I5(ctrl12_out),
        .O(start_comparing_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \o_data[4]_i_2 
       (.I0(\o_data_reg[4]_i_3_n_5 ),
        .I1(\o_data_reg[4]_i_3_n_4 ),
        .I2(\o_data_reg[4]_i_3_n_7 ),
        .I3(\o_data_reg[4]_i_3_n_6 ),
        .I4(\o_data_reg[3]_i_2_n_4 ),
        .I5(\o_data_reg[3]_i_2_n_5 ),
        .O(\out_ffd_reg[6]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_data[4]_i_5 
       (.I0(out_ffd[6]),
        .I1(Q[6]),
        .O(\o_data[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_data[4]_i_6 
       (.I0(out_ffd[5]),
        .I1(Q[5]),
        .O(\o_data[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_data[4]_i_7 
       (.I0(out_ffd[4]),
        .I1(Q[4]),
        .O(\o_data[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF88888F8)) 
    \o_data[5]_i_1 
       (.I0(\o_data[6]_i_2_n_0 ),
        .I1(out_ffd[5]),
        .I2(i_start),
        .I3(o_zone[0]),
        .I4(o_zone[1]),
        .I5(\o_data_reg[2] ),
        .O(\out_ffd_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8FFF8F8F8F8)) 
    \o_data[6]_i_1 
       (.I0(\o_data[6]_i_2_n_0 ),
        .I1(out_ffd[6]),
        .I2(\o_data_reg[2] ),
        .I3(o_zone[2]),
        .I4(\o_data_reg[6] ),
        .I5(i_start),
        .O(\out_ffd_reg[6]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_data[6]_i_2 
       (.I0(\out_ffd_reg[6]_0 ),
        .I1(i_start_IBUF),
        .I2(i_rst_IBUF),
        .O(\o_data[6]_i_2_n_0 ));
  CARRY4 \o_data_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\o_data_reg[3]_i_2_n_0 ,\o_data_reg[3]_i_2_n_1 ,\o_data_reg[3]_i_2_n_2 ,\o_data_reg[3]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI(out_ffd[3:0]),
        .O({\o_data_reg[3]_i_2_n_4 ,\o_data_reg[3]_i_2_n_5 ,\o_data_reg[3]_i_2_n_6 ,\o_data_reg[3]_i_2_n_7 }),
        .S({\o_data[3]_i_3_n_0 ,\o_data[3]_i_4_n_0 ,\o_data[3]_i_5_n_0 ,\o_data[3]_i_6_n_0 }));
  CARRY4 \o_data_reg[4]_i_3 
       (.CI(\o_data_reg[3]_i_2_n_0 ),
        .CO({\NLW_o_data_reg[4]_i_3_CO_UNCONNECTED [3],\o_data_reg[4]_i_3_n_1 ,\o_data_reg[4]_i_3_n_2 ,\o_data_reg[4]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,out_ffd[6:4]}),
        .O({\o_data_reg[4]_i_3_n_4 ,\o_data_reg[4]_i_3_n_5 ,\o_data_reg[4]_i_3_n_6 ,\o_data_reg[4]_i_3_n_7 }),
        .S({S,\o_data[4]_i_5_n_0 ,\o_data[4]_i_6_n_0 ,\o_data[4]_i_7_n_0 }));
  LUT5 #(
    .INIT(32'hAAEA0000)) 
    o_done_i_1
       (.I0(i_start),
        .I1(finished),
        .I2(i_start_IBUF),
        .I3(i_rst_IBUF),
        .I4(start_comparing),
        .O(start_comparing_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    o_done_i_2
       (.I0(\out_ffd_reg[6]_0 ),
        .I1(i_start_IBUF),
        .I2(i_rst_IBUF),
        .O(i_start));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(out_ffd[0]),
        .R(ctrl12_out));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(out_ffd[1]),
        .R(ctrl12_out));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(out_ffd[2]),
        .R(ctrl12_out));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(out_ffd[3]),
        .R(ctrl12_out));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(out_ffd[4]),
        .R(ctrl12_out));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(out_ffd[5]),
        .R(ctrl12_out));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(out_ffd[6]),
        .R(ctrl12_out));
endmodule

module flipflop_variable
   (S,
    \o_zone_reg[0]_0 ,
    o_zone,
    Q,
    ctrl12_out,
    E,
    D,
    i_clk_IBUF_BUFG,
    \o_zone_reg[2]_0 ,
    \o_zone_reg[2]_1 ,
    \o_zone_reg[2]_2 ,
    \o_zone_reg[2]_3 ,
    \o_zone_reg[2]_4 ,
    \o_zone_reg[1]_0 ,
    \o_zone_reg[1]_1 ,
    \o_zone_reg[0]_1 );
  output [0:0]S;
  output \o_zone_reg[0]_0 ;
  output [2:0]o_zone;
  output [6:0]Q;
  input ctrl12_out;
  input [0:0]E;
  input [7:0]D;
  input i_clk_IBUF_BUFG;
  input \o_zone_reg[2]_0 ;
  input \o_zone_reg[2]_1 ;
  input \o_zone_reg[2]_2 ;
  input \o_zone_reg[2]_3 ;
  input \o_zone_reg[2]_4 ;
  input \o_zone_reg[1]_0 ;
  input \o_zone_reg[1]_1 ;
  input \o_zone_reg[0]_1 ;

  wire [7:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire [0:0]S;
  wire ctrl12_out;
  wire i_clk_IBUF_BUFG;
  wire [2:0]o_zone;
  wire \o_zone[0]_i_1_n_0 ;
  wire \o_zone[1]_i_1_n_0 ;
  wire \o_zone[2]_i_1_n_0 ;
  wire \o_zone_reg[0]_0 ;
  wire \o_zone_reg[0]_1 ;
  wire \o_zone_reg[1]_0 ;
  wire \o_zone_reg[1]_1 ;
  wire \o_zone_reg[2]_0 ;
  wire \o_zone_reg[2]_1 ;
  wire \o_zone_reg[2]_2 ;
  wire \o_zone_reg[2]_3 ;
  wire \o_zone_reg[2]_4 ;
  wire \out_ffd_reg_n_0_[7] ;

  LUT1 #(
    .INIT(2'h1)) 
    \o_data[4]_i_4 
       (.I0(\out_ffd_reg_n_0_[7] ),
        .O(S));
  LUT2 #(
    .INIT(4'hE)) 
    \o_data[6]_i_3 
       (.I0(o_zone[0]),
        .I1(o_zone[1]),
        .O(\o_zone_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    \o_zone[0]_i_1 
       (.I0(\o_zone_reg[1]_0 ),
        .I1(\o_zone_reg[0]_1 ),
        .I2(\o_zone_reg[2]_2 ),
        .I3(\o_zone_reg[2]_0 ),
        .I4(\o_zone_reg[2]_4 ),
        .I5(o_zone[0]),
        .O(\o_zone[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    \o_zone[1]_i_1 
       (.I0(\o_zone_reg[1]_0 ),
        .I1(\o_zone_reg[1]_1 ),
        .I2(\o_zone_reg[2]_2 ),
        .I3(\o_zone_reg[2]_3 ),
        .I4(\o_zone_reg[2]_4 ),
        .I5(o_zone[1]),
        .O(\o_zone[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    \o_zone[2]_i_1 
       (.I0(\o_zone_reg[2]_0 ),
        .I1(\o_zone_reg[2]_1 ),
        .I2(\o_zone_reg[2]_2 ),
        .I3(\o_zone_reg[2]_3 ),
        .I4(\o_zone_reg[2]_4 ),
        .I5(o_zone[2]),
        .O(\o_zone[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_zone_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_zone[0]_i_1_n_0 ),
        .Q(o_zone[0]),
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
        .Q(Q[0]),
        .R(ctrl12_out));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(ctrl12_out));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(ctrl12_out));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(ctrl12_out));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(ctrl12_out));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(ctrl12_out));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(ctrl12_out));
  FDRE #(
    .INIT(1'b0)) 
    \out_ffd_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(\out_ffd_reg_n_0_[7] ),
        .R(ctrl12_out));
endmodule

module fsm_counter
   (E,
    compare_fsm,
    \FSM_onehot_current_state_reg[3]_0 ,
    finished,
    start_comparing_reg,
    \FSM_onehot_current_state_reg[0]_0 ,
    ctrl12_out,
    \FSM_onehot_current_state_reg[1]_0 ,
    \FSM_onehot_current_state_reg[8]_0 ,
    \FSM_onehot_current_state_reg[8]_1 ,
    \FSM_onehot_current_state_reg[9]_0 ,
    \FSM_onehot_current_state_reg[6]_0 ,
    \FSM_onehot_current_state_reg[7]_0 ,
    \FSM_onehot_current_state_reg[8]_2 ,
    \FSM_onehot_current_state_reg[4]_0 ,
    \FSM_onehot_current_state_reg[5]_0 ,
    \FSM_onehot_current_state_reg[1]_1 ,
    start_comparing,
    i_rst_IBUF,
    i_start_IBUF,
    \o_address_reg[0] ,
    \o_address_reg[2] ,
    ctrl,
    i_clk_IBUF_BUFG);
  output [0:0]E;
  output compare_fsm;
  output \FSM_onehot_current_state_reg[3]_0 ;
  output finished;
  output start_comparing_reg;
  output \FSM_onehot_current_state_reg[0]_0 ;
  output ctrl12_out;
  output \FSM_onehot_current_state_reg[1]_0 ;
  output \FSM_onehot_current_state_reg[8]_0 ;
  output \FSM_onehot_current_state_reg[8]_1 ;
  output \FSM_onehot_current_state_reg[9]_0 ;
  output \FSM_onehot_current_state_reg[6]_0 ;
  output \FSM_onehot_current_state_reg[7]_0 ;
  output \FSM_onehot_current_state_reg[8]_2 ;
  output \FSM_onehot_current_state_reg[4]_0 ;
  output \FSM_onehot_current_state_reg[5]_0 ;
  output [0:0]\FSM_onehot_current_state_reg[1]_1 ;
  input start_comparing;
  input i_rst_IBUF;
  input i_start_IBUF;
  input \o_address_reg[0] ;
  input \o_address_reg[2] ;
  input ctrl;
  input i_clk_IBUF_BUFG;

  wire [0:0]E;
  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state_reg[0]_0 ;
  wire \FSM_onehot_current_state_reg[1]_0 ;
  wire [0:0]\FSM_onehot_current_state_reg[1]_1 ;
  wire \FSM_onehot_current_state_reg[3]_0 ;
  wire \FSM_onehot_current_state_reg[4]_0 ;
  wire \FSM_onehot_current_state_reg[5]_0 ;
  wire \FSM_onehot_current_state_reg[6]_0 ;
  wire \FSM_onehot_current_state_reg[7]_0 ;
  wire \FSM_onehot_current_state_reg[8]_0 ;
  wire \FSM_onehot_current_state_reg[8]_1 ;
  wire \FSM_onehot_current_state_reg[8]_2 ;
  wire \FSM_onehot_current_state_reg[9]_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire \FSM_onehot_current_state_reg_n_0_[10] ;
  wire \FSM_onehot_current_state_reg_n_0_[1] ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire compare_fsm;
  wire ctrl;
  wire ctrl12_out;
  wire finished;
  wire finished_reg_i_1_n_0;
  wire get_reg_i_1_n_0;
  wire get_reg_i_2_n_0;
  wire get_variable_reg_i_1_n_0;
  wire i_clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire i_start_IBUF;
  wire \o_address_reg[0] ;
  wire \o_address_reg[2] ;
  wire start_comparing;
  wire start_comparing_reg;
  wire [0:0]zone;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(ctrl),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFACC)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(ctrl),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_current_state[2]_i_2 
       (.I0(i_rst_IBUF),
        .I1(i_start_IBUF),
        .O(ctrl12_out));
  (* FSM_ENCODED_STATES = "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .PRE(ctrl12_out),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl12_out),
        .D(\FSM_onehot_current_state_reg[9]_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl12_out),
        .D(\FSM_onehot_current_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(ctrl12_out),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl12_out),
        .D(\FSM_onehot_current_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_current_state_reg[3]_0 ));
  (* FSM_ENCODED_STATES = "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl12_out),
        .D(\FSM_onehot_current_state_reg[3]_0 ),
        .Q(\FSM_onehot_current_state_reg[4]_0 ));
  (* FSM_ENCODED_STATES = "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl12_out),
        .D(\FSM_onehot_current_state_reg[4]_0 ),
        .Q(\FSM_onehot_current_state_reg[5]_0 ));
  (* FSM_ENCODED_STATES = "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl12_out),
        .D(\FSM_onehot_current_state_reg[5]_0 ),
        .Q(\FSM_onehot_current_state_reg[6]_0 ));
  (* FSM_ENCODED_STATES = "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl12_out),
        .D(\FSM_onehot_current_state_reg[6]_0 ),
        .Q(\FSM_onehot_current_state_reg[7]_0 ));
  (* FSM_ENCODED_STATES = "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl12_out),
        .D(\FSM_onehot_current_state_reg[7]_0 ),
        .Q(\FSM_onehot_current_state_reg[8]_1 ));
  (* FSM_ENCODED_STATES = "s3:00000100000,s4:00001000000,s2:00000010000,sdefault:00000000001,s1:00000001000,s0:00000000100,swaitone:10000000000,s7:01000000000,s8:00000000010,s6:00100000000,s5:00010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(ctrl),
        .CLR(ctrl12_out),
        .D(\FSM_onehot_current_state_reg[8]_1 ),
        .Q(\FSM_onehot_current_state_reg[9]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    finished_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_current_state_reg_n_0_[10] ),
        .G(finished_reg_i_1_n_0),
        .GE(1'b1),
        .Q(finished));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    finished_reg_i_1
       (.I0(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(finished_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    get_reg
       (.CLR(1'b0),
        .D(get_reg_i_1_n_0),
        .G(get_reg_i_2_n_0),
        .GE(1'b1),
        .Q(E));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    get_reg_i_1
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(get_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    get_reg_i_2
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(get_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    get_variable_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_current_state_reg[3]_0 ),
        .G(get_variable_reg_i_1_n_0),
        .GE(1'b1),
        .Q(compare_fsm));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    get_variable_reg_i_1
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_current_state_reg[3]_0 ),
        .O(get_variable_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hCECCCECC0E000A00)) 
    \o_address[0]_i_1 
       (.I0(zone),
        .I1(start_comparing),
        .I2(i_rst_IBUF),
        .I3(i_start_IBUF),
        .I4(finished),
        .I5(\o_address_reg[0] ),
        .O(start_comparing_reg));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \o_address[0]_i_2 
       (.I0(\FSM_onehot_current_state_reg[5]_0 ),
        .I1(\FSM_onehot_current_state_reg[3]_0 ),
        .I2(\FSM_onehot_current_state_reg[9]_0 ),
        .I3(\FSM_onehot_current_state_reg[7]_0 ),
        .O(zone));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \o_address[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg[8]_1 ),
        .I1(\FSM_onehot_current_state_reg[9]_0 ),
        .I2(\FSM_onehot_current_state_reg[4]_0 ),
        .I3(\FSM_onehot_current_state_reg[5]_0 ),
        .I4(\o_address_reg[2] ),
        .O(\FSM_onehot_current_state_reg[8]_2 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \o_address[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg[8]_1 ),
        .I1(\FSM_onehot_current_state_reg[9]_0 ),
        .I2(\FSM_onehot_current_state_reg[6]_0 ),
        .I3(\FSM_onehot_current_state_reg[7]_0 ),
        .I4(\o_address_reg[2] ),
        .O(\FSM_onehot_current_state_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hF0FEF0FE00FE00EE)) 
    \o_address[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(start_comparing),
        .I3(ctrl12_out),
        .I4(finished),
        .I5(\o_address_reg[0] ),
        .O(\FSM_onehot_current_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \o_zone[2]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(i_start_IBUF),
        .I3(i_rst_IBUF),
        .O(\FSM_onehot_current_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \out_ffd[7]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\FSM_onehot_current_state_reg[1]_1 ));
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

  wire cac_n_2;
  wire cc_cont_n_3;
  wire cc_cont_n_4;
  wire compare_fsm;
  wire counter;
  wire ctrl;
  wire ctrl12_out;
  wire ffd_n_0;
  wire ffd_n_1;
  wire ffd_n_2;
  wire ffd_n_3;
  wire ffd_n_4;
  wire ffd_n_5;
  wire ffd_n_6;
  wire ffd_n_7;
  wire ffd_n_8;
  wire ffd_n_9;
  wire ffd_variable_n_1;
  wire ffd_variable_n_10;
  wire ffd_variable_n_11;
  wire ffd_variable_n_5;
  wire ffd_variable_n_6;
  wire ffd_variable_n_7;
  wire ffd_variable_n_8;
  wire ffd_variable_n_9;
  wire finished;
  wire fsm_c_n_10;
  wire fsm_c_n_11;
  wire fsm_c_n_12;
  wire fsm_c_n_13;
  wire fsm_c_n_14;
  wire fsm_c_n_15;
  wire fsm_c_n_16;
  wire fsm_c_n_2;
  wire fsm_c_n_4;
  wire fsm_c_n_5;
  wire fsm_c_n_7;
  wire fsm_c_n_8;
  wire fsm_c_n_9;
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
  wire [15:0]o_address;
  wire [3:0]o_address_OBUF;
  wire [7:0]o_data;
  wire [7:0]o_data_OBUF;
  wire o_done;
  wire o_en;
  wire o_en_OBUF;
  wire o_we;
  wire o_we_OBUF;
  wire [2:0]o_zone;
  wire [7:7]p_0_in;
  wire start_comparing;

initial begin
 $sdf_annotate("no_Wz_time_synth.sdf",,,,"tool_control");
end
  compare_and_codify cac
       (.counter(counter),
        .ctrl12_out(ctrl12_out),
        .ctrl_reg_0(cac_n_2),
        .ctrl_reg_1(cc_cont_n_4),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .i_start_IBUF(i_start_IBUF),
        .o_address_OBUF(o_address_OBUF),
        .\o_address_reg[0]_0 (fsm_c_n_4),
        .\o_address_reg[1]_0 (fsm_c_n_13),
        .\o_address_reg[2]_0 (fsm_c_n_8),
        .\o_address_reg[3]_0 (fsm_c_n_5),
        .o_data_OBUF(o_data_OBUF),
        .\o_data_reg[0]_0 (ffd_n_0),
        .\o_data_reg[1]_0 (ffd_n_2),
        .\o_data_reg[2]_0 (ffd_n_3),
        .\o_data_reg[3]_0 (ffd_n_4),
        .\o_data_reg[4]_0 (ffd_n_5),
        .\o_data_reg[5]_0 (ffd_n_7),
        .\o_data_reg[6]_0 (ffd_n_8),
        .\o_data_reg[7]_0 (cc_cont_n_3),
        .o_done_reg_0(ffd_n_9),
        .o_en_OBUF(o_en_OBUF),
        .o_we_OBUF(o_we_OBUF));
  clock_controller cc_cont
       (.compare_fsm(compare_fsm),
        .counter(counter),
        .ctrl(ctrl),
        .ctrl_reg_0(cac_n_2),
        .ctrl_reg_1(ffd_n_6),
        .finished(finished),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .i_start_IBUF(i_start_IBUF),
        .\o_data_reg[7] (ffd_n_1),
        .start_comparing(start_comparing),
        .start_comparing_reg_0(cc_cont_n_3),
        .start_comparing_reg_1(cc_cont_n_4));
  flipflop_td ffd
       (.D(i_data_IBUF[6:0]),
        .E(get),
        .Q({ffd_variable_n_5,ffd_variable_n_6,ffd_variable_n_7,ffd_variable_n_8,ffd_variable_n_9,ffd_variable_n_10,ffd_variable_n_11}),
        .S(p_0_in),
        .ctrl12_out(ctrl12_out),
        .finished(finished),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .i_start(ffd_n_1),
        .i_start_IBUF(i_start_IBUF),
        .\o_data_reg[2] (cc_cont_n_4),
        .\o_data_reg[6] (ffd_variable_n_1),
        .o_zone(o_zone),
        .\out_ffd_reg[0]_0 (ffd_n_0),
        .\out_ffd_reg[1]_0 (ffd_n_2),
        .\out_ffd_reg[2]_0 (ffd_n_3),
        .\out_ffd_reg[3]_0 (ffd_n_4),
        .\out_ffd_reg[5]_0 (ffd_n_7),
        .\out_ffd_reg[6]_0 (ffd_n_6),
        .\out_ffd_reg[6]_1 (ffd_n_8),
        .start_comparing(start_comparing),
        .start_comparing_reg(ffd_n_5),
        .start_comparing_reg_0(ffd_n_9));
  flipflop_variable ffd_variable
       (.D(i_data_IBUF),
        .E(fsm_c_n_16),
        .Q({ffd_variable_n_5,ffd_variable_n_6,ffd_variable_n_7,ffd_variable_n_8,ffd_variable_n_9,ffd_variable_n_10,ffd_variable_n_11}),
        .S(p_0_in),
        .ctrl12_out(ctrl12_out),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .o_zone(o_zone),
        .\o_zone_reg[0]_0 (ffd_variable_n_1),
        .\o_zone_reg[0]_1 (fsm_c_n_2),
        .\o_zone_reg[1]_0 (fsm_c_n_15),
        .\o_zone_reg[1]_1 (fsm_c_n_14),
        .\o_zone_reg[2]_0 (fsm_c_n_12),
        .\o_zone_reg[2]_1 (fsm_c_n_11),
        .\o_zone_reg[2]_2 (fsm_c_n_10),
        .\o_zone_reg[2]_3 (fsm_c_n_9),
        .\o_zone_reg[2]_4 (fsm_c_n_7));
  fsm_counter fsm_c
       (.E(get),
        .\FSM_onehot_current_state_reg[0]_0 (fsm_c_n_5),
        .\FSM_onehot_current_state_reg[1]_0 (fsm_c_n_7),
        .\FSM_onehot_current_state_reg[1]_1 (fsm_c_n_16),
        .\FSM_onehot_current_state_reg[3]_0 (fsm_c_n_2),
        .\FSM_onehot_current_state_reg[4]_0 (fsm_c_n_14),
        .\FSM_onehot_current_state_reg[5]_0 (fsm_c_n_15),
        .\FSM_onehot_current_state_reg[6]_0 (fsm_c_n_11),
        .\FSM_onehot_current_state_reg[7]_0 (fsm_c_n_12),
        .\FSM_onehot_current_state_reg[8]_0 (fsm_c_n_8),
        .\FSM_onehot_current_state_reg[8]_1 (fsm_c_n_9),
        .\FSM_onehot_current_state_reg[8]_2 (fsm_c_n_13),
        .\FSM_onehot_current_state_reg[9]_0 (fsm_c_n_10),
        .compare_fsm(compare_fsm),
        .ctrl(ctrl),
        .ctrl12_out(ctrl12_out),
        .finished(finished),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .i_start_IBUF(i_start_IBUF),
        .\o_address_reg[0] (ffd_n_1),
        .\o_address_reg[2] (cc_cont_n_4),
        .start_comparing(start_comparing),
        .start_comparing_reg(fsm_c_n_4));
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
