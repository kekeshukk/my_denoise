#include "my_intr.h"
static XScuGic INTCInst;
void finish_handler(void* num){
	//ֱ�����
	xil_printf("the finish state is comming\n");
}


int IntcInitFunction(u16 DeviceId){
	XScuGic_Config *IntcConfig;
	int status;

	// ��ʼ��GIC
    IntcConfig = XScuGic_LookupConfig(DeviceId);
    status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);
    if(status != XST_SUCCESS) return XST_FAILURE;

    // ע���쳣������ʹ��
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                                 (Xil_ExceptionHandler)XScuGic_InterruptHandler,
                                 &INTCInst);
    Xil_ExceptionEnable();

    // �����жϴ��������ж�
    status = XScuGic_Connect(&INTCInst, FINISH_INT, (Xil_ExceptionHandler)finish_handler, (void *)1);

    if(status != XST_SUCCESS) return XST_FAILURE;

    // �����жϱ��ش�����ʽ
    IntcTypeSetup(&INTCInst, FINISH_INT, INT_TYPE_RISING_EDGE);

    // ʹ���ж�Enable SW1~SW3 interrupts in the controller
    XScuGic_Enable(&INTCInst, FINISH_INT);

    return XST_SUCCESS;
}

void IntcTypeSetup(XScuGic *InstancePtr, int intId, int intType){

//	int mask;
//    intType &= INT_TYPE_MASK;
//    mask = XScuGic_DistReadReg(InstancePtr, INT_CFG0_OFFSET + (intId/16)*4);//����16��˵32bit�ļĴ���2λһ����ƽ����ôһ���Ĵ���16��intId��*4��һ�����ּĴ���4byte
//    mask &= ~(INT_TYPE_MASK << (intId%16)*2);//һ���Ĵ���16��intId����ô�����ƣ������Ӧ��������
//    mask |= intType << ((intId%16)*2);//���ö�Ӧ�Ĵ�����������
//    XScuGic_DistWriteReg(InstancePtr, INT_CFG0_OFFSET + (intId/16)*4, mask);//д��


    XScuGic_SetPriorityTriggerType(&INTCInst, intId,0xA0, intType);//�����жϵ����ȼ����жϵĴ�����ʽ
}
