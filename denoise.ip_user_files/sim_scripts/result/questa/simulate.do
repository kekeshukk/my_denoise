onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib result_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {result.udo}

run -all

quit -force
