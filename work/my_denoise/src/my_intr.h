
#include "the_lib.h"

//static XScuGic INTCInst;

/*
 * �жϲ��ֵ�����
 *
 *
 * */
/*
 * ��finish��ʱ��ִ�и��ж�
 * num:������
 * */
void finish_handler(void* num);



/*
 * ��ʼ���жϴ���Ĳ��֣����������жϴ�����
 * DevicedId:GIC�豸id
 */
int IntcInitFunction(u16 DeviceId);


/*
 * �����ж����е�ƽ
 * �ж�id���ж�����
 * */
void IntcTypeSetup(XScuGic *InstancePtr, int intId, int intType);

