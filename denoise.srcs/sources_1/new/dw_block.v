//==================================================================
// Module       : dw_block
// FILE NAME    : dw_block.v
// FUNCTION     : 总的数据发送模块
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
    input   [`CNT_WIDTH - 1 : 0]                cnt_0,//对于4个in_c算完了多少out_c
    input                                       rea,//main control 决定要拿数据
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

    
    wire    weight_rea;//权重的使能
    wire    r_empty;
    wire    merge_wr_vld, merge_wr_rdy, merge_wr_last;

    // wire	 dma_rd_areq, dma_rd_en;
    // wire	[DMA_WIDTH - 1 : 0] dma_rd_data,dma_rd_last;
    // wire	[DMA_ADDR_WIDTH - 1 : 0] dma_rd_addr;
    // wire	[DMA_SIZE_WIDTH - 1 : 0]   dma_rd_size;

    wire	[DMA_WIDTH - 1 : 0]    merge_wr_data;
    wire	[DMA_WIDTH - 1 : 0] dma_wr_data;
    wire    change_fifo;//fifo的输出将要更换
    reg		fifo_rd_rea;//真正输出数据的使能信号， fifo的读数据使能
    reg		fifo_rd_req;//刚开始启动需要立即快的执行一次读,或者在更换输入数据的时候fifo是空的，此时也要有读请求
    reg		[14 : 0]fifo_rd_rea_0;//fifo_rd_rea的移位，一直移15次,代表的是一个fifo数据有效时间为16周期


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
    

    //读写ddr控制模块
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
    

    //同步fifo
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
    



    //- - - 2: 控制信号 - - -//
//    always @(posedge clk or negedge rst_n) begin
//        if(~rst_n)begin
//            valid_p <= 'b0;
//        end
//        else begin
//            valid_p <= ~r_empty & rea;//当读使能信号有效且fifo非空的时候下一周期出数据
//        end
//    end

    
     //判断是不是fifo不能立即取数据，就需要挂请求
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            fifo_rd_req <= 'b0;
        else if(cur_s == `IDLE && nxt_s == `TRANSFER)//这是说刚开始进行了一次传输，要请求fifo输出数据
            fifo_rd_req <= 'b1;
        else if(change_fifo && r_empty)
            fifo_rd_req <= 'b1;
        else if(fifo_rd_rea == 'b1)
            fifo_rd_req <= 1'b0;
    end

    //处理 fifo_rd_rea信号
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            fifo_rd_rea <= 'b0;
        else if(fifo_rd_req && ~r_empty && ~fifo_rd_rea)//当第一次进行传输任务的时候没有开始计算64个输出通道的数据，或者fifo空了，这个时候要读取一次数据
            fifo_rd_rea <= 'b1;
        else if(change_fifo && ~r_empty)//cnt_0 == 14 意味着下下周期要换输入
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

    //权重的使能，展宽成16个clk
    assign weight_rea = (fifo_rd_rea || (| fifo_rd_rea_0));

    
    assign change_fifo = (cur_s == `TRANSFER) && ((cnt_0 == `CNT_WIDTH'd14 && ~in_c_end) 
                ||(in_c_end && (cur_s == `TRANSFER && nxt_s == `LOOP))) && rea;//fifo的输出将要更换

endmodule
