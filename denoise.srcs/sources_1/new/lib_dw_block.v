//==================================================================
// Module       : lib_dw_block
// FILE NAME    : lib_dw_block.v
// FUNCTION     : dw_block这个模块和其子模块的宏
// AUTHOR       : kekeshukk
// VERSION      : 1.0
// COPYRIGHT    : 2021-2022 (C) wwwkangwenzhengcom@163.com
//==================================================================

//- - - 位宽的宏定义 - - -//
`define DW_BLOCK_WEI_WIDTH  1248//ram权重（4*3*3* 8bit）的位宽
`define DW_BLOCK_WADDR_WIDTH    4//权重ram地址的位宽
`define DW_BLOCK_DATA_WIDTH 512//数据在ram的位宽
`define DW_BLOCK_DMA_ADDR_WIDTH    32//数据ram的位宽
`define DW_BLOCK_DMA_WIDTH 128//fifo的输入数据位宽
`define DW_BLOCK_DMA_SIZE_WIDTH 32//fdma size
//- - - 其他的宏定义 - - -//
// dw_block_wei_width dw_block_wei_num
`define DW_BLOCK_DDR_BASE_R 32'h09000000
`define DW_BLOCK_DDR_BASE_W 32'h0a000000
`define DW_BLOCK_DDR_STEP 32'h00000040