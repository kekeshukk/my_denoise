`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:CZ123 MSXBO www.osrc.cn 
// Engineer: tjy
// Create Date: 2019/04/02 12:39:25
// Design Name: 
// Module Name: fdma_top
// Project Name: AXI_FDMA
// Target Devices: 
// Tool Versions: VIVADO
// Description: test DDR
// Dependencies: 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//////////////////////////////////////////////////////////////////////////////////
module fdma_top();

wire         ui_rstn;
wire         ui_clk;
wire [31:0]  pkg_rd_addr_0;
wire         pkg_rd_areq_0;
wire [31:0]  pkg_rd_data_0;
wire         pkg_rd_en_0;
wire         pkg_rd_last_0;
wire [31:0]  pkg_rd_size_0;
wire [31:0]  pkg_wr_addr_0;
wire         pkg_wr_areq_0;
wire [31:0]  pkg_wr_data_0;
wire         pkg_wr_en_0;
wire         pkg_wr_last_0;
wire [31:0]  pkg_wr_size_0;

ps_ddr # 
(
.DDR_BASE(50*1024*1024),//Offset addr
.DDR_RANGE(128*1024*1024)//128MB
)ps_ddr_inst0
(
.ui_clk(ui_clk),
.ui_rstn(ui_rstn),
.pkg_rd_addr(pkg_rd_addr_0),
.pkg_rd_areq(pkg_rd_areq_0),
.pkg_rd_data(pkg_rd_data_0),
.pkg_rd_en(pkg_rd_en_0),
.pkg_rd_last(pkg_rd_last_0),
.pkg_rd_size(pkg_rd_size_0),

.pkg_wr_addr(pkg_wr_addr_0),
.pkg_wr_areq(pkg_wr_areq_0),
.pkg_wr_data(pkg_wr_data_0),
.pkg_wr_en(pkg_wr_en_0),
.pkg_wr_last(pkg_wr_last_0),
.pkg_wr_size(pkg_wr_size_0)
); 
system system_i(
.fdma_rstn(ui_rstn),
.pkg_rd_addr(pkg_rd_addr_0),
.pkg_rd_areq(pkg_rd_areq_0),
.pkg_rd_data(pkg_rd_data_0),
.pkg_rd_en(pkg_rd_en_0),
.pkg_rd_last(pkg_rd_last_0),
.pkg_rd_size(pkg_rd_size_0),
.pkg_wr_addr(pkg_wr_addr_0),
.pkg_wr_areq(pkg_wr_areq_0),
.pkg_wr_data(pkg_wr_data_0),
.pkg_wr_en(pkg_wr_en_0),
.pkg_wr_last(pkg_wr_last_0),
.pkg_wr_size(pkg_wr_size_0),
.ui_clk(ui_clk)
);
        
endmodule
