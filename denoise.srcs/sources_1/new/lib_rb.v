//==================================================================
// Module       : lib_rb
// FILE NAME    : lib_rb.v
// FUNCTION     : result_block的宏定义
// AUTHOR       : kekeshukk
// VERSION      : 1.0
// COPYRIGHT    : 2021-2022 (C) wwwkangwenzhengcom@163.com
//==================================================================


//- - - 位宽的宏定义 - - -//
`define RB_IN_WIDTH 8//输入数据的时候一个数据的位宽
`define RB_ADDR_WIDTH 12//地址的位宽，存储最终的结果的



//- - - 其他的宏定义 - - -//
`define RB_IN_NUM_P 4//输入数据宽高通道维度的数据个数
`define RB_IN_NUM_OUTC  4//OUTC维度的权重个数


