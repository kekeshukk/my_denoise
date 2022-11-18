`include "lib_dnotop.v"

module main_con#(
    //���ָʾһ���ڼ���4��out_c�������ڼ�����64��out_c���ת��in_c��������16
    parameter                   MAX_0 = 16,
    //������ȫ����out_c��Ҫ�仯in_c����ָʾ�ж��ٸ�in_c
    parameter                   MAX_1 = 4,
    //һ��in_cҪ�����out_c=64,���ָʾ�ж��ٸ�out_c
    parameter                   MAX_2 = 64,
    //���ָʾһ����������ͼ�ж��ٸ�(4,4)�����ݿ�
    parameter                   MAX_3 = 4096
)(
    input                                           clk,
    input                                           rst_n,
    (*mark_debug = "true"*)input                                           start_p,//��ʼ��������
    input                                           valid_p,//fifo�Ƿ�����ȷ������ź�

    output  reg [1 : 0]                             cur_s,
    output  reg [1 : 0]                             nxt_s,
    output  reg [`CNT_WIDTH - 1 : 0]                cnt_0,
    (*mark_debug = "true"*)output  reg		                                intr_finish,//�������ж�
    output  reg                                     rea,//��fifo��Ȩ�ص�ʹ���ź�
    output                                          out_c_64_end,//����4��in_c��һ����������64��out_c
    //����һ����4��4���������һ����������������е�in_c�����е�out_c
    output                                          out_c_end,
    output                                          in_c_end//����ȫ��in_c��һ����������64��out_c
    );
    
    /********************************************************************
    *procession of the linking signals
    ********************************************************************/
    localparam MAX_4 = 64;

    //ͬ�ʼǣ�cnt_0ָʾ16*4��out_c��ǰ�ڼ��� + 1��cnt_1ָʾ����64��out_c�´εڼ�in_c +4
    //cnt_2ָʾ����ȫ��in_c���´εڼ���out_c +64��cnt_3,ָʾ��ǰ��������ͼ�ģ�4��4���飬�������Ŀ + 1
    //cnt_4�ǵ�״̬ΪCONV_ENDʱ���������64������תIDLE
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
                `LOOP:   nxt_s = valid_p ? `LOOP : (cnt_3 == MAX_3 - 1) ? `CONV_END : `TRANSFER;//����Ҫ����������֮���
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
            else if(cur_s == `LOOP && nxt_s == `TRANSFER)begin//ֻ����LOOP״̬�����һ�����ڲŸ�ԭ
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
