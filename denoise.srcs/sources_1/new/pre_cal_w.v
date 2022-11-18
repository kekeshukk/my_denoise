//==================================================================
// Module       : pre_cal_d
// FILE NAME    : pre_cal_d.v
// FUNCTION     : ĳһ������ͨ�����ά�ȵ�����Ԥ����G * g * G_T 2clk�����
// AUTHOR       : kekeshukk
// VERSION      : 1.0
// COPYRIGHT    : 2021-2022 (C) wwwkangwenzhengcom@163.com
//==================================================================
`include "lib_dnotop.v"



module pre_cal_w #(
    parameter IN_WID = 8,//�������ݵ�ʱ��һ�����ݵ�λ��
    parameter OUT_WID = 10,//������ݵ�ʱ��һ�����ݵ�λ��
    parameter DIN_NUM_P = 16,//���ά�ȵ��������ݸ���
    parameter DIN_NUM_INC = 4,//����ͨ��ά�ȵ����ݸ���
    parameter WIN_NUM_P = 9,//���ά�ȵ�Ȩ�ظ���
    parameter WIN_NUM_INC = 4,//����ͨ��ά�ȵ�Ȩ�ظ���
    parameter WIN_NUM_OUTC = 4//���ͨ��ά�ȵ�Ȩ�ظ���
)(
    /*
        the input
    */
    //the controller
    input                                       clk,
    input                                       rst_n,
    //the data
    input   signed  [IN_WID * WIN_NUM_P - 1 : 0]    din,

    /*
        the output
    */
    //the controller

    //the data
    output  signed  [OUT_WID * DIN_NUM_P - 1 : 0]   dout
    );

    genvar index_generate;
    integer index_loop;
    reg	    signed [OUT_WID - 1 : 0]   dout_sli_0    [DIN_NUM_P - 1 : 0];//clk 1 
    reg	    signed [OUT_WID - 1 : 0]   dout_sli_1    [DIN_NUM_P - 1 : 0];//clk 2 
    
    reg     signed  [IN_WID * WIN_NUM_P - 1 : 0]    din_1;//clk 1
    wire	signed [IN_WID - 1 : 0]    din_sli_0 [WIN_NUM_P - 1 : 0];
    wire	signed [IN_WID - 1 : 0]    din_sli_1 [WIN_NUM_P - 1 : 0];

    //- - - 1: ��һ��clk������һ�� - - -//
    for(index_generate = 0; index_generate < WIN_NUM_P; index_generate = index_generate + 1)begin:sli_comb_in
        assign din_sli_0[WIN_NUM_P - 1 - index_generate] = din[IN_WID * (WIN_NUM_P - index_generate) - 1 -: IN_WID];
        assign din_sli_1[WIN_NUM_P - 1 - index_generate] = din_1[IN_WID * (WIN_NUM_P - index_generate) - 1 -: IN_WID];
    end

    for(index_generate = 0; index_generate < DIN_NUM_P; index_generate = index_generate + 1)begin:sli_comb_out
        assign dout[OUT_WID * (DIN_NUM_P - index_generate) - 1 -: OUT_WID] = dout_sli_1[DIN_NUM_P - 1 - index_generate];
    end

    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)begin
            for(index_loop = 0; index_loop < DIN_NUM_P; index_loop = index_loop + 1)begin:clk1
                dout_sli_0[index_loop] <= 'b0;
            end
            din_1 <= 'b0;
        end
        else begin
            din_1 <= din;

            dout_sli_0[DIN_NUM_P - 1 -  0] <= din_sli_0[WIN_NUM_P - 1 -  0];
            dout_sli_0[DIN_NUM_P - 1 -  1] <= (din_sli_0[WIN_NUM_P - 1 -  0] + din_sli_0[WIN_NUM_P - 1 -  1] + din_sli_0[WIN_NUM_P - 1 -  2]) >>> 1;
            dout_sli_0[DIN_NUM_P - 1 -  2] <= (din_sli_0[WIN_NUM_P - 1 -  0] - din_sli_0[WIN_NUM_P - 1 -  1] + din_sli_0[WIN_NUM_P - 1 -  2]) >>> 1;
            dout_sli_0[DIN_NUM_P - 1 -  3] <= din_sli_0[WIN_NUM_P - 1 -  2];
            dout_sli_0[DIN_NUM_P - 1 -  4] <= (din_sli_0[WIN_NUM_P - 1 -  0] + din_sli_0[WIN_NUM_P - 1 -  3] + din_sli_0[WIN_NUM_P - 1 -  6]) >>> 1;
            dout_sli_0[DIN_NUM_P - 1 -  5] <= (din_sli_0[WIN_NUM_P - 1 -  0] + din_sli_0[WIN_NUM_P - 1 -  1] + din_sli_0[WIN_NUM_P - 1 -  2] + din_sli_0[WIN_NUM_P - 1 -  3]) + din_sli_0[WIN_NUM_P - 1 -  4];//��һ��������2bit
            dout_sli_0[DIN_NUM_P - 1 -  6] <= (din_sli_0[WIN_NUM_P - 1 -  0] - din_sli_0[WIN_NUM_P - 1 -  1] + din_sli_0[WIN_NUM_P - 1 -  2] + din_sli_0[WIN_NUM_P - 1 -  3]) - din_sli_0[WIN_NUM_P - 1 -  4];//��һ��������2bit
            dout_sli_0[DIN_NUM_P - 1 -  7] <= (din_sli_0[WIN_NUM_P - 1 -  2] + din_sli_0[WIN_NUM_P - 1 -  5] + din_sli_0[WIN_NUM_P - 1 -  8]) >>> 1;
            dout_sli_0[DIN_NUM_P - 1 -  8] <= (din_sli_0[WIN_NUM_P - 1 -  0] - din_sli_0[WIN_NUM_P - 1 -  3] + din_sli_0[WIN_NUM_P - 1 -  6]) >>> 1;
            dout_sli_0[DIN_NUM_P - 1 -  9] <= (din_sli_0[WIN_NUM_P - 1 -  0] + din_sli_0[WIN_NUM_P - 1 -  1] + din_sli_0[WIN_NUM_P - 1 -  2] - din_sli_0[WIN_NUM_P - 1 -  3]) - din_sli_0[WIN_NUM_P - 1 -  4];//��һ��������2bit
            dout_sli_0[DIN_NUM_P - 1 -  10] <= (din_sli_0[WIN_NUM_P - 1 -  0] - din_sli_0[WIN_NUM_P - 1 -  1] + din_sli_0[WIN_NUM_P - 1 -  2] - din_sli_0[WIN_NUM_P - 1 -  3]) + din_sli_0[WIN_NUM_P - 1 -  4];//��һ��������2bit
            dout_sli_0[DIN_NUM_P - 1 -  11] <= (din_sli_0[WIN_NUM_P - 1 -  2] - din_sli_0[WIN_NUM_P - 1 -  5] + din_sli_0[WIN_NUM_P - 1 -  8]) >>> 1;
            dout_sli_0[DIN_NUM_P - 1 -  12] <= din_sli_0[WIN_NUM_P - 1 -  6];
            dout_sli_0[DIN_NUM_P - 1 -  13] <= (din_sli_0[WIN_NUM_P - 1 -  6] + din_sli_0[WIN_NUM_P - 1 -  7] + din_sli_0[WIN_NUM_P - 1 -  8]) >>> 1;
            dout_sli_0[DIN_NUM_P - 1 -  14] <= (din_sli_0[WIN_NUM_P - 1 -  6] - din_sli_0[WIN_NUM_P - 1 -  7] + din_sli_0[WIN_NUM_P - 1 -  8]) >>> 1;
            dout_sli_0[DIN_NUM_P - 1 -  15] <= din_sli_0[WIN_NUM_P - 1 -  8];
        end
    end

    //- - - 2: er��clk������һ�� - - -//
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)begin
            for(index_loop = 0; index_loop < DIN_NUM_P; index_loop = index_loop + 1)begin:clk2
                dout_sli_1[index_loop] <= 'b0;
            end
        end
        else begin
            dout_sli_1[DIN_NUM_P - 1 -  0] <= dout_sli_0[DIN_NUM_P - 1 -  0];
            dout_sli_1[DIN_NUM_P - 1 -  1] <= dout_sli_0[DIN_NUM_P - 1 -  1];
            dout_sli_1[DIN_NUM_P - 1 -  2] <= dout_sli_0[DIN_NUM_P - 1 -  2];
            dout_sli_1[DIN_NUM_P - 1 -  3] <= dout_sli_0[DIN_NUM_P - 1 -  3];
            dout_sli_1[DIN_NUM_P - 1 -  4] <= dout_sli_0[DIN_NUM_P - 1 -  4];
            dout_sli_1[DIN_NUM_P - 1 -  5] <= (dout_sli_0[DIN_NUM_P - 1 -  5] + din_sli_1[WIN_NUM_P - 1 -  5] + din_sli_1[WIN_NUM_P - 1 -  6] + din_sli_1[WIN_NUM_P - 1 -  7] + din_sli_1[WIN_NUM_P - 1 -  8]) >>> 2;
            dout_sli_1[DIN_NUM_P - 1 -  6] <= (dout_sli_0[DIN_NUM_P - 1 -  6] + din_sli_1[WIN_NUM_P - 1 -  5] + din_sli_1[WIN_NUM_P - 1 -  6] - din_sli_1[WIN_NUM_P - 1 -  7] + din_sli_1[WIN_NUM_P - 1 -  8])>>>2;
            dout_sli_1[DIN_NUM_P - 1 -  7] <= dout_sli_0[DIN_NUM_P - 1 -  7];
            dout_sli_1[DIN_NUM_P - 1 -  8] <= dout_sli_0[DIN_NUM_P - 1 -  8];
            dout_sli_1[DIN_NUM_P - 1 -  9] <= (dout_sli_0[DIN_NUM_P - 1 -  9] - din_sli_1[WIN_NUM_P - 1 -  5] + din_sli_1[WIN_NUM_P - 1 -  6] + din_sli_1[WIN_NUM_P - 1 -  7] + din_sli_1[WIN_NUM_P - 1 -  8]) >>> 2;
            dout_sli_1[DIN_NUM_P - 1 -  10] <= (dout_sli_0[DIN_NUM_P - 1 -  10] - din_sli_1[WIN_NUM_P - 1 -  5] + din_sli_1[WIN_NUM_P - 1 -  6] - din_sli_1[WIN_NUM_P - 1 -  7] + din_sli_1[WIN_NUM_P - 1 -  8]) >>> 2;
            dout_sli_1[DIN_NUM_P - 1 -  11] <= dout_sli_0[DIN_NUM_P - 1 -  11];
            dout_sli_1[DIN_NUM_P - 1 -  12] <= dout_sli_0[DIN_NUM_P - 1 -  12];
            dout_sli_1[DIN_NUM_P - 1 -  13] <= dout_sli_0[DIN_NUM_P - 1 -  13];
            dout_sli_1[DIN_NUM_P - 1 -  14] <= dout_sli_0[DIN_NUM_P - 1 -  14];
            dout_sli_1[DIN_NUM_P - 1 -  15] <= dout_sli_0[DIN_NUM_P - 1 -  15];
        end
    end




endmodule
