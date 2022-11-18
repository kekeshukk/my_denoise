//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Jan  2 21:04:49 2020
//Host        : DESKTOP-70U0FCD running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_top();
  wire de;
  wire hs;
  wire [7:0]red,green,blue;
  wire [23:0]pdata={red,green,blue};
  wire pclk;
  wire vs;

rgb_data_gen rgb_data_gen_inst
(   
    .pix_clk  (pclk),
    .vga_r    (red),
    .vga_g    (green),
    .vga_b    (blue),
    .vga_hs   (hs),
    .vga_vs   (vs),
    .vga_de   (de)
);

system system_i
(
    .de(de),
    .hs(hs),
    .pdata(pdata),
    .pclk(pclk),
    .vs(vs)
 );
endmodule
