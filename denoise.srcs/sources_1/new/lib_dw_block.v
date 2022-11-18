//==================================================================
// Module       : lib_dw_block
// FILE NAME    : lib_dw_block.v
// FUNCTION     : dw_block���ģ�������ģ��ĺ�
// AUTHOR       : kekeshukk
// VERSION      : 1.0
// COPYRIGHT    : 2021-2022 (C) wwwkangwenzhengcom@163.com
//==================================================================

//- - - λ��ĺ궨�� - - -//
`define DW_BLOCK_WEI_WIDTH  1248//ramȨ�أ�4*3*3* 8bit����λ��
`define DW_BLOCK_WADDR_WIDTH    4//Ȩ��ram��ַ��λ��
`define DW_BLOCK_DATA_WIDTH 512//������ram��λ��
`define DW_BLOCK_DMA_ADDR_WIDTH    32//����ram��λ��
`define DW_BLOCK_DMA_WIDTH 128//fifo����������λ��
`define DW_BLOCK_DMA_SIZE_WIDTH 32//fdma size
//- - - �����ĺ궨�� - - -//
// dw_block_wei_width dw_block_wei_num
`define DW_BLOCK_DDR_BASE_R 32'h09000000
`define DW_BLOCK_DDR_BASE_W 32'h0a000000
`define DW_BLOCK_DDR_STEP 32'h00000040