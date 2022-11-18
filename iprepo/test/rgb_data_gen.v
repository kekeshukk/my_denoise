`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
/*
Company : Liyang Milian Electronic Technology Co., Ltd.
Brand: 米联客(msxbo)
Technical forum：uisrc.com
taobao: osrc.taobao.com
Create Date: 2019/12/27
Module Name: rgb_data_gen
Description: Generate VGA timing and test pattern
Copyright: Copyright (c) msxbo
Revision: 1.0
Signal description：
1) _i input
2) _o output
3) _n activ low
4) _dg debug signal 
5) _r delay or register
6) _s state mechine
*/
////////////////////////////////////////////////////////////////////////////////


module rgb_data_gen
(
input		    pix_clk,
output [7:0]	vga_r,
output [7:0]	vga_g,
output [7:0]	vga_b,
output			vga_hs,
output			vga_vs,
output			vga_de
);


//-------------------------------//
// 水平扫描参数的设定1024*600    60HZ      
//-------------------------------//
/********************************************
//水平
parameter H_Total		=	1344;
parameter H_Sync		=	136;
parameter H_Back		=	160;
parameter H_Active	    =	1024;
parameter H_Front		=	24;
parameter H_Start		=	296;
parameter H_End		=	1320;
//垂直
parameter V_Total		=	628;
parameter V_Sync		=	4;
parameter V_Back		=	4;
parameter V_Active  	=	600;
parameter V_Front		=	0;
parameter V_Start		=	8;
parameter V_End		=	628;
********************************************/
////---------------------------------//
//// 水平扫描参数的设定1280*720  60HZ
////--------------------------------//
///***********************************************/
////水平
parameter H_Total		=	1650; //e
parameter H_Sync		=	40;  //a
parameter H_Back		=	220; //b
parameter H_Active	=	1280;          //c
parameter H_Front		=	110;      //d
parameter H_Start		=	260;
parameter H_End		=	1540;
////垂直
parameter V_Total		=	750;
parameter V_Sync		=	5;
parameter V_Back		=	20;
parameter V_Active	=	720;
parameter V_Front		=	5;
parameter V_Start		=	25;
parameter V_End		=	745;
//*********************************************/


////---------------------------------//
//// 水平扫描参数的设定1280*800  60HZ
////--------------------------------//
////*****************************************
////水平
//parameter H_Total		=	1680; //e
//parameter H_Sync		=	136;  //a
//parameter H_Back		=	200; //b
//parameter H_Active	=	1280;          //c
//parameter H_Front		=	64;      //d
//parameter H_Start		=	336;
//parameter H_End		=	1616;
////垂直
//parameter V_Total		=	828;
//parameter V_Sync		=	3;
//parameter V_Back		=	24;
//parameter V_Active	=	800;
//parameter V_Front		=	1;
//parameter V_Start		=	27;
//parameter V_End		=	827;
////**********************************************

//---------------------------------//
// 水平扫描参数的设定1980*1080  60HZ
//--------------------------------//
/***********************************************
//水平
parameter H_Total		=	2200; //2200
parameter H_Sync		=	44; //44
parameter H_Back		=	148;//148
parameter H_Active	=	1920;   //1920
parameter H_Front		=	88; //88
parameter H_Start		=	192; //192
parameter H_End		=	2112;  //2112
//垂直
parameter V_Total		=	1125;  //1125
parameter V_Sync		=	5;   //5
parameter V_Back		=	37; //37
parameter V_Active	=	1080;  //1080
parameter V_Front		=	3; //3
parameter V_Start		=	42; //42
parameter V_End		=	1122;  //1122
*********************************************/

reg[11:0] x_cnt = 12'd1;
always @(posedge pix_clk)		//水平计数
	if(x_cnt == H_Total)
	   x_cnt	<=	1;
	else
	   x_cnt	<=	x_cnt	+	1;
	   
reg	hsync_r = 1'b0;
always @(posedge pix_clk)
	if(x_cnt == 1)
	   hsync_r	<=	1'b0;
	else if(x_cnt==H_Sync)
	   hsync_r	<=	1'b1;
	   
reg	hs_de = 1'b0;	   
always @(posedge pix_clk)	
	if(x_cnt == H_Start)
	   hs_de	<=	1'b1;
	else if(x_cnt==H_End)
	   hs_de	<=	1'b0;

reg[11:0]	y_cnt = 12'd0;
always @(posedge pix_clk)
	if(y_cnt == V_Total)
	   y_cnt	<=	1;
	else if(x_cnt==H_Total)
	   y_cnt	<=	y_cnt	+	1;

reg	vsync_r = 1'b1;
always @(posedge pix_clk)
	if(y_cnt == 1)
	vsync_r	<=	1'b0;
	else if(y_cnt == V_Sync)
	vsync_r	<=	1'b1;
	
reg	vs_de = 1'b1;	
always @(posedge pix_clk)
	if(y_cnt==V_Start)
	vs_de	<=	1'b1;
	else if(y_cnt==V_End)
	vs_de	<=	1'b0;


reg[7:0]	grid_data_1=8'd0;
reg[7:0]	grid_data_2=8'd0;;
always @(posedge pix_clk)			//格子图像
begin
	if((x_cnt[4]==1'b1)^(y_cnt[4]==1'b1))
	grid_data_1	<=	8'h00;
	else
	grid_data_1	<=	8'hff;
	
	if((x_cnt[6]==1'b1)^(y_cnt[6]==1'b1))
	grid_data_2	<=	8'h00;
	else
	grid_data_2	<=	8'hff;
end

reg[23:0]	color_bar=24'd0;

always @(posedge pix_clk)
begin
	if(x_cnt==336)
	color_bar	<=	24'hff0000;
	else if(x_cnt==496)
	color_bar	<=	24'h00ff00;
	else if(x_cnt==656)
	color_bar	<=	24'h0000ff;
	else if(x_cnt==816)
	color_bar	<=	24'hff00ff;
	else if(x_cnt==976)
	color_bar	<=	24'hffff00;
	else if(x_cnt==1136)
	color_bar	<=	24'h00ffff;
	else if(x_cnt==1296)
	color_bar	<=	24'hffffff;
	else if(x_cnt==1432)
	color_bar	<=	24'h000000;
	else
	color_bar	<=	color_bar;
end

reg[30:0] 	dis_mode = 31'd0;

always @(posedge pix_clk)
    dis_mode <= dis_mode + 1'b1;

reg[7:0]	vga_r_r= 8'd0;
reg[7:0]	vga_g_r= 8'd0;
reg[7:0]	vga_b_r= 8'd0;
always @(posedge pix_clk)begin  
     case(dis_mode[30:27])
         4'd0:begin
			     vga_r_r<=0;            //LCD显示彩色条
                 vga_g_r<=0;
                 vga_b_r<=0;
			end
		 4'd1:begin
			     vga_r_r<=8'b11111111;                 //LCD显示全白
                 vga_g_r<=8'b11111111;
                 vga_b_r<=8'b11111111;
			end
		 4'd2:begin
			     vga_r_r<=8'b11111111;                //LCD显示全红
                 vga_g_r<=0;
                 vga_b_r<=0;  
         end			  
	      4'd3:begin
			     vga_r_r<=0;                          //LCD显示全绿
                 vga_g_r<=8'b11111111;
                 vga_b_r<=0; 
         end					  
         4'd4:begin     
			     vga_r_r<=0;                         //LCD显示全蓝
                 vga_g_r<=0;
                 vga_b_r<=8'b11111111;
			end
         4'd5:begin     
			     vga_r_r<=grid_data_1;               // LCD显示方格1
                 vga_g_r<=grid_data_1;
                 vga_b_r<=grid_data_1;
         end					  
         4'd6:begin     
			     vga_r_r<=grid_data_2;               // LCD显示方格2
                 vga_g_r<=grid_data_2;
                 vga_b_r<=grid_data_2;
			end
		 4'd7:begin     
			     vga_r_r<=x_cnt[7:0];                //LCD显示水平渐变色
                 vga_g_r<=x_cnt[7:0];
                 vga_b_r<=x_cnt[7:0];
			end
		 4'd8:begin     
			     vga_r_r<=y_cnt[8:1];                 //LCD显示垂直渐变色
                 vga_g_r<=y_cnt[8:1];
                 vga_b_r<=y_cnt[8:1];
			end
		 4'd9:begin     
			     vga_r_r<=x_cnt[7:0];                 //LCD显示红水平渐变色
                 vga_g_r<=0;
                 vga_b_r<=0;
			end
		 4'd10:begin     
			     vga_r_r<=0;                          //LCD显示绿水平渐变色
                 vga_g_r<=x_cnt[7:0];
                 vga_b_r<=0;
			end
		 4'd11:begin     
			     vga_r_r<=0;                          //LCD显示蓝水平渐变色
                 vga_g_r<=0;
                 vga_b_r<=x_cnt[7:0];			
			end
		 4'd12:begin     
			     vga_r_r<=color_bar[23:16];            //LCD显示彩色条
                 vga_g_r<=color_bar[15:8];
                 vga_b_r<=color_bar[7:0];			
			end
		 default:begin
			     vga_r_r<=8'b11111111;                //LCD显示全白
                 vga_g_r<=8'b11111111;
                 vga_b_r<=8'b11111111;
			end					  
         endcase
end

assign vga_hs	=	hsync_r;
assign vga_vs	=	vsync_r;
assign vga_de	=	hs_de	&	vs_de;
assign vga_r	=	vga_de ? vga_r_r:8'h0;
assign vga_g	=	vga_de ? vga_g_r:8'h0;
assign vga_b	=	vga_de ? vga_b_r:8'h0;
endmodule
