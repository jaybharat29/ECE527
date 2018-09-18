onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+charLib -L blk_mem_gen_v8_2 -L xil_defaultlib -L secureip -O5 xil_defaultlib.charLib

do {wave.do}

view wave
view structure

do {charLib.udo}

run -all

endsim

quit -force
