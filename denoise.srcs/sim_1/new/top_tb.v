`include "../../sources_1/new/lib_dnotop.v"

`define PERIOD 20
module top_tb(
     
    );

    //- - - 1: clk and rst_n - - -//
    
    reg                 clk_p;
    reg                 rst_n;
    reg                 start_p;
    
    reg [511 : 0]   mem [4095 : 0];//´æ´¢Æ÷

    reg     [128 - 1 : 0]   dma_rd_data;
    reg		                dma_rd_en;
    reg		                dma_rd_last;
    wire    [32 - 1 : 0]    dma_rd_addr;
    wire                    dma_rd_areq;

    //the data
    wire    [32 - 1 : 0]    dma_rd_size;

    wire	clk, clk_n;
    assign clk_n = ~clk_p;

    initial begin
        clk_p =0 ;rst_n = 1;
        repeat(10)@(posedge clk); rst_n = 0;
        repeat(10)@(posedge clk); rst_n = 1;
    end

    always#(`PERIOD / 2)   clk_p = ~clk_p;
	
    //- - - 2: data - - -//
	initial begin
        $readmemh("C:\\Users\\wwwka\\Desktop\\my_cnn\\denoise\\denoise_ram\\input_l8_p6", mem);
	    start_p = 0;
	    @(posedge rst_n)
	    repeat (10) @(posedge clk); #1 start_p = 1;
        @(posedge clk); #1 start_p = 0;
	    repeat(3400) @(posedge clk); #1;
	   
	   
	   $finish;
	//    repeat(1000) @(posedge clk); #1;
    //    $stop;
    end
    
    integer index = 0;
    
    integer cnt;
    ccnn_top u_ccnn_top(
    	.clk_p    (clk_p   ),
    	.clk_n    (clk_n  ),
        .rst_n  (rst_n ),
        .start_p (start_p ),


        ////////////////////²âÊÔ////////////////////
        .dma_rd_addr    (),
        .dma_rd_areq    (dma_rd_areq),
        .dma_rd_data    (mem[index][128 * (4 - cnt) - 1 -: 128]),
        .dma_rd_en      (dma_rd_en),
        .dma_rd_last    (dma_rd_last),
        .clk_out        (clk),
        .dma_rd_size    ()
    );
    
    
    


    //- - - 3: other - - -//

    integer clk_cnt;
    reg lock;

    
    always@(posedge clk or negedge rst_n)begin
        if(~rst_n)begin
            clk_cnt <=    0;  
        end
        else begin
            clk_cnt <=  clk_cnt + 1;
        end
    end


    always@(posedge clk or negedge rst_n)begin
        if(~rst_n) begin
            dma_rd_data <= 'b0;
            dma_rd_en <= 'b0;
            dma_rd_last <= 'b0;
        end
        else begin
            

            if(cnt == 'd2 && dma_rd_en)
                dma_rd_last <= 'b1;
            else
                dma_rd_last <= 'b0;

            if(dma_rd_last)
                dma_rd_en <= 'b0;
            else if(lock)
                dma_rd_en <= 'b1;
            else
                dma_rd_en <= dma_rd_en;

            
        end 
    end

    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)begin
            lock <= 'b0;
            index <= 0;
        end
        else begin 
            if(dma_rd_areq)
                lock <= 'b1;
            else if(cnt == 'd3)
                lock <= 'b0;

            if(dma_rd_last)
                index <= index + 1;
        end
    end
    always@(posedge clk or negedge rst_n)begin
        if(~rst_n)
            cnt <= 'b0;
        else if(dma_rd_en)begin
            if(cnt == 'd3)
                cnt <= 'b0;
            else
                cnt <= cnt + 'b1;
        end
    end
endmodule
