//==================================================================
// Module       : accmulator
// FILE NAME    : accmulator.v
// FUNCTION     : 当输入通道的个数大于4的话，那么就需要进行输入通道累加
//                同时 + bias 舍入
// AUTHOR       : kekeshukk
// VERSION      : 1.0
// COPYRIGHT    : 2021-2022 (C) wwwkangwenzhengcom@163.com
//==================================================================
`include "lib_dnotop.v"



module accumulator #(
    // parameter MAX_0 = 16,//
    parameter IN_WID = 24,//输入位宽
    parameter BIAS_WID = 24,//bias的位宽
    parameter OUT_WID = 8,//输出位宽
    parameter DIN_NUM_P = 4,//输入数据在宽高上的个数
    parameter DOUT_NUM_P = 4,//输出数据在宽高上的个数
    parameter DIN_NUM_OUTC = 4,//输入数据在输入通道上的个数
    parameter DOUT_NUM_OUTC = 64,//输入数据在输出通道上的个数
    parameter WIN_NUM_BIAS = 4//4个*3Byte 偏置的数目
)(
    /*
        the input
    */
    //the controller
    input                                       clk,
    input                                       rst_n,
    input   [1 : 0]                             cur_s,
    input   [`CNT_WIDTH - 1 : 0]                cnt_0,
    input                                       in_c_end,//对于一个（4，4）输入块下一周期算完了其的所有的in_c和所有的out_c
    //the data
    input                                       valid_p,
    input   signed[IN_WID * DIN_NUM_P * DIN_NUM_OUTC - 1 : 0]  din,
    input   signed[BIAS_WID * WIN_NUM_BIAS - 1 : 0] bias,

    /*
        the output
    */
    //the controller

    //the data
    output  signed[OUT_WID * DOUT_NUM_P * DIN_NUM_OUTC - 1 : 0]   dout

    );
    wire	signed  [IN_WID - 1 : 0]  din_sli[DIN_NUM_OUTC - 1 : 0][DIN_NUM_P - 1 : 0];
    wire	signed  [BIAS_WID - 1 : 0] bias_sli[WIN_NUM_BIAS - 1 : 0];
    reg		signed  [IN_WID - 1 : 0]  dout_sli[ DOUT_NUM_OUTC - 1 : 0][DOUT_NUM_P - 1 : 0];
    reg     signed  [OUT_WID - 1 : 0] round_sli[DIN_NUM_OUTC - 1 : 0][DOUT_NUM_P - 1 : 0];//全精度舍入的最终结果
    //加上bias并且舍入

    //舍入的时候保留5bit小数,又因为这次输入数据6bit小数，权重6bit小数，则最终加上bias的小数位12bit。那么向右移7bit，则刚好结果有5bit小数
    localparam ROUND_LSHIFT_BIT = 7;
    
    genvar index_generate_0, index_generate_1;
    integer index_loop_0, index_loop_1;
    generate
        for(index_generate_0 = 0; index_generate_0 < DIN_NUM_OUTC; index_generate_0 = index_generate_0 + 1)begin:slice_0
            for(index_generate_1 = 0; index_generate_1 < DIN_NUM_P; index_generate_1 = index_generate_1 + 1)begin:slice_1
                assign din_sli[DIN_NUM_OUTC - 1 - index_generate_0][DIN_NUM_P - 1 - index_generate_1]
                    = din[IN_WID * (DIN_NUM_P * DIN_NUM_OUTC - index_generate_0 * DIN_NUM_P - index_generate_1) - 1 -: IN_WID];
            end
        end

        for(index_generate_0 = 0; index_generate_0 < WIN_NUM_BIAS; index_generate_0 = index_generate_0 + 1)begin:slice_bias
            assign bias_sli[WIN_NUM_BIAS - 1 - index_generate_0] = bias[BIAS_WID * (WIN_NUM_BIAS - index_generate_0) - 1 -: BIAS_WID];
        end
    
        for(index_generate_0 = 0; index_generate_0 < DIN_NUM_OUTC; index_generate_0 = index_generate_0 + 1)begin:comb_0
            for(index_generate_1 = 0; index_generate_1 < DOUT_NUM_P; index_generate_1 = index_generate_1 + 1)begin:comb_1
                assign dout[OUT_WID * (DOUT_NUM_P * DIN_NUM_OUTC - DOUT_NUM_P 
                        * index_generate_0 - index_generate_1) - 1 -: OUT_WID]
                =	round_sli[DIN_NUM_OUTC - 1 - index_generate_0][DOUT_NUM_P - 1 - index_generate_1];
            end
        end
    endgenerate
    
    
    //- - - 2: 输入通道累加 - - -//
    always @(posedge clk or negedge rst_n) begin
            if(~rst_n)begin
                for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:init_0
                    for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:init_1
                        dout_sli[DOUT_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - index_loop_1 -1] <= 'b0;
                end
            end
        end
        else if(cur_s == `TRANSFER && valid_p)begin
            case(cnt_0)
                'd0:
                    for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_P; index_loop_0 = index_loop_0 + 1)begin:case_0
                        dout_sli[DOUT_NUM_OUTC - 1 - 0][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 0][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 0][DIN_NUM_P - 1 -index_loop_0];
                        dout_sli[DOUT_NUM_OUTC - 1 - 1][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 1][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 1][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 2][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 2][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 2][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 3][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 3][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 3][DIN_NUM_P - 1 -index_loop_0];
                    end
                    
                'd1:
                    for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_P; index_loop_0 = index_loop_0 + 1)begin:case_1
                        dout_sli[DOUT_NUM_OUTC - 1 - 4][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 4][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 0][DIN_NUM_P - 1 -index_loop_0];
                        dout_sli[DOUT_NUM_OUTC - 1 - 5][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 5][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 1][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 6][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 6][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 2][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 7][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 7][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 3][DIN_NUM_P - 1 -index_loop_0];
                    end
                    
                'd2:
                    for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_P; index_loop_0 = index_loop_0 + 1)begin:case_2
                        dout_sli[DOUT_NUM_OUTC - 1 - 8][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 8][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 0][DIN_NUM_P - 1 -index_loop_0];
                        dout_sli[DOUT_NUM_OUTC - 1 - 9][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 9][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 1][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 10][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 10][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 2][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 11][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 11][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 3][DIN_NUM_P - 1 -index_loop_0];
                    end
                    
                'd3:
                    for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_P; index_loop_0 = index_loop_0 + 1)begin:case_3
                        dout_sli[DOUT_NUM_OUTC - 1 - 12][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 12][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 0][DIN_NUM_P - 1 -index_loop_0];
                        dout_sli[DOUT_NUM_OUTC - 1 - 13][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 13][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 1][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 14][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 14][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 2][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 15][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 15][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 3][DIN_NUM_P - 1 -index_loop_0];
                    end
                    
                'd4:
                    for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_P; index_loop_0 = index_loop_0 + 1)begin:case_4
                        dout_sli[DOUT_NUM_OUTC - 1 - 16][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 16][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 0][DIN_NUM_P - 1 -index_loop_0];
                        dout_sli[DOUT_NUM_OUTC - 1 - 17][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 17][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 1][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 18][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 18][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 2][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 19][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 19][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 3][DIN_NUM_P - 1 -index_loop_0];
                    end
                    
                'd5:
                    for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_P; index_loop_0 = index_loop_0 + 1)begin:case_5
                        dout_sli[DOUT_NUM_OUTC - 1 - 20][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 20][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 0][DIN_NUM_P - 1 -index_loop_0];
                        dout_sli[DOUT_NUM_OUTC - 1 - 21][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 21][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 1][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 22][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 22][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 2][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 23][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 23][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 3][DIN_NUM_P - 1 -index_loop_0];
                    end
                    
                'd6:
                    for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_P; index_loop_0 = index_loop_0 + 1)begin:case_6
                        dout_sli[DOUT_NUM_OUTC - 1 - 24][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 24][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 0][DIN_NUM_P - 1 -index_loop_0];
                        dout_sli[DOUT_NUM_OUTC - 1 - 25][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 25][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 1][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 26][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 26][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 2][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 27][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 27][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 3][DIN_NUM_P - 1 -index_loop_0];
                    end
                    
                'd7:
                    for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_P; index_loop_0 = index_loop_0 + 1)begin:case_7
                        dout_sli[DOUT_NUM_OUTC - 1 - 28][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 28][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 0][DIN_NUM_P - 1 -index_loop_0];
                        dout_sli[DOUT_NUM_OUTC - 1 - 29][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 29][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 1][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 30][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 30][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 2][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 31][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 31][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 3][DIN_NUM_P - 1 -index_loop_0];
                    end
                    
                'd8:
                    for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_P; index_loop_0 = index_loop_0 + 1)begin:case_8
                        dout_sli[DOUT_NUM_OUTC - 1 - 32][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 32][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 0][DIN_NUM_P - 1 -index_loop_0];
                        dout_sli[DOUT_NUM_OUTC - 1 - 33][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 33][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 1][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 34][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 34][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 2][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 35][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 35][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 3][DIN_NUM_P - 1 -index_loop_0];
                    end
                    
                'd9:
                    for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_P; index_loop_0 = index_loop_0 + 1)begin:case_9
                        dout_sli[DOUT_NUM_OUTC - 1 - 36][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 36][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 0][DIN_NUM_P - 1 -index_loop_0];
                        dout_sli[DOUT_NUM_OUTC - 1 - 37][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 37][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 1][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 38][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 38][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 2][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 39][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 39][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 3][DIN_NUM_P - 1 -index_loop_0];
                    end
                    
                'd10:
                    for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_P; index_loop_0 = index_loop_0 + 1)begin:case_10
                        dout_sli[DOUT_NUM_OUTC - 1 - 40][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 40][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 0][DIN_NUM_P - 1 -index_loop_0];
                        dout_sli[DOUT_NUM_OUTC - 1 - 41][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 41][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 1][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 42][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 42][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 2][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 43][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 43][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 3][DIN_NUM_P - 1 -index_loop_0];
                    end
                    
                'd11:
                    for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_P; index_loop_0 = index_loop_0 + 1)begin:case_11
                        dout_sli[DOUT_NUM_OUTC - 1 - 44][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 44][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 0][DIN_NUM_P - 1 -index_loop_0];
                        dout_sli[DOUT_NUM_OUTC - 1 - 45][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 45][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 1][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 46][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 46][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 2][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 47][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 47][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 3][DIN_NUM_P - 1 -index_loop_0];
                    end
                    
                'd12:
                    for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_P; index_loop_0 = index_loop_0 + 1)begin:case_12
                        dout_sli[DOUT_NUM_OUTC - 1 - 48][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 48][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 0][DIN_NUM_P - 1 -index_loop_0];
                        dout_sli[DOUT_NUM_OUTC - 1 - 49][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 49][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 1][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 50][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 50][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 2][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 51][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 51][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 3][DIN_NUM_P - 1 -index_loop_0];
                    end
                    
                'd13:
                    for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_P; index_loop_0 = index_loop_0 + 1)begin:case_13
                        dout_sli[DOUT_NUM_OUTC - 1 - 52][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 52][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 0][DIN_NUM_P - 1 -index_loop_0];
                        dout_sli[DOUT_NUM_OUTC - 1 - 53][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 53][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 1][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 54][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 54][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 2][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 55][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 55][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 3][DIN_NUM_P - 1 -index_loop_0];
                    end
                    
                'd14:
                    for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_P; index_loop_0 = index_loop_0 + 1)begin:case_14
                        dout_sli[DOUT_NUM_OUTC - 1 - 56][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 56][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 0][DIN_NUM_P - 1 -index_loop_0];
                        dout_sli[DOUT_NUM_OUTC - 1 - 57][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 57][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 1][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 58][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 58][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 2][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 59][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 59][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 3][DIN_NUM_P - 1 -index_loop_0];
                    end
                    
                'd15:
                    for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_P; index_loop_0 = index_loop_0 + 1)begin:case_15
                        dout_sli[DOUT_NUM_OUTC - 1 - 60][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 60][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 0][DIN_NUM_P - 1 -index_loop_0];
                        dout_sli[DOUT_NUM_OUTC - 1 - 61][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 61][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 1][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 62][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 62][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 2][DIN_NUM_P - 1 -index_loop_0];
                        
                        dout_sli[DOUT_NUM_OUTC - 1 - 63][DOUT_NUM_P - 1 - index_loop_0] 
                            <= in_c_end ? 'b0 : dout_sli[ DOUT_NUM_OUTC - 1 - 63][DOUT_NUM_P - 1 - index_loop_0]
                                                     + din_sli[DIN_NUM_OUTC - 1 - 3][DIN_NUM_P - 1 -index_loop_0];
                    end

                default:
                    for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:the_default
                        for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:init_1
                            dout_sli[DOUT_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - index_loop_1 -1] <= 'b0;
                        end
                    end
            endcase
        end
    end

    
    
    //- - - 3: 输出结果，记得加上偏置 还有舍入- - -//
    //目前认为：point:5bit
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)begin
            for(index_loop_0 = 0; index_loop_0 < DIN_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:init_round
                for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:init_round_1
                    round_sli[DIN_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] <= 'b0;
                end
            end
        end
        else if(cur_s == `TRANSFER && valid_p && in_c_end)begin
            case(cnt_0)
                'd0:
                    for(index_loop_0 = 0; index_loop_0 < DIN_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:case_round_0_0
                       for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:case_round_0_1
                            round_sli[DIN_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] 
                                <= (dout_sli[ DOUT_NUM_OUTC - 1 - 0 * 4 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1]
                                    + din_sli[DIN_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 -index_loop_1]
                                        + bias_sli[WIN_NUM_BIAS - 1 - index_loop_0]) >>> ROUND_LSHIFT_BIT;
                        end 
                    end
                
                'd1:
                    for(index_loop_0 = 0; index_loop_0 < DIN_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:case_round_1_0
                       for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:case_round_1_1
                            round_sli[DIN_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] 
                                <= (dout_sli[ DOUT_NUM_OUTC - 1 - 1 * 4 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1]
                                    + din_sli[DIN_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 -index_loop_1]
                                        + bias_sli[WIN_NUM_BIAS - 1 - index_loop_0]) >>> ROUND_LSHIFT_BIT;
                        end 
                    end
                
                'd2:
                    for(index_loop_0 = 0; index_loop_0 < DIN_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:case_round_2_0
                       for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:case_round_2_1
                            round_sli[DIN_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] 
                                <= (dout_sli[ DOUT_NUM_OUTC - 1 - 2 * 4 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1]
                                    + din_sli[DIN_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 -index_loop_1]
                                        + bias_sli[WIN_NUM_BIAS - 1 - index_loop_0]) >>> ROUND_LSHIFT_BIT;
                        end 
                    end
                
                'd3:
                    for(index_loop_0 = 0; index_loop_0 < DIN_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:case_round_3_0
                       for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:case_round_3_1
                            round_sli[DIN_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] 
                                <= (dout_sli[ DOUT_NUM_OUTC - 1 - 3 * 4 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1]
                                    + din_sli[DIN_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 -index_loop_1]
                                        + bias_sli[WIN_NUM_BIAS - 1 - index_loop_0]) >>> ROUND_LSHIFT_BIT;
                        end 
                    end
                
                'd4:
                    for(index_loop_0 = 0; index_loop_0 < DIN_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:case_round_4_0
                       for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:case_round_4_1
                            round_sli[DIN_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] 
                                <= (dout_sli[ DOUT_NUM_OUTC - 1 - 4 * 4 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1]
                                    + din_sli[DIN_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 -index_loop_1]
                                        + bias_sli[WIN_NUM_BIAS - 1 - index_loop_0]) >>> ROUND_LSHIFT_BIT;
                        end 
                    end
                
                'd5:
                    for(index_loop_0 = 0; index_loop_0 < DIN_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:case_round_5_0
                       for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:case_round_5_1
                            round_sli[DIN_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] 
                                <= (dout_sli[ DOUT_NUM_OUTC - 1 - 5 * 4 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1]
                                    + din_sli[DIN_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 -index_loop_1]
                                        + bias_sli[WIN_NUM_BIAS - 1 - index_loop_0]) >>> ROUND_LSHIFT_BIT;
                        end 
                    end
                
                'd6:
                    for(index_loop_0 = 0; index_loop_0 < DIN_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:case_round_6_0
                       for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:case_round_6_1
                            round_sli[DIN_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] 
                                <= (dout_sli[ DOUT_NUM_OUTC - 1 - 6 * 4 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1]
                                    + din_sli[DIN_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 -index_loop_1]
                                        + bias_sli[WIN_NUM_BIAS - 1 - index_loop_0]) >>> ROUND_LSHIFT_BIT;
                        end 
                    end
                
                'd7:
                    for(index_loop_0 = 0; index_loop_0 < DIN_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:case_round_7_0
                       for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:case_round_7_1
                            round_sli[DIN_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] 
                                <= (dout_sli[ DOUT_NUM_OUTC - 1 - 7 * 4 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1]
                                    + din_sli[DIN_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 -index_loop_1]
                                        + bias_sli[WIN_NUM_BIAS - 1 - index_loop_0]) >>> ROUND_LSHIFT_BIT;
                        end 
                    end
                
                'd8:
                    for(index_loop_0 = 0; index_loop_0 < DIN_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:case_round_8_0
                       for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:case_round_8_1
                            round_sli[DIN_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] 
                                <= (dout_sli[ DOUT_NUM_OUTC - 1 - 8 * 4 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1]
                                    + din_sli[DIN_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 -index_loop_1]
                                        + bias_sli[WIN_NUM_BIAS - 1 - index_loop_0]) >>> ROUND_LSHIFT_BIT;
                        end 
                    end
                
                'd9:
                    for(index_loop_0 = 0; index_loop_0 < DIN_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:case_round_9_0
                       for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:case_round_9_1
                            round_sli[DIN_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] 
                                <= (dout_sli[ DOUT_NUM_OUTC - 1 - 9 * 4 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1]
                                    + din_sli[DIN_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 -index_loop_1]
                                        + bias_sli[WIN_NUM_BIAS - 1 - index_loop_0]) >>> ROUND_LSHIFT_BIT;
                        end 
                    end
                
                'd10:
                    for(index_loop_0 = 0; index_loop_0 < DIN_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:case_round_10_0
                       for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:case_round_10_1
                            round_sli[DIN_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] 
                                <= (dout_sli[ DOUT_NUM_OUTC - 1 - 10 * 4 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1]
                                    + din_sli[DIN_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 -index_loop_1]
                                        + bias_sli[WIN_NUM_BIAS - 1 - index_loop_0]) >>> ROUND_LSHIFT_BIT;
                        end 
                    end
                
                'd11:
                    for(index_loop_0 = 0; index_loop_0 < DIN_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:case_round_11_0
                       for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:case_round_11_1
                            round_sli[DIN_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] 
                                <= (dout_sli[ DOUT_NUM_OUTC - 1 - 11 * 4 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1]
                                    + din_sli[DIN_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 -index_loop_1]
                                        + bias_sli[WIN_NUM_BIAS - 1 - index_loop_0]) >>> ROUND_LSHIFT_BIT;
                        end 
                    end
                
                'd12:
                    for(index_loop_0 = 0; index_loop_0 < DIN_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:case_round_12_0
                       for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:case_round_12_1
                            round_sli[DIN_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] 
                                <= (dout_sli[ DOUT_NUM_OUTC - 1 - 12 * 4 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1]
                                    + din_sli[DIN_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 -index_loop_1]
                                        + bias_sli[WIN_NUM_BIAS - 1 - index_loop_0]) >>> ROUND_LSHIFT_BIT;
                        end 
                    end
                
                'd13:
                    for(index_loop_0 = 0; index_loop_0 < DIN_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:case_round_13_0
                       for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:case_round_13_1
                            round_sli[DIN_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] 
                                <= (dout_sli[ DOUT_NUM_OUTC - 1 - 13 * 4 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1]
                                    + din_sli[DIN_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 -index_loop_1]
                                        + bias_sli[WIN_NUM_BIAS - 1 - index_loop_0]) >>> ROUND_LSHIFT_BIT;
                        end 
                    end
                
                'd14:
                    for(index_loop_0 = 0; index_loop_0 < DIN_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:case_round_14_0
                       for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:case_round_14_1
                            round_sli[DIN_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] 
                                <= (dout_sli[ DOUT_NUM_OUTC - 1 - 14 * 4 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1]
                                    + din_sli[DIN_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 -index_loop_1]
                                        + bias_sli[WIN_NUM_BIAS - 1 - index_loop_0]) >>> ROUND_LSHIFT_BIT;
                        end 
                    end
                
                'd15:
                    for(index_loop_0 = 0; index_loop_0 < DIN_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:case_round_15_0
                       for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:case_round_15_1
                            round_sli[DIN_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] 
                                <= (dout_sli[ DOUT_NUM_OUTC - 1 - 15 * 4 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1]
                                    + din_sli[DIN_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 -index_loop_1]
                                        + bias_sli[WIN_NUM_BIAS - 1 - index_loop_0]) >>> ROUND_LSHIFT_BIT;
                        end 
                    end
                
                
                
                default:
                    for(index_loop_0 = 0; index_loop_0 < DIN_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:round_out
                       for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:round_out_1
                            round_sli[DIN_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] <= 'b0;
                        end 
                    end
            endcase
            end
    end
    

endmodule
