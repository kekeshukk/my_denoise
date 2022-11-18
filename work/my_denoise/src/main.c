/******************************************************************************
 *denoise���̵�sdk
 *���ߣ�������
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

	//���ļ�ϵͳ
	if(mount_fs(m_path) == -1)
		return -1;






	//////////////////////////////////////////////////
	//���ļ��ж����ҵ���������,д�뵽ddr
	//////////////////////////////////////////////////
	strcpy(path,m_path);
	strcat(path,feature_path);
	xil_printf("the features path is:%s\n", path);
	if(file_read(path, &column_count) == 1) {
		xil_printf("read to %x has been done\n", DDR_BASE_ADDR_R);
	}



	//////////////////////////////////////////////////
	//��ddr���鿴pl�Ƿ�д��������
	//////////////////////////////////////////////////

	int i;
	char signal;

	unsigned int data_0, data_1, data_2, data_3;	//�����к��ߵĵ�ַ��һЩ

	IntcInitFunction(INTC_DEVICE_ID);//���жϵ�

	//���ÿ����ź� CONT_OFFSET_0��128bit�������
	THE_CONTROLLER_AXI_mWriteReg(CONT_BASE_ADDR,CONT_OFFSET_0,0X3);
	THE_CONTROLLER_AXI_mWriteReg(CONT_BASE_ADDR,CONT_OFFSET_1,0X3);
	THE_CONTROLLER_AXI_mWriteReg(CONT_BASE_ADDR,CONT_OFFSET_2,0X3);
	THE_CONTROLLER_AXI_mWriteReg(CONT_BASE_ADDR,CONT_OFFSET_3,0X1);

	//ע�⣺����ȡ���������ǰ�С�˷�ʽ���еģ���λ��λ�ڵ͵�ַ��������֤AXI4д�����ݵ�ʱ��Ҳ�ǰ���С�˷�ʽд���,��λ�ڵ͵�ַ
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
