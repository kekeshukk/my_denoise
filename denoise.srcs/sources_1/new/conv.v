//==================================================================
// Module       : conv
// FILE NAME    : conv.v
// FUNCTION     : ������ģ��
// AUTHOR       : kekeshukk
// VERSION      : 1.0
// COPYRIGHT    : 2021-2022 (C) wwwkangwenzhengcom@163.com
//==================================================================
`include "lib_dnotop.v"
`include "lib_conv.v"



module conv #(
    parameter IN_WID = `CONV_IN_WID,//8 �������ݵ�ʱ��һ�����ݵ�λ��
    parameter PRE_WID = `CONV_PRE_WID,//10 Ԥ����׶�������ݵ�ʱ��һ�����ݵ�λ��
    parameter MUL_WID = `CONV_MUL_WID,//20 ��˽׶�������ݵ�ʱ��һ�����ݵ�λ��
    parameter POST_WID = `CONV_POST_WID,//24 �������ۼӽ׶�һ�����ݵ�λ��
    parameter DIN_NUM_P = `CONV_DIN_NUM_P,//16 ���ά�ȵ��������ݸ���
    parameter DIN_NUM_INC = `CONV_DIN_NUM_INC,//4 ����ͨ��ά�ȵ����ݸ���
    parameter WIN_NUM_P = `CONV_WIN_NUM_P,//9 ���ά�ȵ�Ȩ�ظ���
    parameter WIN_NUM_INC = `CONV_WIN_NUM_INC,//4 ����ͨ��ά�ȵ�Ȩ�ظ���
    parameter DOUT_NUM_P = `CONV_DOUT_NUM_P,//4 һ�������ͨ���ڿ��ά�ȿ��Լ�����Ľ��
    parameter DOUT_NUM_OUTC = `CONV_DOUT_NUM_OUTC,//4 һ���ڵļ������������ͨ��ά�ȵĸ���
    parameter WIN_NUM_OUTC = `CONV_WIN_NUM_OUTC,// 4 ���ͨ��ά�ȵ�Ȩ�ظ���
    parameter TURN_NUM_OUTC = `CONV_TURN_NUM_OUTC,//64 ������64��out_c��ÿ���ڻᲢ��4out_c��֮�����
    parameter BIAS_WID = `CONV_BIAS_WIDTH,//24 ƫ�õ�λ��
    parameter WIN_NUM_BIAS = `CONV_WIN_NUM_BIAS,//4 ƫ�õ���Ŀ
    parameter MODE_WID = `RP_MODE_WIDTH//3ģʽ�����źŵ�λ��
)(
    /*
        the input
    */
    //the controller
    input                                       clk,
    input                                       rst_n,
    input                                       pre_valid_p,
    input   [1 : 0]                             pre_cur_s,
    input   [1 : 0]                             pre_nxt_s,
    input   [`CNT_WIDTH - 1 : 0]                pre_cnt_0,
    input                                          pre_out_c_64_end,//����4��in_c��һ����������64��out_c
    //����һ����4��4���������һ����������������е�in_c�����е�out_c
    // input                                          pre_out_c_end,
    input                                          pre_in_c_end,//����ȫ��in_c��һ����������64��out_c
    input   [MODE_WID - 1 : 0]                  rp_mode,//relu,poolingģʽ
    //the data
    input   [IN_WID * DIN_NUM_P * DIN_NUM_INC - 1 : 0]  din,
    input   [IN_WID * (WIN_NUM_P * WIN_NUM_INC * WIN_NUM_OUTC) + WIN_NUM_BIAS * BIAS_WID - 1 : 0]   win,

    /*
        the output
    */
    //the controller

    // //the data
    (* dont_touch = "true" *)output  [IN_WID * DOUT_NUM_P * DOUT_NUM_OUTC - 1 : 0]     dout

    );

    integer index_loop;

    

    //- - - 1: �����ȷ�Ŀ�����Ϣ����Ϊ��ˮ�����ӳ٣�- - -//
    //����ȡ����ʱ��2

    //winograd�ӳ٣�2(Ԥ����) + 1(�˷�) + 1(����ͨ���ۼ�) 
    //+ 2(����) + 1(����ͨ������4��ʱ���ۼ�) + 2(relu & pooling)

    wire    [1 : 0]                             cur_s;
    wire    [`CNT_WIDTH - 1 : 0]                cnt_0;
    wire                                        in_c_end;//����һ����4��4���������һ����������������е�in_c�����е�out_c
    wire                                        valid_p;
    
    localparam MAX_WID = 16;
    localparam ACCUMULATOR_WID = 6 - 1;//����accumulator����ʱ
    localparam ACCUMULATOR_BIAS_WID = ACCUMULATOR_WID;// - 2;//ƫ�ö���accumulator����ʱ

    reg [1 : 0] cur_s_array   [MAX_WID - 1 : 0];
    reg [MAX_WID - 1 : 0]  in_c_end_array;
    reg [`CNT_WIDTH - 1 : 0]    cnt_0_array[MAX_WID - 1 : 0];
    reg [MAX_WID - 1 : 0]valid_p_array;

    always @(posedge clk) begin
        cur_s_array[0] <= pre_cur_s;
        in_c_end_array[0] <= pre_in_c_end;
        cnt_0_array[0] <= pre_cnt_0;
        valid_p_array[0] <= pre_valid_p;
        for(index_loop = 1; index_loop < MAX_WID; index_loop = index_loop + 1)begin:deliver_co
            cur_s_array[index_loop] <= cur_s_array[index_loop - 1];
            cnt_0_array[index_loop] <= cnt_0_array[index_loop - 1];
            valid_p_array[index_loop] <= valid_p_array[index_loop - 1];
            in_c_end_array[index_loop] <= in_c_end_array[index_loop - 1];
        end
    end

    assign cur_s = cur_s_array[ACCUMULATOR_WID];
    assign in_c_end = in_c_end_array[ACCUMULATOR_WID];
    assign cnt_0 = cnt_0_array[ACCUMULATOR_WID];
    assign valid_p = valid_p_array[ACCUMULATOR_WID];

    //- - - 2: bias - - -//
    reg		[BIAS_WID * WIN_NUM_BIAS - 1 : 0] bias[ACCUMULATOR_BIAS_WID : 0];


    always @(posedge clk) begin
            for(index_loop = 1; index_loop < ACCUMULATOR_WID + 1; index_loop = index_loop + 1)begin:delivcer_bias
                bias[index_loop] <= bias[index_loop - 1];
            end
            bias[0] <= {win[IN_WID * 120 - 1 -: IN_WID * 3], win[IN_WID * 81 - 1 -: IN_WID * 3], win[IN_WID * 42 - 1 -: IN_WID * 3], win[IN_WID * 3 - 1 : 0]};
    end



    
    wire	[PRE_WID * DIN_NUM_P * DIN_NUM_INC - 1 : 0] data_pre2mul;
    wire	[PRE_WID * DIN_NUM_P * WIN_NUM_INC * WIN_NUM_OUTC - 1 : 0] wei_pre2mul;

    wire	[MUL_WID * DIN_NUM_P * DIN_NUM_INC * WIN_NUM_OUTC - 1 : 0]  data_mul2post;

    wire	[POST_WID * DOUT_NUM_P * DOUT_NUM_OUTC - 1 : 0] data_post2accu;

    wire	[IN_WID * DOUT_NUM_P * DOUT_NUM_OUTC - 1 : 0]  data_accu2repo;

    //- - - 2: Ԥ���� - - -//

    pre_cal 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (PRE_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (din   ),
        .win   ({win[IN_WID * 156 - 1 -: IN_WID * 36], win[IN_WID * 117 - 1 -: IN_WID * 36], win[IN_WID * 78 -1 -: IN_WID * 36], win[IN_WID * 39 - 1 -: IN_WID * 36]}),
        .dout  (data_pre2mul  ),
        .wout  (wei_pre2mul   )
    );
    
    mul_array 
    #(
        .IN_WID       (PRE_WID      ),
        .OUT_WID      (MUL_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_mul_array(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (data_pre2mul ),
        .win   (wei_pre2mul     ),
        .dout  (data_mul2post)
    );
    
    acc_post 
    #(
        .IN_WID        (MUL_WID       ),
        .OUT_WID       (POST_WID      ),
        .DIN_NUM_P     (DIN_NUM_P     ),
        .DOUT_NUM_P    (DOUT_NUM_P    ),
        .DIN_NUM_INC   (DIN_NUM_INC   ),
        .DOUT_NUM_OUTC (DOUT_NUM_OUTC )
    )
    u_acc_post(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (data_mul2post   ),
        .dout  (data_post2accu  )
    );
    
    accumulator 
    #(
        .IN_WID           (POST_WID         ),
        .BIAS_WID         (BIAS_WID         ),
        .OUT_WID          (IN_WID           ),
        .DIN_NUM_P        (DOUT_NUM_P       ),
        .DOUT_NUM_P       (DOUT_NUM_P       ),
        .DIN_NUM_OUTC     (DOUT_NUM_OUTC    ),
        .DOUT_NUM_OUTC    (TURN_NUM_OUTC    ),
        .WIN_NUM_BIAS     (WIN_NUM_BIAS     )
    )
    u_accumulator(
    	.clk      (clk      ),
        .rst_n    (rst_n    ),
        .cur_s    (cur_s    ),
        .cnt_0    (cnt_0    ),
        .in_c_end (in_c_end ),
        .valid_p  (valid_p  ),
        .din      (data_post2accu      ),
        .bias     (bias[ACCUMULATOR_BIAS_WID]     ),
        .dout     (data_accu2repo     )
    );
    
    conv_rp #(
        .IN_WID        ( IN_WID ),
        .DIN_NUM_P     ( DOUT_NUM_P ),
        .DOUT_NUM_P    ( DOUT_NUM_P ),
        .DIN_NUM_OUTC  ( DOUT_NUM_OUTC ),
        .DOUT_NUM_OUTC ( DOUT_NUM_OUTC ),
        .MODE_WID      ( MODE_WID ))
    u_conv_rp (
        .clk                     ( clk       ),
        .rst_n                   ( rst_n     ),
        .rp_mode                 ( rp_mode   ),
        .din                     ( data_accu2repo       ),

        .dout                    ( dout      )
    );

endmodule
