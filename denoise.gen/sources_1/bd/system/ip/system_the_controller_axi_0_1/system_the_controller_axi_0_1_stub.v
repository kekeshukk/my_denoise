// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Sep  7 11:05:52 2022
// Host        : DESKTOP-5JBVKGD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/wwwka/Desktop/my_cnn/denoise/denoise.gen/sources_1/bd/system/ip/system_the_controller_axi_0_1/system_the_controller_axi_0_1_stub.v
// Design      : system_the_controller_axi_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "the_controller_axi_v1_0,Vivado 2021.1" *)
module system_the_controller_axi_0_1(cmd_vld, cmd_out, s0_axi_aclk, s0_axi_aresetn, 
  s0_axi_awaddr, s0_axi_awprot, s0_axi_awvalid, s0_axi_awready, s0_axi_wdata, s0_axi_wstrb, 
  s0_axi_wvalid, s0_axi_wready, s0_axi_bresp, s0_axi_bvalid, s0_axi_bready, s0_axi_araddr, 
  s0_axi_arprot, s0_axi_arvalid, s0_axi_arready, s0_axi_rdata, s0_axi_rresp, s0_axi_rvalid, 
  s0_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="cmd_vld,cmd_out[127:0],s0_axi_aclk,s0_axi_aresetn,s0_axi_awaddr[3:0],s0_axi_awprot[2:0],s0_axi_awvalid,s0_axi_awready,s0_axi_wdata[31:0],s0_axi_wstrb[3:0],s0_axi_wvalid,s0_axi_wready,s0_axi_bresp[1:0],s0_axi_bvalid,s0_axi_bready,s0_axi_araddr[3:0],s0_axi_arprot[2:0],s0_axi_arvalid,s0_axi_arready,s0_axi_rdata[31:0],s0_axi_rresp[1:0],s0_axi_rvalid,s0_axi_rready" */;
  output cmd_vld;
  output [127:0]cmd_out;
  input s0_axi_aclk;
  input s0_axi_aresetn;
  input [3:0]s0_axi_awaddr;
  input [2:0]s0_axi_awprot;
  input s0_axi_awvalid;
  output s0_axi_awready;
  input [31:0]s0_axi_wdata;
  input [3:0]s0_axi_wstrb;
  input s0_axi_wvalid;
  output s0_axi_wready;
  output [1:0]s0_axi_bresp;
  output s0_axi_bvalid;
  input s0_axi_bready;
  input [3:0]s0_axi_araddr;
  input [2:0]s0_axi_arprot;
  input s0_axi_arvalid;
  output s0_axi_arready;
  output [31:0]s0_axi_rdata;
  output [1:0]s0_axi_rresp;
  output s0_axi_rvalid;
  input s0_axi_rready;
endmodule
