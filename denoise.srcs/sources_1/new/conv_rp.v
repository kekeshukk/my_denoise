//==================================================================
// Module       : conv_rp
// FILE NAME    : conv_rp.v
// FUNCTION     : relu或者max_pooling ave_pooling模式
// AUTHOR       : kekeshukk
// VERSION      : 1.0
// COPYRIGHT    : 2021-2022 (C) wwwkangwenzhengcom@163.com
//==================================================================
`include "lib_dnotop.v"



module conv_rp #(
    parameter IN_WID = 8,//输入位宽
    parameter DIN_NUM_P = 4,//输入数据在宽高上的个数
    parameter DOUT_NUM_P = 4,//输出数据在宽高上的个数
    parameter DIN_NUM_OUTC = 4,//输入数据在输入通道上的个数
    parameter DOUT_NUM_OUTC = 4,//输入数据在输出通道上的个数
    parameter MODE_WID = 3//MODE WIDTH
)(
    /*
        the input
    */
    //the controller
    input                                   clk,
    input                                   rst_n,
    input   [MODE_WID - 1 : 0]              rp_mode,
    //the data
    input   signed [IN_WID * DIN_NUM_OUTC * DIN_NUM_P - 1 : 0] din,

    /*
        the output
    */
    //the controller

    //the data
    output  signed [IN_WID * DOUT_NUM_OUTC * DOUT_NUM_P - 1 : 0] dout
    );

    
    
    genvar  index_generate_0, index_generate_1;
    reg[7 : 0] index_loop_0, index_loop_1;

    wire	signed [IN_WID - 1 : 0] din_sli[DIN_NUM_OUTC - 1 : 0][DIN_NUM_P - 1 : 0];
    reg 	signed [IN_WID - 1 : 0] pool_sli[DOUT_NUM_OUTC - 1 : 0][DOUT_NUM_P - 1 : 0];
    reg		signed [IN_WID - 1 : 0] relu_sli[DOUT_NUM_OUTC - 1 : 0][DOUT_NUM_P - 1 : 0];
    reg 	signed [IN_WID - 1 : 0] dout_sli[DOUT_NUM_OUTC - 1 : 0][DOUT_NUM_P - 1 : 0];
    
    generate
        for(index_generate_0 = 0; index_generate_0 < DIN_NUM_OUTC; index_generate_0 = index_generate_0 + 1)begin:slice_0
            for(index_generate_1 = 0; index_generate_1 < DIN_NUM_P; index_generate_1 = index_generate_1 + 1)begin:slice_1
                assign din_sli[DIN_NUM_OUTC - 1 - index_generate_0][DIN_NUM_P - 1 - index_generate_1]
                    = din[IN_WID * (DIN_NUM_OUTC * DIN_NUM_P - DIN_NUM_P * index_generate_0 - index_generate_1) - 1 -: IN_WID];
            end
        end
        for(index_generate_0 = 0; index_generate_0 < DOUT_NUM_OUTC; index_generate_0 = index_generate_0 + 1)begin:comb_0
            for(index_generate_1 = 0; index_generate_1 < DOUT_NUM_P; index_generate_1 = index_generate_1 + 1)begin:comb_1
                assign dout[IN_WID * (DOUT_NUM_OUTC * DOUT_NUM_P 
                    - DOUT_NUM_P * index_generate_0 - index_generate_1) - 1 -: IN_WID]
                     =   dout_sli[DOUT_NUM_OUTC - 1 - index_generate_0][DOUT_NUM_P - 1 - index_generate_1];
            end
        end
    endgenerate

    //task: 找最大值 dout有最大值
    task max_pooling;
        input  reg signed [IN_WID - 1 : 0] din_0, din_1, din_2, din_3;
        output reg signed [IN_WID - 1 : 0] dout;

        
        reg signed [IN_WID - 1 : 0] max_0, max_1;
        begin
            max_0 = din_0 > din_1 ? din_0 : din_1;
            max_1 = din_2 > din_3 ? din_2 : din_3;

            dout = max_0 > max_1 ? max_0 : max_1;
        end
    endtask
    //task:找出平均值
    task avg_pooling;
        input   signed [IN_WID - 1 : 0] din_0, din_1, din_2, din_3;
        output  signed [IN_WID - 1 : 0] dout;

        begin
            dout = $signed(din_0 + din_1 + din_2 + din_3) >>> 2;
        end
    endtask

    //- - - 1: relu 操作 - - -//
    always@(posedge clk or negedge rst_n)begin
        if(~rst_n)begin
            for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:init_relu_0
                for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:init_relu_1
                    relu_sli[DOUT_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] <=	'b0;
                end
            end
        end
        else begin
            for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:relu_0
                for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:relu_1
                    relu_sli[DOUT_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] <= din_sli[DOUT_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 -index_loop_1][IN_WID - 1] 
                        ? 'd0 : din_sli[DOUT_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 -index_loop_1];
                    // relu_sli[DOUT_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] <=	'b0;
                end
            end
        end
    end

     //- - - 2: pooling 操作 - - -//
     always @(*) begin
         for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:pooling
             case(rp_mode)
                 `RP_NORM: begin//无pooling要求
                     pool_sli[DOUT_NUM_OUTC - 1 - index_loop_0][3] = relu_sli[DOUT_NUM_OUTC - 1 - index_loop_0][3];
                     pool_sli[DOUT_NUM_OUTC - 1 - index_loop_0][2] = relu_sli[DOUT_NUM_OUTC - 1 - index_loop_0][2];
                     pool_sli[DOUT_NUM_OUTC - 1 - index_loop_0][1] = relu_sli[DOUT_NUM_OUTC - 1 - index_loop_0][1];
                     pool_sli[DOUT_NUM_OUTC - 1 - index_loop_0][0] = relu_sli[DOUT_NUM_OUTC - 1 - index_loop_0][0];
                 end

                 `RP_MAX_P:begin
                    max_pooling(
                        relu_sli[DOUT_NUM_OUTC - 1 - index_loop_0][0],//din_0
                        relu_sli[DOUT_NUM_OUTC - 1 - index_loop_0][1],//din_1
                        relu_sli[DOUT_NUM_OUTC - 1 - index_loop_0][2],//din_2
                        relu_sli[DOUT_NUM_OUTC - 1 - index_loop_0][3],//din_3
                        pool_sli[DOUT_NUM_OUTC - 1 - index_loop_0][3]//dout
                    );
                    pool_sli[DOUT_NUM_OUTC - 1 - index_loop_0][2] = 'b0;
                    pool_sli[DOUT_NUM_OUTC - 1 - index_loop_0][1] = 'b0;
                    pool_sli[DOUT_NUM_OUTC - 1 - index_loop_0][0] = 'b0;
                 end

                 `RP_AVG_P:begin
                    avg_pooling(
                        relu_sli[DOUT_NUM_OUTC - 1 - index_loop_0][0],//din_0
                        relu_sli[DOUT_NUM_OUTC - 1 - index_loop_0][1],//din_1
                        relu_sli[DOUT_NUM_OUTC - 1 - index_loop_0][2],//din_2
                        relu_sli[DOUT_NUM_OUTC - 1 - index_loop_0][3],//din_3
                        pool_sli[DOUT_NUM_OUTC - 1 - index_loop_0][3]//dout
                    );  
                    pool_sli[DOUT_NUM_OUTC - 1 - index_loop_0][2] = 'b0;
                    pool_sli[DOUT_NUM_OUTC - 1 - index_loop_0][1] = 'b0;
                    pool_sli[DOUT_NUM_OUTC - 1 - index_loop_0][0] = 'b0;
                 end
                
                 default : begin
                    pool_sli[DOUT_NUM_OUTC - 1 - index_loop_0][3] = 'b0;
                    pool_sli[DOUT_NUM_OUTC - 1 - index_loop_0][2] = 'b0;
                    pool_sli[DOUT_NUM_OUTC - 1 - index_loop_0][1] = 'b0;
                    pool_sli[DOUT_NUM_OUTC - 1 - index_loop_0][0] = 'b0;
                 end
             endcase
         end
     end

    
     always@(posedge clk or negedge rst_n)begin
         if(~rst_n)begin
             for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:init_out_0
                 for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:init_out_1
                     dout_sli[DOUT_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] <=	'b0;
                 end
             end
         end
         else begin
             for(index_loop_0 = 0; index_loop_0 < DOUT_NUM_OUTC; index_loop_0 = index_loop_0 + 1)begin:dout_0
                 for(index_loop_1 = 0; index_loop_1 < DOUT_NUM_P; index_loop_1 = index_loop_1 + 1)begin:dout_1
                     dout_sli[DOUT_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 - index_loop_1] 
                         <= pool_sli[DOUT_NUM_OUTC - 1 - index_loop_0][DOUT_NUM_P - 1 -index_loop_1]; 
                 end
             end
         end
     end
endmodule
