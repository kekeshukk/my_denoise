`include "lib_dw_block.v"
`include "lib_dnotop.v"

module data#(
    parameter                                       DATA_WIDTH = 0,
    parameter                                       ADDR_DWIDTH = 0
)(
    input                                           clk,
    input                                           rst_n,
    input                                           ena,
    input   [1 : 0]                                 cur_s,
    input                                           out_c_64_end,//对于4个in_c算完了64个out_c

    output  [DATA_WIDTH - 1 : 0]                     dout
    );
    
    

    reg     [ADDR_DWIDTH - 1 : 0] addr;
    // reg     ena,wea; 
    reg		wea = 'd0;
    

    reg	[DATA_WIDTH - 1 : 0] din = 'b0;

    //- - - 1: instance - - -//
    data_ram u_data(
        .clka           (clk),
        // .ena            (ena),
        .addra          (addr),
        .wea            (wea),
        .dina           (din),
        .douta          (dout)
    );

    //- - - 2: addr - - -//
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)begin
            addr <= 'b0;
        end
        else begin
            if(~ena)
                addr <= 'd0;
            else if(cur_s == `TRANSFER && out_c_64_end)
                addr <= addr + 'b1;
        end
    end

endmodule
