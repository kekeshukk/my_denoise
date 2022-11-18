// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Sep  7 11:05:52 2022
// Host        : DESKTOP-5JBVKGD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/wwwka/Desktop/my_cnn/denoise/denoise.gen/sources_1/bd/system/ip/system_the_controller_axi_0_1/system_the_controller_axi_0_1_sim_netlist.v
// Design      : system_the_controller_axi_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_the_controller_axi_0_1,the_controller_axi_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "the_controller_axi_v1_0,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module system_the_controller_axi_0_1
   (cmd_vld,
    cmd_out,
    s0_axi_aclk,
    s0_axi_aresetn,
    s0_axi_awaddr,
    s0_axi_awprot,
    s0_axi_awvalid,
    s0_axi_awready,
    s0_axi_wdata,
    s0_axi_wstrb,
    s0_axi_wvalid,
    s0_axi_wready,
    s0_axi_bresp,
    s0_axi_bvalid,
    s0_axi_bready,
    s0_axi_araddr,
    s0_axi_arprot,
    s0_axi_arvalid,
    s0_axi_arready,
    s0_axi_rdata,
    s0_axi_rresp,
    s0_axi_rvalid,
    s0_axi_rready);
  output cmd_vld;
  output [127:0]cmd_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S0_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S0_AXI_CLK, ASSOCIATED_BUSIF S0_AXI, ASSOCIATED_RESET s0_axi_aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk, INSERT_VIP 0" *) input s0_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S0_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S0_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s0_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI AWADDR" *) input [3:0]s0_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI AWPROT" *) input [2:0]s0_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI AWVALID" *) input s0_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI AWREADY" *) output s0_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI WDATA" *) input [31:0]s0_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI WSTRB" *) input [3:0]s0_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI WVALID" *) input s0_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI WREADY" *) output s0_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI BRESP" *) output [1:0]s0_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI BVALID" *) output s0_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI BREADY" *) input s0_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI ARADDR" *) input [3:0]s0_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI ARPROT" *) input [2:0]s0_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI ARVALID" *) input s0_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI ARREADY" *) output s0_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI RDATA" *) output [31:0]s0_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI RRESP" *) output [1:0]s0_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI RVALID" *) output s0_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S0_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_clk, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s0_axi_rready;

  wire \<const0> ;
  wire [127:0]cmd_out;
  wire cmd_vld;
  wire s0_axi_aclk;
  wire [3:0]s0_axi_araddr;
  wire s0_axi_aresetn;
  wire s0_axi_arready;
  wire s0_axi_arvalid;
  wire [3:0]s0_axi_awaddr;
  wire s0_axi_awready;
  wire s0_axi_awvalid;
  wire s0_axi_bready;
  wire s0_axi_bvalid;
  wire [31:0]s0_axi_rdata;
  wire s0_axi_rready;
  wire s0_axi_rvalid;
  wire [31:0]s0_axi_wdata;
  wire s0_axi_wready;
  wire [3:0]s0_axi_wstrb;
  wire s0_axi_wvalid;

  assign s0_axi_bresp[1] = \<const0> ;
  assign s0_axi_bresp[0] = \<const0> ;
  assign s0_axi_rresp[1] = \<const0> ;
  assign s0_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_the_controller_axi_0_1_the_controller_axi_v1_0 inst
       (.S_AXI_ARREADY(s0_axi_arready),
        .S_AXI_AWREADY(s0_axi_awready),
        .S_AXI_WREADY(s0_axi_wready),
        .cmd_out(cmd_out),
        .cmd_vld(cmd_vld),
        .s0_axi_aclk(s0_axi_aclk),
        .s0_axi_araddr(s0_axi_araddr[3:2]),
        .s0_axi_aresetn(s0_axi_aresetn),
        .s0_axi_arvalid(s0_axi_arvalid),
        .s0_axi_awaddr(s0_axi_awaddr[3:2]),
        .s0_axi_awvalid(s0_axi_awvalid),
        .s0_axi_bready(s0_axi_bready),
        .s0_axi_bvalid(s0_axi_bvalid),
        .s0_axi_rdata(s0_axi_rdata),
        .s0_axi_rready(s0_axi_rready),
        .s0_axi_rvalid(s0_axi_rvalid),
        .s0_axi_wdata(s0_axi_wdata),
        .s0_axi_wstrb(s0_axi_wstrb),
        .s0_axi_wvalid(s0_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "the_controller_axi_v1_0" *) 
module system_the_controller_axi_0_1_the_controller_axi_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    cmd_out,
    S_AXI_ARREADY,
    s0_axi_rdata,
    cmd_vld,
    s0_axi_rvalid,
    s0_axi_bvalid,
    s0_axi_aclk,
    s0_axi_awaddr,
    s0_axi_wdata,
    s0_axi_araddr,
    s0_axi_awvalid,
    s0_axi_wvalid,
    s0_axi_wstrb,
    s0_axi_arvalid,
    s0_axi_aresetn,
    s0_axi_bready,
    s0_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [127:0]cmd_out;
  output S_AXI_ARREADY;
  output [31:0]s0_axi_rdata;
  output cmd_vld;
  output s0_axi_rvalid;
  output s0_axi_bvalid;
  input s0_axi_aclk;
  input [1:0]s0_axi_awaddr;
  input [31:0]s0_axi_wdata;
  input [1:0]s0_axi_araddr;
  input s0_axi_awvalid;
  input s0_axi_wvalid;
  input [3:0]s0_axi_wstrb;
  input s0_axi_arvalid;
  input s0_axi_aresetn;
  input s0_axi_bready;
  input s0_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [127:0]cmd_out;
  wire cmd_vld;
  wire s0_axi_aclk;
  wire [1:0]s0_axi_araddr;
  wire s0_axi_aresetn;
  wire s0_axi_arvalid;
  wire [1:0]s0_axi_awaddr;
  wire s0_axi_awvalid;
  wire s0_axi_bready;
  wire s0_axi_bvalid;
  wire [31:0]s0_axi_rdata;
  wire s0_axi_rready;
  wire s0_axi_rvalid;
  wire [31:0]s0_axi_wdata;
  wire [3:0]s0_axi_wstrb;
  wire s0_axi_wvalid;

  system_the_controller_axi_0_1_the_controller_axi_v1_0_S0_AXI the_controller_axi_v1_0_S0_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .cmd_out(cmd_out),
        .cmd_vld(cmd_vld),
        .s0_axi_aclk(s0_axi_aclk),
        .s0_axi_araddr(s0_axi_araddr),
        .s0_axi_aresetn(s0_axi_aresetn),
        .s0_axi_arvalid(s0_axi_arvalid),
        .s0_axi_awaddr(s0_axi_awaddr),
        .s0_axi_awvalid(s0_axi_awvalid),
        .s0_axi_bready(s0_axi_bready),
        .s0_axi_bvalid(s0_axi_bvalid),
        .s0_axi_rdata(s0_axi_rdata),
        .s0_axi_rready(s0_axi_rready),
        .s0_axi_rvalid(s0_axi_rvalid),
        .s0_axi_wdata(s0_axi_wdata),
        .s0_axi_wstrb(s0_axi_wstrb),
        .s0_axi_wvalid(s0_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "the_controller_axi_v1_0_S0_AXI" *) 
module system_the_controller_axi_0_1_the_controller_axi_v1_0_S0_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    cmd_out,
    S_AXI_ARREADY,
    s0_axi_rdata,
    cmd_vld,
    s0_axi_rvalid,
    s0_axi_bvalid,
    s0_axi_aclk,
    s0_axi_awaddr,
    s0_axi_wdata,
    s0_axi_araddr,
    s0_axi_awvalid,
    s0_axi_wvalid,
    s0_axi_wstrb,
    s0_axi_arvalid,
    s0_axi_aresetn,
    s0_axi_bready,
    s0_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [127:0]cmd_out;
  output S_AXI_ARREADY;
  output [31:0]s0_axi_rdata;
  output cmd_vld;
  output s0_axi_rvalid;
  output s0_axi_bvalid;
  input s0_axi_aclk;
  input [1:0]s0_axi_awaddr;
  input [31:0]s0_axi_wdata;
  input [1:0]s0_axi_araddr;
  input s0_axi_awvalid;
  input s0_axi_wvalid;
  input [3:0]s0_axi_wstrb;
  input s0_axi_arvalid;
  input s0_axi_aresetn;
  input s0_axi_bready;
  input s0_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [127:0]cmd_out;
  wire cmd_out1__1;
  wire \cmd_out[0]_i_1_n_0 ;
  wire \cmd_out[100]_i_1_n_0 ;
  wire \cmd_out[101]_i_1_n_0 ;
  wire \cmd_out[102]_i_1_n_0 ;
  wire \cmd_out[103]_i_1_n_0 ;
  wire \cmd_out[104]_i_1_n_0 ;
  wire \cmd_out[105]_i_1_n_0 ;
  wire \cmd_out[106]_i_1_n_0 ;
  wire \cmd_out[107]_i_1_n_0 ;
  wire \cmd_out[108]_i_1_n_0 ;
  wire \cmd_out[109]_i_1_n_0 ;
  wire \cmd_out[10]_i_1_n_0 ;
  wire \cmd_out[110]_i_1_n_0 ;
  wire \cmd_out[111]_i_1_n_0 ;
  wire \cmd_out[112]_i_1_n_0 ;
  wire \cmd_out[113]_i_1_n_0 ;
  wire \cmd_out[114]_i_1_n_0 ;
  wire \cmd_out[115]_i_1_n_0 ;
  wire \cmd_out[116]_i_1_n_0 ;
  wire \cmd_out[117]_i_1_n_0 ;
  wire \cmd_out[118]_i_1_n_0 ;
  wire \cmd_out[119]_i_1_n_0 ;
  wire \cmd_out[11]_i_1_n_0 ;
  wire \cmd_out[120]_i_1_n_0 ;
  wire \cmd_out[121]_i_1_n_0 ;
  wire \cmd_out[122]_i_1_n_0 ;
  wire \cmd_out[123]_i_1_n_0 ;
  wire \cmd_out[124]_i_1_n_0 ;
  wire \cmd_out[125]_i_1_n_0 ;
  wire \cmd_out[126]_i_1_n_0 ;
  wire \cmd_out[127]_i_1_n_0 ;
  wire \cmd_out[12]_i_1_n_0 ;
  wire \cmd_out[13]_i_1_n_0 ;
  wire \cmd_out[14]_i_1_n_0 ;
  wire \cmd_out[15]_i_1_n_0 ;
  wire \cmd_out[16]_i_1_n_0 ;
  wire \cmd_out[17]_i_1_n_0 ;
  wire \cmd_out[18]_i_1_n_0 ;
  wire \cmd_out[19]_i_1_n_0 ;
  wire \cmd_out[1]_i_1_n_0 ;
  wire \cmd_out[20]_i_1_n_0 ;
  wire \cmd_out[21]_i_1_n_0 ;
  wire \cmd_out[22]_i_1_n_0 ;
  wire \cmd_out[23]_i_1_n_0 ;
  wire \cmd_out[24]_i_1_n_0 ;
  wire \cmd_out[25]_i_1_n_0 ;
  wire \cmd_out[26]_i_1_n_0 ;
  wire \cmd_out[27]_i_1_n_0 ;
  wire \cmd_out[28]_i_1_n_0 ;
  wire \cmd_out[29]_i_1_n_0 ;
  wire \cmd_out[2]_i_1_n_0 ;
  wire \cmd_out[30]_i_1_n_0 ;
  wire \cmd_out[31]_i_1_n_0 ;
  wire \cmd_out[32]_i_1_n_0 ;
  wire \cmd_out[33]_i_1_n_0 ;
  wire \cmd_out[34]_i_1_n_0 ;
  wire \cmd_out[35]_i_1_n_0 ;
  wire \cmd_out[36]_i_1_n_0 ;
  wire \cmd_out[37]_i_1_n_0 ;
  wire \cmd_out[38]_i_1_n_0 ;
  wire \cmd_out[39]_i_1_n_0 ;
  wire \cmd_out[3]_i_1_n_0 ;
  wire \cmd_out[40]_i_1_n_0 ;
  wire \cmd_out[41]_i_1_n_0 ;
  wire \cmd_out[42]_i_1_n_0 ;
  wire \cmd_out[43]_i_1_n_0 ;
  wire \cmd_out[44]_i_1_n_0 ;
  wire \cmd_out[45]_i_1_n_0 ;
  wire \cmd_out[46]_i_1_n_0 ;
  wire \cmd_out[47]_i_1_n_0 ;
  wire \cmd_out[48]_i_1_n_0 ;
  wire \cmd_out[49]_i_1_n_0 ;
  wire \cmd_out[4]_i_1_n_0 ;
  wire \cmd_out[50]_i_1_n_0 ;
  wire \cmd_out[51]_i_1_n_0 ;
  wire \cmd_out[52]_i_1_n_0 ;
  wire \cmd_out[53]_i_1_n_0 ;
  wire \cmd_out[54]_i_1_n_0 ;
  wire \cmd_out[55]_i_1_n_0 ;
  wire \cmd_out[56]_i_1_n_0 ;
  wire \cmd_out[57]_i_1_n_0 ;
  wire \cmd_out[58]_i_1_n_0 ;
  wire \cmd_out[59]_i_1_n_0 ;
  wire \cmd_out[5]_i_1_n_0 ;
  wire \cmd_out[60]_i_1_n_0 ;
  wire \cmd_out[61]_i_1_n_0 ;
  wire \cmd_out[62]_i_1_n_0 ;
  wire \cmd_out[63]_i_1_n_0 ;
  wire \cmd_out[64]_i_1_n_0 ;
  wire \cmd_out[65]_i_1_n_0 ;
  wire \cmd_out[66]_i_1_n_0 ;
  wire \cmd_out[67]_i_1_n_0 ;
  wire \cmd_out[68]_i_1_n_0 ;
  wire \cmd_out[69]_i_1_n_0 ;
  wire \cmd_out[6]_i_1_n_0 ;
  wire \cmd_out[70]_i_1_n_0 ;
  wire \cmd_out[71]_i_1_n_0 ;
  wire \cmd_out[72]_i_1_n_0 ;
  wire \cmd_out[73]_i_1_n_0 ;
  wire \cmd_out[74]_i_1_n_0 ;
  wire \cmd_out[75]_i_1_n_0 ;
  wire \cmd_out[76]_i_1_n_0 ;
  wire \cmd_out[77]_i_1_n_0 ;
  wire \cmd_out[78]_i_1_n_0 ;
  wire \cmd_out[79]_i_1_n_0 ;
  wire \cmd_out[7]_i_1_n_0 ;
  wire \cmd_out[80]_i_1_n_0 ;
  wire \cmd_out[81]_i_1_n_0 ;
  wire \cmd_out[82]_i_1_n_0 ;
  wire \cmd_out[83]_i_1_n_0 ;
  wire \cmd_out[84]_i_1_n_0 ;
  wire \cmd_out[85]_i_1_n_0 ;
  wire \cmd_out[86]_i_1_n_0 ;
  wire \cmd_out[87]_i_1_n_0 ;
  wire \cmd_out[88]_i_1_n_0 ;
  wire \cmd_out[89]_i_1_n_0 ;
  wire \cmd_out[8]_i_1_n_0 ;
  wire \cmd_out[90]_i_1_n_0 ;
  wire \cmd_out[91]_i_1_n_0 ;
  wire \cmd_out[92]_i_1_n_0 ;
  wire \cmd_out[93]_i_1_n_0 ;
  wire \cmd_out[94]_i_1_n_0 ;
  wire \cmd_out[95]_i_1_n_0 ;
  wire \cmd_out[96]_i_1_n_0 ;
  wire \cmd_out[97]_i_1_n_0 ;
  wire \cmd_out[98]_i_1_n_0 ;
  wire \cmd_out[99]_i_1_n_0 ;
  wire \cmd_out[9]_i_1_n_0 ;
  wire cmd_vld;
  wire cmd_vld_i_1_n_0;
  wire cmd_vld_i_2_n_0;
  wire cmd_vld_i_3_n_0;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s0_axi_aclk;
  wire [1:0]s0_axi_araddr;
  wire s0_axi_aresetn;
  wire s0_axi_arvalid;
  wire [1:0]s0_axi_awaddr;
  wire s0_axi_awvalid;
  wire s0_axi_bready;
  wire s0_axi_bvalid;
  wire [31:0]s0_axi_rdata;
  wire s0_axi_rready;
  wire s0_axi_rvalid;
  wire [31:0]s0_axi_wdata;
  wire [3:0]s0_axi_wstrb;
  wire s0_axi_wvalid;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__2;

  LUT6 #(
    .INIT(64'hBFFF8CCC8CCC8CCC)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(s0_axi_wvalid),
        .I3(s0_axi_awvalid),
        .I4(s0_axi_bready),
        .I5(s0_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(cmd_vld_i_3_n_0));
  FDRE \axi_araddr_reg[2] 
       (.C(s0_axi_aclk),
        .CE(axi_arready0),
        .D(s0_axi_araddr[0]),
        .Q(axi_araddr[2]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s0_axi_aclk),
        .CE(axi_arready0),
        .D(s0_axi_araddr[1]),
        .Q(axi_araddr[3]),
        .R(cmd_vld_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s0_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_awaddr_reg[2] 
       (.C(s0_axi_aclk),
        .CE(axi_awready0),
        .D(s0_axi_awaddr[0]),
        .Q(p_0_in[0]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s0_axi_aclk),
        .CE(axi_awready0),
        .D(s0_axi_awaddr[1]),
        .Q(p_0_in[1]),
        .R(cmd_vld_i_3_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_1
       (.I0(s0_axi_awvalid),
        .I1(s0_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(cmd_vld_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s0_axi_awvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s0_axi_wvalid),
        .I4(s0_axi_bready),
        .I5(s0_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s0_axi_bvalid),
        .R(cmd_vld_i_3_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(slv_reg0[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg0[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg0[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(slv_reg0[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(slv_reg0[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg0[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg0[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg0[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg0[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg0[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg0[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(slv_reg0[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg0[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg0[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg0[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg0[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg0[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg0[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg0[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg0[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg0[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg0[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(slv_reg0[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg0[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg1[31]),
        .I1(slv_reg0[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(slv_reg0[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(slv_reg0[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(slv_reg0[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(slv_reg0[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(slv_reg0[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg0[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(slv_reg0[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s0_axi_rdata[0]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s0_axi_rdata[10]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s0_axi_rdata[11]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s0_axi_rdata[12]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s0_axi_rdata[13]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s0_axi_rdata[14]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s0_axi_rdata[15]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s0_axi_rdata[16]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s0_axi_rdata[17]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s0_axi_rdata[18]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s0_axi_rdata[19]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s0_axi_rdata[1]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s0_axi_rdata[20]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s0_axi_rdata[21]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s0_axi_rdata[22]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s0_axi_rdata[23]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s0_axi_rdata[24]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s0_axi_rdata[25]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s0_axi_rdata[26]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s0_axi_rdata[27]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s0_axi_rdata[28]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s0_axi_rdata[29]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s0_axi_rdata[2]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s0_axi_rdata[30]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s0_axi_rdata[31]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s0_axi_rdata[3]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s0_axi_rdata[4]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s0_axi_rdata[5]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s0_axi_rdata[6]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s0_axi_rdata[7]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s0_axi_rdata[8]),
        .R(cmd_vld_i_3_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s0_axi_rdata[9]),
        .R(cmd_vld_i_3_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s0_axi_arvalid),
        .I2(s0_axi_rvalid),
        .I3(s0_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s0_axi_rvalid),
        .R(cmd_vld_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(s0_axi_awvalid),
        .I1(s0_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(cmd_vld_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[0]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[0]),
        .O(\cmd_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[100]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[4]),
        .O(\cmd_out[100]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[101]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[5]),
        .O(\cmd_out[101]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[102]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[6]),
        .O(\cmd_out[102]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[103]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[7]),
        .O(\cmd_out[103]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[104]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[8]),
        .O(\cmd_out[104]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[105]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[9]),
        .O(\cmd_out[105]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[106]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[10]),
        .O(\cmd_out[106]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[107]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[11]),
        .O(\cmd_out[107]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[108]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[12]),
        .O(\cmd_out[108]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[109]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[13]),
        .O(\cmd_out[109]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[10]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[10]),
        .O(\cmd_out[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[110]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[14]),
        .O(\cmd_out[110]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[111]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[15]),
        .O(\cmd_out[111]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[112]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[16]),
        .O(\cmd_out[112]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[113]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[17]),
        .O(\cmd_out[113]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[114]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[18]),
        .O(\cmd_out[114]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[115]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[19]),
        .O(\cmd_out[115]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[116]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[20]),
        .O(\cmd_out[116]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[117]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[21]),
        .O(\cmd_out[117]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[118]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[22]),
        .O(\cmd_out[118]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[119]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[23]),
        .O(\cmd_out[119]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[11]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[11]),
        .O(\cmd_out[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[120]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[24]),
        .O(\cmd_out[120]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[121]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[25]),
        .O(\cmd_out[121]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[122]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[26]),
        .O(\cmd_out[122]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[123]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[27]),
        .O(\cmd_out[123]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[124]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[28]),
        .O(\cmd_out[124]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[125]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[29]),
        .O(\cmd_out[125]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[126]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[30]),
        .O(\cmd_out[126]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[127]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[31]),
        .O(\cmd_out[127]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[12]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[12]),
        .O(\cmd_out[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[13]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[13]),
        .O(\cmd_out[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[14]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[14]),
        .O(\cmd_out[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[15]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[15]),
        .O(\cmd_out[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[16]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[16]),
        .O(\cmd_out[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[17]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[17]),
        .O(\cmd_out[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[18]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[18]),
        .O(\cmd_out[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[19]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[19]),
        .O(\cmd_out[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[1]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[1]),
        .O(\cmd_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[20]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[20]),
        .O(\cmd_out[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[21]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[21]),
        .O(\cmd_out[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[22]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[22]),
        .O(\cmd_out[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[23]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[23]),
        .O(\cmd_out[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[24]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[24]),
        .O(\cmd_out[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[25]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[25]),
        .O(\cmd_out[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[26]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[26]),
        .O(\cmd_out[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[27]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[27]),
        .O(\cmd_out[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[28]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[28]),
        .O(\cmd_out[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[29]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[29]),
        .O(\cmd_out[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[2]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[2]),
        .O(\cmd_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[30]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[30]),
        .O(\cmd_out[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[31]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[31]),
        .O(\cmd_out[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[32]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[0]),
        .O(\cmd_out[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[33]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[1]),
        .O(\cmd_out[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[34]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[2]),
        .O(\cmd_out[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[35]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[3]),
        .O(\cmd_out[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[36]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[4]),
        .O(\cmd_out[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[37]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[5]),
        .O(\cmd_out[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[38]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[6]),
        .O(\cmd_out[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[39]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[7]),
        .O(\cmd_out[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[3]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[3]),
        .O(\cmd_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[40]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[8]),
        .O(\cmd_out[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[41]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[9]),
        .O(\cmd_out[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[42]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[10]),
        .O(\cmd_out[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[43]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[11]),
        .O(\cmd_out[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[44]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[12]),
        .O(\cmd_out[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[45]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[13]),
        .O(\cmd_out[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[46]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[14]),
        .O(\cmd_out[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[47]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[15]),
        .O(\cmd_out[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[48]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[16]),
        .O(\cmd_out[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[49]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[17]),
        .O(\cmd_out[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[4]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[4]),
        .O(\cmd_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[50]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[18]),
        .O(\cmd_out[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[51]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[19]),
        .O(\cmd_out[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[52]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[20]),
        .O(\cmd_out[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[53]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[21]),
        .O(\cmd_out[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[54]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[22]),
        .O(\cmd_out[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[55]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[23]),
        .O(\cmd_out[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[56]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[24]),
        .O(\cmd_out[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[57]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[25]),
        .O(\cmd_out[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[58]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[26]),
        .O(\cmd_out[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[59]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[27]),
        .O(\cmd_out[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[5]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[5]),
        .O(\cmd_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[60]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[28]),
        .O(\cmd_out[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[61]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[29]),
        .O(\cmd_out[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[62]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[30]),
        .O(\cmd_out[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[63]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg1[31]),
        .O(\cmd_out[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[64]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[0]),
        .O(\cmd_out[64]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[65]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[1]),
        .O(\cmd_out[65]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[66]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[2]),
        .O(\cmd_out[66]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[67]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[3]),
        .O(\cmd_out[67]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[68]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[4]),
        .O(\cmd_out[68]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[69]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[5]),
        .O(\cmd_out[69]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[6]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[6]),
        .O(\cmd_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[70]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[6]),
        .O(\cmd_out[70]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[71]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[7]),
        .O(\cmd_out[71]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[72]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[8]),
        .O(\cmd_out[72]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[73]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[9]),
        .O(\cmd_out[73]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[74]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[10]),
        .O(\cmd_out[74]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[75]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[11]),
        .O(\cmd_out[75]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[76]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[12]),
        .O(\cmd_out[76]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[77]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[13]),
        .O(\cmd_out[77]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[78]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[14]),
        .O(\cmd_out[78]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[79]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[15]),
        .O(\cmd_out[79]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[7]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[7]),
        .O(\cmd_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[80]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[16]),
        .O(\cmd_out[80]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[81]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[17]),
        .O(\cmd_out[81]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[82]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[18]),
        .O(\cmd_out[82]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[83]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[19]),
        .O(\cmd_out[83]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[84]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[20]),
        .O(\cmd_out[84]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[85]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[21]),
        .O(\cmd_out[85]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[86]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[22]),
        .O(\cmd_out[86]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[87]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[23]),
        .O(\cmd_out[87]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[88]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[24]),
        .O(\cmd_out[88]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[89]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[25]),
        .O(\cmd_out[89]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[8]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[8]),
        .O(\cmd_out[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[90]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[26]),
        .O(\cmd_out[90]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[91]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[27]),
        .O(\cmd_out[91]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[92]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[28]),
        .O(\cmd_out[92]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[93]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[29]),
        .O(\cmd_out[93]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[94]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[30]),
        .O(\cmd_out[94]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[95]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg2[31]),
        .O(\cmd_out[95]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[96]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[0]),
        .O(\cmd_out[96]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[97]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[1]),
        .O(\cmd_out[97]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[98]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[2]),
        .O(\cmd_out[98]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[99]_i_1 
       (.I0(cmd_out1__1),
        .I1(slv_reg3[3]),
        .O(\cmd_out[99]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_out[9]_i_1 
       (.I0(cmd_out1__1),
        .I1(s0_axi_wdata[9]),
        .O(\cmd_out[9]_i_1_n_0 ));
  FDCE \cmd_out_reg[0] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[0]_i_1_n_0 ),
        .Q(cmd_out[0]));
  FDCE \cmd_out_reg[100] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[100]_i_1_n_0 ),
        .Q(cmd_out[100]));
  FDCE \cmd_out_reg[101] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[101]_i_1_n_0 ),
        .Q(cmd_out[101]));
  FDCE \cmd_out_reg[102] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[102]_i_1_n_0 ),
        .Q(cmd_out[102]));
  FDCE \cmd_out_reg[103] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[103]_i_1_n_0 ),
        .Q(cmd_out[103]));
  FDCE \cmd_out_reg[104] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[104]_i_1_n_0 ),
        .Q(cmd_out[104]));
  FDCE \cmd_out_reg[105] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[105]_i_1_n_0 ),
        .Q(cmd_out[105]));
  FDCE \cmd_out_reg[106] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[106]_i_1_n_0 ),
        .Q(cmd_out[106]));
  FDCE \cmd_out_reg[107] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[107]_i_1_n_0 ),
        .Q(cmd_out[107]));
  FDCE \cmd_out_reg[108] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[108]_i_1_n_0 ),
        .Q(cmd_out[108]));
  FDCE \cmd_out_reg[109] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[109]_i_1_n_0 ),
        .Q(cmd_out[109]));
  FDCE \cmd_out_reg[10] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[10]_i_1_n_0 ),
        .Q(cmd_out[10]));
  FDCE \cmd_out_reg[110] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[110]_i_1_n_0 ),
        .Q(cmd_out[110]));
  FDCE \cmd_out_reg[111] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[111]_i_1_n_0 ),
        .Q(cmd_out[111]));
  FDCE \cmd_out_reg[112] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[112]_i_1_n_0 ),
        .Q(cmd_out[112]));
  FDCE \cmd_out_reg[113] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[113]_i_1_n_0 ),
        .Q(cmd_out[113]));
  FDCE \cmd_out_reg[114] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[114]_i_1_n_0 ),
        .Q(cmd_out[114]));
  FDCE \cmd_out_reg[115] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[115]_i_1_n_0 ),
        .Q(cmd_out[115]));
  FDCE \cmd_out_reg[116] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[116]_i_1_n_0 ),
        .Q(cmd_out[116]));
  FDCE \cmd_out_reg[117] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[117]_i_1_n_0 ),
        .Q(cmd_out[117]));
  FDCE \cmd_out_reg[118] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[118]_i_1_n_0 ),
        .Q(cmd_out[118]));
  FDCE \cmd_out_reg[119] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[119]_i_1_n_0 ),
        .Q(cmd_out[119]));
  FDCE \cmd_out_reg[11] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[11]_i_1_n_0 ),
        .Q(cmd_out[11]));
  FDCE \cmd_out_reg[120] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[120]_i_1_n_0 ),
        .Q(cmd_out[120]));
  FDCE \cmd_out_reg[121] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[121]_i_1_n_0 ),
        .Q(cmd_out[121]));
  FDCE \cmd_out_reg[122] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[122]_i_1_n_0 ),
        .Q(cmd_out[122]));
  FDCE \cmd_out_reg[123] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[123]_i_1_n_0 ),
        .Q(cmd_out[123]));
  FDCE \cmd_out_reg[124] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[124]_i_1_n_0 ),
        .Q(cmd_out[124]));
  FDCE \cmd_out_reg[125] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[125]_i_1_n_0 ),
        .Q(cmd_out[125]));
  FDCE \cmd_out_reg[126] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[126]_i_1_n_0 ),
        .Q(cmd_out[126]));
  FDCE \cmd_out_reg[127] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[127]_i_1_n_0 ),
        .Q(cmd_out[127]));
  FDCE \cmd_out_reg[12] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[12]_i_1_n_0 ),
        .Q(cmd_out[12]));
  FDCE \cmd_out_reg[13] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[13]_i_1_n_0 ),
        .Q(cmd_out[13]));
  FDCE \cmd_out_reg[14] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[14]_i_1_n_0 ),
        .Q(cmd_out[14]));
  FDCE \cmd_out_reg[15] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[15]_i_1_n_0 ),
        .Q(cmd_out[15]));
  FDCE \cmd_out_reg[16] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[16]_i_1_n_0 ),
        .Q(cmd_out[16]));
  FDCE \cmd_out_reg[17] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[17]_i_1_n_0 ),
        .Q(cmd_out[17]));
  FDCE \cmd_out_reg[18] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[18]_i_1_n_0 ),
        .Q(cmd_out[18]));
  FDCE \cmd_out_reg[19] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[19]_i_1_n_0 ),
        .Q(cmd_out[19]));
  FDCE \cmd_out_reg[1] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[1]_i_1_n_0 ),
        .Q(cmd_out[1]));
  FDCE \cmd_out_reg[20] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[20]_i_1_n_0 ),
        .Q(cmd_out[20]));
  FDCE \cmd_out_reg[21] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[21]_i_1_n_0 ),
        .Q(cmd_out[21]));
  FDCE \cmd_out_reg[22] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[22]_i_1_n_0 ),
        .Q(cmd_out[22]));
  FDCE \cmd_out_reg[23] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[23]_i_1_n_0 ),
        .Q(cmd_out[23]));
  FDCE \cmd_out_reg[24] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[24]_i_1_n_0 ),
        .Q(cmd_out[24]));
  FDCE \cmd_out_reg[25] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[25]_i_1_n_0 ),
        .Q(cmd_out[25]));
  FDCE \cmd_out_reg[26] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[26]_i_1_n_0 ),
        .Q(cmd_out[26]));
  FDCE \cmd_out_reg[27] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[27]_i_1_n_0 ),
        .Q(cmd_out[27]));
  FDCE \cmd_out_reg[28] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[28]_i_1_n_0 ),
        .Q(cmd_out[28]));
  FDCE \cmd_out_reg[29] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[29]_i_1_n_0 ),
        .Q(cmd_out[29]));
  FDCE \cmd_out_reg[2] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[2]_i_1_n_0 ),
        .Q(cmd_out[2]));
  FDCE \cmd_out_reg[30] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[30]_i_1_n_0 ),
        .Q(cmd_out[30]));
  FDCE \cmd_out_reg[31] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[31]_i_1_n_0 ),
        .Q(cmd_out[31]));
  FDCE \cmd_out_reg[32] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[32]_i_1_n_0 ),
        .Q(cmd_out[32]));
  FDCE \cmd_out_reg[33] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[33]_i_1_n_0 ),
        .Q(cmd_out[33]));
  FDCE \cmd_out_reg[34] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[34]_i_1_n_0 ),
        .Q(cmd_out[34]));
  FDCE \cmd_out_reg[35] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[35]_i_1_n_0 ),
        .Q(cmd_out[35]));
  FDCE \cmd_out_reg[36] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[36]_i_1_n_0 ),
        .Q(cmd_out[36]));
  FDCE \cmd_out_reg[37] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[37]_i_1_n_0 ),
        .Q(cmd_out[37]));
  FDCE \cmd_out_reg[38] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[38]_i_1_n_0 ),
        .Q(cmd_out[38]));
  FDCE \cmd_out_reg[39] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[39]_i_1_n_0 ),
        .Q(cmd_out[39]));
  FDCE \cmd_out_reg[3] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[3]_i_1_n_0 ),
        .Q(cmd_out[3]));
  FDCE \cmd_out_reg[40] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[40]_i_1_n_0 ),
        .Q(cmd_out[40]));
  FDCE \cmd_out_reg[41] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[41]_i_1_n_0 ),
        .Q(cmd_out[41]));
  FDCE \cmd_out_reg[42] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[42]_i_1_n_0 ),
        .Q(cmd_out[42]));
  FDCE \cmd_out_reg[43] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[43]_i_1_n_0 ),
        .Q(cmd_out[43]));
  FDCE \cmd_out_reg[44] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[44]_i_1_n_0 ),
        .Q(cmd_out[44]));
  FDCE \cmd_out_reg[45] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[45]_i_1_n_0 ),
        .Q(cmd_out[45]));
  FDCE \cmd_out_reg[46] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[46]_i_1_n_0 ),
        .Q(cmd_out[46]));
  FDCE \cmd_out_reg[47] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[47]_i_1_n_0 ),
        .Q(cmd_out[47]));
  FDCE \cmd_out_reg[48] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[48]_i_1_n_0 ),
        .Q(cmd_out[48]));
  FDCE \cmd_out_reg[49] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[49]_i_1_n_0 ),
        .Q(cmd_out[49]));
  FDCE \cmd_out_reg[4] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[4]_i_1_n_0 ),
        .Q(cmd_out[4]));
  FDCE \cmd_out_reg[50] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[50]_i_1_n_0 ),
        .Q(cmd_out[50]));
  FDCE \cmd_out_reg[51] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[51]_i_1_n_0 ),
        .Q(cmd_out[51]));
  FDCE \cmd_out_reg[52] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[52]_i_1_n_0 ),
        .Q(cmd_out[52]));
  FDCE \cmd_out_reg[53] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[53]_i_1_n_0 ),
        .Q(cmd_out[53]));
  FDCE \cmd_out_reg[54] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[54]_i_1_n_0 ),
        .Q(cmd_out[54]));
  FDCE \cmd_out_reg[55] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[55]_i_1_n_0 ),
        .Q(cmd_out[55]));
  FDCE \cmd_out_reg[56] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[56]_i_1_n_0 ),
        .Q(cmd_out[56]));
  FDCE \cmd_out_reg[57] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[57]_i_1_n_0 ),
        .Q(cmd_out[57]));
  FDCE \cmd_out_reg[58] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[58]_i_1_n_0 ),
        .Q(cmd_out[58]));
  FDCE \cmd_out_reg[59] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[59]_i_1_n_0 ),
        .Q(cmd_out[59]));
  FDCE \cmd_out_reg[5] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[5]_i_1_n_0 ),
        .Q(cmd_out[5]));
  FDCE \cmd_out_reg[60] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[60]_i_1_n_0 ),
        .Q(cmd_out[60]));
  FDCE \cmd_out_reg[61] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[61]_i_1_n_0 ),
        .Q(cmd_out[61]));
  FDCE \cmd_out_reg[62] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[62]_i_1_n_0 ),
        .Q(cmd_out[62]));
  FDCE \cmd_out_reg[63] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[63]_i_1_n_0 ),
        .Q(cmd_out[63]));
  FDCE \cmd_out_reg[64] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[64]_i_1_n_0 ),
        .Q(cmd_out[64]));
  FDCE \cmd_out_reg[65] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[65]_i_1_n_0 ),
        .Q(cmd_out[65]));
  FDCE \cmd_out_reg[66] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[66]_i_1_n_0 ),
        .Q(cmd_out[66]));
  FDCE \cmd_out_reg[67] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[67]_i_1_n_0 ),
        .Q(cmd_out[67]));
  FDCE \cmd_out_reg[68] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[68]_i_1_n_0 ),
        .Q(cmd_out[68]));
  FDCE \cmd_out_reg[69] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[69]_i_1_n_0 ),
        .Q(cmd_out[69]));
  FDCE \cmd_out_reg[6] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[6]_i_1_n_0 ),
        .Q(cmd_out[6]));
  FDCE \cmd_out_reg[70] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[70]_i_1_n_0 ),
        .Q(cmd_out[70]));
  FDCE \cmd_out_reg[71] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[71]_i_1_n_0 ),
        .Q(cmd_out[71]));
  FDCE \cmd_out_reg[72] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[72]_i_1_n_0 ),
        .Q(cmd_out[72]));
  FDCE \cmd_out_reg[73] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[73]_i_1_n_0 ),
        .Q(cmd_out[73]));
  FDCE \cmd_out_reg[74] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[74]_i_1_n_0 ),
        .Q(cmd_out[74]));
  FDCE \cmd_out_reg[75] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[75]_i_1_n_0 ),
        .Q(cmd_out[75]));
  FDCE \cmd_out_reg[76] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[76]_i_1_n_0 ),
        .Q(cmd_out[76]));
  FDCE \cmd_out_reg[77] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[77]_i_1_n_0 ),
        .Q(cmd_out[77]));
  FDCE \cmd_out_reg[78] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[78]_i_1_n_0 ),
        .Q(cmd_out[78]));
  FDCE \cmd_out_reg[79] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[79]_i_1_n_0 ),
        .Q(cmd_out[79]));
  FDCE \cmd_out_reg[7] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[7]_i_1_n_0 ),
        .Q(cmd_out[7]));
  FDCE \cmd_out_reg[80] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[80]_i_1_n_0 ),
        .Q(cmd_out[80]));
  FDCE \cmd_out_reg[81] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[81]_i_1_n_0 ),
        .Q(cmd_out[81]));
  FDCE \cmd_out_reg[82] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[82]_i_1_n_0 ),
        .Q(cmd_out[82]));
  FDCE \cmd_out_reg[83] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[83]_i_1_n_0 ),
        .Q(cmd_out[83]));
  FDCE \cmd_out_reg[84] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[84]_i_1_n_0 ),
        .Q(cmd_out[84]));
  FDCE \cmd_out_reg[85] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[85]_i_1_n_0 ),
        .Q(cmd_out[85]));
  FDCE \cmd_out_reg[86] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[86]_i_1_n_0 ),
        .Q(cmd_out[86]));
  FDCE \cmd_out_reg[87] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[87]_i_1_n_0 ),
        .Q(cmd_out[87]));
  FDCE \cmd_out_reg[88] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[88]_i_1_n_0 ),
        .Q(cmd_out[88]));
  FDCE \cmd_out_reg[89] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[89]_i_1_n_0 ),
        .Q(cmd_out[89]));
  FDCE \cmd_out_reg[8] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[8]_i_1_n_0 ),
        .Q(cmd_out[8]));
  FDCE \cmd_out_reg[90] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[90]_i_1_n_0 ),
        .Q(cmd_out[90]));
  FDCE \cmd_out_reg[91] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[91]_i_1_n_0 ),
        .Q(cmd_out[91]));
  FDCE \cmd_out_reg[92] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[92]_i_1_n_0 ),
        .Q(cmd_out[92]));
  FDCE \cmd_out_reg[93] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[93]_i_1_n_0 ),
        .Q(cmd_out[93]));
  FDCE \cmd_out_reg[94] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[94]_i_1_n_0 ),
        .Q(cmd_out[94]));
  FDCE \cmd_out_reg[95] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[95]_i_1_n_0 ),
        .Q(cmd_out[95]));
  FDCE \cmd_out_reg[96] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[96]_i_1_n_0 ),
        .Q(cmd_out[96]));
  FDCE \cmd_out_reg[97] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[97]_i_1_n_0 ),
        .Q(cmd_out[97]));
  FDCE \cmd_out_reg[98] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[98]_i_1_n_0 ),
        .Q(cmd_out[98]));
  FDCE \cmd_out_reg[99] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[99]_i_1_n_0 ),
        .Q(cmd_out[99]));
  FDCE \cmd_out_reg[9] 
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(\cmd_out[9]_i_1_n_0 ),
        .Q(cmd_out[9]));
  LUT2 #(
    .INIT(4'hE)) 
    cmd_vld_i_1
       (.I0(cmd_out1__1),
        .I1(cmd_vld),
        .O(cmd_vld_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    cmd_vld_i_2
       (.I0(s0_axi_wdata[0]),
        .I1(cmd_out1__1),
        .O(cmd_vld_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cmd_vld_i_3
       (.I0(s0_axi_aresetn),
        .O(cmd_vld_i_3_n_0));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    cmd_vld_i_4
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(s0_axi_wvalid),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_WREADY),
        .I5(s0_axi_awvalid),
        .O(cmd_out1__1));
  FDCE cmd_vld_reg
       (.C(s0_axi_aclk),
        .CE(cmd_vld_i_1_n_0),
        .CLR(cmd_vld_i_3_n_0),
        .D(cmd_vld_i_2_n_0),
        .Q(cmd_vld));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s0_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s0_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s0_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s0_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s0_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s0_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s0_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s0_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s0_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s0_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s0_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s0_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s0_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s0_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s0_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s0_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s0_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s0_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s0_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s0_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s0_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s0_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s0_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s0_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s0_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s0_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s0_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s0_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s0_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s0_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s0_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s0_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s0_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s0_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s0_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s0_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(cmd_vld_i_3_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s0_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s0_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s0_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg1[31]_i_2 
       (.I0(s0_axi_awvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s0_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s0_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg1_reg[0] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[7]),
        .D(s0_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[15]),
        .D(s0_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[15]),
        .D(s0_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[15]),
        .D(s0_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[15]),
        .D(s0_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[15]),
        .D(s0_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[15]),
        .D(s0_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[23]),
        .D(s0_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[23]),
        .D(s0_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[23]),
        .D(s0_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[23]),
        .D(s0_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[7]),
        .D(s0_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[23]),
        .D(s0_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[23]),
        .D(s0_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[23]),
        .D(s0_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[23]),
        .D(s0_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[31]),
        .D(s0_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[31]),
        .D(s0_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[31]),
        .D(s0_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[31]),
        .D(s0_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[31]),
        .D(s0_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[31]),
        .D(s0_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[7]),
        .D(s0_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[31]),
        .D(s0_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[31]),
        .D(s0_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[7]),
        .D(s0_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[7]),
        .D(s0_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[7]),
        .D(s0_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[7]),
        .D(s0_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[7]),
        .D(s0_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[15]),
        .D(s0_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s0_axi_aclk),
        .CE(p_1_in[15]),
        .D(s0_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(cmd_vld_i_3_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s0_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s0_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s0_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s0_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s0_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s0_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s0_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s0_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s0_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s0_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s0_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s0_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s0_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s0_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s0_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s0_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s0_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s0_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s0_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s0_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s0_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s0_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s0_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s0_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s0_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s0_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s0_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s0_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s0_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s0_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s0_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s0_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s0_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s0_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s0_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s0_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(cmd_vld_i_3_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s0_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s0_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s0_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s0_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s0_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s0_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s0_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s0_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s0_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s0_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s0_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s0_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s0_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s0_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s0_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s0_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s0_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s0_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s0_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s0_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s0_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s0_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s0_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s0_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s0_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s0_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s0_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s0_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s0_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s0_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s0_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s0_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s0_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s0_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s0_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(cmd_vld_i_3_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s0_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s0_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(cmd_vld_i_3_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s0_axi_arvalid),
        .I1(s0_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
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
