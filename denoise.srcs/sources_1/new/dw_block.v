//==================================================================
// Module       : dw_block
// FILE NAME    : dw_block.v
// FUNCTION     : �ܵ����ݷ���ģ��
// AUTHOR       : kekeshukk
// VERSION      : 1.0
// COPYRIGHT    : 2021-2022 (C) wwwkangwenzhengcom@163.com
//==================================================================
`include "lib_dnotop.v"
`include "lib_dw_block.v"

module dw_block #(
    parameter                   WEI_WIDTH = `DW_BLOCK_WEI_WIDTH,
    parameter                   WADDR_WIDTH = `DW_BLOCK_WADDR_WIDTH,
    parameter                   DATA_WIDTH = `DW_BLOCK_DATA_WIDTH,
    parameter                   DMA_WIDTH = `DW_BLOCK_DMA_WIDTH,
    parameter                   DMA_SIZE_WIDTH = `DW_BLOCK_DMA_SIZE_WIDTH,
    parameter                   DDR_BASE_R = `DW_BLOCK_DDR_BASE_R,
    parameter                   DDR_BASE_W = `DW_BLOCK_DDR_BASE_W,
    parameter                   DDR_STEP = `DW_BLOCK_DDR_STEP,
    parameter                   DMA_ADDR_WIDTH = `DW_BLOCK_DMA_ADDR_WIDTH
)(
    /*
        the input
    */
    //the controller
    input                                       clk,
    input                                       rst_n,
    input   [1 : 0]                             cur_s,
    input   [1 : 0]                             nxt_s,
    input   [`CNT_WIDTH - 1 : 0]                cnt_0,//����4��in_c�����˶���out_c
    input                                       rea,//main control ����Ҫ������
    input                                       in_c_end,

    input                                       dma_rd_en,
    input                                       dma_rd_last,
    //the data


    input   [DMA_WIDTH - 1 : 0]                 dma_rd_data,

    /*
        the output
    */
    //the controller
    output  reg                                 valid_p,

    //the data
    output  [DATA_WIDTH - 1 : 0]                dout,
    output  [WEI_WIDTH - 1 : 0]                 wei_out,

    output  [DMA_ADDR_WIDTH - 1 : 0]            dma_rd_addr,
    output                                      dma_rd_areq,
    output  [DMA_SIZE_WIDTH - 1 : 0]            dma_rd_size

    );

    
    wire    weight_rea;//Ȩ�ص�ʹ��
    wire    r_empty;
    wire    merge_wr_vld, merge_wr_rdy, merge_wr_last;

    // wire	 dma_rd_areq, dma_rd_en;
    // wire	[DMA_WIDTH - 1 : 0] dma_rd_data,dma_rd_last;
    // wire	[DMA_ADDR_WIDTH - 1 : 0] dma_rd_addr;
    // wire	[DMA_SIZE_WIDTH - 1 : 0]   dma_rd_size;

    wire	[DMA_WIDTH - 1 : 0]    merge_wr_data;
    wire	[DMA_WIDTH - 1 : 0] dma_wr_data;
    wire    change_fifo;//fifo�������Ҫ����
    reg		fifo_rd_rea;//����������ݵ�ʹ���źţ� fifo�Ķ�����ʹ��
    reg		fifo_rd_req;//�տ�ʼ������Ҫ�������ִ��һ�ζ�,�����ڸ����������ݵ�ʱ��fifo�ǿյģ���ʱҲҪ�ж�����
    reg		[14 : 0]fifo_rd_rea_0;//fifo_rd_rea����λ��һֱ��15��,�������һ��fifo������Чʱ��Ϊ16����


    //- - - 1:  the instance- - -//
    weight 
    #(
        .WEI_WIDTH  (WEI_WIDTH  ),
        .ADDR_WIDTH (WADDR_WIDTH )
    )
    u_weight(
    	.clk     (clk     ),
        .rst_n   (rst_n   ),
        .rea     (weight_rea),
        .cur_s   (cur_s   ),
        .nxt_s   (nxt_s   ),
        .wei_out (wei_out )
    );
    
    // data 
    // #(
    //     .DATA_WIDTH  (512  ),
    //     .ADDR_DWIDTH (12 )
    // )
    // u_data(
    // 	.clk          (clk          ),
    //     .rst_n        (rst_n        ),
    //     .ena          (ena          ),
    //     .cur_s        (cur_s        ),
    //     .out_c_64_end (out_c_64_end ),
    //     .dout         (dout         )
    // );
    

    //��дddr����ģ��
    ddr_read_write 
    #(
        .DDR_BASE_R (DDR_BASE_R ),
        .DDR_BASE_W (DDR_BASE_W ),
        .DDR_STEP   (DDR_STEP   ),
        .DATA_WID   (DMA_WIDTH   ),
        .ADDR_WID   (DMA_ADDR_WIDTH   ),
        .SIZE_WID   (DMA_SIZE_WIDTH)
    )
    u_ddr_read_write(
    	.clk           (clk          ),
        .rst_n         (rst_n        ),
        .merge_wr_rdy  (merge_wr_rdy  ),
        .cur_s         (cur_s        ),
        .dma_rd_en     (dma_rd_en    ),
        .dma_rd_last   (dma_rd_last  ),
        .dma_wr_en     (),
        .dma_wr_last   (),
        .dma_rd_data   (dma_rd_data  ),
        .fifo_rd_data  (),
        .dma_rd_addr   (dma_rd_addr  ),
        .dma_rd_areq   (dma_rd_areq  ),
        .dma_rd_size   (dma_rd_size  ),
        .dma_wr_addr   (),
        .dma_wr_areq   (),
        .dma_wr_size   (),
        .merge_wr_vld  (merge_wr_vld  ),
        .merge_wr_last (merge_wr_last ),
        .merge_wr_data (merge_wr_data ),
        .dma_wr_data   ()
    );
    

    //ͬ��fifo
    syn_data_fifo 
    #(
        .IN_WID        ( DMA_WIDTH ),
        .OUT_WID       ( DATA_WIDTH )
    )
    u_syn_data_fifo(
    	.clk           (clk           ),
        .rst_n         (rst_n         ),
        .rea           (fifo_rd_rea      ),
        .merge_wr_vld  (merge_wr_vld   ),
        .merge_wr_last (merge_wr_last ),
        .din           (merge_wr_data ),
        .cur_s         (cur_s         ),
        .r_empty       (r_empty       ),
        .merge_wr_rdy  (merge_wr_rdy  ),
        .dout          (dout          )
    );
    



    //- - - 2: �����ź� - - -//
