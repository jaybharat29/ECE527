############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project accelerator_hls
set_top conv1
add_files accelerator_hls/lenet_gold.cpp
add_files accelerator_hls/lenet_acc.cpp
add_files accelerator_hls/lenet.h
add_files accelerator_hls/accelerator.cpp
add_files -tb accelerator_hls/params.bin -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
add_files -tb accelerator_hls/lenet_tb.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
add_files -tb accelerator_hls/labels.bin -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
add_files -tb accelerator_hls/images.bin -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
open_solution "vector_multiplier"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./accelerator_hls/vector_multiplier/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
