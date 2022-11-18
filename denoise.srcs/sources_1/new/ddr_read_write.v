//==================================================================
// Module       : ddr_read_write
// FILE NAME    : ddr_read_write.v
// FUNCTION     : to read or write ddr using FDMA in the ip
//                  注意我设置的size:16B，突发长度：4
// AUTHOR       : kekeshukk
// VERSION      : 1.0
// COPYRIGHT    : 2021-2022 (C) wwwkangwenzhengcom@163.com
//==================================================================
`include    "lib_dnotop.v"



module ddr_read_write #(
    parameter DDR_BASE_R = 32'h09000000,//读取数据存放的基地址
    parameter DDR_BASE_W = 32'h0a000000,//写入数据存放的基地址。
    parameter DDR_STEP = 32'h00000040,//每次地址增加的幅度 
    parameter DATA_WID = 128,
    parameter ADDR_WID = 32,
    parameter SIZE_WID = 32
)(
    /*
        the input
    */
    //the controller
    input                                       clk,
    input                                       rst_n,
    (*mark_debug = "true"*)input                                       merge_wr_rdy,//向fifo中写入数据的ready信号，有效意味着可以向其写入了
    (*mark_debug = "true"*)input [1 : 0]                               cur_s,

    (*mark_debug = "true"*)input                                       dma_rd_en,
    (*mark_debug = "true"*)input                                       dma_rd_last,
    input                                       dma_wr_en,
    input                                       dma_wr_last,
    //the data
    (*mark_debug = "true"*)input   [DATA_WID - 1 : 0]                  dma_rd_data,
    input   [DATA_WID - 1 : 0]                  fifo_rd_data,//将fifo的数据读入自身

    /*
        the output
    */
    //the controller
    (*mark_debug = "true"*)output  [ADDR_WID - 1 : 0]                  dma_rd_addr,
    (*mark_debug = "true"*)output  reg                                 dma_rd_areq,
    (*mark_debug = "true"*)output  [SIZE_WID - 1 : 0]                  dma_rd_size,
    output  [ADDR_WID - 1 : 0]                  dma_wr_addr,
    output                                      dma_wr_areq,
    output  [SIZE_WID - 1 : 0]                  dma_wr_size,

    output                                      merge_wr_vld,//向fifo写入数据的有效位
    output                                      merge_wr_last,//向FIFO写入的最后
    //the data
    
    output  [DATA_WID - 1 : 0]                  merge_wr_data,//将自身读取到的数据传给FIFO作为写入数据

    output  [DATA_WID - 1 : 0]                  dma_wr_data

    );


    reg [1 : 0] wcur_s;
    (*mark_debug = "true"*)reg [1 : 0] rcur_s;

    
    reg [ADDR_WID - 1 : 0]  rd_addr;
     
    localparam  IDLE_R = 0;
    localparam  READ_PRP = 1;
    localparam  READ = 2;
     
    localparam  IDLE_W = 0;
    localparam  WRITE_PRP = 1;
    localparam  WRITE  = 2;


    assign dma_wr_size = 'd4;
    assign dma_rd_size = 'd4;
     
    // assign dma_wr_data = data_w;
    // assign dma_wr_addr = dma_addr_w;


    assign dma_rd_addr = rd_addr;
    assign merge_wr_vld = dma_rd_en;
    assign merge_wr_last = dma_rd_last;
    assign merge_wr_data = dma_rd_data;
    //- - - 1:读控制 - - -//
    always@(posedge clk or negedge rst_n)begin
        if(~rst_n )begin
            rcur_s <= IDLE_R;
            dma_rd_areq  <= 'b0;
            rd_addr <= DDR_BASE_R;
        end
        else begin
            case (rcur_s)
                IDLE_R: begin
                    if(merge_wr_rdy && (cur_s == `TRANSFER || cur_s == `LOOP))begin
                        rcur_s <= READ_PRP;
                    end
                    else begin
                        rcur_s <= IDLE_R;
                    end
                    dma_rd_areq <= 'b0;
                    rd_addr <= rd_addr;
                end
                
                READ_PRP:begin
                    rcur_s <= READ;
                    dma_rd_areq <= 'b1;
                end
                READ:begin
                    dma_rd_areq <= 'b0;
                    if(~dma_rd_last)
                        rcur_s <= READ;
                    else
                        rcur_s <= IDLE_R;
                        
                    if(~dma_rd_last)
                        rd_addr <= rd_addr;
                    else if(cur_s == `CONV_END)
                        rd_addr <= DDR_BASE_R;
                    else
                        rd_addr <= rd_addr + DDR_STEP;
                end
            endcase
        end
     end
     

    //  //- - - 2:写控制 - - -//
    //  always@(posedge ui_clk or negedge ui_rstn)begin
    //     if(~ui_rstn )begin
    //         wcur_s <= IDLE_W ;
    //         cnt_w <= 'b0;
    //         dma_wr_areq <= 'b0;
    //         data_w <= 'b0;
    //         dma_addr_w = DDR_BASE_W;
    //     end
    //     else begin
    //         case (wcur_s)
    //             IDLE_W: begin
    //                 if(start_pos == 1)begin
    //                     wcur_s <= WRITE_PRP;
    //                 end
    //                 else begin
    //                     wcur_s <= IDLE_W;
    //                 end
    //                 cnt_w <= 'b0;
    //                 dma_wr_areq <= 'b0;
    //                 data_w <= 'b0;
    //                 dma_addr_w = DDR_BASE_W;
    //             end
                
    //             WRITE_PRP:begin
    //                 wcur_s <= WRITE;
    //                 dma_wr_areq <= 'b1;
    //                 data_w <= 'b0;
    //             end
    //             WRITE:begin
    //                 dma_wr_areq <= 'b0;
    //                 if(~dma_wr_last)
    //                     wcur_s <= WRITE;
    //                 else if(cnt_w == 'd15)
    //                     wcur_s <= IDLE_W;
    //                 else
    //                     wcur_s <= WRITE_PRP;
                        
    //                 if(dma_wr_en)
    //                     data_w <= data_w + 'b1;
    //                 else if(dma_wr_en && dma_wr_last && cnt_w == 'd15)
    //                     data_w <= 'b0;
    //                 else   
    //                     data_w <= data_w;
                        
    //                 if(~dma_wr_last )
    //                     cnt_w <= cnt_w;
    //                 else if(cnt_w != 15)
    //                     cnt_w <= cnt_w + 1;
    //                 else 
    //                     cnt_w <= 'b0;
                                      
    //                 if(~dma_wr_last )
    //                     dma_addr_w <= dma_addr_w;
    //                 else if(cnt_w != 15)
    //                     dma_addr_w <= dma_addr_w + 'd64;
    //                 else
    //                     dma_addr_w <= DDR_BASE_W;
    //             end
    //         endcase
    //     end
    //  end

endmodule
