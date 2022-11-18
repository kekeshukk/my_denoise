//==================================================================
// Module       : lib_dnotop
// FILE NAME    : lib_dnotop.v
// FUNCTION     : denoise��Ŀ������궨��
// AUTHOR       : kekeshukk
// VERSION      : 1.0
// COPYRIGHT    : 2021-2022 (C) wwwkangwenzhengcom@163.com
//==================================================================

//λ��
`define CNT_WIDTH   20//cnt��λ��
`define RP_MODE_WIDTH 3//conv_rbģ������ģʽ��λ��

//����
`timescale 1ns / 1ps


`define IDLE 2'b00
`define TRANSFER 2'b01
`define LOOP  2'b10
`define CONV_END    2'd3

`define RP_NORM 4'd1//��relu ��pooling
`define RP_MAX_P 4'd2//��relu max pooling
`define RP_AVG_P 2'd4//��relu average pooling
