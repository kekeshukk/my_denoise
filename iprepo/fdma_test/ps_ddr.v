`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/19 14:09:14
// Design Name: 
// Module Name: ps_ddr
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ps_ddr #(
parameter    integer      DDR_BASE  = 32'h1000000,
parameter    integer      DDR_RANGE = 32'd268435456
)
(
input ui_clk,
input ui_rstn,
output [31:0]   pkg_rd_addr,
output          pkg_rd_areq,
input  [31:0]   pkg_rd_data,
input           pkg_rd_en,
input           pkg_rd_last,
output [31:0]   pkg_rd_size,

output [31:0]   pkg_wr_addr,
output          pkg_wr_areq,
output [31:0]   pkg_wr_data,
input           pkg_wr_en,
input           pkg_wr_last,
output [31:0]   pkg_wr_size
    );
    
     wire ui_rstn;
     wire ui_clk;
     //-----------------fmda signals-------------------------------------- 
     wire [31:0] pkg_wr_addr;
    (*mark_debug = "true"*)  wire  [31:0] pkg_wr_data;
    (*mark_debug = "true"*) (* KEEP = "TRUE" *)  reg         pkg_wr_areq;
    (*mark_debug = "true"*)  wire        pkg_wr_en;
    (*mark_debug = "true"*)  wire        pkg_wr_last;
     wire [31:0] pkg_wr_size;
     wire [31:0] pkg_rd_addr;
    (*mark_debug = "true"*)  wire  [31:0] pkg_rd_data;
    (*mark_debug = "true"*) (* KEEP = "TRUE" *) reg         pkg_rd_areq;
    (*mark_debug = "true"*)  wire        pkg_rd_en;
    (*mark_debug = "true"*)  wire        pkg_rd_last;
     wire [31:0] pkg_rd_size;
    //--------------------------------------------------------------------- 
     reg [31:0]pkg_wr_cnt;
    (*mark_debug = "true"*) (* KEEP = "TRUE" *) reg [31:0]pkg_rd_cnt;
    (*mark_debug = "true"*) (* KEEP = "TRUE" *) reg [1:0] T_S;
    
     reg [31:0] pkg_addr;
    
     parameter WRITE1 = 0;
     parameter WRITE2 = 1;
     parameter READ1  = 2;
     parameter READ2  = 3;
     //-----------------  
     assign pkg_wr_size = 1024;
     assign pkg_rd_size = 1024;
     
     assign pkg_wr_data = pkg_wr_cnt;
     (*mark_debug = "true"*) wire test_error;
     assign test_error = (pkg_rd_en && (pkg_rd_cnt != pkg_rd_data));
     
     
     assign pkg_wr_addr = pkg_addr+ DDR_BASE;
     assign pkg_rd_addr = pkg_addr+ DDR_BASE;
     
     always @(posedge ui_clk)
     begin
       if(!ui_rstn)begin
           T_S <=0;
           pkg_wr_areq <= 1'b0; 
           pkg_rd_areq <= 1'b0;         
           pkg_wr_cnt<=0;
           pkg_rd_cnt<=0;
           pkg_addr<=0;       
       end 
       else begin
           case(T_S)
           WRITE1:begin
               if(pkg_addr>=DDR_RANGE) pkg_addr<=0;
               pkg_wr_areq  <= 1'b1; 
               T_S <= WRITE2;
           end
           WRITE2:begin
               pkg_wr_areq  <= 1'b0; 
               if(pkg_wr_last) begin
                    T_S <= READ1;
                    pkg_wr_cnt <= 32'd0;
               end 
               else if(pkg_wr_en) begin
                   pkg_wr_cnt <= pkg_wr_cnt + 1'b1;
               end
           end
           READ1:begin
               pkg_rd_areq <= 1'b1;
               T_S <= READ2;   
           end   
           READ2:begin
               pkg_rd_areq <= 1'b0;
               if(pkg_rd_last) begin
                   T_S <= WRITE1;  
                   pkg_addr <= pkg_addr + 1024;
                   pkg_rd_cnt <= 32'd0; 
               end 
               else if(pkg_rd_en) begin
                   pkg_rd_cnt <= pkg_rd_cnt + 1'b1;
               end
           end             
           endcase
       end
     end
         
endmodule
