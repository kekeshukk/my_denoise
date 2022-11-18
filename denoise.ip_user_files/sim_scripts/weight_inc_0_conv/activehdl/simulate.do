onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+weight_inc_0_conv -L xilinx_vip -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.weight_inc_0_conv xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {weight_inc_0_conv.udo}

run -all

endsim

quit -force
