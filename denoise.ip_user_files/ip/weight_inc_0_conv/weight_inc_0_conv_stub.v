// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Aug 10 21:31:55 2022
// Host        : DESKTOP-5JBVKGD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/wwwka/Desktop/my_cnn/denoise/denoise.gen/sources_1/ip/weight_inc_0_conv/weight_inc_0_conv_stub.v
// Design      : weight_inc_0_conv
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *)
module weight_inc_0_conv(clka, ena, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[3:0],dina[1247:0],douta[1247:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [3:0]addra;
  input [1247:0]dina;
  output [1247:0]douta;
endmodule
