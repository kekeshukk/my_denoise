//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Wed Sep  7 13:58:27 2022
//Host        : DESKTOP-5JBVKGD running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (clk,
    cmd_out,
    cmd_vld,
    intr,
    pkg_rd_addr,
    pkg_rd_areq,
    pkg_rd_data,
    pkg_rd_en,
    pkg_rd_last,
    pkg_rd_size,
    pkg_wr_addr,
    pkg_wr_areq,
    pkg_wr_data,
    pkg_wr_en,
    pkg_wr_last,
    pkg_wr_size,
    rst_n);
  input clk;
  output [127:0]cmd_out;
  output cmd_vld;
  input [0:0]intr;
  input [31:0]pkg_rd_addr;
  input pkg_rd_areq;
  output [127:0]pkg_rd_data;
  output pkg_rd_en;
  output pkg_rd_last;
  input [31:0]pkg_rd_size;
  input [31:0]pkg_wr_addr;
  input pkg_wr_areq;
  input [127:0]pkg_wr_data;
  output pkg_wr_en;
  output pkg_wr_last;
  input [31:0]pkg_wr_size;
  output [0:0]rst_n;

  wire clk;
  wire [127:0]cmd_out;
  wire cmd_vld;
  wire [0:0]intr;
  wire [31:0]pkg_rd_addr;
  wire pkg_rd_areq;
  wire [127:0]pkg_rd_data;
  wire pkg_rd_en;
  wire pkg_rd_last;
  wire [31:0]pkg_rd_size;
  wire [31:0]pkg_wr_addr;
  wire pkg_wr_areq;
  wire [127:0]pkg_wr_data;
  wire pkg_wr_en;
  wire pkg_wr_last;
  wire [31:0]pkg_wr_size;
  wire [0:0]rst_n;

  system system_i
       (.clk(clk),
        .cmd_out(cmd_out),
        .cmd_vld(cmd_vld),
        .intr(intr),
        .pkg_rd_addr(pkg_rd_addr),
        .pkg_rd_areq(pkg_rd_areq),
        .pkg_rd_data(pkg_rd_data),
        .pkg_rd_en(pkg_rd_en),
        .pkg_rd_last(pkg_rd_last),
        .pkg_rd_size(pkg_rd_size),
        .pkg_wr_addr(pkg_wr_addr),
        .pkg_wr_areq(pkg_wr_areq),
        .pkg_wr_data(pkg_wr_data),
        .pkg_wr_en(pkg_wr_en),
        .pkg_wr_last(pkg_wr_last),
        .pkg_wr_size(pkg_wr_size),
        .rst_n(rst_n));
endmodule
