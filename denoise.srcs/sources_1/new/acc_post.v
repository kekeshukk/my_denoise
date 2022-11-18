//==================================================================
// Module       : acc_post
// FILE NAME    : acc_post.v
// FUNCTION     : 首先对mul的结果在输入通道上进行累加,之后再进行后处理,A_T *...* A
// AUTHOR       : kekeshukk
// VERSION      : 1.0
// COPYRIGHT    : 2021-2022 (C) wwwkangwenzhengcom@163.com
//==================================================================
`include "lib_dnotop.v"


module acc_post #(
    parameter IN_WID = 20,//输入位宽
    parameter OUT_WID = 24,//输出位宽
    parameter DIN_NUM_P = 16,//输入数据在宽高上的个数
    parameter DOUT_NUM_P = 4,//输出数据在宽高上的个数
    parameter DIN_NUM_INC = 4,//输入数据在输入通道上的个数
    parameter DOUT_NUM_OUTC = 4//输入数据在输出通道上的个数
)(
    /*
        the input
    */
    //the controller
    input                                       clk,
    input                                       rst_n,
    //the data
    input   signed[IN_WID * DIN_NUM_P * DIN_NUM_INC * DOUT_NUM_OUTC - 1 : 0]  din,

    /*
        the output
    */
    //the controller

    //the data
    output  signed[OUT_WID * DOUT_NUM_P * DOUT_NUM_OUTC - 1 : 0]   dout
    // output reg	    signed  [OUT_WID * 1 - 1 :0] post_out_1[DOUT_NUM_OUTC - 1 : 0][DOUT_NUM_P - 1 : 0]
    );

    wire    signed	[IN_WID * 1 - 1 :0] din_sli[DOUT_NUM_OUTC - 1 : 0][DIN_NUM_INC - 1 : 0][DIN_NUM_P - 1 : 0];
    reg	    signed  [OUT_WID * 1 - 1 :0] accu_out_0[DOUT_NUM_OUTC - 1 : 0][DIN_NUM_P - 1 : 0];
    reg	    signed  [OUT_WID * 1 - 1 :0] accu_out_1[DOUT_NUM_OUTC - 1 : 0][DIN_NUM_P - 1 : 0];
    reg	    signed  [OUT_WID * 1 - 1 :0] post_out_0[DOUT_NUM_OUTC - 1 : 0][DOUT_NUM_P - 1 : 0];
    reg	    signed  [OUT_WID * 1 - 1 :0] post_out_1[DOUT_NUM_OUTC - 1 : 0][DOUT_NUM_P - 1 : 0];
    genvar index_generate_0, index_generate_1, index_generate_2;

    for(index_generate_0 = 0; index_generate_0 < DOUT_NUM_OUTC
                ; index_generate_0 = index_generate_0 + 1)begin:slice_0
        for(index_generate_1 = 0; index_generate_1 < DIN_NUM_INC
                    ; index_generate_1 = index_generate_1 + 1)begin:slice_1
            for(index_generate_2 = 0; index_generate_2 < DIN_NUM_P
                        ; index_generate_2 = index_generate_2 + 1)begin:slice_2
                assign din_sli[DOUT_NUM_OUTC - 1 - index_generate_0][DIN_NUM_INC - 1 
                        - index_generate_1][DIN_NUM_P -index_generate_2 - 1] = din[IN_WID 
                                * (DOUT_NUM_OUTC * DIN_NUM_INC * DIN_NUM_P - index_generate_0 
                                        * DIN_NUM_INC * DIN_NUM_P - index_generate_1 * DIN_NUM_P 
                                                                    - index_generate_2) - 1 -: IN_WID];
                    
            end
        end
    end

    for(index_generate_0 = 0; index_generate_0 < DOUT_NUM_OUTC; index_generate_0 = index_generate_0 + 1)begin:post_comb_0
        for(index_generate_1 = 0; index_generate_1 < DOUT_NUM_P; index_generate_1 = index_generate_1 + 1)begin:post_comb_1
            assign dout[OUT_WID * (DOUT_NUM_P * DOUT_NUM_OUTC - DOUT_NUM_P 
                * index_generate_0 - index_generate_1) - 1 -: OUT_WID] = post_out_1
                 [DOUT_NUM_OUTC - 1 - index_generate_0][DOUT_NUM_P - 1 - index_generate_1];
        end
    end


    //- - - 1: 输入通道累加 - - -//
    integer index_loop_0;
    integer index_loop_1;
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)begin
            for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:init_accu_0
                for(index_loop_1 = 0; index_loop_1 < DIN_NUM_P; index_loop_1 = index_loop_1 + 1)begin:init_accu_1
                    accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - index_loop_1] <= 'b0;
                    accu_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - index_loop_1] <= 'b0;
                end
            end
        end
        else begin
            for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:inc_accu_0
                for(index_loop_1 = 0; index_loop_1 < DIN_NUM_P; index_loop_1 = index_loop_1 + 1)begin:inc_accu_1
                    accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - index_loop_1] <= 
                        din_sli[DOUT_NUM_OUTC - 1 - index_loop_0][3][DIN_NUM_P - 1 -index_loop_1]
                         + din_sli[DOUT_NUM_OUTC - 1 - index_loop_0][2][DIN_NUM_P - 1 -index_loop_1]
                          + din_sli[DOUT_NUM_OUTC - 1 - index_loop_0][1][DIN_NUM_P - 1 -index_loop_1]
                           + din_sli[DOUT_NUM_OUTC - 1 - index_loop_0][0][DIN_NUM_P - 1 -index_loop_1];

                    accu_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - index_loop_1] <= 
                            accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - index_loop_1];
                end
            end
        end
    end

    //- - - 2: 后处理 - - -//
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)begin
            for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:init_post_0_clk0
                for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:init_post_1_clk0
                    post_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] <= 'b0;
                end
            end
        end
        else begin
            for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:post_clk0
                post_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][3] 
                    <= accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 0]
                     +  accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 1]
                      +  accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 2]
                       +  accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 4]
                        +  accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 5];

                post_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][2] 
                    <= accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 1]
                     -  accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 2]
                      -  accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 3]
                       +  accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 5]
                        -  accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 6];

                post_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][1] 
                    <= accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 4]
                     +  accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 5]
                      +  accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 6]
                       -  accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 8]
                        -  accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 9];

                post_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][0] 
                    <= accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 5]
                     -  accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 6]
                      -  accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 7]
                       -  accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 9]
                        +  accu_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 10];
            end
        end
    end

    
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)begin
            for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:init_post_0_clk1
                for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:init_post_1_clk1
                    post_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] <= 'b0;
                end
            end
        end
        else begin
            for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:post_clk1
                post_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][3] 
                    <= post_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][3]
                     +  accu_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 6]
                      +  accu_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 8]
                       +  accu_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 9]
                        +  accu_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 10];

                post_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][2] 
                    <= post_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][2]
                     -  accu_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 7]
                      +  accu_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 9]
                       -  accu_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 10]
                        -  accu_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 11];

                post_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][1] 
                    <= post_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][1]
                     -  accu_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 10]
                      -  accu_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 12]
                       -  accu_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 13]
                        -  accu_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 14];

                post_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][0] 
                    <= post_out_0[DOUT_NUM_OUTC - 1 - index_loop_0][0]
                     +  accu_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 11]
                      -  accu_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 13]
                       +  accu_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 14]
                        +  accu_out_1[DOUT_NUM_OUTC - 1 - index_loop_0][DIN_NUM_P - 1 - 15];
            end
        end
    end

endmodule

