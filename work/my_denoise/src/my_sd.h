/*
 * sd 卡处理的相关函数
 * */

#include "the_lib.h"

/*
 * 挂载一个FAT32文件系统
 * path:路径
 * return:0成功 -1失败
*/
int mount_fs(char path[]);

/*
 * 将一组数据传入ddr的对应地址之中
 * base_ddr基地址 num_arr数组
 */
int send_to_ddr(unsigned int base_addr, unsigned char number_array[], int column_count);




/*
 * 读取文件，将其中的换行符删去，每两个字符一组转化成8bit的数据
 * path:文件位置
 * read_number_array:存储转化后的二维数据
 * read_count:转化后的特征图的每行个数
 */
int file_read(char* path, int* column_count);


/*
 * 写入文件
 * path:文件位置
 * line_write:写入的数据
 * size:写入数目
 */
int file_write(char*path, char* content_write, int size);
