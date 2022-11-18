/*
 * ��غ궨���
 *
 * */
#include <stdio.h>
#include "xil_printf.h"
#include <stdlib.h>
#include "xil_cache.h"

#include "xil_io.h"
#include "ff.h"

#include "xscugic.h"
#include "xil_exception.h"
#include "the_controller_axi.h"
#include "xparameters.h"

#define DATA_SIZE 4096//��������ͼ��4096��4��4
#define LITTLE_ENDIAN_AXI 16//ÿ16bit����С�˷�ʽ��
#define DDR_BASE_ADDR_R 0x09000000
#define DDR_BASE_ADDR_W 0x02000000

#define	INTC_DEVICE_ID XPAR_SCUGIC_0_DEVICE_ID//�жϿ�����ID
#define FINISH_INT	121
#define INT_TYPE_RISING_EDGE    0x03//�����ؼ��
#define INT_TYPE_MASK           0x03
#define INT_TYPE_HIGHLEVEL      0x01//�ߵ�ƽ���
#define INT_CFG0_OFFSET 0x00000C00//�ж��ն˼Ĵ�������ַ

#define CONT_BASE_ADDR XPAR_THE_CONTROLLER_AXI_0_S0_AXI_BASEADDR//axi-lite�豸 �Ļ���ַ
#define CONT_OFFSET_0 0xc//��һ���Ĵ����ĵ�ַ��128bit�����32λ
#define CONT_OFFSET_1 0x8//��һ���Ĵ����ĵ�ַ��128bit�Ĵθ�32λ
#define CONT_OFFSET_2 0x4//��һ���Ĵ����ĵ�ַ��128bit�Ĵε�32λ
#define CONT_OFFSET_3 0x0//��һ���Ĵ����ĵ�ַ��128bit�ĵ�32λ