//    always @(posedge clk or negedge rst_n) begin
//        if(~rst_n)begin
//            valid_p <= 'b0;
//        end
//        else begin
//            valid_p <= ~r_empty & rea;//����ʹ���ź���Ч��fifo�ǿյ�ʱ����һ���ڳ�����
//        end
//    end

    
     //�ж��ǲ���fifo��������ȡ���ݣ�����Ҫ������
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            fifo_rd_req <= 'b0;
        else if(cur_s == `IDLE && nxt_s == `TRANSFER)//����˵�տ�ʼ������һ�δ��䣬Ҫ����fifo�������
            fifo_rd_req <= 'b1;
        else if(change_fifo && r_empty)
            fifo_rd_req <= 'b1;
        else if(fifo_rd_rea == 'b1)
            fifo_rd_req <= 1'b0;
    end

    //���� fifo_rd_rea�ź�
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            fifo_rd_rea <= 'b0;
        else if(fifo_rd_req && ~r_empty && ~fifo_rd_rea)//����һ�ν��д��������ʱ��û�п�ʼ����64�����ͨ�������ݣ�����fifo���ˣ����ʱ��Ҫ��ȡһ������
            fifo_rd_rea <= 'b1;
        else if(change_fifo && ~r_empty)//cnt_0 == 14 ��ζ����������Ҫ������
            fifo_rd_rea <= 'b1;
        else
            fifo_rd_rea <= 1'b0;
    end
    
    always@(posedge clk or negedge rst_n)begin
        if(~rst_n)
            valid_p <= 'b0;
        else
            valid_p <= weight_rea;
    end

    always @(posedge clk) begin
        if(~rst_n)
            fifo_rd_rea_0 <= 'b0;
        else
            fifo_rd_rea_0 <= {fifo_rd_rea_0[13:0],fifo_rd_rea};
    end

    //Ȩ�ص�ʹ�ܣ�չ���16��clk
    assign weight_rea = (fifo_rd_rea || (| fifo_rd_rea_0));

    
    assign change_fifo = (cur_s == `TRANSFER) && ((cnt_0 == `CNT_WIDTH'd14 && ~in_c_end) 
                ||(in_c_end && (cur_s == `TRANSFER && nxt_s == `LOOP))) && rea;//fifo�������Ҫ����

endmodule
