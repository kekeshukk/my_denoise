vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_10
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_10
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/fifo_generator_v13_2_5
vlib modelsim_lib/msim/axi_data_fifo_v2_1_23
vlib modelsim_lib/msim/axi_register_slice_v2_1_24
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_24
vlib modelsim_lib/msim/axi_clock_converter_v2_1_23
vlib modelsim_lib/msim/blk_mem_gen_v8_4_4
vlib modelsim_lib/msim/axi_dwidth_converter_v2_1_24

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_10 modelsim_lib/msim/axi_vip_v1_1_10
vmap zynq_ultra_ps_e_vip_v1_0_10 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_10
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_5 modelsim_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_23 modelsim_lib/msim/axi_data_fifo_v2_1_23
vmap axi_register_slice_v2_1_24 modelsim_lib/msim/axi_register_slice_v2_1_24
vmap axi_protocol_converter_v2_1_24 modelsim_lib/msim/axi_protocol_converter_v2_1_24
vmap axi_clock_converter_v2_1_23 modelsim_lib/msim/axi_clock_converter_v2_1_23
vmap blk_mem_gen_v8_4_4 modelsim_lib/msim/blk_mem_gen_v8_4_4
vmap axi_dwidth_converter_v2_1_24 modelsim_lib/msim/axi_dwidth_converter_v2_1_24

vlog -work xilinx_vip  -incr -mfcu -sv -L axi_vip_v1_1_10 -L zynq_ultra_ps_e_vip_v1_0_10 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu -sv -L axi_vip_v1_1_10 -L zynq_ultra_ps_e_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/bb17/hdl" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/bb17/hdl" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../denoise.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_10  -incr -mfcu -sv -L axi_vip_v1_1_10 -L zynq_ultra_ps_e_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/bb17/hdl" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../denoise.gen/sources_1/bd/system/ipshared/0980/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_10  -incr -mfcu -sv -L axi_vip_v1_1_10 -L zynq_ultra_ps_e_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/bb17/hdl" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../denoise.gen/sources_1/bd/system/ipshared/bb17/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/bb17/hdl" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_zynq_ultra_ps_e_0_0/sim/system_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/system/ipshared/2c1a/hdl/MSXBO_FDMA_v1_0_M00_AXI.v" \
"../../../bd/system/ipshared/2c1a/hdl/MSXBO_FDMA_v1_0.v" \
"../../../bd/system/ip/system_MSXBO_FDMA_0_0/sim/system_MSXBO_FDMA_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../denoise.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../denoise.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_rst_ps8_0_213M_1/sim/system_rst_ps8_0_213M_1.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/bb17/hdl" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ipshared/f5ba/hdl/the_controller_axi_v1_0_S0_AXI.v" \
"../../../bd/system/ipshared/f5ba/hdl/the_controller_axi_v1_0.v" \
"../../../bd/system/ip/system_the_controller_axi_0_1/sim/system_the_controller_axi_0_1.v" \
"../../../bd/system/sim/system.v" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/bb17/hdl" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../denoise.gen/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -incr -mfcu "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/bb17/hdl" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../denoise.gen/sources_1/bd/system/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../denoise.gen/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -incr -mfcu "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/bb17/hdl" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../denoise.gen/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_23  -incr -mfcu "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/bb17/hdl" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../denoise.gen/sources_1/bd/system/ipshared/94ec/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_24  -incr -mfcu "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/bb17/hdl" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../denoise.gen/sources_1/bd/system/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_24  -incr -mfcu "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/bb17/hdl" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../denoise.gen/sources_1/bd/system/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_23  -incr -mfcu "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/bb17/hdl" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../denoise.gen/sources_1/bd/system/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_4  -incr -mfcu "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/bb17/hdl" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../denoise.gen/sources_1/bd/system/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_24  -incr -mfcu "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/bb17/hdl" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../denoise.gen/sources_1/bd/system/ipshared/3d13/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../denoise.gen/sources_1/bd/system/ipshared/bb17/hdl" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_ds_0/sim/system_auto_ds_0.v" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

