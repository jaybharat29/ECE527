############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project PartA
set_top unop_mm
add_files PartA/gold.cpp
add_files PartA/parta.h
add_files PartA/unop_mm.cpp
add_files -tb PartA/unop_mm_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./PartA/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
