#include"my_sd.h"



static FATFS FatFs; //file sys




int mount_fs(char path[]){
	FRESULT fr;
	fr = f_mount(&FatFs, path, 0);
	if (fr == FR_OK) {
		printf("mount it\n");
		return 0;
	} else {
		printf("not mount\n");
		return -1;
	}
}

int send_to_ddr(unsigned int base_addr, unsigned char number_array[], int column_count){
	int i,j;

	//每16B按照小端方式送入
	for(i = 0; i < column_count; i = i + LITTLE_ENDIAN_AXI){
		for(j = 0; j < column_count; j++){
			Xil_Out8(i + j + base_addr, number_array[i + LITTLE_ENDIAN_AXI - 1 - j]);

		}
	}
	return 0;
}

int file_read(char* path, int* column_count) {
	FIL fil; //file obeject
	FRESULT fr;
	char str_num[3];
	unsigned int count_r;
	unsigned char read_number[64]; //读出的每行数据
	int i = 0;
	int j = 0;
	*column_count = 0;

	xil_printf("*************read process*****************\n");

	//open the file
	fr = f_open(&fil, path, FA_READ);
	if (fr == FR_OK) {
		xil_printf("open it\n");
	} else {
		xil_printf("wrong open\n");
		return -1;
	}


	//init
	memset(str_num, '\0', sizeof(str_num));

	i = 0;
	while(1){
		j = 0;
		while (1) {
			if(f_read(&fil, str_num, 1, &count_r)!=FR_OK ){
				f_close(&fil);
				xil_printf("wrong read\n");
				return -1;
			}
			else if(str_num[0] == '\n'){
				break;
			}

			if(f_read(&fil, str_num + 1, 1, &count_r)!=FR_OK){
				f_close(&fil);
				xil_printf("wrong read\n");
				return -1;
			}
			else if(str_num[1] == '\n'){
				break;
			}
			else{
				*column_count = *column_count + 1;
			}

			if (f_eof(&fil)) break;
			read_number[j++] = (unsigned char) (strtol(str_num, NULL, 16));
		}

		send_to_ddr(DDR_BASE_ADDR_R + *column_count * i, read_number, *column_count);
		*column_count = 0;


		if (f_eof(&fil)) break;
		i++;
	}




	f_close(&fil);
	Xil_DCacheFlush();//将cache推送
	xil_printf("file_READ_operation and send_to_ddr operation done\n");

	return 0;
}

int file_write(char*path, char* content_write, int size) {
	FIL fil;
	FRESULT fr; //FatFs return code
	unsigned int count_w = 0;

	xil_printf("*************write process*****************\n");

	//open a file
	fr = f_open(&fil, path, FA_CREATE_ALWAYS | FA_WRITE);
	if (fr == FR_OK) {
		xil_printf("open it\n");
	} else {
		xil_printf("wrong open\n");
		return -1;
	}

	//write
	fr = f_write(&fil, content_write, size, &count_w);
	if (fr == FR_OK) {
		xil_printf("\t->write content:%s\n", content_write);
	} else {
		f_close(&fil);
		xil_printf("wrong write\n");
		return -1;
	}
	f_close(&fil);

	xil_printf("file_WRITE_operation done\n");
	return 1;
}

