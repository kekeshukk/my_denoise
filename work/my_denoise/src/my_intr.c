#include "my_intr.h"
static XScuGic INTCInst;
void finish_handler(void* num){
	//直接输出
	xil_printf("the finish state is comming\n");
}


int IntcInitFunction(u16 DeviceId){
	XScuGic_Config *IntcConfig;
	int status;

	// 初始化GIC
    IntcConfig = XScuGic_LookupConfig(DeviceId);
    status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);
    if(status != XST_SUCCESS) return XST_FAILURE;

    // 注册异常处理，并使能
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                                 (Xil_ExceptionHandler)XScuGic_InterruptHandler,
                                 &INTCInst);
    Xil_ExceptionEnable();

    // 关联中断处理函数和中断
    status = XScuGic_Connect(&INTCInst, FINISH_INT, (Xil_ExceptionHandler)finish_handler, (void *)1);

    if(status != XST_SUCCESS) return XST_FAILURE;

    // 设置中断边沿触发方式
    IntcTypeSetup(&INTCInst, FINISH_INT, INT_TYPE_RISING_EDGE);

    // 使能中断Enable SW1~SW3 interrupts in the controller
    XScuGic_Enable(&INTCInst, FINISH_INT);

    return XST_SUCCESS;
}

void IntcTypeSetup(XScuGic *InstancePtr, int intId, int intType){

//	int mask;
//    intType &= INT_TYPE_MASK;
//    mask = XScuGic_DistReadReg(InstancePtr, INT_CFG0_OFFSET + (intId/16)*4);//除以16是说32bit的寄存器2位一个电平，那么一个寄存器16个intId，*4是一个这种寄存器4byte
//    mask &= ~(INT_TYPE_MASK << (intId%16)*2);//一个寄存器16个intId，那么就左移，清零对应出发设置
//    mask |= intType << ((intId%16)*2);//设置对应的触发敏感设置
//    XScuGic_DistWriteReg(InstancePtr, INT_CFG0_OFFSET + (intId/16)*4, mask);//写回


    XScuGic_SetPriorityTriggerType(&INTCInst, intId,0xA0, intType);//设置中断的优先级和中断的触发方式
}
