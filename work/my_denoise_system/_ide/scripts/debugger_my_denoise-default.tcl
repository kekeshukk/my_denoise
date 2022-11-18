# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\wwwka\Desktop\my_cnn\denoise\work\my_denoise_system\_ide\scripts\debugger_my_denoise-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\wwwka\Desktop\my_cnn\denoise\work\my_denoise_system\_ide\scripts\debugger_my_denoise-default.tcl
# 
connect -url tcp:127.0.0.1:3121
source C:/Xilinx/Vitis/2021.1/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210249855568" && level==0 && jtag_device_ctx=="jsn-JTAG-HS1-210249855568-14710093-0"}
fpga -file C:/Users/wwwka/Desktop/my_cnn/denoise/work/my_denoise/_ide/bitstream/ccnn_top.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/wwwka/Desktop/my_cnn/denoise/work/ccnn_top/export/ccnn_top/hw/ccnn_top.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow C:/Users/wwwka/Desktop/my_cnn/denoise/work/ccnn_top/export/ccnn_top/sw/ccnn_top/boot/fsbl.elf
set bp_8_57_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_8_57_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow C:/Users/wwwka/Desktop/my_cnn/denoise/work/my_denoise/Debug/my_denoise.elf
configparams force-mem-access 0
bpadd -addr &main
