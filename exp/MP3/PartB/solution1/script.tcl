############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project PartB
set_top partb
add_files PartB/partb.h
add_files PartB/partb.cpp
add_files PartB/gold.cpp
add_files -tb PartB/partb_tb.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./PartB/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
