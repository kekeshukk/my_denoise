onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib weight_inc_0_conv_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {weight_inc_0_conv.udo}

run -all

quit -force
