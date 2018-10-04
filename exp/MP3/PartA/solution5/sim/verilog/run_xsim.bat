
set PATH=
call C:/Xilinx/Vivado/2018.2/bin/xelab xil_defaultlib.apatb_parta1_5_top glbl -prj parta1_5.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "C:/Xilinx/Vivado/2018.2/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s parta1_5 
call C:/Xilinx/Vivado/2018.2/bin/xsim --noieeewarnings parta1_5 -tclbatch parta1_5.tcl

