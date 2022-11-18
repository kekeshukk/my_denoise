//==================================================================
// Module       : ccnn_top
// FILE NAME    : ccnn_top.v
// FUNCTION     : ����������Ķ���
// AUTHOR       : kekeshukk
// VERSION      : 1.0
// COPYRIGHT    : 2021-2022 (C) wwwkangwenzhengcom@163.com
//==================================================================

`include    "lib_dnotop.v"
`include    "lib_dw_block.v"
`include    "lib_conv.v"
`include    "lib_rb.v"


module ccnn_top (
    /*
        the input
    */
    //the controller
    input                                       clk_p,
    input                                       clk_n,
    (*mark_debug = "true"*)input                                       start_p,//��ʼ����
    //the data


    /*
        the output
    */
    //the controller

    //the data
    //output  [`RB_IN_WIDTH * `RB_IN_NUM_OUTC * `RB_IN_NUM_P - 49 - 1 : 0] dout



    //////////////////////�������ź�//////////////////////
     input                                       rst_n,
     input   [128 - 1 : 0]                       dma_rd_data,
     input                                       dma_rd_en,
     input                                       dma_rd_last,
     output  [32 - 1 : 0]                        dma_rd_addr,
     output                                      dma_rd_areq,
     output  [32 - 1 : 0]                        dma_rd_size,
     output                                      clk_out
    //////////////////////�������//////////////////////
    );




    //- - - 1: ���� - - -//
    //���ָʾһ���ڼ���4��out_c�������ڼ�����64��out_c���ת��in_c��������16
    localparam                   MAX_0 = 16;
    //������ȫ����out_c��Ҫ�仯in_c����ָʾ�ж��ٸ�in_c
    localparam                   MAX_1 = 4;
    //һ��in_cҪ�����out_c=64,���ָʾ�ж��ٸ�out_c
    localparam                   MAX_2 = 64;
    //���ָʾһ����������ͼ�ж��ٸ�(4,4)�����ݿ�)
    localparam                   MAX_3 = 4096;

    
    wire    clk;//PLL���ɵ�ʱ��
    wire    intr_finish;//�����ж��ź�
    // //////////////////////�������ź�//////////////////////
    assign clk_out = clk;
    // //////////////////////�������//////////////////////


    wire	start_posedge;//start �źŵ�������
    reg		start_1;//start_p�ź��ӳ�һ��clk
    (*mark_debug = "true"*)wire   cmd_vld;
    (*mark_debug = "true"*)wire   [128 - 1 : 0]cmd_out; 



    //////////////////////�������ź�//////////////////////
    reg		[`RP_MODE_WIDTH - 1 : 0] rp_mode = 'd2;
    //////////////////////���Խ���//////////////////////




    wire     valid_p;
    //- - - 1: main controller ���� - - -//
    wire    [1 : 0] cur_s, nxt_s;
    wire	out_c_64_end;
    wire	in_c_end;
    wire	[`CNT_WIDTH - 1 : 0]    cnt_0;

    //- - - 2: dw���� - - -//
    wire	rea;
    wire	[`DW_BLOCK_WEI_WIDTH - 1 : 0]   lk_wei;
    wire	[`DW_BLOCK_DATA_WIDTH - 1 : 0]  lk_data;
    wire	[`RB_IN_WIDTH * `RB_IN_NUM_OUTC * `RB_IN_NUM_P - 1 : 0]lk_data_c2r;

    // //////////////////////�������ź�//////////////////////    
    wire  [`DW_BLOCK_DMA_WIDTH - 1 : 0]         dma_rd_data;
    wire                                        dma_rd_en;
    wire                                        dma_rd_last;
    wire  [`DW_BLOCK_DMA_ADDR_WIDTH - 1 : 0]    dma_rd_addr;
    wire                                        dma_rd_areq;
    wire  [`DW_BLOCK_DMA_SIZE_WIDTH - 1 : 0]    dma_rd_size;
    // //////////////////////�������ź�//////////////////////       

    //- - - 3: generate the modules - - -//
    (* dont_touch = "true" *)clk_wiz_0 u_cw(
        .clk_in1_n          (clk_n),
        .clk_in1_p          (clk_p),

        .clk_out1           (clk)
    );
    // assign clk = clk_p;


    //ddrģ��
    system_wrapper  u_system_wrapper (
        .clk                     ( clk           ),
        .intr                    ( intr_finish   ),
        .pkg_rd_addr             ( dma_rd_addr   ),
        .pkg_rd_areq             ( dma_rd_areq   ),
        .pkg_rd_size             ( dma_rd_size   ),
        .pkg_wr_addr             (),
        .pkg_wr_areq             (),
        .pkg_wr_data             (),
        .pkg_wr_size             (),

        .pkg_rd_data             ( dma_rd_data   ),
        .pkg_rd_en               ( dma_rd_en     ),
        .pkg_rd_last             ( dma_rd_last   ),
        .pkg_wr_en               (),
        .pkg_wr_last             (),
        .cmd_vld                 (cmd_vld),
        .cmd_out                 (cmd_out),
        .rst_n                   ( rst_n         )
    );

    (* dont_touch="true" *) dw_block 
    #(
        .WEI_WIDTH          (`DW_BLOCK_WEI_WIDTH   ),
        .WADDR_WIDTH        (`DW_BLOCK_WADDR_WIDTH  ),
        .DATA_WIDTH         (`DW_BLOCK_DATA_WIDTH  ),
        .DMA_WIDTH          (`DW_BLOCK_DMA_WIDTH ),
        .DMA_SIZE_WIDTH     (`DW_BLOCK_DMA_SIZE_WIDTH),
        .DDR_BASE_R         (`DW_BLOCK_DDR_BASE_R),
        .DDR_STEP           (`DW_BLOCK_DDR_STEP),
        .DDR_BASE_W         (`DW_BLOCK_DDR_BASE_W),
        .DMA_ADDR_WIDTH     (`DW_BLOCK_DMA_ADDR_WIDTH)
    )
    u_dw_block(
    	.clk          (clk          ),
        .rst_n        (rst_n        ),
        .rea          (rea),
        .cur_s        (cur_s        ),
        .nxt_s        (nxt_s        ),
        .in_c_end     (in_c_end),
        .cnt_0        (cnt_0),
        .valid_p      (valid_p      ),
        .dout         (lk_data      ),
        .wei_out      (lk_wei       ),

        .dma_rd_addr  (dma_rd_addr),
        .dma_rd_areq  (dma_rd_areq),
        .dma_rd_data  (dma_rd_data),
        .dma_rd_en    (dma_rd_en),
        .dma_rd_last  (dma_rd_last),
        .dma_rd_size  (dma_rd_size)

    );
    
    (* dont_touch="true" *)main_con 
    #(
        .MAX_0 (MAX_0 ),
        .MAX_1 (MAX_1 ),
        .MAX_2 (MAX_2 ),
        .MAX_3 (MAX_3 )
    )
    u_main_con(
    	.clk          (clk          ),
        .rst_n        (rst_n        ),
        .start_p      (start_posedge),
        .rea          (rea         ),
        .cur_s        (cur_s        ),
        .nxt_s        (nxt_s        ),
        .valid_p      (valid_p      ),
        .cnt_0        (cnt_0        ),
        .out_c_64_end (out_c_64_end ),
        .intr_finish  (intr_finish  ),
        .in_c_end     (in_c_end     )
    );
    
     (* dont_touch="true" *)conv #(
         .IN_WID        ( `CONV_IN_WID        ),
         .PRE_WID       ( `CONV_PRE_WID       ),
         .MUL_WID       ( `CONV_MUL_WID       ),
         .POST_WID      ( `CONV_POST_WID      ),
         .DIN_NUM_P     ( `CONV_DIN_NUM_P     ),
         .DIN_NUM_INC   ( `CONV_DIN_NUM_INC   ),
         .WIN_NUM_P     ( `CONV_WIN_NUM_P     ),
         .WIN_NUM_INC   ( `CONV_WIN_NUM_INC   ),
         .DOUT_NUM_P    ( `CONV_DOUT_NUM_P    ),
         .DOUT_NUM_OUTC ( `CONV_DOUT_NUM_OUTC ),
         .WIN_NUM_OUTC  ( `CONV_WIN_NUM_OUTC  ),
         .WIN_NUM_BIAS  ( `CONV_WIN_NUM_BIAS  ))
     u_conv (
         .clk                     ( clk     ),
         .rst_n                   ( rst_n   ),
         .pre_valid_p             ( valid_p ),
         .pre_cur_s               (cur_s    ),
         .pre_nxt_s               (nxt_s    ),
         .pre_cnt_0               (cnt_0 ),
         .pre_out_c_64_end        (out_c_64_end ),
         .pre_in_c_end            (in_c_end     ),
         .rp_mode                 (rp_mode),

         .din                     ( lk_data ),
         .win                     ( lk_wei  ),
         .dout                    (lk_data_c2r)
     );

     (* dont_touch="true" *)result_block 
     #(
         .IN_WID      (`RB_IN_WIDTH  ),
         .DIN_NUM_P   (`RB_IN_NUM_P   ),
         .ADDR_WID    (`RB_ADDR_WIDTH    ),
         .IN_NUM_OUTC (`RB_IN_NUM_OUTC )
     )
     u_result_block(
         .clk      (clk      ),
         .rst_n    (rst_n    ),
         .valid_p  (valid_p  ),
         .cur_s    (cur_s    ),
         .in_c_end (in_c_end ),
         .dout      (dout),
         .din      (lk_data_c2r)
     );
    
    
    //- - - 4: other - - -//
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            start_1 <= 'b1;
        else
            start_1 <= start_p;
    end

    assign	start_posedge = start_p & ~start_1;//posedge
    
    
endmodule
