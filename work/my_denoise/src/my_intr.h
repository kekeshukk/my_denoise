
#include "the_lib.h"

//static XScuGic INTCInst;

/*
 * 中断部分的设置
 *
 *
 * */
/*
 * 当finish的时候执行该中断
 * num:无意义
 * */
void finish_handler(void* num);



/*
 * 初始化中断处理的部分，并且设置中断触发等
 * DevicedId:GIC设备id
 */
int IntcInitFunction(u16 DeviceId);


/*
 * 设置中断敏感电平
 * 中断id，中断类型
 * */
void IntcTypeSetup(XScuGic *InstancePtr, int intId, int intType);

