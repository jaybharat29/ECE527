vlib work
vlib riviera

vlib riviera/blk_mem_gen_v8_2
vlib riviera/xil_defaultlib

vmap blk_mem_gen_v8_2 riviera/blk_mem_gen_v8_2
vmap xil_defaultlib riviera/xil_defaultlib

vcom -work blk_mem_gen_v8_2 -93 \
"../../../../../nexys4oleddemo/Nexys4OLEDdemo/Nexys4OLEDdemo.srcs/sources_1/ip/charLib/blk_mem_gen_v8_2/simulation/blk_mem_gen_v8_2.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../nexys4oleddemo/Nexys4OLEDdemo/Nexys4OLEDdemo.srcs/sources_1/ip/charLib/sim/charLib.vhd" \


