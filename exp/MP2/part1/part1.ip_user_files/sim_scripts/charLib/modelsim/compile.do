vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/blk_mem_gen_v8_2
vlib modelsim_lib/msim/xil_defaultlib

vmap blk_mem_gen_v8_2 modelsim_lib/msim/blk_mem_gen_v8_2
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work blk_mem_gen_v8_2 -64 -93 \
"../../../../../nexys4oleddemo/Nexys4OLEDdemo/Nexys4OLEDdemo.srcs/sources_1/ip/charLib/blk_mem_gen_v8_2/simulation/blk_mem_gen_v8_2.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../../nexys4oleddemo/Nexys4OLEDdemo/Nexys4OLEDdemo.srcs/sources_1/ip/charLib/sim/charLib.vhd" \


