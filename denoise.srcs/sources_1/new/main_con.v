`include "lib_dnotop.v"

module main_con#(
    //这个指示一周期计算4个out_c，但是在计算了64个out_c后才转变in_c，所以是16
    parameter                   MAX_0 = 16,
    //计算完全部个out_c后要变化in_c，这指示有多少个in_c
    parameter                   MAX_1 = 4,
    //一次in_c要计算的out_c=64,这个指示有多少个out_c
    parameter                   MAX_2 = 64,
    //这个指示一个输入特征图有多少个(4,4)的数据块
    parameter                   MAX_3 = 4096
)(
    input                                           clk,
    input                                           rst_n,
    (*mark_debug = "true"*)input                                           start_p,//开始计算任务
    input                                           valid_p,//fifo是否能正确的输出信号

    output  reg [1 : 0]                             cur_s,
    output  reg [1 : 0]                             nxt_s,
    output  reg [`CNT_WIDTH - 1 : 0]                cnt_0,
    (*mark_debug = "true"*)output  reg		                                intr_finish,//结束的中断
    output  reg                                     rea,//读fifo和权重的使能信号
    output                                          out_c_64_end,//对于4个in_c下一周期算完了64个out_c
    //对于一个（4，4）输入块下一周期算完了其的所有的in_c和所有的out_c
    output                                          out_c_end,
    output                                          in_c_end//对于全部in_c下一周期算完了64个out_c
    );
    
    /********************************************************************
    *procession of the linking signals
    ********************************************************************/
    localparam MAX_4 = 64;

    //同笔记，cnt_0指示16*4个out_c当前第几行 + 1；cnt_1指示对于64个out_c下次第几in_c +4
    //cnt_2指示对于全部in_c，下次第几个out_c +64；cnt_3,指示当前输入特征图的（4，4）块，计算的数目 + 1
    //cnt_4是当状态为CONV_END时会计数，到64，重新转IDLE
    (*mark_debug = "true"*)reg     [`CNT_WIDTH - 1 : 0]  cnt_1, cnt_2, cnt_3, cnt_4;    
    // localparam  [1 : 0] IDLE = 2'b00;
    // localparam  [1 : 0] TRANSFER = 2'b01;
    // localparam  [1 : 0] LOOP = 2'b11;


    //- - - 2: fsm - - -//
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            cur_s <= `IDLE;
        else
            cur_s <= nxt_s;
    end

    assign out_c_64_end = (cur_s == `TRANSFER) && (MAX_0 - 1) == cnt_0;
    assign out_c_end = (cur_s == `TRANSFER) && (MAX_0 - 1) == cnt_0 && (MAX_1) == cnt_1 && (MAX_2 == cnt_2) && cnt_4 == (MAX_4 - 1);
    assign in_c_end = MAX_1 == cnt_1;

    always @(*) begin
        if(~rst_n)
            nxt_s = `IDLE;
        else
            case(cur_s)
                `IDLE:   nxt_s = start_p ? `TRANSFER : `IDLE;
                `TRANSFER:  nxt_s = (valid_p && (cnt_0 == MAX_0 - 1) && (cnt_1 == MAX_1)
                                         && (cnt_2 == MAX_2))  ? `LOOP : `TRANSFER;
                `LOOP:   nxt_s = valid_p ? `LOOP : (cnt_3 == MAX_3 - 1) ? `CONV_END : `TRANSFER;//这里要补充输出完毕之类的
                `CONV_END: nxt_s = cnt_4 == MAX_4 - 1 ? `IDLE : `CONV_END;
                default:    nxt_s = `IDLE;
            endcase
    end

    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)begin
            cnt_0 <= 'd0;
            cnt_1 <= 'd4;
            cnt_2 <= 'd64;
            cnt_3 <= 'd0;
        end
        else begin
            if(cur_s == `IDLE)begin
                cnt_0 <= 'd0;
                cnt_1 <= 'd4;
                cnt_2 <= 'd64;
                cnt_3 <= 'd0;
            end
            else if(cur_s == `TRANSFER && valid_p)begin
                if(cnt_0 == MAX_0 - 1)
                    cnt_0 <= 'd0;
                else
                    cnt_0 <= cnt_0 + 'd1;
                
                if(cnt_0 == MAX_0 -1)
                    if(cnt_1 == MAX_1)
                        cnt_1 <= 'd4;
                    else
                        cnt_1 <= cnt_1 + 'd4;
                
                if(cnt_0 == MAX_0 -1 && cnt_1 == MAX_1)
                    cnt_2 <= cnt_2 + 'd64;
            end
            else if(cur_s == `LOOP && nxt_s == `TRANSFER)begin//只有在LOOP状态的最后一个周期才复原
                cnt_0 <= 'd0;
                cnt_1 <= 'd4;
                cnt_2 <= 'd64;
                cnt_3 <= cnt_3 + 'd1;

            end
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            rea <= 'b0;
        else if(nxt_s == `TRANSFER)
            rea <= 'b1;
        else if(nxt_s == `CONV_END)
            rea <= 'b0;
    end

    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            cnt_4 <= 'b0;
        else if(cur_s == `CONV_END)
            cnt_4 <= 'b1 + cnt_4;
        else
            cnt_4 <= 'b0;
    end

    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            intr_finish <= 'b0;
        else if(cur_s == `CONV_END)
            intr_finish <= 'b1;
        else
            intr_finish <= 'b0;
    end
endmodule
