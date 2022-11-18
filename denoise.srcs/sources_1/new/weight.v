`include "lib_dw_block.v"

`include "lib_dnotop.v"
`define DATA_CHA        8//the channel

module weight#(
    parameter                                       WEI_WIDTH = 0,
    parameter                                       ADDR_WIDTH = 0
)(
    input                                           clk,
    input                                           rst_n,
    input                                           rea,
    input   [1 : 0]                                 cur_s,
    input   [1 : 0]                                 nxt_s,

    output  [WEI_WIDTH - 1 : 0]                     wei_out
    // output  reg		                                w_valid_p
    );
    
    /********************************************************************
    *procession of the linking signals
    ********************************************************************/
    
    // integer cnt_0, cnt_1;//同笔记，cnt_0指示权重ram有没有走完一轮，cnt_1,指示输入特征图的（4，4）块，计算的数目
    // localparam  [1 : 0] IDLE = 2'b00;
    // localparam  [1 : 0] TRANSFER = 2'b01;
    // localparam  [1 : 0] LOOP = 2'b11;
    // reg     [1 : 0] cur_s, nxt_s;


    reg     [ADDR_WIDTH - 1 : 0] addr;
    reg     [WEI_WIDTH - 1 : 0] win = 'b0;
    // reg     ena,wea; 
    reg		wea = 'd0;
    
    //- - - 1: weight - - -//
    weight_inc_0_conv wei(
        .clka           (clk),
        .ena            (rea),
        .addra          (addr),
        .wea            (wea),
        .dina           (win),
        .douta          (wei_out)
    );

    //- - - 2: addr - - -//
    // always @(posedge clk or negedge rst_n) begin
    //     if(~rst_n)
    //         cur_s <= IDLE;
    //     else
    //         cur_s <= nxt_s;
    // end

    // always @(*) begin
    //     if(~rst_n)
    //         nxt_s <= IDLE;
    //     else
    //         case(cur_s)
    //             IDLE:   nxt_s = ena ? TRANSFER : IDLE;
    //             TRANSFER:   nxt_s = ena && cnt_0 == MAX_0 - 1 ? LOOP : TRANSFER;
    //             LOOP:   nxt_s = cnt_1 == MAX_1 - 1 ? IDLE : TRANSFER;
    //             default:    nxt_s = IDLE;
    //         endcase
    // end

    // always @(posedge clk or negedge rst_n) begin
    //     if(~rst_n)begin
    //         addr <= 'd0;
    //         cnt_0 <= 'd0;
    //         cnt_1 <= 'd0;
    //     end
    //     else begin
    //         if(cur_s == IDLE)begin
    //             addr <= 'd0;
    //             cnt_0 <= 'd0;
    //         end
    //         else if(cur_s == TRANSFER && ena)begin
    //             addr <= addr + 'd1;
    //             cnt_0 <= cnt_0 + 'd1;
    //         end
    //         else if(nxt_s == LOOP && ena)begin
    //             addr <= 'd0;
    //             cnt_0 <= 'd0;
    //         end
            
    //         if(cur_s == IDLE)
    //             cnt_1 <= 'd0;
    //         else if(cur_s == LOOP && ena)
    //             cnt_1 <= cnt_1 + 'd1;
    //     end
    // end

    always@(posedge clk or negedge rst_n)begin
        if(~rst_n)begin
            addr <= 'd0;
        end
        else begin
            if(rea && nxt_s == `TRANSFER)
                addr <= addr + 'd1;
            else if(rea && nxt_s == `LOOP)
                addr <= 'd0;

        end
    end

endmodule
