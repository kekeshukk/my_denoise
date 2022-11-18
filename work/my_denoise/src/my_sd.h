/*
 * sd ���������غ���
 * */

#include "the_lib.h"

/*
 * ����һ��FAT32�ļ�ϵͳ
 * path:·��
 * return:0�ɹ� -1ʧ��
*/
int mount_fs(char path[]);

/*
 * ��һ�����ݴ���ddr�Ķ�Ӧ��ַ֮��
 * base_ddr����ַ num_arr����
 */
int send_to_ddr(unsigned int base_addr, unsigned char number_array[], int column_count);




/*
 * ��ȡ�ļ��������еĻ��з�ɾȥ��ÿ�����ַ�һ��ת����8bit������
 * path:�ļ�λ��
 * read_number_array:�洢ת����Ķ�ά����
 * read_count:ת���������ͼ��ÿ�и���
 */
int file_read(char* path, int* column_count);


/*
 * д���ļ�
 * path:�ļ�λ��
 * line_write:д�������
 * size:д����Ŀ
 */
int file_write(char*path, char* content_write, int size);
