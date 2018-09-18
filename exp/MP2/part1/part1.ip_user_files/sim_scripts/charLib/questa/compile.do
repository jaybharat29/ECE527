vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/blk_mem_gen_v8_2
vlib questa_lib/msim/xil_defaultlib

vmap blk_mem_gen_v8_2 questa_lib/msim/blk_mem_gen_v8_2
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work blk_mem_gen_v8_2 -64 -93 \
"../../../../../nexys4oleddemo/Nexys4OLEDdemo/Nexys4OLEDdemo.srcs/sources_1/ip/charLib/blk_mem_gen_v8_2/simulation/blk_mem_gen_v8_2.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../../nexys4oleddemo/Nexys4OLEDdemo/Nexys4OLEDdemo.srcs/sources_1/ip/charLib/sim/charLib.vhd" \


