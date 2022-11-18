//==================================================================
// Module       : lib_conv
// FILE NAME    : lib_conv.v
// FUNCTION     : ���ģ��ĺ�
// AUTHOR       : kekeshukk
// VERSION      : 1.0
// COPYRIGHT    : 2021-2022 (C) wwwkangwenzhengcom@163.com
//==================================================================


//- - - λ��ĺ궨�� - - -//
`define CONV_WEI_WIDTH  1184//ramȨ�أ�4*3*3* 8bit����λ��
`define CONV_DATA_WIDTH 512//������ram��λ��
`define CONV_IN_WID 8//�������ݵ�ʱ��һ�����ݵ�λ��
`define CONV_PRE_WID    10//Ԥ����׶�������ݵ�ʱ��һ�����ݵ�λ��
`define CONV_MUL_WID    20//��˽׶�������ݵ�ʱ��һ�����ݵ�λ��
`define CONV_POST_WID   24//�������ۼӽ׶�һ�����ݵ�λ��
`define CONV_BIAS_WIDTH 24//ƫ�õ�λ��


//- - - �����ĺ궨�� - - -//
`define CONV_DIN_NUM_INC    4//����ͨ��ά�ȵ����ݸ���
`define CONV_WIN_NUM_P  9//���ά�ȵ�Ȩ�ظ���
`define CONV_WIN_NUM_INC    4//����ͨ��ά�ȵ�Ȩ�ظ���
`define CONV_DOUT_NUM_P 4//һ�������ͨ���ڿ��ά�ȿ��Լ�����Ľ��
`define CONV_DOUT_NUM_OUTC  4//һ���ڵļ������������ͨ��ά�ȵĸ���
`define CONV_WIN_NUM_OUTC   4//���ͨ��ά�ȵ�Ȩ�ظ���
`define CONV_DIN_NUM_P  16//���ά�ȵ��������ݸ���
`define CONV_WIN_NUM_BIAS 4//ƫ�õ���Ŀ
`define CONV_TURN_NUM_OUTC 64//���˶��ٸ����ͨ��֮������

