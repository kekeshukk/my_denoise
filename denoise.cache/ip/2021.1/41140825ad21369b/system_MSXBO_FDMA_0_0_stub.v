// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Aug 10 18:31:20 2022
// Host        : DESKTOP-5JBVKGD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_MSXBO_FDMA_0_0_stub.v
// Design      : system_MSXBO_FDMA_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "MSXBO_FDMA,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(pkg_wr_areq, pkg_wr_last, pkg_wr_data, 
  pkg_wr_en, pkg_wr_addr, pkg_wr_size, pkg_rd_areq, pkg_rd_last, pkg_rd_data, pkg_rd_en, 
  pkg_rd_addr, pkg_rd_size, m00_axi_aclk, m00_axi_aresetn, m00_axi_awid, m00_axi_awaddr, 
  m00_axi_awlen, m00_axi_awsize, m00_axi_awburst, m00_axi_awlock, m00_axi_awcache, 
  m00_axi_awprot, m00_axi_awqos, m00_axi_awvalid, m00_axi_awready, m00_axi_wdata, 
  m00_axi_wstrb, m00_axi_wlast, m00_axi_wvalid, m00_axi_wready, m00_axi_bid, m00_axi_bresp, 
  m00_axi_bvalid, m00_axi_bready, m00_axi_arid, m00_axi_araddr, m00_axi_arlen, 
  m00_axi_arsize, m00_axi_arburst, m00_axi_arlock, m00_axi_arcache, m00_axi_arprot, 
  m00_axi_arqos, m00_axi_arvalid, m00_axi_arready, m00_axi_rid, m00_axi_rdata, m00_axi_rresp, 
  m00_axi_rlast, m00_axi_rvalid, m00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="pkg_wr_areq,pkg_wr_last,pkg_wr_data[127:0],pkg_wr_en,pkg_wr_addr[31:0],pkg_wr_size[31:0],pkg_rd_areq,pkg_rd_last,pkg_rd_data[127:0],pkg_rd_en,pkg_rd_addr[31:0],pkg_rd_size[31:0],m00_axi_aclk,m00_axi_aresetn,m00_axi_awid[0:0],m00_axi_awaddr[31:0],m00_axi_awlen[7:0],m00_axi_awsize[2:0],m00_axi_awburst[1:0],m00_axi_awlock,m00_axi_awcache[3:0],m00_axi_awprot[2:0],m00_axi_awqos[3:0],m00_axi_awvalid,m00_axi_awready,m00_axi_wdata[127:0],m00_axi_wstrb[15:0],m00_axi_wlast,m00_axi_wvalid,m00_axi_wready,m00_axi_bid[0:0],m00_axi_bresp[1:0],m00_axi_bvalid,m00_axi_bready,m00_axi_arid[0:0],m00_axi_araddr[31:0],m00_axi_arlen[7:0],m00_axi_arsize[2:0],m00_axi_arburst[1:0],m00_axi_arlock,m00_axi_arcache[3:0],m00_axi_arprot[2:0],m00_axi_arqos[3:0],m00_axi_arvalid,m00_axi_arready,m00_axi_rid[0:0],m00_axi_rdata[127:0],m00_axi_rresp[1:0],m00_axi_rlast,m00_axi_rvalid,m00_axi_rready" */;
  input pkg_wr_areq;
  output pkg_wr_last;
  input [127:0]pkg_wr_data;
  output pkg_wr_en;
  input [31:0]pkg_wr_addr;
  input [31:0]pkg_wr_size;
  input pkg_rd_areq;
  output pkg_rd_last;
  output [127:0]pkg_rd_data;
  output pkg_rd_en;
  input [31:0]pkg_rd_addr;
  input [31:0]pkg_rd_size;
  input m00_axi_aclk;
  input m00_axi_aresetn;
  output [0:0]m00_axi_awid;
  output [31:0]m00_axi_awaddr;
  output [7:0]m00_axi_awlen;
  output [2:0]m00_axi_awsize;
  output [1:0]m00_axi_awburst;
  output m00_axi_awlock;
  output [3:0]m00_axi_awcache;
  output [2:0]m00_axi_awprot;
  output [3:0]m00_axi_awqos;
  output m00_axi_awvalid;
  input m00_axi_awready;
  output [127:0]m00_axi_wdata;
  output [15:0]m00_axi_wstrb;
  output m00_axi_wlast;
  output m00_axi_wvalid;
  input m00_axi_wready;
  input [0:0]m00_axi_bid;
  input [1:0]m00_axi_bresp;
  input m00_axi_bvalid;
  output m00_axi_bready;
  output [0:0]m00_axi_arid;
  output [31:0]m00_axi_araddr;
  output [7:0]m00_axi_arlen;
  output [2:0]m00_axi_arsize;
  output [1:0]m00_axi_arburst;
  output m00_axi_arlock;
  output [3:0]m00_axi_arcache;
  output [2:0]m00_axi_arprot;
  output [3:0]m00_axi_arqos;
  output m00_axi_arvalid;
  input m00_axi_arready;
  input [0:0]m00_axi_rid;
  input [127:0]m00_axi_rdata;
  input [1:0]m00_axi_rresp;
  input m00_axi_rlast;
  input m00_axi_rvalid;
  output m00_axi_rready;
endmodule
