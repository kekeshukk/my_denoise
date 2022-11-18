//==================================================================
// Module       : pre_cal
// FILE NAME    : pre_cal.v
// FUNCTION     : ���ݣ�Ȩ��Ԥ����
// AUTHOR       : kekeshukk
// VERSION      : 1.0
// COPYRIGHT    : 2021-2022 (C) wwwkangwenzhengcom@163.com
//==================================================================
`include "lib_dnotop.v"



module pre_cal #(
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
    input   [IN_WID * DIN_NUM_P * DIN_NUM_INC - 1 : 0]  din,
    input   [IN_WID * WIN_NUM_P * WIN_NUM_INC * WIN_NUM_OUTC - 1 : 0]   win,

    /*
        the output
    */
    //the controller

    //the data
    output  [OUT_WID * DIN_NUM_P * DIN_NUM_INC - 1 : 0]     dout,
    output  [OUT_WID * DIN_NUM_P * WIN_NUM_INC * WIN_NUM_OUTC - 1 : 0]  wout
    );

    genvar index_generate;
    wire    [IN_WID * DIN_NUM_P - 1 : 0]   din_sli[DIN_NUM_INC - 1 : 0];
    wire    [IN_WID * WIN_NUM_P - 1 : 0]    win_sli[WIN_NUM_INC * WIN_NUM_OUTC - 1 : 0];
    


    //- - - 1: ����Ԥ���� - - -//
    for(index_generate = 0; index_generate < WIN_NUM_INC * WIN_NUM_OUTC ; index_generate = index_generate + 1)begin:wei_inc_slice
        assign win_sli[WIN_NUM_INC * WIN_NUM_OUTC - 1 - index_generate] = win[IN_WID * WIN_NUM_P * (WIN_NUM_INC * WIN_NUM_OUTC - index_generate) - 1 -: IN_WID * WIN_NUM_P];
    end

    for(index_generate = 0; index_generate < DIN_NUM_INC; index_generate = index_generate + 1)begin:din_inc_slice
        assign din_sli[DIN_NUM_INC - 1 - index_generate] = din[IN_WID * DIN_NUM_P * (DIN_NUM_INC - index_generate) - 1 -: IN_WID * DIN_NUM_P];
    end

    //- - - 2: ���� - - -//
    pre_cal_d 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_d_3(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (din_sli[3]),
        .dout  (dout[OUT_WID * DIN_NUM_P * (DIN_NUM_INC - 0) - 1 -: OUT_WID * DIN_NUM_P]  )
    );
    
    
    pre_cal_d 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_d_2(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (din_sli[2]),
        .dout  (dout[OUT_WID * DIN_NUM_P * (DIN_NUM_INC - 1) - 1 -: OUT_WID * DIN_NUM_P]  )
    );

    
    pre_cal_d 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_d_1(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (din_sli[1]),
        .dout  (dout[OUT_WID * DIN_NUM_P * (DIN_NUM_INC - 2) - 1 -: OUT_WID * DIN_NUM_P]  )
    );

    
    pre_cal_d 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_d_0(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (din_sli[0]),
        .dout  (dout[OUT_WID * DIN_NUM_P * (DIN_NUM_INC - 3) - 1 -: OUT_WID * DIN_NUM_P]  )
    );

    pre_cal_w 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_w_15(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (win_sli[15]   ),
        .dout  (wout[OUT_WID * DIN_NUM_P * (WIN_NUM_INC * WIN_NUM_OUTC - 0) - 1 -: OUT_WID * DIN_NUM_P]  )
    );

    pre_cal_w 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_w_14(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (win_sli[14]   ),
        .dout  (wout[OUT_WID * DIN_NUM_P * (WIN_NUM_INC * WIN_NUM_OUTC - 1) - 1 -: OUT_WID * DIN_NUM_P]  )
    );

    pre_cal_w 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_w_13(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (win_sli[13]   ),
        .dout  (wout[OUT_WID * DIN_NUM_P * (WIN_NUM_INC * WIN_NUM_OUTC - 2) - 1 -: OUT_WID * DIN_NUM_P]  )
    );

    pre_cal_w 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_w_12(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (win_sli[12]   ),
        .dout  (wout[OUT_WID * DIN_NUM_P * (WIN_NUM_INC * WIN_NUM_OUTC - 3) - 1 -: OUT_WID * DIN_NUM_P]  )
    );

    pre_cal_w 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_w_11(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (win_sli[11]   ),
        .dout  (wout[OUT_WID * DIN_NUM_P * (WIN_NUM_INC * WIN_NUM_OUTC - 4) - 1 -: OUT_WID * DIN_NUM_P]  )
    );

    pre_cal_w 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_w_10(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (win_sli[10]   ),
        .dout  (wout[OUT_WID * DIN_NUM_P * (WIN_NUM_INC * WIN_NUM_OUTC - 5) - 1 -: OUT_WID * DIN_NUM_P]  )
    );

    pre_cal_w 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_w09(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (win_sli[9]   ),
        .dout  (wout[OUT_WID * DIN_NUM_P * (WIN_NUM_INC * WIN_NUM_OUTC - 6) - 1 -: OUT_WID * DIN_NUM_P]  )
    );

    pre_cal_w 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_w_8(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (win_sli[8]   ),
        .dout  (wout[OUT_WID * DIN_NUM_P * (WIN_NUM_INC * WIN_NUM_OUTC - 7) - 1 -: OUT_WID * DIN_NUM_P]  )
    );

    pre_cal_w 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_w_7(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (win_sli[7]   ),
        .dout  (wout[OUT_WID * DIN_NUM_P * (WIN_NUM_INC * WIN_NUM_OUTC - 8) - 1 -: OUT_WID * DIN_NUM_P]  )
    );

    pre_cal_w 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_w_6(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (win_sli[6]   ),
        .dout  (wout[OUT_WID * DIN_NUM_P * (WIN_NUM_INC * WIN_NUM_OUTC - 9) - 1 -: OUT_WID * DIN_NUM_P]  )
    );

    pre_cal_w 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_w_5(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (win_sli[5]   ),
        .dout  (wout[OUT_WID * DIN_NUM_P * (WIN_NUM_INC * WIN_NUM_OUTC - 10) - 1 -: OUT_WID * DIN_NUM_P]  )
    );

    pre_cal_w 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_w_4(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (win_sli[4]   ),
        .dout  (wout[OUT_WID * DIN_NUM_P * (WIN_NUM_INC * WIN_NUM_OUTC - 11) - 1 -: OUT_WID * DIN_NUM_P]  )
    );

    pre_cal_w 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_w_3(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (win_sli[3]   ),
        .dout  (wout[OUT_WID * DIN_NUM_P * (WIN_NUM_INC * WIN_NUM_OUTC - 12) - 1 -: OUT_WID * DIN_NUM_P]  )
    );

    pre_cal_w 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_w_2(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (win_sli[2]   ),
        .dout  (wout[OUT_WID * DIN_NUM_P * (WIN_NUM_INC * WIN_NUM_OUTC - 13) - 1 -: OUT_WID * DIN_NUM_P]  )
    );

    pre_cal_w 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_w_1(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (win_sli[1]   ),
        .dout  (wout[OUT_WID * DIN_NUM_P * (WIN_NUM_INC * WIN_NUM_OUTC - 14) - 1 -: OUT_WID * DIN_NUM_P]  )
    );

    pre_cal_w 
    #(
        .IN_WID       (IN_WID       ),
        .OUT_WID      (OUT_WID      ),
        .DIN_NUM_P    (DIN_NUM_P    ),
        .DIN_NUM_INC  (DIN_NUM_INC  ),
        .WIN_NUM_P    (WIN_NUM_P    ),
        .WIN_NUM_INC  (WIN_NUM_INC  ),
        .WIN_NUM_OUTC (WIN_NUM_OUTC )
    )
    u_pre_cal_w_0(
    	.clk   (clk   ),
        .rst_n (rst_n ),
        .din   (win_sli[0]   ),
        .dout  (wout[OUT_WID * DIN_NUM_P * (WIN_NUM_INC * WIN_NUM_OUTC - 15) - 1 -: OUT_WID * DIN_NUM_P]  )
    );
    
    
endmodule
