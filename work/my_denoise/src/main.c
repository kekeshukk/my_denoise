/******************************************************************************
 *denoise工程的sdk
 *作者：康文正
 ******************************************************************************/


#include "the_lib.h"
#include "my_sd.h"
#include "my_intr.h"


int main() {

	char m_path[100] = "0:";
//	char test_file_path[100] = "/test/input.txt";
//	char content_write[100];

	char feature_path[100] = "/denoise/input.txt";
	char path[200];

	int column_count = 0; //the size of lines

	//挂文件系统
	if(mount_fs(m_path) == -1)
		return -1;






	//////////////////////////////////////////////////
	//从文件中读出我的特征数据,写入到ddr
	//////////////////////////////////////////////////
	strcpy(path,m_path);
	strcat(path,feature_path);
	xil_printf("the features path is:%s\n", path);
	if(file_read(path, &column_count) == 1) {
		xil_printf("read to %x has been done\n", DDR_BASE_ADDR_R);
	}



	//////////////////////////////////////////////////
	//读ddr，查看pl是否写入了数据
	//////////////////////////////////////////////////

	int i;
	char signal;

	unsigned int data_0, data_1, data_2, data_3;	//这其中后者的地址高一些

	IntcInitFunction(INTC_DEVICE_ID);//做中断的

	//设置控制信号 CONT_OFFSET_0是128bit的最高字
	THE_CONTROLLER_AXI_mWriteReg(CONT_BASE_ADDR,CONT_OFFSET_0,0X3);
	THE_CONTROLLER_AXI_mWriteReg(CONT_BASE_ADDR,CONT_OFFSET_1,0X3);
	THE_CONTROLLER_AXI_mWriteReg(CONT_BASE_ADDR,CONT_OFFSET_2,0X3);
	THE_CONTROLLER_AXI_mWriteReg(CONT_BASE_ADDR,CONT_OFFSET_3,0X1);

	//注意：这里取出来的数是按小端方式排列的，低位高位在低地址，经过验证AXI4写入数据的时候也是按照小端方式写入的,低位在低地址
	while (1) {
		scanf("%c", &signal);
		if (signal == 'w') {
			for (i = DDR_BASE_ADDR_W; i < 1024 + DDR_BASE_ADDR_W; i = i + 16) {
				data_0 = (unsigned int) Xil_In32(i);
				data_1 = (unsigned int) Xil_In32(i + 0x4);
				data_2 = (unsigned int) Xil_In32(i + 0x8);
				data_3 = (unsigned int) Xil_In32(i + 0xc);
				printf("addr:%08x is number:%016x%016x%016x%016x\n", i, data_3,
						data_2, data_1, data_0);
			}
		}
	}


	return 0;
}
