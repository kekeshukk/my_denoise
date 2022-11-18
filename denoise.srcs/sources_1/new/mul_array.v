//==================================================================
// Module       : mul_array
// FILE NAME    : mul_array.v
// FUNCTION     : 乘法阵列
// AUTHOR       : kekeshukk
// VERSION      : 1.0
// COPYRIGHT    : 2021-2022 (C) wwwkangwenzhengcom@163.com
//==================================================================
`include "lib_dnotop.v"



(*use_dsp = "yes"*)module mul_array #(
    parameter IN_WID = 10,//输入数据的时候一个数据的位宽
    parameter OUT_WID = 20,//输出数据的时候一个数据的位宽
    parameter DIN_NUM_P = 16,//宽高维度的输入数据个数
    parameter DIN_NUM_INC = 4,//输入通道维度的数据个数
    parameter WIN_NUM_P = 9,//宽高维度的权重个数
    parameter WIN_NUM_INC = 4,//输入通道维度的权重个数
    parameter WIN_NUM_OUTC = 4//输出通道维度的权重个数
)(
    /*
        the input
    */
    //the controller
    input                                       clk,
    input                                       rst_n,
    //the data
    input   signed [IN_WID * DIN_NUM_P * DIN_NUM_INC - 1 : 0]   din,
    input   signed [IN_WID * DIN_NUM_P * WIN_NUM_INC * WIN_NUM_OUTC - 1 : 0]    win,

    /*
        the output
    */
    //the controller

    //the data
    output  signed  [OUT_WID * DIN_NUM_P * WIN_NUM_INC * WIN_NUM_OUTC - 1 : 0]   dout
    );

    wire	signed  [IN_WID - 1 : 0]    win_sli[WIN_NUM_OUTC * DIN_NUM_P * WIN_NUM_INC - 1 : 0];
    wire	signed  [IN_WID - 1 : 0]    din_sli[DIN_NUM_P * DIN_NUM_INC - 1 : 0];
    reg 	signed  [OUT_WID - 1 : 0]   dout_sli[WIN_NUM_OUTC * DIN_NUM_P * WIN_NUM_INC - 1 : 0];
    genvar index_generate;
    integer index_loop;

    for(index_generate = 0; index_generate < WIN_NUM_OUTC * DIN_NUM_P * WIN_NUM_INC; index_generate = index_generate + 1)begin:slice_comb
        assign win_sli[WIN_NUM_OUTC * DIN_NUM_P * WIN_NUM_INC - 1 - index_generate] 
            = win[IN_WID * (DIN_NUM_P * WIN_NUM_INC * WIN_NUM_OUTC - index_generate)- 1  -: IN_WID];
                    
        assign dout[OUT_WID * (DIN_NUM_P * WIN_NUM_INC * WIN_NUM_OUTC - index_generate) 
            - 1 -: OUT_WID] = dout_sli[WIN_NUM_OUTC * WIN_NUM_INC * DIN_NUM_P - index_generate - 1];
    end

    for(index_generate = 0; index_generate < DIN_NUM_P * DIN_NUM_INC; index_generate = index_generate + 1)begin:slice_in
        assign din_sli[DIN_NUM_INC * DIN_NUM_P - 1 - index_generate] 
            = din[IN_WID * (DIN_NUM_P * DIN_NUM_INC  - index_generate)- 1  -: IN_WID];
    end

    //mul
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)begin
            for(index_loop = 0; index_loop < WIN_NUM_OUTC 
                * DIN_NUM_P * WIN_NUM_INC; index_loop = index_loop + 1)begin:res
                dout_sli[DIN_NUM_P * WIN_NUM_INC * WIN_NUM_OUTC - index_loop - 1] <= 'd0;
            end
        end
        else begin
            for(index_loop = 0; index_loop <  DIN_NUM_P * WIN_NUM_INC
                                    ; index_loop = index_loop + 1)begin:mul
                dout_sli[DIN_NUM_P * WIN_NUM_INC * (WIN_NUM_OUTC - 0) - index_loop - 1] 
                    <= din_sli[DIN_NUM_P * DIN_NUM_INC - index_loop - 1] * win_sli[DIN_NUM_P * WIN_NUM_INC * (WIN_NUM_OUTC - 0) - index_loop - 1];
                dout_sli[DIN_NUM_P * WIN_NUM_INC * (WIN_NUM_OUTC - 1) - index_loop - 1] 
                    <= din_sli[DIN_NUM_P * DIN_NUM_INC - index_loop - 1] * win_sli[DIN_NUM_P * WIN_NUM_INC * (WIN_NUM_OUTC - 1) - index_loop - 1];
                dout_sli[DIN_NUM_P * WIN_NUM_INC * (WIN_NUM_OUTC - 2) - index_loop - 1] 
                    <= din_sli[DIN_NUM_P * DIN_NUM_INC - index_loop - 1] * win_sli[DIN_NUM_P * WIN_NUM_INC * (WIN_NUM_OUTC - 2) - index_loop - 1];
                dout_sli[DIN_NUM_P * WIN_NUM_INC * (WIN_NUM_OUTC - 3) - index_loop - 1] 
                    <= din_sli[DIN_NUM_P * DIN_NUM_INC - index_loop - 1] * win_sli[DIN_NUM_P * WIN_NUM_INC * (WIN_NUM_OUTC - 3) - index_loop - 1];
            end
        end
    end

endmodule
