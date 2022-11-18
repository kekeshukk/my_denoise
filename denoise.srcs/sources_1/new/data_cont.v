`include "lib_dw_block.v"

module weight#(
    parameter                   ADDR_WWIDTH = 0,
    parameter                   MAX_0 = 16,//���ָʾһ���ڼ���4��out_c�������ڼ�����64��out_c���ת��in_c��������16
    parameter                   MAX_1 = 1,//һ��in_cҪ�����out_c=64,���ָʾ�ж��ٸ�64
    parameter                   MAX_2 = 4096,//���ָʾһ����������ͼ�ж��ٸ�(4,4)�����ݿ�
    parameter                   ADDR_DWIDTH = 0)
(
    input                                           clk,
    input                                           rst_n,
    input                                           ena,

    output  reg [ADDR_WWIDTH - 1 : 0]               addr_w,
    output  reg [ADDR_DWIDTH - 1 : 0]               addr_d     
    );
    
    /********************************************************************
    *procession of the linking signals
    ********************************************************************/
    
    integer cnt_0, cnt_1;//ͬ�ʼǣ�cnt_0ָʾȨ��ram��û������һ�֣�cnt_1,ָʾ��������ͼ�ģ�4��4���飬�������Ŀ
    localparam  [1 : 0] IDLE = 2'b00;
    localparam  [1 : 0] TRANSFER = 2'b01;
    localparam  [1 : 0] LOOP = 2'b11;
    reg     [1 : 0] cur_s, nxt_s;


    //- - - 2: fsm - - -//
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            cur_s <= IDLE;
        else
            cur_s <= nxt_s;
    end

    always @(*) begin
        if(~rst_n)
            nxt_s <= IDLE;
        else
            case(cur_s)
                IDLE:   nxt_s = ena ? TRANSFER : IDLE;
                TRANSFER:   nxt_s = ena && cnt_0 == MAX_0 - 1 ? LOOP : TRANSFER;
                LOOP:   nxt_s = cnt_1 == MAX_1 - 1 ? IDLE : TRANSFER;
                default:    nxt_s = IDLE;
            endcase
    end

    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)begin
            cnt_0 <= 'd0;
            cnt_1 <= 'd0;
        end
        else begin
            if(cur_s == IDLE)begin
                cnt_0 <= 'd0;
            end
            else if(cur_s == TRANSFER && ena)begin
                cnt_0 <= cnt_0 + 'd1;
            end
            else if(nxt_s == LOOP && ena)begin
                cnt_0 <= 'd0;
            end
            
            if(cur_s == IDLE)
                cnt_1 <= 'd0;
            else if(cur_s == LOOP && ena)
                cnt_1 <= cnt_1 + 'd1;
        end
    end

endmodule
