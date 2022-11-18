/*
 * 相关宏定义等
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

#define DATA_SIZE 4096//输入特征图有4096个4，4
#define LITTLE_ENDIAN_AXI 16//每16bit按照小端方式存
#define DDR_BASE_ADDR_R 0x09000000
#define DDR_BASE_ADDR_W 0x02000000

#define	INTC_DEVICE_ID XPAR_SCUGIC_0_DEVICE_ID//中断控制器ID
#define FINISH_INT	121
#define INT_TYPE_RISING_EDGE    0x03//上升沿检测
#define INT_TYPE_MASK           0x03
#define INT_TYPE_HIGHLEVEL      0x01//高电平检测
#define INT_CFG0_OFFSET 0x00000C00//中断终端寄存器基地址

#define CONT_BASE_ADDR XPAR_THE_CONTROLLER_AXI_0_S0_AXI_BASEADDR//axi-lite设备 的基地址
#define CONT_OFFSET_0 0xc//第一个寄存器的地址，128bit的最高32位
#define CONT_OFFSET_1 0x8//第一个寄存器的地址，128bit的次高32位
#define CONT_OFFSET_2 0x4//第一个寄存器的地址，128bit的次第32位
#define CONT_OFFSET_3 0x0//第一个寄存器的地址，128bit的低32位
