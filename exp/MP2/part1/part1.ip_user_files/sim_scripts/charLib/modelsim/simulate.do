onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L blk_mem_gen_v8_2 -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.charLib

do {wave.do}

view wave
view structure
view signals

do {charLib.udo}

run -all

quit -force
