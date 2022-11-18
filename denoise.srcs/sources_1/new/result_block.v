//==================================================================
// Module       : result_block
// FILE NAME    : result_block.v
// FUNCTION     : 存储得到的数据结果
// AUTHOR       : kekeshukk
// VERSION      : 1.0
// COPYRIGHT    : 2021-2022 (C) wwwkangwenzhengcom@163.com
//==================================================================
`include"lib_dnotop.v"
`include"lib_rb.v"



module result_block #(
    parameter IN_WID = `RB_IN_WIDTH,//8输入数据的位宽
    parameter DIN_NUM_P = `RB_IN_NUM_P,//4在输入数据的宽高维度上数据的个数,
    parameter ADDR_WID = `RB_ADDR_WIDTH,//12 结果的存储器地址位宽
    parameter IN_NUM_OUTC = `RB_IN_NUM_OUTC//4 ouput channel number
)(
    /*
        the input
    */
    //the controller
    input                                       clk,
    input                                       rst_n,
    input                                       valid_p,
    input   [1 : 0]                             cur_s,
    input                                       in_c_end,//对于全部in_c下一周期算完了64个out_c

    //the data
    input   [IN_WID * IN_NUM_OUTC * DIN_NUM_P - 1 : 0]      din,

    /*
        the output
    */
    //the controller

    //the data
    output  [IN_WID * IN_NUM_OUTC * DIN_NUM_P - 1 : 0]      dout
    );

    reg [ADDR_WID - 1 : 0]  addr_a;
    reg [ADDR_WID - 1 : 0]  addr_b;
    reg en_a, we_a = 'b1;
    reg en_b = 'b0, we_b = 'b0;



    //- - - 1: write the ram - - -//
    result u_r(
        .clka                   (clk),
        .wea                    (we_a),
        .ena                    (en_a),
        .dina                   (din),
        .addra                  (addr_a),
        .douta                  (),

        .clkb                   (clk),
        .enb                    (en_b),
        .web                    (we_b),
        .addrb                  (addr_b),
        .dinb                   (dout)
    );

    //- - - 2: the enable etc - - -//
    always @(*) begin
        if(~rst_n)begin
            en_a = 'b0;
        end
        else if(cur_s == `TRANSFER && valid_p && in_c_end)
            en_a = 'b1;
        else
            en_a = 'b0; 
    end

    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            addr_a <= 'b0;
        else
            addr_a <= addr_a + 'b1; 
    end

    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            addr_b <= 'b0;
        else
            addr_b <= addr_b + 'b1; 
    end

endmodule
