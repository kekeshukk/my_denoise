//==================================================================
// Module       : syn_data
// FILE NAME    : syn_data_fifo.v
// FUNCTION     : 同步fifo设计
// AUTHOR       : kekeshukk
// VERSION      : 1.0
// COPYRIGHT    : 2021-2022 (C) wwwkangwenzhengcom@163.com
//==================================================================
`include    "lib_dnotop.v"
`include    "lib_dw_block.v"


module syn_data_fifo #(
    parameter IN_WID = 128,
    parameter OUT_WID = 512
)(
    /*
        the input
    */
    //the controller
    input                                       clk,
    input                                       rst_n,
    input                                       rea,//读fifo的使能信号
    input                                       merge_wr_vld,//串并转换输入数据的有效信号
    input                                       merge_wr_last,//串并转换过程输入数据的最后



    //the data
    input   [IN_WID - 1 : 0]                    din,
    input   [1 : 0]                             cur_s,
    /*
        the output
    */
    //the controller
    output                                      r_empty,
    output                                      merge_wr_rdy,//有效可以向fifo写

    //the data
    (* mark_debug = "true" *)output  [OUT_WID - 1 : 0]               dout
    );

    
    wire    w_rst_busy, r_rst_busy, full, empty;
    reg     [OUT_WID - 1 : 0]   data_temp;
    

    wire	w_full;
    wire	wea;

    wire    fifo_wr_rdy;//串并转换到fifo
    reg     fifo_wr_vld;//串并转换到fifo
    
    assign  w_full = full & ~w_rst_busy;
    assign  r_empty = empty & ~r_rst_busy;

    assign  wea = fifo_wr_rdy & fifo_wr_vld;

    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            data_temp <= 'b0;
        else if(merge_wr_vld)begin
            data_temp <= {data_temp[383 : 0], din};
        end
    end


    wire srst;
    assign srst = ~rst_n;

    fifo_dram u_fifo_dram(
        .clk                    (clk),
        .srst                   (srst),
        .rd_en                  (rea),
        .wr_en                  (wea),
        .din                    (data_temp),
        .dout                   (dout),
        .empty                  (empty),
        .full                   (full),
        .wr_rst_busy            (w_rst_busy),
        .rd_rst_busy            (r_rst_busy)
    );


    //- - - 1: fifo与串并转换的握手信号 - - -//
    //ready
    assign fifo_wr_rdy = ~w_full;
    
    //valid
    always@(posedge clk or negedge rst_n)begin
        if(~rst_n)begin
            fifo_wr_vld <= 'b0;
        end
        else if(fifo_wr_rdy && fifo_wr_vld)begin
            fifo_wr_vld <= 'b0;
        end
        else if(merge_wr_last & merge_wr_rdy)begin
            fifo_wr_vld <= 'b1;
        end
    end

    //- - - 2: 串并转换与读写ddr的握手 - - -//
    //ready信号
    assign merge_wr_rdy = fifo_wr_rdy | ~fifo_wr_vld;


endmodule
