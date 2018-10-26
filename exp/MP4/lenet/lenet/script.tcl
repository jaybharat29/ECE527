############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lenet
set_top conv1
add_files ECE527_MP4_Tutorial_Files/Tutorial_Files/accelerator_hls/lenet_gold.cpp
add_files ECE527_MP4_Tutorial_Files/Tutorial_Files/accelerator_hls/lenet_acc.cpp
add_files ECE527_MP4_Tutorial_Files/Tutorial_Files/accelerator_hls/lenet.h
add_files ECE527_MP4_Tutorial_Files/Tutorial_Files/accelerator_hls/accelerator.cpp
add_files -tb ECE527_MP4_Tutorial_Files/Tutorial_Files/accelerator_hls/params.bin -cflags "-Wno-unknown-pragmas"
add_files -tb ECE527_MP4_Tutorial_Files/Tutorial_Files/accelerator_hls/lenet_tb.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb ECE527_MP4_Tutorial_Files/Tutorial_Files/accelerator_hls/labels.bin -cflags "-Wno-unknown-pragmas"
add_files -tb ECE527_MP4_Tutorial_Files/Tutorial_Files/accelerator_hls/images.bin -cflags "-Wno-unknown-pragmas"
open_solution "lenet"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./lenet/lenet/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -display_name "lenet"
