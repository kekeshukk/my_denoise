// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Aug 10 18:31:21 2022
// Host        : DESKTOP-5JBVKGD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/wwwka/Desktop/my_cnn/denoise/denoise.gen/sources_1/bd/system/ip/system_MSXBO_FDMA_0_0/system_MSXBO_FDMA_0_0_sim_netlist.v
// Design      : system_MSXBO_FDMA_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_MSXBO_FDMA_0_0,MSXBO_FDMA,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "MSXBO_FDMA,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module system_MSXBO_FDMA_0_0
   (pkg_wr_areq,
    pkg_wr_last,
    pkg_wr_data,
    pkg_wr_en,
    pkg_wr_addr,
    pkg_wr_size,
    pkg_rd_areq,
    pkg_rd_last,
    pkg_rd_data,
    pkg_rd_en,
    pkg_rd_addr,
    pkg_rd_size,
    m00_axi_aclk,
    m00_axi_aresetn,
    m00_axi_awid,
    m00_axi_awaddr,
    m00_axi_awlen,
    m00_axi_awsize,
    m00_axi_awburst,
    m00_axi_awlock,
    m00_axi_awcache,
    m00_axi_awprot,
    m00_axi_awqos,
    m00_axi_awvalid,
    m00_axi_awready,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_wlast,
    m00_axi_wvalid,
    m00_axi_wready,
    m00_axi_bid,
    m00_axi_bresp,
    m00_axi_bvalid,
    m00_axi_bready,
    m00_axi_arid,
    m00_axi_araddr,
    m00_axi_arlen,
    m00_axi_arsize,
    m00_axi_arburst,
    m00_axi_arlock,
    m00_axi_arcache,
    m00_axi_arprot,
    m00_axi_arqos,
    m00_axi_arvalid,
    m00_axi_arready,
    m00_axi_rid,
    m00_axi_rdata,
    m00_axi_rresp,
    m00_axi_rlast,
    m00_axi_rvalid,
    m00_axi_rready);
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axi_aclk, ASSOCIATED_BUSIF m00_axi, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk, INSERT_VIP 0" *) input m00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m00_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWID" *) output [0:0]m00_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWADDR" *) output [31:0]m00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWLEN" *) output [7:0]m00_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWSIZE" *) output [2:0]m00_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWBURST" *) output [1:0]m00_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWLOCK" *) output m00_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWCACHE" *) output [3:0]m00_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWPROT" *) output [2:0]m00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWQOS" *) output [3:0]m00_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWVALID" *) output m00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWREADY" *) input m00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WDATA" *) output [127:0]m00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WSTRB" *) output [15:0]m00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WLAST" *) output m00_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WVALID" *) output m00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WREADY" *) input m00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi BID" *) input [0:0]m00_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi BRESP" *) input [1:0]m00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi BVALID" *) input m00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi BREADY" *) output m00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARID" *) output [0:0]m00_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARADDR" *) output [31:0]m00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARLEN" *) output [7:0]m00_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARSIZE" *) output [2:0]m00_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARBURST" *) output [1:0]m00_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARLOCK" *) output m00_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARCACHE" *) output [3:0]m00_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARPROT" *) output [2:0]m00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARQOS" *) output [3:0]m00_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARVALID" *) output m00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARREADY" *) input m00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RID" *) input [0:0]m00_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RDATA" *) input [127:0]m00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RRESP" *) input [1:0]m00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RLAST" *) input m00_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RVALID" *) input m00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axi, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN system_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m00_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire [31:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire [127:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire m00_axi_rready;
  wire m00_axi_rvalid;
  wire m00_axi_wlast;
  wire m00_axi_wready;
  wire m00_axi_wvalid;
  wire [31:0]pkg_rd_addr;
  wire pkg_rd_areq;
  wire pkg_rd_en;
  wire pkg_rd_last;
  wire [31:0]pkg_rd_size;
  wire [31:0]pkg_wr_addr;
  wire pkg_wr_areq;
  wire [127:0]pkg_wr_data;
  wire pkg_wr_en;
  wire pkg_wr_last;
  wire [31:0]pkg_wr_size;

  assign m00_axi_arburst[1] = \<const0> ;
  assign m00_axi_arburst[0] = \<const1> ;
  assign m00_axi_arcache[3] = \<const0> ;
  assign m00_axi_arcache[2] = \<const0> ;
  assign m00_axi_arcache[1] = \<const1> ;
  assign m00_axi_arcache[0] = \<const0> ;
  assign m00_axi_arid[0] = \<const1> ;
  assign m00_axi_arlen[7] = \<const0> ;
  assign m00_axi_arlen[6] = \<const0> ;
  assign m00_axi_arlen[5] = \<const0> ;
  assign m00_axi_arlen[4] = \<const0> ;
  assign m00_axi_arlen[3] = \<const0> ;
  assign m00_axi_arlen[2] = \<const0> ;
  assign m00_axi_arlen[1] = \<const1> ;
  assign m00_axi_arlen[0] = \<const1> ;
  assign m00_axi_arlock = \<const0> ;
  assign m00_axi_arprot[2] = \<const0> ;
  assign m00_axi_arprot[1] = \<const0> ;
  assign m00_axi_arprot[0] = \<const0> ;
  assign m00_axi_arqos[3] = \<const0> ;
  assign m00_axi_arqos[2] = \<const0> ;
  assign m00_axi_arqos[1] = \<const0> ;
  assign m00_axi_arqos[0] = \<const0> ;
  assign m00_axi_arsize[2] = \<const1> ;
  assign m00_axi_arsize[1] = \<const0> ;
  assign m00_axi_arsize[0] = \<const0> ;
  assign m00_axi_awburst[1] = \<const0> ;
  assign m00_axi_awburst[0] = \<const1> ;
  assign m00_axi_awcache[3] = \<const0> ;
  assign m00_axi_awcache[2] = \<const0> ;
  assign m00_axi_awcache[1] = \<const1> ;
  assign m00_axi_awcache[0] = \<const0> ;
  assign m00_axi_awid[0] = \<const1> ;
  assign m00_axi_awlen[7] = \<const0> ;
  assign m00_axi_awlen[6] = \<const0> ;
  assign m00_axi_awlen[5] = \<const0> ;
  assign m00_axi_awlen[4] = \<const0> ;
  assign m00_axi_awlen[3] = \<const0> ;
  assign m00_axi_awlen[2] = \<const0> ;
  assign m00_axi_awlen[1] = \<const1> ;
  assign m00_axi_awlen[0] = \<const1> ;
  assign m00_axi_awlock = \<const0> ;
  assign m00_axi_awprot[2] = \<const0> ;
  assign m00_axi_awprot[1] = \<const0> ;
  assign m00_axi_awprot[0] = \<const0> ;
  assign m00_axi_awqos[3] = \<const0> ;
  assign m00_axi_awqos[2] = \<const0> ;
  assign m00_axi_awqos[1] = \<const0> ;
  assign m00_axi_awqos[0] = \<const0> ;
  assign m00_axi_awsize[2] = \<const1> ;
  assign m00_axi_awsize[1] = \<const0> ;
  assign m00_axi_awsize[0] = \<const0> ;
  assign m00_axi_bready = \<const1> ;
  assign m00_axi_wdata[127:0] = pkg_wr_data;
  assign m00_axi_wstrb[15] = \<const1> ;
  assign m00_axi_wstrb[14] = \<const1> ;
  assign m00_axi_wstrb[13] = \<const1> ;
  assign m00_axi_wstrb[12] = \<const1> ;
  assign m00_axi_wstrb[11] = \<const1> ;
  assign m00_axi_wstrb[10] = \<const1> ;
  assign m00_axi_wstrb[9] = \<const1> ;
  assign m00_axi_wstrb[8] = \<const1> ;
  assign m00_axi_wstrb[7] = \<const1> ;
  assign m00_axi_wstrb[6] = \<const1> ;
  assign m00_axi_wstrb[5] = \<const1> ;
  assign m00_axi_wstrb[4] = \<const1> ;
  assign m00_axi_wstrb[3] = \<const1> ;
  assign m00_axi_wstrb[2] = \<const1> ;
  assign m00_axi_wstrb[1] = \<const1> ;
  assign m00_axi_wstrb[0] = \<const1> ;
  assign pkg_rd_data[127:0] = m00_axi_rdata;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  system_MSXBO_FDMA_0_0_MSXBO_FDMA inst
       (.axi_arvalid_reg(m00_axi_arvalid),
        .axi_rready_reg(m00_axi_rready),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_awaddr(m00_axi_awaddr),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_rlast(m00_axi_rlast),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_wlast(m00_axi_wlast),
        .m00_axi_wready(m00_axi_wready),
        .pkg_rd_addr(pkg_rd_addr),
        .pkg_rd_areq(pkg_rd_areq),
        .pkg_rd_en(pkg_rd_en),
        .pkg_rd_last(pkg_rd_last),
        .pkg_rd_size(pkg_rd_size),
        .pkg_wr_addr(pkg_wr_addr),
        .pkg_wr_areq(pkg_wr_areq),
        .pkg_wr_en(pkg_wr_en),
        .pkg_wr_last(pkg_wr_last),
        .pkg_wr_size(pkg_wr_size),
        .w_cycle_flag_reg(m00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "MSXBO_FDMA" *) 
module system_MSXBO_FDMA_0_0_MSXBO_FDMA
   (m00_axi_awaddr,
    m00_axi_araddr,
    m00_axi_wlast,
    pkg_wr_en,
    pkg_rd_en,
    m00_axi_awvalid,
    w_cycle_flag_reg,
    pkg_wr_last,
    axi_arvalid_reg,
    axi_rready_reg,
    pkg_rd_last,
    pkg_wr_addr,
    pkg_wr_areq,
    pkg_rd_addr,
    pkg_rd_areq,
    m00_axi_aclk,
    m00_axi_awready,
    m00_axi_wready,
    m00_axi_aresetn,
    m00_axi_arready,
    m00_axi_rvalid,
    m00_axi_rlast,
    pkg_wr_size,
    pkg_rd_size);
  output [31:0]m00_axi_awaddr;
  output [31:0]m00_axi_araddr;
  output m00_axi_wlast;
  output pkg_wr_en;
  output pkg_rd_en;
  output m00_axi_awvalid;
  output w_cycle_flag_reg;
  output pkg_wr_last;
  output axi_arvalid_reg;
  output axi_rready_reg;
  output pkg_rd_last;
  input [31:0]pkg_wr_addr;
  input pkg_wr_areq;
  input [31:0]pkg_rd_addr;
  input pkg_rd_areq;
  input m00_axi_aclk;
  input m00_axi_awready;
  input m00_axi_wready;
  input m00_axi_aresetn;
  input m00_axi_arready;
  input m00_axi_rvalid;
  input m00_axi_rlast;
  input [31:0]pkg_wr_size;
  input [31:0]pkg_rd_size;

  wire axi_arvalid_reg;
  wire axi_rready_reg;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire [31:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_rlast;
  wire m00_axi_rvalid;
  wire m00_axi_wlast;
  wire m00_axi_wready;
  wire [31:0]pkg_rd_addr;
  wire pkg_rd_areq;
  wire pkg_rd_en;
  wire pkg_rd_last;
  wire [31:0]pkg_rd_size;
  wire [31:0]pkg_wr_addr;
  wire pkg_wr_areq;
  wire pkg_wr_en;
  wire pkg_wr_last;
  wire [31:0]pkg_wr_size;
  wire w_cycle_flag_reg;

  system_MSXBO_FDMA_0_0_MSXBO_FDMA_v1_0_M00_AXI MSXBO_FDMA_v1_0_M00_AXI_inst
       (.axi_arvalid_reg_0(axi_arvalid_reg),
        .axi_rready_reg_0(pkg_rd_en),
        .axi_rready_reg_1(axi_rready_reg),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_awaddr(m00_axi_awaddr),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_rlast(m00_axi_rlast),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_wlast(m00_axi_wlast),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wready_0(pkg_wr_en),
        .pkg_rd_addr(pkg_rd_addr),
        .pkg_rd_areq(pkg_rd_areq),
        .pkg_rd_last(pkg_rd_last),
        .pkg_rd_size(pkg_rd_size),
        .pkg_wr_addr(pkg_wr_addr),
        .pkg_wr_areq(pkg_wr_areq),
        .pkg_wr_last(pkg_wr_last),
        .pkg_wr_size(pkg_wr_size),
        .w_cycle_flag_reg_0(w_cycle_flag_reg));
endmodule

(* ORIG_REF_NAME = "MSXBO_FDMA_v1_0_M00_AXI" *) 
module system_MSXBO_FDMA_0_0_MSXBO_FDMA_v1_0_M00_AXI
   (m00_axi_awaddr,
    m00_axi_araddr,
    m00_axi_wlast,
    m00_axi_wready_0,
    axi_rready_reg_0,
    m00_axi_awvalid,
    w_cycle_flag_reg_0,
    pkg_wr_last,
    axi_arvalid_reg_0,
    axi_rready_reg_1,
    pkg_rd_last,
    pkg_wr_addr,
    pkg_wr_areq,
    pkg_rd_addr,
    pkg_rd_areq,
    m00_axi_aclk,
    m00_axi_awready,
    m00_axi_wready,
    m00_axi_aresetn,
    m00_axi_arready,
    m00_axi_rvalid,
    m00_axi_rlast,
    pkg_wr_size,
    pkg_rd_size);
  output [31:0]m00_axi_awaddr;
  output [31:0]m00_axi_araddr;
  output m00_axi_wlast;
  output m00_axi_wready_0;
  output axi_rready_reg_0;
  output m00_axi_awvalid;
  output w_cycle_flag_reg_0;
  output pkg_wr_last;
  output axi_arvalid_reg_0;
  output axi_rready_reg_1;
  output pkg_rd_last;
  input [31:0]pkg_wr_addr;
  input pkg_wr_areq;
  input [31:0]pkg_rd_addr;
  input pkg_rd_areq;
  input m00_axi_aclk;
  input m00_axi_awready;
  input m00_axi_wready;
  input m00_axi_aresetn;
  input m00_axi_arready;
  input m00_axi_rvalid;
  input m00_axi_rlast;
  input [31:0]pkg_wr_size;
  input [31:0]pkg_rd_size;

  wire \axi_araddr[0]_i_1_n_0 ;
  wire \axi_araddr[12]_i_10_n_0 ;
  wire \axi_araddr[12]_i_2_n_0 ;
  wire \axi_araddr[12]_i_3_n_0 ;
  wire \axi_araddr[12]_i_4_n_0 ;
  wire \axi_araddr[12]_i_5_n_0 ;
  wire \axi_araddr[12]_i_6_n_0 ;
  wire \axi_araddr[12]_i_7_n_0 ;
  wire \axi_araddr[12]_i_8_n_0 ;
  wire \axi_araddr[12]_i_9_n_0 ;
  wire \axi_araddr[1]_i_1_n_0 ;
  wire \axi_araddr[20]_i_2_n_0 ;
  wire \axi_araddr[20]_i_3_n_0 ;
  wire \axi_araddr[20]_i_4_n_0 ;
  wire \axi_araddr[20]_i_5_n_0 ;
  wire \axi_araddr[20]_i_6_n_0 ;
  wire \axi_araddr[20]_i_7_n_0 ;
  wire \axi_araddr[20]_i_8_n_0 ;
  wire \axi_araddr[20]_i_9_n_0 ;
  wire \axi_araddr[28]_i_2_n_0 ;
  wire \axi_araddr[28]_i_3_n_0 ;
  wire \axi_araddr[28]_i_4_n_0 ;
  wire \axi_araddr[28]_i_5_n_0 ;
  wire \axi_araddr[28]_i_6_n_0 ;
  wire \axi_araddr[28]_i_7_n_0 ;
  wire \axi_araddr[28]_i_8_n_0 ;
  wire \axi_araddr[28]_i_9_n_0 ;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[31]_i_1_n_0 ;
  wire \axi_araddr[31]_i_3_n_0 ;
  wire \axi_araddr[31]_i_4_n_0 ;
  wire \axi_araddr[31]_i_5_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire \axi_araddr_reg[12]_i_1_n_0 ;
  wire \axi_araddr_reg[12]_i_1_n_1 ;
  wire \axi_araddr_reg[12]_i_1_n_10 ;
  wire \axi_araddr_reg[12]_i_1_n_11 ;
  wire \axi_araddr_reg[12]_i_1_n_12 ;
  wire \axi_araddr_reg[12]_i_1_n_13 ;
  wire \axi_araddr_reg[12]_i_1_n_14 ;
  wire \axi_araddr_reg[12]_i_1_n_15 ;
  wire \axi_araddr_reg[12]_i_1_n_2 ;
  wire \axi_araddr_reg[12]_i_1_n_3 ;
  wire \axi_araddr_reg[12]_i_1_n_4 ;
  wire \axi_araddr_reg[12]_i_1_n_5 ;
  wire \axi_araddr_reg[12]_i_1_n_6 ;
  wire \axi_araddr_reg[12]_i_1_n_7 ;
  wire \axi_araddr_reg[12]_i_1_n_8 ;
  wire \axi_araddr_reg[12]_i_1_n_9 ;
  wire \axi_araddr_reg[20]_i_1_n_0 ;
  wire \axi_araddr_reg[20]_i_1_n_1 ;
  wire \axi_araddr_reg[20]_i_1_n_10 ;
  wire \axi_araddr_reg[20]_i_1_n_11 ;
  wire \axi_araddr_reg[20]_i_1_n_12 ;
  wire \axi_araddr_reg[20]_i_1_n_13 ;
  wire \axi_araddr_reg[20]_i_1_n_14 ;
  wire \axi_araddr_reg[20]_i_1_n_15 ;
  wire \axi_araddr_reg[20]_i_1_n_2 ;
  wire \axi_araddr_reg[20]_i_1_n_3 ;
  wire \axi_araddr_reg[20]_i_1_n_4 ;
  wire \axi_araddr_reg[20]_i_1_n_5 ;
  wire \axi_araddr_reg[20]_i_1_n_6 ;
  wire \axi_araddr_reg[20]_i_1_n_7 ;
  wire \axi_araddr_reg[20]_i_1_n_8 ;
  wire \axi_araddr_reg[20]_i_1_n_9 ;
  wire \axi_araddr_reg[28]_i_1_n_0 ;
  wire \axi_araddr_reg[28]_i_1_n_1 ;
  wire \axi_araddr_reg[28]_i_1_n_10 ;
  wire \axi_araddr_reg[28]_i_1_n_11 ;
  wire \axi_araddr_reg[28]_i_1_n_12 ;
  wire \axi_araddr_reg[28]_i_1_n_13 ;
  wire \axi_araddr_reg[28]_i_1_n_14 ;
  wire \axi_araddr_reg[28]_i_1_n_15 ;
  wire \axi_araddr_reg[28]_i_1_n_2 ;
  wire \axi_araddr_reg[28]_i_1_n_3 ;
  wire \axi_araddr_reg[28]_i_1_n_4 ;
  wire \axi_araddr_reg[28]_i_1_n_5 ;
  wire \axi_araddr_reg[28]_i_1_n_6 ;
  wire \axi_araddr_reg[28]_i_1_n_7 ;
  wire \axi_araddr_reg[28]_i_1_n_8 ;
  wire \axi_araddr_reg[28]_i_1_n_9 ;
  wire \axi_araddr_reg[31]_i_2_n_13 ;
  wire \axi_araddr_reg[31]_i_2_n_14 ;
  wire \axi_araddr_reg[31]_i_2_n_15 ;
  wire \axi_araddr_reg[31]_i_2_n_6 ;
  wire \axi_araddr_reg[31]_i_2_n_7 ;
  wire axi_arvalid_i_1_n_0;
  wire axi_arvalid_reg_0;
  wire \axi_awaddr[0]_i_1_n_0 ;
  wire \axi_awaddr[12]_i_10_n_0 ;
  wire \axi_awaddr[12]_i_2_n_0 ;
  wire \axi_awaddr[12]_i_3_n_0 ;
  wire \axi_awaddr[12]_i_4_n_0 ;
  wire \axi_awaddr[12]_i_5_n_0 ;
  wire \axi_awaddr[12]_i_6_n_0 ;
  wire \axi_awaddr[12]_i_7_n_0 ;
  wire \axi_awaddr[12]_i_8_n_0 ;
  wire \axi_awaddr[12]_i_9_n_0 ;
  wire \axi_awaddr[1]_i_1_n_0 ;
  wire \axi_awaddr[20]_i_2_n_0 ;
  wire \axi_awaddr[20]_i_3_n_0 ;
  wire \axi_awaddr[20]_i_4_n_0 ;
  wire \axi_awaddr[20]_i_5_n_0 ;
  wire \axi_awaddr[20]_i_6_n_0 ;
  wire \axi_awaddr[20]_i_7_n_0 ;
  wire \axi_awaddr[20]_i_8_n_0 ;
  wire \axi_awaddr[20]_i_9_n_0 ;
  wire \axi_awaddr[28]_i_2_n_0 ;
  wire \axi_awaddr[28]_i_3_n_0 ;
  wire \axi_awaddr[28]_i_4_n_0 ;
  wire \axi_awaddr[28]_i_5_n_0 ;
  wire \axi_awaddr[28]_i_6_n_0 ;
  wire \axi_awaddr[28]_i_7_n_0 ;
  wire \axi_awaddr[28]_i_8_n_0 ;
  wire \axi_awaddr[28]_i_9_n_0 ;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[31]_i_2_n_0 ;
  wire \axi_awaddr[31]_i_4_n_0 ;
  wire \axi_awaddr[31]_i_5_n_0 ;
  wire \axi_awaddr[31]_i_6_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire \axi_awaddr_reg[12]_i_1_n_0 ;
  wire \axi_awaddr_reg[12]_i_1_n_1 ;
  wire \axi_awaddr_reg[12]_i_1_n_10 ;
  wire \axi_awaddr_reg[12]_i_1_n_11 ;
  wire \axi_awaddr_reg[12]_i_1_n_12 ;
  wire \axi_awaddr_reg[12]_i_1_n_13 ;
  wire \axi_awaddr_reg[12]_i_1_n_14 ;
  wire \axi_awaddr_reg[12]_i_1_n_15 ;
  wire \axi_awaddr_reg[12]_i_1_n_2 ;
  wire \axi_awaddr_reg[12]_i_1_n_3 ;
  wire \axi_awaddr_reg[12]_i_1_n_4 ;
  wire \axi_awaddr_reg[12]_i_1_n_5 ;
  wire \axi_awaddr_reg[12]_i_1_n_6 ;
  wire \axi_awaddr_reg[12]_i_1_n_7 ;
  wire \axi_awaddr_reg[12]_i_1_n_8 ;
  wire \axi_awaddr_reg[12]_i_1_n_9 ;
  wire \axi_awaddr_reg[20]_i_1_n_0 ;
  wire \axi_awaddr_reg[20]_i_1_n_1 ;
  wire \axi_awaddr_reg[20]_i_1_n_10 ;
  wire \axi_awaddr_reg[20]_i_1_n_11 ;
  wire \axi_awaddr_reg[20]_i_1_n_12 ;
  wire \axi_awaddr_reg[20]_i_1_n_13 ;
  wire \axi_awaddr_reg[20]_i_1_n_14 ;
  wire \axi_awaddr_reg[20]_i_1_n_15 ;
  wire \axi_awaddr_reg[20]_i_1_n_2 ;
  wire \axi_awaddr_reg[20]_i_1_n_3 ;
  wire \axi_awaddr_reg[20]_i_1_n_4 ;
  wire \axi_awaddr_reg[20]_i_1_n_5 ;
  wire \axi_awaddr_reg[20]_i_1_n_6 ;
  wire \axi_awaddr_reg[20]_i_1_n_7 ;
  wire \axi_awaddr_reg[20]_i_1_n_8 ;
  wire \axi_awaddr_reg[20]_i_1_n_9 ;
  wire \axi_awaddr_reg[28]_i_1_n_0 ;
  wire \axi_awaddr_reg[28]_i_1_n_1 ;
  wire \axi_awaddr_reg[28]_i_1_n_10 ;
  wire \axi_awaddr_reg[28]_i_1_n_11 ;
  wire \axi_awaddr_reg[28]_i_1_n_12 ;
  wire \axi_awaddr_reg[28]_i_1_n_13 ;
  wire \axi_awaddr_reg[28]_i_1_n_14 ;
  wire \axi_awaddr_reg[28]_i_1_n_15 ;
  wire \axi_awaddr_reg[28]_i_1_n_2 ;
  wire \axi_awaddr_reg[28]_i_1_n_3 ;
  wire \axi_awaddr_reg[28]_i_1_n_4 ;
  wire \axi_awaddr_reg[28]_i_1_n_5 ;
  wire \axi_awaddr_reg[28]_i_1_n_6 ;
  wire \axi_awaddr_reg[28]_i_1_n_7 ;
  wire \axi_awaddr_reg[28]_i_1_n_8 ;
  wire \axi_awaddr_reg[28]_i_1_n_9 ;
  wire \axi_awaddr_reg[31]_i_3_n_13 ;
  wire \axi_awaddr_reg[31]_i_3_n_14 ;
  wire \axi_awaddr_reg[31]_i_3_n_15 ;
  wire \axi_awaddr_reg[31]_i_3_n_6 ;
  wire \axi_awaddr_reg[31]_i_3_n_7 ;
  wire axi_awvalid_i_1_n_0;
  wire axi_rready_i_1_n_0;
  wire axi_rready_i_2_n_0;
  wire axi_rready_reg_0;
  wire axi_rready_reg_1;
  wire axi_wlast;
  wire axi_wlast_i_2_n_0;
  wire clear;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire [31:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_rlast;
  wire m00_axi_rvalid;
  wire m00_axi_wlast;
  wire m00_axi_wready;
  wire m00_axi_wready_0;
  wire [31:0]pkg_rd_addr;
  wire pkg_rd_areq;
  wire pkg_rd_last;
  wire pkg_rd_last0;
  wire pkg_rd_last0_carry__0_i_1_n_0;
  wire pkg_rd_last0_carry__0_i_2_n_0;
  wire pkg_rd_last0_carry__0_i_3_n_0;
  wire pkg_rd_last0_carry__0_n_6;
  wire pkg_rd_last0_carry__0_n_7;
  wire pkg_rd_last0_carry_i_1_n_0;
  wire pkg_rd_last0_carry_i_2_n_0;
  wire pkg_rd_last0_carry_i_3_n_0;
  wire pkg_rd_last0_carry_i_4_n_0;
  wire pkg_rd_last0_carry_i_5_n_0;
  wire pkg_rd_last0_carry_i_6_n_0;
  wire pkg_rd_last0_carry_i_7_n_0;
  wire pkg_rd_last0_carry_i_8_n_0;
  wire pkg_rd_last0_carry_n_0;
  wire pkg_rd_last0_carry_n_1;
  wire pkg_rd_last0_carry_n_2;
  wire pkg_rd_last0_carry_n_3;
  wire pkg_rd_last0_carry_n_4;
  wire pkg_rd_last0_carry_n_5;
  wire pkg_rd_last0_carry_n_6;
  wire pkg_rd_last0_carry_n_7;
  wire [31:1]pkg_rd_last1;
  wire pkg_rd_last1_carry__0_i_1_n_0;
  wire pkg_rd_last1_carry__0_i_2_n_0;
  wire pkg_rd_last1_carry__0_i_3_n_0;
  wire pkg_rd_last1_carry__0_i_4_n_0;
  wire pkg_rd_last1_carry__0_i_5_n_0;
  wire pkg_rd_last1_carry__0_i_6_n_0;
  wire pkg_rd_last1_carry__0_i_7_n_0;
  wire pkg_rd_last1_carry__0_i_8_n_0;
  wire pkg_rd_last1_carry__0_n_0;
  wire pkg_rd_last1_carry__0_n_1;
  wire pkg_rd_last1_carry__0_n_2;
  wire pkg_rd_last1_carry__0_n_3;
  wire pkg_rd_last1_carry__0_n_4;
  wire pkg_rd_last1_carry__0_n_5;
  wire pkg_rd_last1_carry__0_n_6;
  wire pkg_rd_last1_carry__0_n_7;
  wire pkg_rd_last1_carry__1_i_1_n_0;
  wire pkg_rd_last1_carry__1_i_2_n_0;
  wire pkg_rd_last1_carry__1_i_3_n_0;
  wire pkg_rd_last1_carry__1_i_4_n_0;
  wire pkg_rd_last1_carry__1_i_5_n_0;
  wire pkg_rd_last1_carry__1_i_6_n_0;
  wire pkg_rd_last1_carry__1_i_7_n_0;
  wire pkg_rd_last1_carry__1_i_8_n_0;
  wire pkg_rd_last1_carry__1_n_0;
  wire pkg_rd_last1_carry__1_n_1;
  wire pkg_rd_last1_carry__1_n_2;
  wire pkg_rd_last1_carry__1_n_3;
  wire pkg_rd_last1_carry__1_n_4;
  wire pkg_rd_last1_carry__1_n_5;
  wire pkg_rd_last1_carry__1_n_6;
  wire pkg_rd_last1_carry__1_n_7;
  wire pkg_rd_last1_carry__2_i_1_n_0;
  wire pkg_rd_last1_carry__2_i_2_n_0;
  wire pkg_rd_last1_carry__2_i_3_n_0;
  wire pkg_rd_last1_carry__2_i_4_n_0;
  wire pkg_rd_last1_carry__2_i_5_n_0;
  wire pkg_rd_last1_carry__2_i_6_n_0;
  wire pkg_rd_last1_carry__2_i_7_n_0;
  wire pkg_rd_last1_carry__2_n_2;
  wire pkg_rd_last1_carry__2_n_3;
  wire pkg_rd_last1_carry__2_n_4;
  wire pkg_rd_last1_carry__2_n_5;
  wire pkg_rd_last1_carry__2_n_6;
  wire pkg_rd_last1_carry__2_n_7;
  wire pkg_rd_last1_carry_i_1_n_0;
  wire pkg_rd_last1_carry_i_2_n_0;
  wire pkg_rd_last1_carry_i_3_n_0;
  wire pkg_rd_last1_carry_i_4_n_0;
  wire pkg_rd_last1_carry_i_5_n_0;
  wire pkg_rd_last1_carry_i_6_n_0;
  wire pkg_rd_last1_carry_i_7_n_0;
  wire pkg_rd_last1_carry_i_8_n_0;
  wire pkg_rd_last1_carry_n_0;
  wire pkg_rd_last1_carry_n_1;
  wire pkg_rd_last1_carry_n_2;
  wire pkg_rd_last1_carry_n_3;
  wire pkg_rd_last1_carry_n_4;
  wire pkg_rd_last1_carry_n_5;
  wire pkg_rd_last1_carry_n_6;
  wire pkg_rd_last1_carry_n_7;
  wire [31:0]pkg_rd_size;
  wire [31:0]pkg_wr_addr;
  wire pkg_wr_areq;
  wire pkg_wr_last;
  wire pkg_wr_last0;
  wire pkg_wr_last0_carry__0_i_1_n_0;
  wire pkg_wr_last0_carry__0_i_2_n_0;
  wire pkg_wr_last0_carry__0_i_3_n_0;
  wire pkg_wr_last0_carry__0_n_6;
  wire pkg_wr_last0_carry__0_n_7;
  wire pkg_wr_last0_carry_i_1_n_0;
  wire pkg_wr_last0_carry_i_2_n_0;
  wire pkg_wr_last0_carry_i_3_n_0;
  wire pkg_wr_last0_carry_i_4_n_0;
  wire pkg_wr_last0_carry_i_5_n_0;
  wire pkg_wr_last0_carry_i_6_n_0;
  wire pkg_wr_last0_carry_i_7_n_0;
  wire pkg_wr_last0_carry_i_8_n_0;
  wire pkg_wr_last0_carry_n_0;
  wire pkg_wr_last0_carry_n_1;
  wire pkg_wr_last0_carry_n_2;
  wire pkg_wr_last0_carry_n_3;
  wire pkg_wr_last0_carry_n_4;
  wire pkg_wr_last0_carry_n_5;
  wire pkg_wr_last0_carry_n_6;
  wire pkg_wr_last0_carry_n_7;
  wire [31:1]pkg_wr_last1;
  wire pkg_wr_last1_carry__0_i_1_n_0;
  wire pkg_wr_last1_carry__0_i_2_n_0;
  wire pkg_wr_last1_carry__0_i_3_n_0;
  wire pkg_wr_last1_carry__0_i_4_n_0;
  wire pkg_wr_last1_carry__0_i_5_n_0;
  wire pkg_wr_last1_carry__0_i_6_n_0;
  wire pkg_wr_last1_carry__0_i_7_n_0;
  wire pkg_wr_last1_carry__0_i_8_n_0;
  wire pkg_wr_last1_carry__0_n_0;
  wire pkg_wr_last1_carry__0_n_1;
  wire pkg_wr_last1_carry__0_n_2;
  wire pkg_wr_last1_carry__0_n_3;
  wire pkg_wr_last1_carry__0_n_4;
  wire pkg_wr_last1_carry__0_n_5;
  wire pkg_wr_last1_carry__0_n_6;
  wire pkg_wr_last1_carry__0_n_7;
  wire pkg_wr_last1_carry__1_i_1_n_0;
  wire pkg_wr_last1_carry__1_i_2_n_0;
  wire pkg_wr_last1_carry__1_i_3_n_0;
  wire pkg_wr_last1_carry__1_i_4_n_0;
  wire pkg_wr_last1_carry__1_i_5_n_0;
  wire pkg_wr_last1_carry__1_i_6_n_0;
  wire pkg_wr_last1_carry__1_i_7_n_0;
  wire pkg_wr_last1_carry__1_i_8_n_0;
  wire pkg_wr_last1_carry__1_n_0;
  wire pkg_wr_last1_carry__1_n_1;
  wire pkg_wr_last1_carry__1_n_2;
  wire pkg_wr_last1_carry__1_n_3;
  wire pkg_wr_last1_carry__1_n_4;
  wire pkg_wr_last1_carry__1_n_5;
  wire pkg_wr_last1_carry__1_n_6;
  wire pkg_wr_last1_carry__1_n_7;
  wire pkg_wr_last1_carry__2_i_1_n_0;
  wire pkg_wr_last1_carry__2_i_2_n_0;
  wire pkg_wr_last1_carry__2_i_3_n_0;
  wire pkg_wr_last1_carry__2_i_4_n_0;
  wire pkg_wr_last1_carry__2_i_5_n_0;
  wire pkg_wr_last1_carry__2_i_6_n_0;
  wire pkg_wr_last1_carry__2_i_7_n_0;
  wire pkg_wr_last1_carry__2_n_2;
  wire pkg_wr_last1_carry__2_n_3;
  wire pkg_wr_last1_carry__2_n_4;
  wire pkg_wr_last1_carry__2_n_5;
  wire pkg_wr_last1_carry__2_n_6;
  wire pkg_wr_last1_carry__2_n_7;
  wire pkg_wr_last1_carry_i_1_n_0;
  wire pkg_wr_last1_carry_i_2_n_0;
  wire pkg_wr_last1_carry_i_3_n_0;
  wire pkg_wr_last1_carry_i_4_n_0;
  wire pkg_wr_last1_carry_i_5_n_0;
  wire pkg_wr_last1_carry_i_6_n_0;
  wire pkg_wr_last1_carry_i_7_n_0;
  wire pkg_wr_last1_carry_i_8_n_0;
  wire pkg_wr_last1_carry_n_0;
  wire pkg_wr_last1_carry_n_1;
  wire pkg_wr_last1_carry_n_2;
  wire pkg_wr_last1_carry_n_3;
  wire pkg_wr_last1_carry_n_4;
  wire pkg_wr_last1_carry_n_5;
  wire pkg_wr_last1_carry_n_6;
  wire pkg_wr_last1_carry_n_7;
  wire [31:0]pkg_wr_size;
  wire r_cycle_flag;
  wire r_cycle_flag_i_1_n_0;
  wire r_fdma_locked;
  wire r_fdma_locked_i_1_n_0;
  wire \rd_data_cnt[0]_i_1_n_0 ;
  wire \rd_data_cnt[0]_i_3_n_0 ;
  wire [31:0]rd_data_cnt_reg;
  wire \rd_data_cnt_reg[0]_i_2_n_0 ;
  wire \rd_data_cnt_reg[0]_i_2_n_1 ;
  wire \rd_data_cnt_reg[0]_i_2_n_10 ;
  wire \rd_data_cnt_reg[0]_i_2_n_11 ;
  wire \rd_data_cnt_reg[0]_i_2_n_12 ;
  wire \rd_data_cnt_reg[0]_i_2_n_13 ;
  wire \rd_data_cnt_reg[0]_i_2_n_14 ;
  wire \rd_data_cnt_reg[0]_i_2_n_15 ;
  wire \rd_data_cnt_reg[0]_i_2_n_2 ;
  wire \rd_data_cnt_reg[0]_i_2_n_3 ;
  wire \rd_data_cnt_reg[0]_i_2_n_4 ;
  wire \rd_data_cnt_reg[0]_i_2_n_5 ;
  wire \rd_data_cnt_reg[0]_i_2_n_6 ;
  wire \rd_data_cnt_reg[0]_i_2_n_7 ;
  wire \rd_data_cnt_reg[0]_i_2_n_8 ;
  wire \rd_data_cnt_reg[0]_i_2_n_9 ;
  wire \rd_data_cnt_reg[16]_i_1_n_0 ;
  wire \rd_data_cnt_reg[16]_i_1_n_1 ;
  wire \rd_data_cnt_reg[16]_i_1_n_10 ;
  wire \rd_data_cnt_reg[16]_i_1_n_11 ;
  wire \rd_data_cnt_reg[16]_i_1_n_12 ;
  wire \rd_data_cnt_reg[16]_i_1_n_13 ;
  wire \rd_data_cnt_reg[16]_i_1_n_14 ;
  wire \rd_data_cnt_reg[16]_i_1_n_15 ;
  wire \rd_data_cnt_reg[16]_i_1_n_2 ;
  wire \rd_data_cnt_reg[16]_i_1_n_3 ;
  wire \rd_data_cnt_reg[16]_i_1_n_4 ;
  wire \rd_data_cnt_reg[16]_i_1_n_5 ;
  wire \rd_data_cnt_reg[16]_i_1_n_6 ;
  wire \rd_data_cnt_reg[16]_i_1_n_7 ;
  wire \rd_data_cnt_reg[16]_i_1_n_8 ;
  wire \rd_data_cnt_reg[16]_i_1_n_9 ;
  wire \rd_data_cnt_reg[24]_i_1_n_1 ;
  wire \rd_data_cnt_reg[24]_i_1_n_10 ;
  wire \rd_data_cnt_reg[24]_i_1_n_11 ;
  wire \rd_data_cnt_reg[24]_i_1_n_12 ;
  wire \rd_data_cnt_reg[24]_i_1_n_13 ;
  wire \rd_data_cnt_reg[24]_i_1_n_14 ;
  wire \rd_data_cnt_reg[24]_i_1_n_15 ;
  wire \rd_data_cnt_reg[24]_i_1_n_2 ;
  wire \rd_data_cnt_reg[24]_i_1_n_3 ;
  wire \rd_data_cnt_reg[24]_i_1_n_4 ;
  wire \rd_data_cnt_reg[24]_i_1_n_5 ;
  wire \rd_data_cnt_reg[24]_i_1_n_6 ;
  wire \rd_data_cnt_reg[24]_i_1_n_7 ;
  wire \rd_data_cnt_reg[24]_i_1_n_8 ;
  wire \rd_data_cnt_reg[24]_i_1_n_9 ;
  wire \rd_data_cnt_reg[8]_i_1_n_0 ;
  wire \rd_data_cnt_reg[8]_i_1_n_1 ;
  wire \rd_data_cnt_reg[8]_i_1_n_10 ;
  wire \rd_data_cnt_reg[8]_i_1_n_11 ;
  wire \rd_data_cnt_reg[8]_i_1_n_12 ;
  wire \rd_data_cnt_reg[8]_i_1_n_13 ;
  wire \rd_data_cnt_reg[8]_i_1_n_14 ;
  wire \rd_data_cnt_reg[8]_i_1_n_15 ;
  wire \rd_data_cnt_reg[8]_i_1_n_2 ;
  wire \rd_data_cnt_reg[8]_i_1_n_3 ;
  wire \rd_data_cnt_reg[8]_i_1_n_4 ;
  wire \rd_data_cnt_reg[8]_i_1_n_5 ;
  wire \rd_data_cnt_reg[8]_i_1_n_6 ;
  wire \rd_data_cnt_reg[8]_i_1_n_7 ;
  wire \rd_data_cnt_reg[8]_i_1_n_8 ;
  wire \rd_data_cnt_reg[8]_i_1_n_9 ;
  wire read_data_flag;
  wire read_data_flag_i_1_n_0;
  wire w_cycle_flag_i_1_n_0;
  wire w_cycle_flag_reg_0;
  wire w_fdma_locked;
  wire w_fdma_locked_i_1_n_0;
  wire [7:0]w_word_cnt;
  wire \w_word_cnt[0]_i_1_n_0 ;
  wire \w_word_cnt[1]_i_1_n_0 ;
  wire \w_word_cnt[2]_i_1_n_0 ;
  wire \w_word_cnt[3]_i_1_n_0 ;
  wire \w_word_cnt[4]_i_1_n_0 ;
  wire \w_word_cnt[5]_i_1_n_0 ;
  wire \w_word_cnt[5]_i_2_n_0 ;
  wire \w_word_cnt[6]_i_1_n_0 ;
  wire \w_word_cnt[7]_i_2_n_0 ;
  wire \w_word_cnt[7]_i_3_n_0 ;
  wire w_word_cnt_0;
  wire \wr_data_cnt[0]_i_1_n_0 ;
  wire \wr_data_cnt[0]_i_3_n_0 ;
  wire [31:0]wr_data_cnt_reg;
  wire \wr_data_cnt_reg[0]_i_2_n_0 ;
  wire \wr_data_cnt_reg[0]_i_2_n_1 ;
  wire \wr_data_cnt_reg[0]_i_2_n_10 ;
  wire \wr_data_cnt_reg[0]_i_2_n_11 ;
  wire \wr_data_cnt_reg[0]_i_2_n_12 ;
  wire \wr_data_cnt_reg[0]_i_2_n_13 ;
  wire \wr_data_cnt_reg[0]_i_2_n_14 ;
  wire \wr_data_cnt_reg[0]_i_2_n_15 ;
  wire \wr_data_cnt_reg[0]_i_2_n_2 ;
  wire \wr_data_cnt_reg[0]_i_2_n_3 ;
  wire \wr_data_cnt_reg[0]_i_2_n_4 ;
  wire \wr_data_cnt_reg[0]_i_2_n_5 ;
  wire \wr_data_cnt_reg[0]_i_2_n_6 ;
  wire \wr_data_cnt_reg[0]_i_2_n_7 ;
  wire \wr_data_cnt_reg[0]_i_2_n_8 ;
  wire \wr_data_cnt_reg[0]_i_2_n_9 ;
  wire \wr_data_cnt_reg[16]_i_1_n_0 ;
  wire \wr_data_cnt_reg[16]_i_1_n_1 ;
  wire \wr_data_cnt_reg[16]_i_1_n_10 ;
  wire \wr_data_cnt_reg[16]_i_1_n_11 ;
  wire \wr_data_cnt_reg[16]_i_1_n_12 ;
  wire \wr_data_cnt_reg[16]_i_1_n_13 ;
  wire \wr_data_cnt_reg[16]_i_1_n_14 ;
  wire \wr_data_cnt_reg[16]_i_1_n_15 ;
  wire \wr_data_cnt_reg[16]_i_1_n_2 ;
  wire \wr_data_cnt_reg[16]_i_1_n_3 ;
  wire \wr_data_cnt_reg[16]_i_1_n_4 ;
  wire \wr_data_cnt_reg[16]_i_1_n_5 ;
  wire \wr_data_cnt_reg[16]_i_1_n_6 ;
  wire \wr_data_cnt_reg[16]_i_1_n_7 ;
  wire \wr_data_cnt_reg[16]_i_1_n_8 ;
  wire \wr_data_cnt_reg[16]_i_1_n_9 ;
  wire \wr_data_cnt_reg[24]_i_1_n_1 ;
  wire \wr_data_cnt_reg[24]_i_1_n_10 ;
  wire \wr_data_cnt_reg[24]_i_1_n_11 ;
  wire \wr_data_cnt_reg[24]_i_1_n_12 ;
  wire \wr_data_cnt_reg[24]_i_1_n_13 ;
  wire \wr_data_cnt_reg[24]_i_1_n_14 ;
  wire \wr_data_cnt_reg[24]_i_1_n_15 ;
  wire \wr_data_cnt_reg[24]_i_1_n_2 ;
  wire \wr_data_cnt_reg[24]_i_1_n_3 ;
  wire \wr_data_cnt_reg[24]_i_1_n_4 ;
  wire \wr_data_cnt_reg[24]_i_1_n_5 ;
  wire \wr_data_cnt_reg[24]_i_1_n_6 ;
  wire \wr_data_cnt_reg[24]_i_1_n_7 ;
  wire \wr_data_cnt_reg[24]_i_1_n_8 ;
  wire \wr_data_cnt_reg[24]_i_1_n_9 ;
  wire \wr_data_cnt_reg[8]_i_1_n_0 ;
  wire \wr_data_cnt_reg[8]_i_1_n_1 ;
  wire \wr_data_cnt_reg[8]_i_1_n_10 ;
  wire \wr_data_cnt_reg[8]_i_1_n_11 ;
  wire \wr_data_cnt_reg[8]_i_1_n_12 ;
  wire \wr_data_cnt_reg[8]_i_1_n_13 ;
  wire \wr_data_cnt_reg[8]_i_1_n_14 ;
  wire \wr_data_cnt_reg[8]_i_1_n_15 ;
  wire \wr_data_cnt_reg[8]_i_1_n_2 ;
  wire \wr_data_cnt_reg[8]_i_1_n_3 ;
  wire \wr_data_cnt_reg[8]_i_1_n_4 ;
  wire \wr_data_cnt_reg[8]_i_1_n_5 ;
  wire \wr_data_cnt_reg[8]_i_1_n_6 ;
  wire \wr_data_cnt_reg[8]_i_1_n_7 ;
  wire \wr_data_cnt_reg[8]_i_1_n_8 ;
  wire \wr_data_cnt_reg[8]_i_1_n_9 ;
  wire [7:2]\NLW_axi_araddr_reg[31]_i_2_CO_UNCONNECTED ;
  wire [7:3]\NLW_axi_araddr_reg[31]_i_2_O_UNCONNECTED ;
  wire [7:2]\NLW_axi_awaddr_reg[31]_i_3_CO_UNCONNECTED ;
  wire [7:3]\NLW_axi_awaddr_reg[31]_i_3_O_UNCONNECTED ;
  wire [7:0]NLW_pkg_rd_last0_carry_O_UNCONNECTED;
  wire [7:3]NLW_pkg_rd_last0_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_pkg_rd_last0_carry__0_O_UNCONNECTED;
  wire [7:6]NLW_pkg_rd_last1_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_pkg_rd_last1_carry__2_O_UNCONNECTED;
  wire [7:0]NLW_pkg_wr_last0_carry_O_UNCONNECTED;
  wire [7:3]NLW_pkg_wr_last0_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_pkg_wr_last0_carry__0_O_UNCONNECTED;
  wire [7:6]NLW_pkg_wr_last1_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_pkg_wr_last1_carry__2_O_UNCONNECTED;
  wire [7:7]\NLW_rd_data_cnt_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_wr_data_cnt_reg[24]_i_1_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[0]_i_1 
       (.I0(pkg_rd_addr[0]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[0]),
        .O(\axi_araddr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[12]_i_10 
       (.I0(pkg_rd_addr[5]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[5]),
        .O(\axi_araddr[12]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[12]_i_2 
       (.I0(pkg_rd_addr[6]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[6]),
        .O(\axi_araddr[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[12]_i_3 
       (.I0(pkg_rd_addr[12]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[12]),
        .O(\axi_araddr[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[12]_i_4 
       (.I0(pkg_rd_addr[11]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[11]),
        .O(\axi_araddr[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[12]_i_5 
       (.I0(pkg_rd_addr[10]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[10]),
        .O(\axi_araddr[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[12]_i_6 
       (.I0(pkg_rd_addr[9]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[9]),
        .O(\axi_araddr[12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[12]_i_7 
       (.I0(pkg_rd_addr[8]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[8]),
        .O(\axi_araddr[12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[12]_i_8 
       (.I0(pkg_rd_addr[7]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[7]),
        .O(\axi_araddr[12]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5C55)) 
    \axi_araddr[12]_i_9 
       (.I0(m00_axi_araddr[6]),
        .I1(pkg_rd_addr[6]),
        .I2(r_fdma_locked),
        .I3(pkg_rd_areq),
        .O(\axi_araddr[12]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[1]_i_1 
       (.I0(pkg_rd_addr[1]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[1]),
        .O(\axi_araddr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[20]_i_2 
       (.I0(pkg_rd_addr[20]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[20]),
        .O(\axi_araddr[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[20]_i_3 
       (.I0(pkg_rd_addr[19]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[19]),
        .O(\axi_araddr[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[20]_i_4 
       (.I0(pkg_rd_addr[18]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[18]),
        .O(\axi_araddr[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[20]_i_5 
       (.I0(pkg_rd_addr[17]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[17]),
        .O(\axi_araddr[20]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[20]_i_6 
       (.I0(pkg_rd_addr[16]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[16]),
        .O(\axi_araddr[20]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[20]_i_7 
       (.I0(pkg_rd_addr[15]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[15]),
        .O(\axi_araddr[20]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[20]_i_8 
       (.I0(pkg_rd_addr[14]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[14]),
        .O(\axi_araddr[20]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[20]_i_9 
       (.I0(pkg_rd_addr[13]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[13]),
        .O(\axi_araddr[20]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[28]_i_2 
       (.I0(pkg_rd_addr[28]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[28]),
        .O(\axi_araddr[28]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[28]_i_3 
       (.I0(pkg_rd_addr[27]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[27]),
        .O(\axi_araddr[28]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[28]_i_4 
       (.I0(pkg_rd_addr[26]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[26]),
        .O(\axi_araddr[28]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[28]_i_5 
       (.I0(pkg_rd_addr[25]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[25]),
        .O(\axi_araddr[28]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[28]_i_6 
       (.I0(pkg_rd_addr[24]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[24]),
        .O(\axi_araddr[28]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[28]_i_7 
       (.I0(pkg_rd_addr[23]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[23]),
        .O(\axi_araddr[28]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[28]_i_8 
       (.I0(pkg_rd_addr[22]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[22]),
        .O(\axi_araddr[28]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[28]_i_9 
       (.I0(pkg_rd_addr[21]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[21]),
        .O(\axi_araddr[28]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(pkg_rd_addr[2]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \axi_araddr[31]_i_1 
       (.I0(r_fdma_locked),
        .I1(pkg_rd_areq),
        .I2(axi_arvalid_reg_0),
        .I3(m00_axi_arready),
        .O(\axi_araddr[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[31]_i_3 
       (.I0(pkg_rd_addr[31]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[31]),
        .O(\axi_araddr[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[31]_i_4 
       (.I0(pkg_rd_addr[30]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[30]),
        .O(\axi_araddr[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[31]_i_5 
       (.I0(pkg_rd_addr[29]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[29]),
        .O(\axi_araddr[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(pkg_rd_addr[3]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(pkg_rd_addr[4]),
        .I1(pkg_rd_areq),
        .I2(r_fdma_locked),
        .I3(m00_axi_araddr[4]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDRE \axi_araddr_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr[0]_i_1_n_0 ),
        .Q(m00_axi_araddr[0]),
        .R(clear));
  FDRE \axi_araddr_reg[10] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[12]_i_1_n_10 ),
        .Q(m00_axi_araddr[10]),
        .R(clear));
  FDRE \axi_araddr_reg[11] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[12]_i_1_n_9 ),
        .Q(m00_axi_araddr[11]),
        .R(clear));
  FDRE \axi_araddr_reg[12] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[12]_i_1_n_8 ),
        .Q(m00_axi_araddr[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_araddr_reg[12]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\axi_araddr_reg[12]_i_1_n_0 ,\axi_araddr_reg[12]_i_1_n_1 ,\axi_araddr_reg[12]_i_1_n_2 ,\axi_araddr_reg[12]_i_1_n_3 ,\axi_araddr_reg[12]_i_1_n_4 ,\axi_araddr_reg[12]_i_1_n_5 ,\axi_araddr_reg[12]_i_1_n_6 ,\axi_araddr_reg[12]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\axi_araddr[12]_i_2_n_0 ,1'b0}),
        .O({\axi_araddr_reg[12]_i_1_n_8 ,\axi_araddr_reg[12]_i_1_n_9 ,\axi_araddr_reg[12]_i_1_n_10 ,\axi_araddr_reg[12]_i_1_n_11 ,\axi_araddr_reg[12]_i_1_n_12 ,\axi_araddr_reg[12]_i_1_n_13 ,\axi_araddr_reg[12]_i_1_n_14 ,\axi_araddr_reg[12]_i_1_n_15 }),
        .S({\axi_araddr[12]_i_3_n_0 ,\axi_araddr[12]_i_4_n_0 ,\axi_araddr[12]_i_5_n_0 ,\axi_araddr[12]_i_6_n_0 ,\axi_araddr[12]_i_7_n_0 ,\axi_araddr[12]_i_8_n_0 ,\axi_araddr[12]_i_9_n_0 ,\axi_araddr[12]_i_10_n_0 }));
  FDRE \axi_araddr_reg[13] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[20]_i_1_n_15 ),
        .Q(m00_axi_araddr[13]),
        .R(clear));
  FDRE \axi_araddr_reg[14] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[20]_i_1_n_14 ),
        .Q(m00_axi_araddr[14]),
        .R(clear));
  FDRE \axi_araddr_reg[15] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[20]_i_1_n_13 ),
        .Q(m00_axi_araddr[15]),
        .R(clear));
  FDRE \axi_araddr_reg[16] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[20]_i_1_n_12 ),
        .Q(m00_axi_araddr[16]),
        .R(clear));
  FDRE \axi_araddr_reg[17] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[20]_i_1_n_11 ),
        .Q(m00_axi_araddr[17]),
        .R(clear));
  FDRE \axi_araddr_reg[18] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[20]_i_1_n_10 ),
        .Q(m00_axi_araddr[18]),
        .R(clear));
  FDRE \axi_araddr_reg[19] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[20]_i_1_n_9 ),
        .Q(m00_axi_araddr[19]),
        .R(clear));
  FDRE \axi_araddr_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr[1]_i_1_n_0 ),
        .Q(m00_axi_araddr[1]),
        .R(clear));
  FDRE \axi_araddr_reg[20] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[20]_i_1_n_8 ),
        .Q(m00_axi_araddr[20]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_araddr_reg[20]_i_1 
       (.CI(\axi_araddr_reg[12]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_araddr_reg[20]_i_1_n_0 ,\axi_araddr_reg[20]_i_1_n_1 ,\axi_araddr_reg[20]_i_1_n_2 ,\axi_araddr_reg[20]_i_1_n_3 ,\axi_araddr_reg[20]_i_1_n_4 ,\axi_araddr_reg[20]_i_1_n_5 ,\axi_araddr_reg[20]_i_1_n_6 ,\axi_araddr_reg[20]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[20]_i_1_n_8 ,\axi_araddr_reg[20]_i_1_n_9 ,\axi_araddr_reg[20]_i_1_n_10 ,\axi_araddr_reg[20]_i_1_n_11 ,\axi_araddr_reg[20]_i_1_n_12 ,\axi_araddr_reg[20]_i_1_n_13 ,\axi_araddr_reg[20]_i_1_n_14 ,\axi_araddr_reg[20]_i_1_n_15 }),
        .S({\axi_araddr[20]_i_2_n_0 ,\axi_araddr[20]_i_3_n_0 ,\axi_araddr[20]_i_4_n_0 ,\axi_araddr[20]_i_5_n_0 ,\axi_araddr[20]_i_6_n_0 ,\axi_araddr[20]_i_7_n_0 ,\axi_araddr[20]_i_8_n_0 ,\axi_araddr[20]_i_9_n_0 }));
  FDRE \axi_araddr_reg[21] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[28]_i_1_n_15 ),
        .Q(m00_axi_araddr[21]),
        .R(clear));
  FDRE \axi_araddr_reg[22] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[28]_i_1_n_14 ),
        .Q(m00_axi_araddr[22]),
        .R(clear));
  FDRE \axi_araddr_reg[23] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[28]_i_1_n_13 ),
        .Q(m00_axi_araddr[23]),
        .R(clear));
  FDRE \axi_araddr_reg[24] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[28]_i_1_n_12 ),
        .Q(m00_axi_araddr[24]),
        .R(clear));
  FDRE \axi_araddr_reg[25] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[28]_i_1_n_11 ),
        .Q(m00_axi_araddr[25]),
        .R(clear));
  FDRE \axi_araddr_reg[26] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[28]_i_1_n_10 ),
        .Q(m00_axi_araddr[26]),
        .R(clear));
  FDRE \axi_araddr_reg[27] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[28]_i_1_n_9 ),
        .Q(m00_axi_araddr[27]),
        .R(clear));
  FDRE \axi_araddr_reg[28] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[28]_i_1_n_8 ),
        .Q(m00_axi_araddr[28]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_araddr_reg[28]_i_1 
       (.CI(\axi_araddr_reg[20]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_araddr_reg[28]_i_1_n_0 ,\axi_araddr_reg[28]_i_1_n_1 ,\axi_araddr_reg[28]_i_1_n_2 ,\axi_araddr_reg[28]_i_1_n_3 ,\axi_araddr_reg[28]_i_1_n_4 ,\axi_araddr_reg[28]_i_1_n_5 ,\axi_araddr_reg[28]_i_1_n_6 ,\axi_araddr_reg[28]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[28]_i_1_n_8 ,\axi_araddr_reg[28]_i_1_n_9 ,\axi_araddr_reg[28]_i_1_n_10 ,\axi_araddr_reg[28]_i_1_n_11 ,\axi_araddr_reg[28]_i_1_n_12 ,\axi_araddr_reg[28]_i_1_n_13 ,\axi_araddr_reg[28]_i_1_n_14 ,\axi_araddr_reg[28]_i_1_n_15 }),
        .S({\axi_araddr[28]_i_2_n_0 ,\axi_araddr[28]_i_3_n_0 ,\axi_araddr[28]_i_4_n_0 ,\axi_araddr[28]_i_5_n_0 ,\axi_araddr[28]_i_6_n_0 ,\axi_araddr[28]_i_7_n_0 ,\axi_araddr[28]_i_8_n_0 ,\axi_araddr[28]_i_9_n_0 }));
  FDRE \axi_araddr_reg[29] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[31]_i_2_n_15 ),
        .Q(m00_axi_araddr[29]),
        .R(clear));
  FDRE \axi_araddr_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(m00_axi_araddr[2]),
        .R(clear));
  FDRE \axi_araddr_reg[30] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[31]_i_2_n_14 ),
        .Q(m00_axi_araddr[30]),
        .R(clear));
  FDRE \axi_araddr_reg[31] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[31]_i_2_n_13 ),
        .Q(m00_axi_araddr[31]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_araddr_reg[31]_i_2 
       (.CI(\axi_araddr_reg[28]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_araddr_reg[31]_i_2_CO_UNCONNECTED [7:2],\axi_araddr_reg[31]_i_2_n_6 ,\axi_araddr_reg[31]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_araddr_reg[31]_i_2_O_UNCONNECTED [7:3],\axi_araddr_reg[31]_i_2_n_13 ,\axi_araddr_reg[31]_i_2_n_14 ,\axi_araddr_reg[31]_i_2_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\axi_araddr[31]_i_3_n_0 ,\axi_araddr[31]_i_4_n_0 ,\axi_araddr[31]_i_5_n_0 }));
  FDRE \axi_araddr_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(m00_axi_araddr[3]),
        .R(clear));
  FDRE \axi_araddr_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(m00_axi_araddr[4]),
        .R(clear));
  FDRE \axi_araddr_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[12]_i_1_n_15 ),
        .Q(m00_axi_araddr[5]),
        .R(clear));
  FDRE \axi_araddr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[12]_i_1_n_14 ),
        .Q(m00_axi_araddr[6]),
        .R(clear));
  FDRE \axi_araddr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[12]_i_1_n_13 ),
        .Q(m00_axi_araddr[7]),
        .R(clear));
  FDRE \axi_araddr_reg[8] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[12]_i_1_n_12 ),
        .Q(m00_axi_araddr[8]),
        .R(clear));
  FDRE \axi_araddr_reg[9] 
       (.C(m00_axi_aclk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[12]_i_1_n_11 ),
        .Q(m00_axi_araddr[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2A88)) 
    axi_arvalid_i_1
       (.I0(m00_axi_aresetn),
        .I1(r_cycle_flag),
        .I2(m00_axi_arready),
        .I3(axi_arvalid_reg_0),
        .O(axi_arvalid_i_1_n_0));
  FDRE axi_arvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_arvalid_i_1_n_0),
        .Q(axi_arvalid_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[0]_i_1 
       (.I0(pkg_wr_addr[0]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[0]),
        .O(\axi_awaddr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[12]_i_10 
       (.I0(pkg_wr_addr[5]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[5]),
        .O(\axi_awaddr[12]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[12]_i_2 
       (.I0(pkg_wr_addr[6]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[6]),
        .O(\axi_awaddr[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[12]_i_3 
       (.I0(pkg_wr_addr[12]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[12]),
        .O(\axi_awaddr[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[12]_i_4 
       (.I0(pkg_wr_addr[11]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[11]),
        .O(\axi_awaddr[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[12]_i_5 
       (.I0(pkg_wr_addr[10]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[10]),
        .O(\axi_awaddr[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[12]_i_6 
       (.I0(pkg_wr_addr[9]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[9]),
        .O(\axi_awaddr[12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[12]_i_7 
       (.I0(pkg_wr_addr[8]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[8]),
        .O(\axi_awaddr[12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[12]_i_8 
       (.I0(pkg_wr_addr[7]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[7]),
        .O(\axi_awaddr[12]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5C55)) 
    \axi_awaddr[12]_i_9 
       (.I0(m00_axi_awaddr[6]),
        .I1(pkg_wr_addr[6]),
        .I2(w_fdma_locked),
        .I3(pkg_wr_areq),
        .O(\axi_awaddr[12]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[1]_i_1 
       (.I0(pkg_wr_addr[1]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[1]),
        .O(\axi_awaddr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[20]_i_2 
       (.I0(pkg_wr_addr[20]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[20]),
        .O(\axi_awaddr[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[20]_i_3 
       (.I0(pkg_wr_addr[19]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[19]),
        .O(\axi_awaddr[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[20]_i_4 
       (.I0(pkg_wr_addr[18]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[18]),
        .O(\axi_awaddr[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[20]_i_5 
       (.I0(pkg_wr_addr[17]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[17]),
        .O(\axi_awaddr[20]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[20]_i_6 
       (.I0(pkg_wr_addr[16]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[16]),
        .O(\axi_awaddr[20]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[20]_i_7 
       (.I0(pkg_wr_addr[15]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[15]),
        .O(\axi_awaddr[20]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[20]_i_8 
       (.I0(pkg_wr_addr[14]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[14]),
        .O(\axi_awaddr[20]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[20]_i_9 
       (.I0(pkg_wr_addr[13]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[13]),
        .O(\axi_awaddr[20]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[28]_i_2 
       (.I0(pkg_wr_addr[28]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[28]),
        .O(\axi_awaddr[28]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[28]_i_3 
       (.I0(pkg_wr_addr[27]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[27]),
        .O(\axi_awaddr[28]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[28]_i_4 
       (.I0(pkg_wr_addr[26]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[26]),
        .O(\axi_awaddr[28]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[28]_i_5 
       (.I0(pkg_wr_addr[25]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[25]),
        .O(\axi_awaddr[28]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[28]_i_6 
       (.I0(pkg_wr_addr[24]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[24]),
        .O(\axi_awaddr[28]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[28]_i_7 
       (.I0(pkg_wr_addr[23]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[23]),
        .O(\axi_awaddr[28]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[28]_i_8 
       (.I0(pkg_wr_addr[22]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[22]),
        .O(\axi_awaddr[28]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[28]_i_9 
       (.I0(pkg_wr_addr[21]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[21]),
        .O(\axi_awaddr[28]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[2]_i_1 
       (.I0(pkg_wr_addr[2]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_awaddr[31]_i_1 
       (.I0(m00_axi_aresetn),
        .O(clear));
  LUT4 #(
    .INIT(16'h8F88)) 
    \axi_awaddr[31]_i_2 
       (.I0(m00_axi_awvalid),
        .I1(m00_axi_awready),
        .I2(w_fdma_locked),
        .I3(pkg_wr_areq),
        .O(\axi_awaddr[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[31]_i_4 
       (.I0(pkg_wr_addr[31]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[31]),
        .O(\axi_awaddr[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[31]_i_5 
       (.I0(pkg_wr_addr[30]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[30]),
        .O(\axi_awaddr[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[31]_i_6 
       (.I0(pkg_wr_addr[29]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[29]),
        .O(\axi_awaddr[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[3]_i_1 
       (.I0(pkg_wr_addr[3]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[4]_i_1 
       (.I0(pkg_wr_addr[4]),
        .I1(pkg_wr_areq),
        .I2(w_fdma_locked),
        .I3(m00_axi_awaddr[4]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr[0]_i_1_n_0 ),
        .Q(m00_axi_awaddr[0]),
        .R(clear));
  FDRE \axi_awaddr_reg[10] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[12]_i_1_n_10 ),
        .Q(m00_axi_awaddr[10]),
        .R(clear));
  FDRE \axi_awaddr_reg[11] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[12]_i_1_n_9 ),
        .Q(m00_axi_awaddr[11]),
        .R(clear));
  FDRE \axi_awaddr_reg[12] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[12]_i_1_n_8 ),
        .Q(m00_axi_awaddr[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_awaddr_reg[12]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\axi_awaddr_reg[12]_i_1_n_0 ,\axi_awaddr_reg[12]_i_1_n_1 ,\axi_awaddr_reg[12]_i_1_n_2 ,\axi_awaddr_reg[12]_i_1_n_3 ,\axi_awaddr_reg[12]_i_1_n_4 ,\axi_awaddr_reg[12]_i_1_n_5 ,\axi_awaddr_reg[12]_i_1_n_6 ,\axi_awaddr_reg[12]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\axi_awaddr[12]_i_2_n_0 ,1'b0}),
        .O({\axi_awaddr_reg[12]_i_1_n_8 ,\axi_awaddr_reg[12]_i_1_n_9 ,\axi_awaddr_reg[12]_i_1_n_10 ,\axi_awaddr_reg[12]_i_1_n_11 ,\axi_awaddr_reg[12]_i_1_n_12 ,\axi_awaddr_reg[12]_i_1_n_13 ,\axi_awaddr_reg[12]_i_1_n_14 ,\axi_awaddr_reg[12]_i_1_n_15 }),
        .S({\axi_awaddr[12]_i_3_n_0 ,\axi_awaddr[12]_i_4_n_0 ,\axi_awaddr[12]_i_5_n_0 ,\axi_awaddr[12]_i_6_n_0 ,\axi_awaddr[12]_i_7_n_0 ,\axi_awaddr[12]_i_8_n_0 ,\axi_awaddr[12]_i_9_n_0 ,\axi_awaddr[12]_i_10_n_0 }));
  FDRE \axi_awaddr_reg[13] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[20]_i_1_n_15 ),
        .Q(m00_axi_awaddr[13]),
        .R(clear));
  FDRE \axi_awaddr_reg[14] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[20]_i_1_n_14 ),
        .Q(m00_axi_awaddr[14]),
        .R(clear));
  FDRE \axi_awaddr_reg[15] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[20]_i_1_n_13 ),
        .Q(m00_axi_awaddr[15]),
        .R(clear));
  FDRE \axi_awaddr_reg[16] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[20]_i_1_n_12 ),
        .Q(m00_axi_awaddr[16]),
        .R(clear));
  FDRE \axi_awaddr_reg[17] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[20]_i_1_n_11 ),
        .Q(m00_axi_awaddr[17]),
        .R(clear));
  FDRE \axi_awaddr_reg[18] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[20]_i_1_n_10 ),
        .Q(m00_axi_awaddr[18]),
        .R(clear));
  FDRE \axi_awaddr_reg[19] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[20]_i_1_n_9 ),
        .Q(m00_axi_awaddr[19]),
        .R(clear));
  FDRE \axi_awaddr_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr[1]_i_1_n_0 ),
        .Q(m00_axi_awaddr[1]),
        .R(clear));
  FDRE \axi_awaddr_reg[20] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[20]_i_1_n_8 ),
        .Q(m00_axi_awaddr[20]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_awaddr_reg[20]_i_1 
       (.CI(\axi_awaddr_reg[12]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_awaddr_reg[20]_i_1_n_0 ,\axi_awaddr_reg[20]_i_1_n_1 ,\axi_awaddr_reg[20]_i_1_n_2 ,\axi_awaddr_reg[20]_i_1_n_3 ,\axi_awaddr_reg[20]_i_1_n_4 ,\axi_awaddr_reg[20]_i_1_n_5 ,\axi_awaddr_reg[20]_i_1_n_6 ,\axi_awaddr_reg[20]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[20]_i_1_n_8 ,\axi_awaddr_reg[20]_i_1_n_9 ,\axi_awaddr_reg[20]_i_1_n_10 ,\axi_awaddr_reg[20]_i_1_n_11 ,\axi_awaddr_reg[20]_i_1_n_12 ,\axi_awaddr_reg[20]_i_1_n_13 ,\axi_awaddr_reg[20]_i_1_n_14 ,\axi_awaddr_reg[20]_i_1_n_15 }),
        .S({\axi_awaddr[20]_i_2_n_0 ,\axi_awaddr[20]_i_3_n_0 ,\axi_awaddr[20]_i_4_n_0 ,\axi_awaddr[20]_i_5_n_0 ,\axi_awaddr[20]_i_6_n_0 ,\axi_awaddr[20]_i_7_n_0 ,\axi_awaddr[20]_i_8_n_0 ,\axi_awaddr[20]_i_9_n_0 }));
  FDRE \axi_awaddr_reg[21] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[28]_i_1_n_15 ),
        .Q(m00_axi_awaddr[21]),
        .R(clear));
  FDRE \axi_awaddr_reg[22] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[28]_i_1_n_14 ),
        .Q(m00_axi_awaddr[22]),
        .R(clear));
  FDRE \axi_awaddr_reg[23] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[28]_i_1_n_13 ),
        .Q(m00_axi_awaddr[23]),
        .R(clear));
  FDRE \axi_awaddr_reg[24] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[28]_i_1_n_12 ),
        .Q(m00_axi_awaddr[24]),
        .R(clear));
  FDRE \axi_awaddr_reg[25] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[28]_i_1_n_11 ),
        .Q(m00_axi_awaddr[25]),
        .R(clear));
  FDRE \axi_awaddr_reg[26] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[28]_i_1_n_10 ),
        .Q(m00_axi_awaddr[26]),
        .R(clear));
  FDRE \axi_awaddr_reg[27] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[28]_i_1_n_9 ),
        .Q(m00_axi_awaddr[27]),
        .R(clear));
  FDRE \axi_awaddr_reg[28] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[28]_i_1_n_8 ),
        .Q(m00_axi_awaddr[28]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_awaddr_reg[28]_i_1 
       (.CI(\axi_awaddr_reg[20]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_awaddr_reg[28]_i_1_n_0 ,\axi_awaddr_reg[28]_i_1_n_1 ,\axi_awaddr_reg[28]_i_1_n_2 ,\axi_awaddr_reg[28]_i_1_n_3 ,\axi_awaddr_reg[28]_i_1_n_4 ,\axi_awaddr_reg[28]_i_1_n_5 ,\axi_awaddr_reg[28]_i_1_n_6 ,\axi_awaddr_reg[28]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[28]_i_1_n_8 ,\axi_awaddr_reg[28]_i_1_n_9 ,\axi_awaddr_reg[28]_i_1_n_10 ,\axi_awaddr_reg[28]_i_1_n_11 ,\axi_awaddr_reg[28]_i_1_n_12 ,\axi_awaddr_reg[28]_i_1_n_13 ,\axi_awaddr_reg[28]_i_1_n_14 ,\axi_awaddr_reg[28]_i_1_n_15 }),
        .S({\axi_awaddr[28]_i_2_n_0 ,\axi_awaddr[28]_i_3_n_0 ,\axi_awaddr[28]_i_4_n_0 ,\axi_awaddr[28]_i_5_n_0 ,\axi_awaddr[28]_i_6_n_0 ,\axi_awaddr[28]_i_7_n_0 ,\axi_awaddr[28]_i_8_n_0 ,\axi_awaddr[28]_i_9_n_0 }));
  FDRE \axi_awaddr_reg[29] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[31]_i_3_n_15 ),
        .Q(m00_axi_awaddr[29]),
        .R(clear));
  FDRE \axi_awaddr_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(m00_axi_awaddr[2]),
        .R(clear));
  FDRE \axi_awaddr_reg[30] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[31]_i_3_n_14 ),
        .Q(m00_axi_awaddr[30]),
        .R(clear));
  FDRE \axi_awaddr_reg[31] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[31]_i_3_n_13 ),
        .Q(m00_axi_awaddr[31]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_awaddr_reg[31]_i_3 
       (.CI(\axi_awaddr_reg[28]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_awaddr_reg[31]_i_3_CO_UNCONNECTED [7:2],\axi_awaddr_reg[31]_i_3_n_6 ,\axi_awaddr_reg[31]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_awaddr_reg[31]_i_3_O_UNCONNECTED [7:3],\axi_awaddr_reg[31]_i_3_n_13 ,\axi_awaddr_reg[31]_i_3_n_14 ,\axi_awaddr_reg[31]_i_3_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\axi_awaddr[31]_i_4_n_0 ,\axi_awaddr[31]_i_5_n_0 ,\axi_awaddr[31]_i_6_n_0 }));
  FDRE \axi_awaddr_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(m00_axi_awaddr[3]),
        .R(clear));
  FDRE \axi_awaddr_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(m00_axi_awaddr[4]),
        .R(clear));
  FDRE \axi_awaddr_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[12]_i_1_n_15 ),
        .Q(m00_axi_awaddr[5]),
        .R(clear));
  FDRE \axi_awaddr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[12]_i_1_n_14 ),
        .Q(m00_axi_awaddr[6]),
        .R(clear));
  FDRE \axi_awaddr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[12]_i_1_n_13 ),
        .Q(m00_axi_awaddr[7]),
        .R(clear));
  FDRE \axi_awaddr_reg[8] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[12]_i_1_n_12 ),
        .Q(m00_axi_awaddr[8]),
        .R(clear));
  FDRE \axi_awaddr_reg[9] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[12]_i_1_n_11 ),
        .Q(m00_axi_awaddr[9]),
        .R(clear));
  LUT5 #(
    .INIT(32'h00A8A0A8)) 
    axi_awvalid_i_1
       (.I0(m00_axi_aresetn),
        .I1(w_fdma_locked),
        .I2(m00_axi_awvalid),
        .I3(w_cycle_flag_reg_0),
        .I4(m00_axi_awready),
        .O(axi_awvalid_i_1_n_0));
  FDRE axi_awvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_awvalid_i_1_n_0),
        .Q(m00_axi_awvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7FFFFFFF50505050)) 
    axi_rready_i_1
       (.I0(axi_rready_i_2_n_0),
        .I1(m00_axi_rlast),
        .I2(m00_axi_aresetn),
        .I3(read_data_flag),
        .I4(m00_axi_rvalid),
        .I5(axi_rready_reg_1),
        .O(axi_rready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    axi_rready_i_2
       (.I0(axi_arvalid_reg_0),
        .I1(m00_axi_arready),
        .I2(r_cycle_flag),
        .O(axi_rready_i_2_n_0));
  FDRE axi_rready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(axi_rready_reg_1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    axi_wlast_i_1
       (.I0(w_word_cnt[2]),
        .I1(w_word_cnt[1]),
        .I2(axi_wlast_i_2_n_0),
        .O(axi_wlast));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    axi_wlast_i_2
       (.I0(w_word_cnt[6]),
        .I1(w_word_cnt[7]),
        .I2(w_word_cnt[5]),
        .I3(w_word_cnt[4]),
        .I4(w_word_cnt[0]),
        .I5(w_word_cnt[3]),
        .O(axi_wlast_i_2_n_0));
  FDRE axi_wlast_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_wlast),
        .Q(m00_axi_wlast),
        .R(clear));
  LUT2 #(
    .INIT(4'h8)) 
    pkg_rd_en_INST_0
       (.I0(axi_rready_reg_1),
        .I1(m00_axi_rvalid),
        .O(axi_rready_reg_0));
  CARRY8 pkg_rd_last0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({pkg_rd_last0_carry_n_0,pkg_rd_last0_carry_n_1,pkg_rd_last0_carry_n_2,pkg_rd_last0_carry_n_3,pkg_rd_last0_carry_n_4,pkg_rd_last0_carry_n_5,pkg_rd_last0_carry_n_6,pkg_rd_last0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pkg_rd_last0_carry_O_UNCONNECTED[7:0]),
        .S({pkg_rd_last0_carry_i_1_n_0,pkg_rd_last0_carry_i_2_n_0,pkg_rd_last0_carry_i_3_n_0,pkg_rd_last0_carry_i_4_n_0,pkg_rd_last0_carry_i_5_n_0,pkg_rd_last0_carry_i_6_n_0,pkg_rd_last0_carry_i_7_n_0,pkg_rd_last0_carry_i_8_n_0}));
  CARRY8 pkg_rd_last0_carry__0
       (.CI(pkg_rd_last0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_pkg_rd_last0_carry__0_CO_UNCONNECTED[7:3],pkg_rd_last0,pkg_rd_last0_carry__0_n_6,pkg_rd_last0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pkg_rd_last0_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,pkg_rd_last0_carry__0_i_1_n_0,pkg_rd_last0_carry__0_i_2_n_0,pkg_rd_last0_carry__0_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    pkg_rd_last0_carry__0_i_1
       (.I0(rd_data_cnt_reg[30]),
        .I1(pkg_rd_last1[30]),
        .I2(pkg_rd_last1[31]),
        .I3(rd_data_cnt_reg[31]),
        .O(pkg_rd_last0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pkg_rd_last0_carry__0_i_2
       (.I0(rd_data_cnt_reg[27]),
        .I1(pkg_rd_last1[27]),
        .I2(rd_data_cnt_reg[28]),
        .I3(pkg_rd_last1[28]),
        .I4(pkg_rd_last1[29]),
        .I5(rd_data_cnt_reg[29]),
        .O(pkg_rd_last0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pkg_rd_last0_carry__0_i_3
       (.I0(rd_data_cnt_reg[24]),
        .I1(pkg_rd_last1[24]),
        .I2(rd_data_cnt_reg[25]),
        .I3(pkg_rd_last1[25]),
        .I4(pkg_rd_last1[26]),
        .I5(rd_data_cnt_reg[26]),
        .O(pkg_rd_last0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pkg_rd_last0_carry_i_1
       (.I0(rd_data_cnt_reg[21]),
        .I1(pkg_rd_last1[21]),
        .I2(rd_data_cnt_reg[22]),
        .I3(pkg_rd_last1[22]),
        .I4(pkg_rd_last1[23]),
        .I5(rd_data_cnt_reg[23]),
        .O(pkg_rd_last0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pkg_rd_last0_carry_i_2
       (.I0(rd_data_cnt_reg[18]),
        .I1(pkg_rd_last1[18]),
        .I2(rd_data_cnt_reg[19]),
        .I3(pkg_rd_last1[19]),
        .I4(pkg_rd_last1[20]),
        .I5(rd_data_cnt_reg[20]),
        .O(pkg_rd_last0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pkg_rd_last0_carry_i_3
       (.I0(rd_data_cnt_reg[15]),
        .I1(pkg_rd_last1[15]),
        .I2(rd_data_cnt_reg[16]),
        .I3(pkg_rd_last1[16]),
        .I4(pkg_rd_last1[17]),
        .I5(rd_data_cnt_reg[17]),
        .O(pkg_rd_last0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pkg_rd_last0_carry_i_4
       (.I0(rd_data_cnt_reg[12]),
        .I1(pkg_rd_last1[12]),
        .I2(rd_data_cnt_reg[13]),
        .I3(pkg_rd_last1[13]),
        .I4(pkg_rd_last1[14]),
        .I5(rd_data_cnt_reg[14]),
        .O(pkg_rd_last0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pkg_rd_last0_carry_i_5
       (.I0(rd_data_cnt_reg[9]),
        .I1(pkg_rd_last1[9]),
        .I2(rd_data_cnt_reg[10]),
        .I3(pkg_rd_last1[10]),
        .I4(pkg_rd_last1[11]),
        .I5(rd_data_cnt_reg[11]),
        .O(pkg_rd_last0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pkg_rd_last0_carry_i_6
       (.I0(rd_data_cnt_reg[6]),
        .I1(pkg_rd_last1[6]),
        .I2(rd_data_cnt_reg[7]),
        .I3(pkg_rd_last1[7]),
        .I4(pkg_rd_last1[8]),
        .I5(rd_data_cnt_reg[8]),
        .O(pkg_rd_last0_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pkg_rd_last0_carry_i_7
       (.I0(rd_data_cnt_reg[3]),
        .I1(pkg_rd_last1[3]),
        .I2(rd_data_cnt_reg[4]),
        .I3(pkg_rd_last1[4]),
        .I4(pkg_rd_last1[5]),
        .I5(rd_data_cnt_reg[5]),
        .O(pkg_rd_last0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    pkg_rd_last0_carry_i_8
       (.I0(pkg_rd_size[0]),
        .I1(rd_data_cnt_reg[0]),
        .I2(rd_data_cnt_reg[1]),
        .I3(pkg_rd_last1[1]),
        .I4(pkg_rd_last1[2]),
        .I5(rd_data_cnt_reg[2]),
        .O(pkg_rd_last0_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pkg_rd_last1_carry
       (.CI(pkg_rd_size[0]),
        .CI_TOP(1'b0),
        .CO({pkg_rd_last1_carry_n_0,pkg_rd_last1_carry_n_1,pkg_rd_last1_carry_n_2,pkg_rd_last1_carry_n_3,pkg_rd_last1_carry_n_4,pkg_rd_last1_carry_n_5,pkg_rd_last1_carry_n_6,pkg_rd_last1_carry_n_7}),
        .DI(pkg_rd_size[8:1]),
        .O(pkg_rd_last1[8:1]),
        .S({pkg_rd_last1_carry_i_1_n_0,pkg_rd_last1_carry_i_2_n_0,pkg_rd_last1_carry_i_3_n_0,pkg_rd_last1_carry_i_4_n_0,pkg_rd_last1_carry_i_5_n_0,pkg_rd_last1_carry_i_6_n_0,pkg_rd_last1_carry_i_7_n_0,pkg_rd_last1_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pkg_rd_last1_carry__0
       (.CI(pkg_rd_last1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({pkg_rd_last1_carry__0_n_0,pkg_rd_last1_carry__0_n_1,pkg_rd_last1_carry__0_n_2,pkg_rd_last1_carry__0_n_3,pkg_rd_last1_carry__0_n_4,pkg_rd_last1_carry__0_n_5,pkg_rd_last1_carry__0_n_6,pkg_rd_last1_carry__0_n_7}),
        .DI(pkg_rd_size[16:9]),
        .O(pkg_rd_last1[16:9]),
        .S({pkg_rd_last1_carry__0_i_1_n_0,pkg_rd_last1_carry__0_i_2_n_0,pkg_rd_last1_carry__0_i_3_n_0,pkg_rd_last1_carry__0_i_4_n_0,pkg_rd_last1_carry__0_i_5_n_0,pkg_rd_last1_carry__0_i_6_n_0,pkg_rd_last1_carry__0_i_7_n_0,pkg_rd_last1_carry__0_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__0_i_1
       (.I0(pkg_rd_size[16]),
        .O(pkg_rd_last1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__0_i_2
       (.I0(pkg_rd_size[15]),
        .O(pkg_rd_last1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__0_i_3
       (.I0(pkg_rd_size[14]),
        .O(pkg_rd_last1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__0_i_4
       (.I0(pkg_rd_size[13]),
        .O(pkg_rd_last1_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__0_i_5
       (.I0(pkg_rd_size[12]),
        .O(pkg_rd_last1_carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__0_i_6
       (.I0(pkg_rd_size[11]),
        .O(pkg_rd_last1_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__0_i_7
       (.I0(pkg_rd_size[10]),
        .O(pkg_rd_last1_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__0_i_8
       (.I0(pkg_rd_size[9]),
        .O(pkg_rd_last1_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pkg_rd_last1_carry__1
       (.CI(pkg_rd_last1_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({pkg_rd_last1_carry__1_n_0,pkg_rd_last1_carry__1_n_1,pkg_rd_last1_carry__1_n_2,pkg_rd_last1_carry__1_n_3,pkg_rd_last1_carry__1_n_4,pkg_rd_last1_carry__1_n_5,pkg_rd_last1_carry__1_n_6,pkg_rd_last1_carry__1_n_7}),
        .DI(pkg_rd_size[24:17]),
        .O(pkg_rd_last1[24:17]),
        .S({pkg_rd_last1_carry__1_i_1_n_0,pkg_rd_last1_carry__1_i_2_n_0,pkg_rd_last1_carry__1_i_3_n_0,pkg_rd_last1_carry__1_i_4_n_0,pkg_rd_last1_carry__1_i_5_n_0,pkg_rd_last1_carry__1_i_6_n_0,pkg_rd_last1_carry__1_i_7_n_0,pkg_rd_last1_carry__1_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__1_i_1
       (.I0(pkg_rd_size[24]),
        .O(pkg_rd_last1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__1_i_2
       (.I0(pkg_rd_size[23]),
        .O(pkg_rd_last1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__1_i_3
       (.I0(pkg_rd_size[22]),
        .O(pkg_rd_last1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__1_i_4
       (.I0(pkg_rd_size[21]),
        .O(pkg_rd_last1_carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__1_i_5
       (.I0(pkg_rd_size[20]),
        .O(pkg_rd_last1_carry__1_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__1_i_6
       (.I0(pkg_rd_size[19]),
        .O(pkg_rd_last1_carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__1_i_7
       (.I0(pkg_rd_size[18]),
        .O(pkg_rd_last1_carry__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__1_i_8
       (.I0(pkg_rd_size[17]),
        .O(pkg_rd_last1_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pkg_rd_last1_carry__2
       (.CI(pkg_rd_last1_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_pkg_rd_last1_carry__2_CO_UNCONNECTED[7:6],pkg_rd_last1_carry__2_n_2,pkg_rd_last1_carry__2_n_3,pkg_rd_last1_carry__2_n_4,pkg_rd_last1_carry__2_n_5,pkg_rd_last1_carry__2_n_6,pkg_rd_last1_carry__2_n_7}),
        .DI({1'b0,1'b0,pkg_rd_size[30:25]}),
        .O({NLW_pkg_rd_last1_carry__2_O_UNCONNECTED[7],pkg_rd_last1[31:25]}),
        .S({1'b0,pkg_rd_last1_carry__2_i_1_n_0,pkg_rd_last1_carry__2_i_2_n_0,pkg_rd_last1_carry__2_i_3_n_0,pkg_rd_last1_carry__2_i_4_n_0,pkg_rd_last1_carry__2_i_5_n_0,pkg_rd_last1_carry__2_i_6_n_0,pkg_rd_last1_carry__2_i_7_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__2_i_1
       (.I0(pkg_rd_size[31]),
        .O(pkg_rd_last1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__2_i_2
       (.I0(pkg_rd_size[30]),
        .O(pkg_rd_last1_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__2_i_3
       (.I0(pkg_rd_size[29]),
        .O(pkg_rd_last1_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__2_i_4
       (.I0(pkg_rd_size[28]),
        .O(pkg_rd_last1_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__2_i_5
       (.I0(pkg_rd_size[27]),
        .O(pkg_rd_last1_carry__2_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__2_i_6
       (.I0(pkg_rd_size[26]),
        .O(pkg_rd_last1_carry__2_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry__2_i_7
       (.I0(pkg_rd_size[25]),
        .O(pkg_rd_last1_carry__2_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry_i_1
       (.I0(pkg_rd_size[8]),
        .O(pkg_rd_last1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry_i_2
       (.I0(pkg_rd_size[7]),
        .O(pkg_rd_last1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry_i_3
       (.I0(pkg_rd_size[6]),
        .O(pkg_rd_last1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry_i_4
       (.I0(pkg_rd_size[5]),
        .O(pkg_rd_last1_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry_i_5
       (.I0(pkg_rd_size[4]),
        .O(pkg_rd_last1_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry_i_6
       (.I0(pkg_rd_size[3]),
        .O(pkg_rd_last1_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry_i_7
       (.I0(pkg_rd_size[2]),
        .O(pkg_rd_last1_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_rd_last1_carry_i_8
       (.I0(pkg_rd_size[1]),
        .O(pkg_rd_last1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    pkg_rd_last_INST_0
       (.I0(m00_axi_rvalid),
        .I1(axi_rready_reg_1),
        .I2(pkg_rd_last0),
        .O(pkg_rd_last));
  LUT2 #(
    .INIT(4'h8)) 
    pkg_wr_en_INST_0
       (.I0(m00_axi_wready),
        .I1(w_cycle_flag_reg_0),
        .O(m00_axi_wready_0));
  CARRY8 pkg_wr_last0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({pkg_wr_last0_carry_n_0,pkg_wr_last0_carry_n_1,pkg_wr_last0_carry_n_2,pkg_wr_last0_carry_n_3,pkg_wr_last0_carry_n_4,pkg_wr_last0_carry_n_5,pkg_wr_last0_carry_n_6,pkg_wr_last0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pkg_wr_last0_carry_O_UNCONNECTED[7:0]),
        .S({pkg_wr_last0_carry_i_1_n_0,pkg_wr_last0_carry_i_2_n_0,pkg_wr_last0_carry_i_3_n_0,pkg_wr_last0_carry_i_4_n_0,pkg_wr_last0_carry_i_5_n_0,pkg_wr_last0_carry_i_6_n_0,pkg_wr_last0_carry_i_7_n_0,pkg_wr_last0_carry_i_8_n_0}));
  CARRY8 pkg_wr_last0_carry__0
       (.CI(pkg_wr_last0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_pkg_wr_last0_carry__0_CO_UNCONNECTED[7:3],pkg_wr_last0,pkg_wr_last0_carry__0_n_6,pkg_wr_last0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pkg_wr_last0_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,pkg_wr_last0_carry__0_i_1_n_0,pkg_wr_last0_carry__0_i_2_n_0,pkg_wr_last0_carry__0_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    pkg_wr_last0_carry__0_i_1
       (.I0(wr_data_cnt_reg[30]),
        .I1(pkg_wr_last1[30]),
        .I2(pkg_wr_last1[31]),
        .I3(wr_data_cnt_reg[31]),
        .O(pkg_wr_last0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pkg_wr_last0_carry__0_i_2
       (.I0(wr_data_cnt_reg[27]),
        .I1(pkg_wr_last1[27]),
        .I2(wr_data_cnt_reg[28]),
        .I3(pkg_wr_last1[28]),
        .I4(pkg_wr_last1[29]),
        .I5(wr_data_cnt_reg[29]),
        .O(pkg_wr_last0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pkg_wr_last0_carry__0_i_3
       (.I0(wr_data_cnt_reg[24]),
        .I1(pkg_wr_last1[24]),
        .I2(wr_data_cnt_reg[25]),
        .I3(pkg_wr_last1[25]),
        .I4(pkg_wr_last1[26]),
        .I5(wr_data_cnt_reg[26]),
        .O(pkg_wr_last0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pkg_wr_last0_carry_i_1
       (.I0(wr_data_cnt_reg[21]),
        .I1(pkg_wr_last1[21]),
        .I2(wr_data_cnt_reg[22]),
        .I3(pkg_wr_last1[22]),
        .I4(pkg_wr_last1[23]),
        .I5(wr_data_cnt_reg[23]),
        .O(pkg_wr_last0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pkg_wr_last0_carry_i_2
       (.I0(wr_data_cnt_reg[18]),
        .I1(pkg_wr_last1[18]),
        .I2(wr_data_cnt_reg[19]),
        .I3(pkg_wr_last1[19]),
        .I4(pkg_wr_last1[20]),
        .I5(wr_data_cnt_reg[20]),
        .O(pkg_wr_last0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pkg_wr_last0_carry_i_3
       (.I0(wr_data_cnt_reg[15]),
        .I1(pkg_wr_last1[15]),
        .I2(wr_data_cnt_reg[16]),
        .I3(pkg_wr_last1[16]),
        .I4(pkg_wr_last1[17]),
        .I5(wr_data_cnt_reg[17]),
        .O(pkg_wr_last0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pkg_wr_last0_carry_i_4
       (.I0(wr_data_cnt_reg[12]),
        .I1(pkg_wr_last1[12]),
        .I2(wr_data_cnt_reg[13]),
        .I3(pkg_wr_last1[13]),
        .I4(pkg_wr_last1[14]),
        .I5(wr_data_cnt_reg[14]),
        .O(pkg_wr_last0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pkg_wr_last0_carry_i_5
       (.I0(wr_data_cnt_reg[9]),
        .I1(pkg_wr_last1[9]),
        .I2(wr_data_cnt_reg[10]),
        .I3(pkg_wr_last1[10]),
        .I4(pkg_wr_last1[11]),
        .I5(wr_data_cnt_reg[11]),
        .O(pkg_wr_last0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pkg_wr_last0_carry_i_6
       (.I0(wr_data_cnt_reg[6]),
        .I1(pkg_wr_last1[6]),
        .I2(wr_data_cnt_reg[7]),
        .I3(pkg_wr_last1[7]),
        .I4(pkg_wr_last1[8]),
        .I5(wr_data_cnt_reg[8]),
        .O(pkg_wr_last0_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pkg_wr_last0_carry_i_7
       (.I0(wr_data_cnt_reg[3]),
        .I1(pkg_wr_last1[3]),
        .I2(wr_data_cnt_reg[4]),
        .I3(pkg_wr_last1[4]),
        .I4(pkg_wr_last1[5]),
        .I5(wr_data_cnt_reg[5]),
        .O(pkg_wr_last0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    pkg_wr_last0_carry_i_8
       (.I0(pkg_wr_size[0]),
        .I1(wr_data_cnt_reg[0]),
        .I2(wr_data_cnt_reg[1]),
        .I3(pkg_wr_last1[1]),
        .I4(pkg_wr_last1[2]),
        .I5(wr_data_cnt_reg[2]),
        .O(pkg_wr_last0_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pkg_wr_last1_carry
       (.CI(pkg_wr_size[0]),
        .CI_TOP(1'b0),
        .CO({pkg_wr_last1_carry_n_0,pkg_wr_last1_carry_n_1,pkg_wr_last1_carry_n_2,pkg_wr_last1_carry_n_3,pkg_wr_last1_carry_n_4,pkg_wr_last1_carry_n_5,pkg_wr_last1_carry_n_6,pkg_wr_last1_carry_n_7}),
        .DI(pkg_wr_size[8:1]),
        .O(pkg_wr_last1[8:1]),
        .S({pkg_wr_last1_carry_i_1_n_0,pkg_wr_last1_carry_i_2_n_0,pkg_wr_last1_carry_i_3_n_0,pkg_wr_last1_carry_i_4_n_0,pkg_wr_last1_carry_i_5_n_0,pkg_wr_last1_carry_i_6_n_0,pkg_wr_last1_carry_i_7_n_0,pkg_wr_last1_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pkg_wr_last1_carry__0
       (.CI(pkg_wr_last1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({pkg_wr_last1_carry__0_n_0,pkg_wr_last1_carry__0_n_1,pkg_wr_last1_carry__0_n_2,pkg_wr_last1_carry__0_n_3,pkg_wr_last1_carry__0_n_4,pkg_wr_last1_carry__0_n_5,pkg_wr_last1_carry__0_n_6,pkg_wr_last1_carry__0_n_7}),
        .DI(pkg_wr_size[16:9]),
        .O(pkg_wr_last1[16:9]),
        .S({pkg_wr_last1_carry__0_i_1_n_0,pkg_wr_last1_carry__0_i_2_n_0,pkg_wr_last1_carry__0_i_3_n_0,pkg_wr_last1_carry__0_i_4_n_0,pkg_wr_last1_carry__0_i_5_n_0,pkg_wr_last1_carry__0_i_6_n_0,pkg_wr_last1_carry__0_i_7_n_0,pkg_wr_last1_carry__0_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__0_i_1
       (.I0(pkg_wr_size[16]),
        .O(pkg_wr_last1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__0_i_2
       (.I0(pkg_wr_size[15]),
        .O(pkg_wr_last1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__0_i_3
       (.I0(pkg_wr_size[14]),
        .O(pkg_wr_last1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__0_i_4
       (.I0(pkg_wr_size[13]),
        .O(pkg_wr_last1_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__0_i_5
       (.I0(pkg_wr_size[12]),
        .O(pkg_wr_last1_carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__0_i_6
       (.I0(pkg_wr_size[11]),
        .O(pkg_wr_last1_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__0_i_7
       (.I0(pkg_wr_size[10]),
        .O(pkg_wr_last1_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__0_i_8
       (.I0(pkg_wr_size[9]),
        .O(pkg_wr_last1_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pkg_wr_last1_carry__1
       (.CI(pkg_wr_last1_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({pkg_wr_last1_carry__1_n_0,pkg_wr_last1_carry__1_n_1,pkg_wr_last1_carry__1_n_2,pkg_wr_last1_carry__1_n_3,pkg_wr_last1_carry__1_n_4,pkg_wr_last1_carry__1_n_5,pkg_wr_last1_carry__1_n_6,pkg_wr_last1_carry__1_n_7}),
        .DI(pkg_wr_size[24:17]),
        .O(pkg_wr_last1[24:17]),
        .S({pkg_wr_last1_carry__1_i_1_n_0,pkg_wr_last1_carry__1_i_2_n_0,pkg_wr_last1_carry__1_i_3_n_0,pkg_wr_last1_carry__1_i_4_n_0,pkg_wr_last1_carry__1_i_5_n_0,pkg_wr_last1_carry__1_i_6_n_0,pkg_wr_last1_carry__1_i_7_n_0,pkg_wr_last1_carry__1_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__1_i_1
       (.I0(pkg_wr_size[24]),
        .O(pkg_wr_last1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__1_i_2
       (.I0(pkg_wr_size[23]),
        .O(pkg_wr_last1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__1_i_3
       (.I0(pkg_wr_size[22]),
        .O(pkg_wr_last1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__1_i_4
       (.I0(pkg_wr_size[21]),
        .O(pkg_wr_last1_carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__1_i_5
       (.I0(pkg_wr_size[20]),
        .O(pkg_wr_last1_carry__1_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__1_i_6
       (.I0(pkg_wr_size[19]),
        .O(pkg_wr_last1_carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__1_i_7
       (.I0(pkg_wr_size[18]),
        .O(pkg_wr_last1_carry__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__1_i_8
       (.I0(pkg_wr_size[17]),
        .O(pkg_wr_last1_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pkg_wr_last1_carry__2
       (.CI(pkg_wr_last1_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_pkg_wr_last1_carry__2_CO_UNCONNECTED[7:6],pkg_wr_last1_carry__2_n_2,pkg_wr_last1_carry__2_n_3,pkg_wr_last1_carry__2_n_4,pkg_wr_last1_carry__2_n_5,pkg_wr_last1_carry__2_n_6,pkg_wr_last1_carry__2_n_7}),
        .DI({1'b0,1'b0,pkg_wr_size[30:25]}),
        .O({NLW_pkg_wr_last1_carry__2_O_UNCONNECTED[7],pkg_wr_last1[31:25]}),
        .S({1'b0,pkg_wr_last1_carry__2_i_1_n_0,pkg_wr_last1_carry__2_i_2_n_0,pkg_wr_last1_carry__2_i_3_n_0,pkg_wr_last1_carry__2_i_4_n_0,pkg_wr_last1_carry__2_i_5_n_0,pkg_wr_last1_carry__2_i_6_n_0,pkg_wr_last1_carry__2_i_7_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__2_i_1
       (.I0(pkg_wr_size[31]),
        .O(pkg_wr_last1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__2_i_2
       (.I0(pkg_wr_size[30]),
        .O(pkg_wr_last1_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__2_i_3
       (.I0(pkg_wr_size[29]),
        .O(pkg_wr_last1_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__2_i_4
       (.I0(pkg_wr_size[28]),
        .O(pkg_wr_last1_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__2_i_5
       (.I0(pkg_wr_size[27]),
        .O(pkg_wr_last1_carry__2_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__2_i_6
       (.I0(pkg_wr_size[26]),
        .O(pkg_wr_last1_carry__2_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry__2_i_7
       (.I0(pkg_wr_size[25]),
        .O(pkg_wr_last1_carry__2_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry_i_1
       (.I0(pkg_wr_size[8]),
        .O(pkg_wr_last1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry_i_2
       (.I0(pkg_wr_size[7]),
        .O(pkg_wr_last1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry_i_3
       (.I0(pkg_wr_size[6]),
        .O(pkg_wr_last1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry_i_4
       (.I0(pkg_wr_size[5]),
        .O(pkg_wr_last1_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry_i_5
       (.I0(pkg_wr_size[4]),
        .O(pkg_wr_last1_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry_i_6
       (.I0(pkg_wr_size[3]),
        .O(pkg_wr_last1_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry_i_7
       (.I0(pkg_wr_size[2]),
        .O(pkg_wr_last1_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pkg_wr_last1_carry_i_8
       (.I0(pkg_wr_size[1]),
        .O(pkg_wr_last1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    pkg_wr_last_INST_0
       (.I0(w_cycle_flag_reg_0),
        .I1(m00_axi_wready),
        .I2(pkg_wr_last0),
        .O(pkg_wr_last));
  LUT6 #(
    .INIT(64'h00A0A2A0A2A0A2A0)) 
    r_cycle_flag_i_1
       (.I0(m00_axi_aresetn),
        .I1(read_data_flag),
        .I2(r_cycle_flag),
        .I3(r_fdma_locked),
        .I4(m00_axi_arready),
        .I5(axi_arvalid_reg_0),
        .O(r_cycle_flag_i_1_n_0));
  FDRE r_cycle_flag_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(r_cycle_flag_i_1_n_0),
        .Q(r_cycle_flag),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF7F00)) 
    r_fdma_locked_i_1
       (.I0(pkg_rd_last0),
        .I1(axi_rready_reg_1),
        .I2(m00_axi_rvalid),
        .I3(r_fdma_locked),
        .I4(pkg_rd_areq),
        .O(r_fdma_locked_i_1_n_0));
  FDRE r_fdma_locked_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(r_fdma_locked_i_1_n_0),
        .Q(r_fdma_locked),
        .R(clear));
  LUT4 #(
    .INIT(16'h80FF)) 
    \rd_data_cnt[0]_i_1 
       (.I0(pkg_rd_last0),
        .I1(axi_rready_reg_1),
        .I2(m00_axi_rvalid),
        .I3(m00_axi_aresetn),
        .O(\rd_data_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_data_cnt[0]_i_3 
       (.I0(rd_data_cnt_reg[0]),
        .O(\rd_data_cnt[0]_i_3_n_0 ));
  FDRE \rd_data_cnt_reg[0] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[0]_i_2_n_15 ),
        .Q(rd_data_cnt_reg[0]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \rd_data_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\rd_data_cnt_reg[0]_i_2_n_0 ,\rd_data_cnt_reg[0]_i_2_n_1 ,\rd_data_cnt_reg[0]_i_2_n_2 ,\rd_data_cnt_reg[0]_i_2_n_3 ,\rd_data_cnt_reg[0]_i_2_n_4 ,\rd_data_cnt_reg[0]_i_2_n_5 ,\rd_data_cnt_reg[0]_i_2_n_6 ,\rd_data_cnt_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\rd_data_cnt_reg[0]_i_2_n_8 ,\rd_data_cnt_reg[0]_i_2_n_9 ,\rd_data_cnt_reg[0]_i_2_n_10 ,\rd_data_cnt_reg[0]_i_2_n_11 ,\rd_data_cnt_reg[0]_i_2_n_12 ,\rd_data_cnt_reg[0]_i_2_n_13 ,\rd_data_cnt_reg[0]_i_2_n_14 ,\rd_data_cnt_reg[0]_i_2_n_15 }),
        .S({rd_data_cnt_reg[7:1],\rd_data_cnt[0]_i_3_n_0 }));
  FDRE \rd_data_cnt_reg[10] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[8]_i_1_n_13 ),
        .Q(rd_data_cnt_reg[10]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[11] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[8]_i_1_n_12 ),
        .Q(rd_data_cnt_reg[11]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[12] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[8]_i_1_n_11 ),
        .Q(rd_data_cnt_reg[12]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[13] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[8]_i_1_n_10 ),
        .Q(rd_data_cnt_reg[13]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[14] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[8]_i_1_n_9 ),
        .Q(rd_data_cnt_reg[14]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[15] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[8]_i_1_n_8 ),
        .Q(rd_data_cnt_reg[15]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[16] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[16]_i_1_n_15 ),
        .Q(rd_data_cnt_reg[16]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \rd_data_cnt_reg[16]_i_1 
       (.CI(\rd_data_cnt_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\rd_data_cnt_reg[16]_i_1_n_0 ,\rd_data_cnt_reg[16]_i_1_n_1 ,\rd_data_cnt_reg[16]_i_1_n_2 ,\rd_data_cnt_reg[16]_i_1_n_3 ,\rd_data_cnt_reg[16]_i_1_n_4 ,\rd_data_cnt_reg[16]_i_1_n_5 ,\rd_data_cnt_reg[16]_i_1_n_6 ,\rd_data_cnt_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_data_cnt_reg[16]_i_1_n_8 ,\rd_data_cnt_reg[16]_i_1_n_9 ,\rd_data_cnt_reg[16]_i_1_n_10 ,\rd_data_cnt_reg[16]_i_1_n_11 ,\rd_data_cnt_reg[16]_i_1_n_12 ,\rd_data_cnt_reg[16]_i_1_n_13 ,\rd_data_cnt_reg[16]_i_1_n_14 ,\rd_data_cnt_reg[16]_i_1_n_15 }),
        .S(rd_data_cnt_reg[23:16]));
  FDRE \rd_data_cnt_reg[17] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[16]_i_1_n_14 ),
        .Q(rd_data_cnt_reg[17]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[18] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[16]_i_1_n_13 ),
        .Q(rd_data_cnt_reg[18]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[19] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[16]_i_1_n_12 ),
        .Q(rd_data_cnt_reg[19]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[1] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[0]_i_2_n_14 ),
        .Q(rd_data_cnt_reg[1]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[20] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[16]_i_1_n_11 ),
        .Q(rd_data_cnt_reg[20]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[21] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[16]_i_1_n_10 ),
        .Q(rd_data_cnt_reg[21]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[22] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[16]_i_1_n_9 ),
        .Q(rd_data_cnt_reg[22]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[23] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[16]_i_1_n_8 ),
        .Q(rd_data_cnt_reg[23]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[24] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[24]_i_1_n_15 ),
        .Q(rd_data_cnt_reg[24]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \rd_data_cnt_reg[24]_i_1 
       (.CI(\rd_data_cnt_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_rd_data_cnt_reg[24]_i_1_CO_UNCONNECTED [7],\rd_data_cnt_reg[24]_i_1_n_1 ,\rd_data_cnt_reg[24]_i_1_n_2 ,\rd_data_cnt_reg[24]_i_1_n_3 ,\rd_data_cnt_reg[24]_i_1_n_4 ,\rd_data_cnt_reg[24]_i_1_n_5 ,\rd_data_cnt_reg[24]_i_1_n_6 ,\rd_data_cnt_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_data_cnt_reg[24]_i_1_n_8 ,\rd_data_cnt_reg[24]_i_1_n_9 ,\rd_data_cnt_reg[24]_i_1_n_10 ,\rd_data_cnt_reg[24]_i_1_n_11 ,\rd_data_cnt_reg[24]_i_1_n_12 ,\rd_data_cnt_reg[24]_i_1_n_13 ,\rd_data_cnt_reg[24]_i_1_n_14 ,\rd_data_cnt_reg[24]_i_1_n_15 }),
        .S(rd_data_cnt_reg[31:24]));
  FDRE \rd_data_cnt_reg[25] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[24]_i_1_n_14 ),
        .Q(rd_data_cnt_reg[25]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[26] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[24]_i_1_n_13 ),
        .Q(rd_data_cnt_reg[26]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[27] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[24]_i_1_n_12 ),
        .Q(rd_data_cnt_reg[27]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[28] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[24]_i_1_n_11 ),
        .Q(rd_data_cnt_reg[28]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[29] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[24]_i_1_n_10 ),
        .Q(rd_data_cnt_reg[29]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[2] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[0]_i_2_n_13 ),
        .Q(rd_data_cnt_reg[2]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[30] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[24]_i_1_n_9 ),
        .Q(rd_data_cnt_reg[30]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[31] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[24]_i_1_n_8 ),
        .Q(rd_data_cnt_reg[31]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[3] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[0]_i_2_n_12 ),
        .Q(rd_data_cnt_reg[3]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[4] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[0]_i_2_n_11 ),
        .Q(rd_data_cnt_reg[4]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[5] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[0]_i_2_n_10 ),
        .Q(rd_data_cnt_reg[5]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[6] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[0]_i_2_n_9 ),
        .Q(rd_data_cnt_reg[6]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[7] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[0]_i_2_n_8 ),
        .Q(rd_data_cnt_reg[7]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  FDRE \rd_data_cnt_reg[8] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[8]_i_1_n_15 ),
        .Q(rd_data_cnt_reg[8]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \rd_data_cnt_reg[8]_i_1 
       (.CI(\rd_data_cnt_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\rd_data_cnt_reg[8]_i_1_n_0 ,\rd_data_cnt_reg[8]_i_1_n_1 ,\rd_data_cnt_reg[8]_i_1_n_2 ,\rd_data_cnt_reg[8]_i_1_n_3 ,\rd_data_cnt_reg[8]_i_1_n_4 ,\rd_data_cnt_reg[8]_i_1_n_5 ,\rd_data_cnt_reg[8]_i_1_n_6 ,\rd_data_cnt_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_data_cnt_reg[8]_i_1_n_8 ,\rd_data_cnt_reg[8]_i_1_n_9 ,\rd_data_cnt_reg[8]_i_1_n_10 ,\rd_data_cnt_reg[8]_i_1_n_11 ,\rd_data_cnt_reg[8]_i_1_n_12 ,\rd_data_cnt_reg[8]_i_1_n_13 ,\rd_data_cnt_reg[8]_i_1_n_14 ,\rd_data_cnt_reg[8]_i_1_n_15 }),
        .S(rd_data_cnt_reg[15:8]));
  FDRE \rd_data_cnt_reg[9] 
       (.C(m00_axi_aclk),
        .CE(axi_rready_reg_0),
        .D(\rd_data_cnt_reg[8]_i_1_n_14 ),
        .Q(rd_data_cnt_reg[9]),
        .R(\rd_data_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF70707070707070)) 
    read_data_flag_i_1
       (.I0(axi_rready_reg_0),
        .I1(m00_axi_rlast),
        .I2(read_data_flag),
        .I3(r_cycle_flag),
        .I4(m00_axi_arready),
        .I5(axi_arvalid_reg_0),
        .O(read_data_flag_i_1_n_0));
  FDRE read_data_flag_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(read_data_flag_i_1_n_0),
        .Q(read_data_flag),
        .R(clear));
  LUT3 #(
    .INIT(8'h74)) 
    w_cycle_flag_i_1
       (.I0(m00_axi_wlast),
        .I1(w_cycle_flag_reg_0),
        .I2(w_fdma_locked),
        .O(w_cycle_flag_i_1_n_0));
  FDRE w_cycle_flag_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(w_cycle_flag_i_1_n_0),
        .Q(w_cycle_flag_reg_0),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF7F00)) 
    w_fdma_locked_i_1
       (.I0(pkg_wr_last0),
        .I1(m00_axi_wready),
        .I2(w_cycle_flag_reg_0),
        .I3(w_fdma_locked),
        .I4(pkg_wr_areq),
        .O(w_fdma_locked_i_1_n_0));
  FDRE w_fdma_locked_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(w_fdma_locked_i_1_n_0),
        .Q(w_fdma_locked),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00FB)) 
    \w_word_cnt[0]_i_1 
       (.I0(axi_wlast_i_2_n_0),
        .I1(w_word_cnt[2]),
        .I2(w_word_cnt[1]),
        .I3(w_word_cnt[0]),
        .O(\w_word_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \w_word_cnt[1]_i_1 
       (.I0(axi_wlast_i_2_n_0),
        .I1(w_word_cnt[2]),
        .I2(w_word_cnt[1]),
        .I3(w_word_cnt[0]),
        .O(\w_word_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h38C8)) 
    \w_word_cnt[2]_i_1 
       (.I0(axi_wlast_i_2_n_0),
        .I1(w_word_cnt[2]),
        .I2(w_word_cnt[1]),
        .I3(w_word_cnt[0]),
        .O(\w_word_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h3BFBC000)) 
    \w_word_cnt[3]_i_1 
       (.I0(axi_wlast_i_2_n_0),
        .I1(w_word_cnt[2]),
        .I2(w_word_cnt[1]),
        .I3(w_word_cnt[0]),
        .I4(w_word_cnt[3]),
        .O(\w_word_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3BFBFBFBC0000000)) 
    \w_word_cnt[4]_i_1 
       (.I0(axi_wlast_i_2_n_0),
        .I1(w_word_cnt[2]),
        .I2(w_word_cnt[1]),
        .I3(w_word_cnt[3]),
        .I4(w_word_cnt[0]),
        .I5(w_word_cnt[4]),
        .O(\w_word_cnt[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FBFB00)) 
    \w_word_cnt[5]_i_1 
       (.I0(axi_wlast_i_2_n_0),
        .I1(w_word_cnt[2]),
        .I2(w_word_cnt[1]),
        .I3(\w_word_cnt[5]_i_2_n_0 ),
        .I4(w_word_cnt[5]),
        .O(\w_word_cnt[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \w_word_cnt[5]_i_2 
       (.I0(w_word_cnt[4]),
        .I1(w_word_cnt[3]),
        .I2(w_word_cnt[2]),
        .I3(w_word_cnt[0]),
        .I4(w_word_cnt[1]),
        .O(\w_word_cnt[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFB0000FB)) 
    \w_word_cnt[6]_i_1 
       (.I0(axi_wlast_i_2_n_0),
        .I1(w_word_cnt[2]),
        .I2(w_word_cnt[1]),
        .I3(\w_word_cnt[7]_i_3_n_0 ),
        .I4(w_word_cnt[6]),
        .O(\w_word_cnt[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF040404)) 
    \w_word_cnt[7]_i_1 
       (.I0(axi_wlast_i_2_n_0),
        .I1(w_word_cnt[2]),
        .I2(w_word_cnt[1]),
        .I3(w_cycle_flag_reg_0),
        .I4(m00_axi_wready),
        .O(w_word_cnt_0));
  LUT6 #(
    .INIT(64'hFB00FBFB00FB0000)) 
    \w_word_cnt[7]_i_2 
       (.I0(axi_wlast_i_2_n_0),
        .I1(w_word_cnt[2]),
        .I2(w_word_cnt[1]),
        .I3(\w_word_cnt[7]_i_3_n_0 ),
        .I4(w_word_cnt[6]),
        .I5(w_word_cnt[7]),
        .O(\w_word_cnt[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \w_word_cnt[7]_i_3 
       (.I0(w_word_cnt[1]),
        .I1(w_word_cnt[0]),
        .I2(w_word_cnt[2]),
        .I3(w_word_cnt[3]),
        .I4(w_word_cnt[4]),
        .I5(w_word_cnt[5]),
        .O(\w_word_cnt[7]_i_3_n_0 ));
  FDRE \w_word_cnt_reg[0] 
       (.C(m00_axi_aclk),
        .CE(w_word_cnt_0),
        .D(\w_word_cnt[0]_i_1_n_0 ),
        .Q(w_word_cnt[0]),
        .R(clear));
  FDRE \w_word_cnt_reg[1] 
       (.C(m00_axi_aclk),
        .CE(w_word_cnt_0),
        .D(\w_word_cnt[1]_i_1_n_0 ),
        .Q(w_word_cnt[1]),
        .R(clear));
  FDRE \w_word_cnt_reg[2] 
       (.C(m00_axi_aclk),
        .CE(w_word_cnt_0),
        .D(\w_word_cnt[2]_i_1_n_0 ),
        .Q(w_word_cnt[2]),
        .R(clear));
  FDRE \w_word_cnt_reg[3] 
       (.C(m00_axi_aclk),
        .CE(w_word_cnt_0),
        .D(\w_word_cnt[3]_i_1_n_0 ),
        .Q(w_word_cnt[3]),
        .R(clear));
  FDRE \w_word_cnt_reg[4] 
       (.C(m00_axi_aclk),
        .CE(w_word_cnt_0),
        .D(\w_word_cnt[4]_i_1_n_0 ),
        .Q(w_word_cnt[4]),
        .R(clear));
  FDRE \w_word_cnt_reg[5] 
       (.C(m00_axi_aclk),
        .CE(w_word_cnt_0),
        .D(\w_word_cnt[5]_i_1_n_0 ),
        .Q(w_word_cnt[5]),
        .R(clear));
  FDRE \w_word_cnt_reg[6] 
       (.C(m00_axi_aclk),
        .CE(w_word_cnt_0),
        .D(\w_word_cnt[6]_i_1_n_0 ),
        .Q(w_word_cnt[6]),
        .R(clear));
  FDRE \w_word_cnt_reg[7] 
       (.C(m00_axi_aclk),
        .CE(w_word_cnt_0),
        .D(\w_word_cnt[7]_i_2_n_0 ),
        .Q(w_word_cnt[7]),
        .R(clear));
  LUT4 #(
    .INIT(16'h80FF)) 
    \wr_data_cnt[0]_i_1 
       (.I0(pkg_wr_last0),
        .I1(m00_axi_wready),
        .I2(w_cycle_flag_reg_0),
        .I3(m00_axi_aresetn),
        .O(\wr_data_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_data_cnt[0]_i_3 
       (.I0(wr_data_cnt_reg[0]),
        .O(\wr_data_cnt[0]_i_3_n_0 ));
  FDRE \wr_data_cnt_reg[0] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[0]_i_2_n_15 ),
        .Q(wr_data_cnt_reg[0]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \wr_data_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\wr_data_cnt_reg[0]_i_2_n_0 ,\wr_data_cnt_reg[0]_i_2_n_1 ,\wr_data_cnt_reg[0]_i_2_n_2 ,\wr_data_cnt_reg[0]_i_2_n_3 ,\wr_data_cnt_reg[0]_i_2_n_4 ,\wr_data_cnt_reg[0]_i_2_n_5 ,\wr_data_cnt_reg[0]_i_2_n_6 ,\wr_data_cnt_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\wr_data_cnt_reg[0]_i_2_n_8 ,\wr_data_cnt_reg[0]_i_2_n_9 ,\wr_data_cnt_reg[0]_i_2_n_10 ,\wr_data_cnt_reg[0]_i_2_n_11 ,\wr_data_cnt_reg[0]_i_2_n_12 ,\wr_data_cnt_reg[0]_i_2_n_13 ,\wr_data_cnt_reg[0]_i_2_n_14 ,\wr_data_cnt_reg[0]_i_2_n_15 }),
        .S({wr_data_cnt_reg[7:1],\wr_data_cnt[0]_i_3_n_0 }));
  FDRE \wr_data_cnt_reg[10] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[8]_i_1_n_13 ),
        .Q(wr_data_cnt_reg[10]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[11] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[8]_i_1_n_12 ),
        .Q(wr_data_cnt_reg[11]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[12] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[8]_i_1_n_11 ),
        .Q(wr_data_cnt_reg[12]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[13] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[8]_i_1_n_10 ),
        .Q(wr_data_cnt_reg[13]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[14] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[8]_i_1_n_9 ),
        .Q(wr_data_cnt_reg[14]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[15] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[8]_i_1_n_8 ),
        .Q(wr_data_cnt_reg[15]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[16] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[16]_i_1_n_15 ),
        .Q(wr_data_cnt_reg[16]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \wr_data_cnt_reg[16]_i_1 
       (.CI(\wr_data_cnt_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\wr_data_cnt_reg[16]_i_1_n_0 ,\wr_data_cnt_reg[16]_i_1_n_1 ,\wr_data_cnt_reg[16]_i_1_n_2 ,\wr_data_cnt_reg[16]_i_1_n_3 ,\wr_data_cnt_reg[16]_i_1_n_4 ,\wr_data_cnt_reg[16]_i_1_n_5 ,\wr_data_cnt_reg[16]_i_1_n_6 ,\wr_data_cnt_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\wr_data_cnt_reg[16]_i_1_n_8 ,\wr_data_cnt_reg[16]_i_1_n_9 ,\wr_data_cnt_reg[16]_i_1_n_10 ,\wr_data_cnt_reg[16]_i_1_n_11 ,\wr_data_cnt_reg[16]_i_1_n_12 ,\wr_data_cnt_reg[16]_i_1_n_13 ,\wr_data_cnt_reg[16]_i_1_n_14 ,\wr_data_cnt_reg[16]_i_1_n_15 }),
        .S(wr_data_cnt_reg[23:16]));
  FDRE \wr_data_cnt_reg[17] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[16]_i_1_n_14 ),
        .Q(wr_data_cnt_reg[17]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[18] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[16]_i_1_n_13 ),
        .Q(wr_data_cnt_reg[18]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[19] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[16]_i_1_n_12 ),
        .Q(wr_data_cnt_reg[19]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[1] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[0]_i_2_n_14 ),
        .Q(wr_data_cnt_reg[1]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[20] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[16]_i_1_n_11 ),
        .Q(wr_data_cnt_reg[20]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[21] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[16]_i_1_n_10 ),
        .Q(wr_data_cnt_reg[21]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[22] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[16]_i_1_n_9 ),
        .Q(wr_data_cnt_reg[22]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[23] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[16]_i_1_n_8 ),
        .Q(wr_data_cnt_reg[23]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[24] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[24]_i_1_n_15 ),
        .Q(wr_data_cnt_reg[24]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \wr_data_cnt_reg[24]_i_1 
       (.CI(\wr_data_cnt_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_wr_data_cnt_reg[24]_i_1_CO_UNCONNECTED [7],\wr_data_cnt_reg[24]_i_1_n_1 ,\wr_data_cnt_reg[24]_i_1_n_2 ,\wr_data_cnt_reg[24]_i_1_n_3 ,\wr_data_cnt_reg[24]_i_1_n_4 ,\wr_data_cnt_reg[24]_i_1_n_5 ,\wr_data_cnt_reg[24]_i_1_n_6 ,\wr_data_cnt_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\wr_data_cnt_reg[24]_i_1_n_8 ,\wr_data_cnt_reg[24]_i_1_n_9 ,\wr_data_cnt_reg[24]_i_1_n_10 ,\wr_data_cnt_reg[24]_i_1_n_11 ,\wr_data_cnt_reg[24]_i_1_n_12 ,\wr_data_cnt_reg[24]_i_1_n_13 ,\wr_data_cnt_reg[24]_i_1_n_14 ,\wr_data_cnt_reg[24]_i_1_n_15 }),
        .S(wr_data_cnt_reg[31:24]));
  FDRE \wr_data_cnt_reg[25] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[24]_i_1_n_14 ),
        .Q(wr_data_cnt_reg[25]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[26] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[24]_i_1_n_13 ),
        .Q(wr_data_cnt_reg[26]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[27] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[24]_i_1_n_12 ),
        .Q(wr_data_cnt_reg[27]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[28] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[24]_i_1_n_11 ),
        .Q(wr_data_cnt_reg[28]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[29] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[24]_i_1_n_10 ),
        .Q(wr_data_cnt_reg[29]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[2] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[0]_i_2_n_13 ),
        .Q(wr_data_cnt_reg[2]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[30] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[24]_i_1_n_9 ),
        .Q(wr_data_cnt_reg[30]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[31] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[24]_i_1_n_8 ),
        .Q(wr_data_cnt_reg[31]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[3] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[0]_i_2_n_12 ),
        .Q(wr_data_cnt_reg[3]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[4] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[0]_i_2_n_11 ),
        .Q(wr_data_cnt_reg[4]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[5] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[0]_i_2_n_10 ),
        .Q(wr_data_cnt_reg[5]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[6] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[0]_i_2_n_9 ),
        .Q(wr_data_cnt_reg[6]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[7] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[0]_i_2_n_8 ),
        .Q(wr_data_cnt_reg[7]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  FDRE \wr_data_cnt_reg[8] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[8]_i_1_n_15 ),
        .Q(wr_data_cnt_reg[8]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \wr_data_cnt_reg[8]_i_1 
       (.CI(\wr_data_cnt_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\wr_data_cnt_reg[8]_i_1_n_0 ,\wr_data_cnt_reg[8]_i_1_n_1 ,\wr_data_cnt_reg[8]_i_1_n_2 ,\wr_data_cnt_reg[8]_i_1_n_3 ,\wr_data_cnt_reg[8]_i_1_n_4 ,\wr_data_cnt_reg[8]_i_1_n_5 ,\wr_data_cnt_reg[8]_i_1_n_6 ,\wr_data_cnt_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\wr_data_cnt_reg[8]_i_1_n_8 ,\wr_data_cnt_reg[8]_i_1_n_9 ,\wr_data_cnt_reg[8]_i_1_n_10 ,\wr_data_cnt_reg[8]_i_1_n_11 ,\wr_data_cnt_reg[8]_i_1_n_12 ,\wr_data_cnt_reg[8]_i_1_n_13 ,\wr_data_cnt_reg[8]_i_1_n_14 ,\wr_data_cnt_reg[8]_i_1_n_15 }),
        .S(wr_data_cnt_reg[15:8]));
  FDRE \wr_data_cnt_reg[9] 
       (.C(m00_axi_aclk),
        .CE(m00_axi_wready_0),
        .D(\wr_data_cnt_reg[8]_i_1_n_14 ),
        .Q(wr_data_cnt_reg[9]),
        .R(\wr_data_cnt[0]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
