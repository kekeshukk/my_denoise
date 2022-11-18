//==================================================================
// Module       : lib_conv
// FILE NAME    : lib_conv.v
// FUNCTION     : 卷积模块的宏
// AUTHOR       : kekeshukk
// VERSION      : 1.0
// COPYRIGHT    : 2021-2022 (C) wwwkangwenzhengcom@163.com
//==================================================================


//- - - 位宽的宏定义 - - -//
`define CONV_WEI_WIDTH  1184//ram权重（4*3*3* 8bit）的位宽
`define CONV_DATA_WIDTH 512//数据在ram的位宽
`define CONV_IN_WID 8//输入数据的时候一个数据的位宽
`define CONV_PRE_WID    10//预处理阶段输出数据的时候一个数据的位宽
`define CONV_MUL_WID    20//相乘阶段输出数据的时候一个数据的位宽
`define CONV_POST_WID   24//后处理与累加阶段一个数据的位宽
`define CONV_BIAS_WIDTH 24//偏置的位宽


//- - - 其他的宏定义 - - -//
`define CONV_DIN_NUM_INC    4//输入通道维度的数据个数
`define CONV_WIN_NUM_P  9//宽高维度的权重个数
`define CONV_WIN_NUM_INC    4//输入通道维度的权重个数
`define CONV_DOUT_NUM_P 4//一周期输出通道在宽高维度可以计算出的结果
`define CONV_DOUT_NUM_OUTC  4//一周期的计算结果中在输出通道维度的个数
`define CONV_WIN_NUM_OUTC   4//输出通道维度的权重个数
`define CONV_DIN_NUM_P  16//宽高维度的输入数据个数
`define CONV_WIN_NUM_BIAS 4//偏置的数目
`define CONV_TURN_NUM_OUTC 64//算了多少个输出通道之后就输出

