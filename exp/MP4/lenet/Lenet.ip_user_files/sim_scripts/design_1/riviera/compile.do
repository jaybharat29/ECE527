vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_checker_v2_0_3
vlib riviera/axi_vip_v1_1_3
vlib riviera/processing_system7_vip_v1_0_5
vlib riviera/xbip_utils_v3_0_9
vlib riviera/axi_utils_v2_0_5
vlib riviera/xbip_pipe_v3_0_5
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_5
vlib riviera/xbip_dsp48_multadd_v3_0_5
vlib riviera/xbip_bram18k_v3_0_5
vlib riviera/mult_gen_v12_0_14
vlib riviera/floating_point_v7_1_6
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_12
vlib riviera/xlconstant_v1_1_5
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_pkg_v1_0_2
vlib riviera/axi_timer_v2_0_19
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_17
vlib riviera/fifo_generator_v13_2_2
vlib riviera/axi_data_fifo_v2_1_16
vlib riviera/axi_crossbar_v2_1_18
vlib riviera/axi_protocol_converter_v2_1_17

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 riviera/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 riviera/axi_vip_v1_1_3
vmap processing_system7_vip_v1_0_5 riviera/processing_system7_vip_v1_0_5
vmap xbip_utils_v3_0_9 riviera/xbip_utils_v3_0_9
vmap axi_utils_v2_0_5 riviera/axi_utils_v2_0_5
vmap xbip_pipe_v3_0_5 riviera/xbip_pipe_v3_0_5
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_5 riviera/xbip_dsp48_addsub_v3_0_5
vmap xbip_dsp48_multadd_v3_0_5 riviera/xbip_dsp48_multadd_v3_0_5
vmap xbip_bram18k_v3_0_5 riviera/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 riviera/mult_gen_v12_0_14
vmap floating_point_v7_1_6 riviera/floating_point_v7_1_6
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12
vmap xlconstant_v1_1_5 riviera/xlconstant_v1_1_5
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap axi_timer_v2_0_19 riviera/axi_timer_v2_0_19
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_17 riviera/axi_register_slice_v2_1_17
vmap fifo_generator_v13_2_2 riviera/fifo_generator_v13_2_2
vmap axi_data_fifo_v2_1_16 riviera/axi_data_fifo_v2_1_16
vmap axi_crossbar_v2_1_18 riviera/axi_crossbar_v2_1_18
vmap axi_protocol_converter_v2_1_17 riviera/axi_protocol_converter_v2_1_17

vlog -work xilinx_vip  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_5  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_1/sim/design_1_processing_system7_0_1.v" \

vcom -work xbip_utils_v3_0_9 -93 \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/a5f8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_5 -93 \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec8e/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -93 \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/da55/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_5 -93 \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ad9e/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_5 -93 \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/cd0f/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -93 \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/c08f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -93 \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/6bb5/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_6 -93 \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/c4f7/hdl/floating_point_v7_1_vh_rfs.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/conv1_bias_oc.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/conv1_CTL_s_axi.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/conv1_DATA_BIAS_m_axi.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/conv1_DATA_INPUT_m_axi.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/conv1_DATA_OUTPUT_m_axi.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/conv1_DATA_WEIGHT_m_axi.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/conv1_fadd_32ns_3bkb.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/conv1_fcmp_32ns_3dEe.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/conv1_fmul_32ns_3cud.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/conv1_input_oc_0.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/conv1_output1_oc.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/conv1_output2_oc.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/conv1_weights_oc_0.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/convulution1.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/maxpool_2.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/relu_1.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/relu_2.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/store_bias.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/store_input.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/store_output.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/store_weights.v" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/verilog/conv1.v" \

vcom -work xil_defaultlib -93 \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/ip/conv1_ap_fadd_3_full_dsp_32.vhd" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/ip/conv1_ap_fcmp_0_no_dsp_32.vhd" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/e1aa/hdl/ip/conv1_ap_fmul_2_max_dsp_32.vhd" \
"../../../bd/design_1/ip/design_1_conv1_0_1/sim/design_1_conv1_0_1.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5160/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/acc2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/28cb/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_m00e_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/afa8/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/4521/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/d1fc/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_s00sic_0.sv" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f1c3/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/sim/bd_68b9.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_5/sim/bd_68b9_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_11/sim/bd_68b9_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_12/sim/bd_68b9_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_6/sim/bd_68b9_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_7/sim/bd_68b9_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_8/sim/bd_68b9_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_9/sim/bd_68b9_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_10/sim/bd_68b9_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_2/sim/bd_68b9_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_3/sim/bd_68b9_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_4/sim/bd_68b9_s00sic_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_0/sim/bd_68b9_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_1/sim/bd_68b9_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/sim/design_1_axi_smc_1_1.v" \
"../../../bd/design_1/ip/design_1_axi_smc_2_1/bd_0/sim/bd_6849.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_2_1/bd_0/ip/ip_5/sim/bd_6849_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_1/bd_0/ip/ip_11/sim/bd_6849_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_1/bd_0/ip/ip_12/sim/bd_6849_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_1/bd_0/ip/ip_6/sim/bd_6849_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_1/bd_0/ip/ip_7/sim/bd_6849_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_1/bd_0/ip/ip_8/sim/bd_6849_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_1/bd_0/ip/ip_9/sim/bd_6849_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_1/bd_0/ip/ip_10/sim/bd_6849_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_1/bd_0/ip/ip_2/sim/bd_6849_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_1/bd_0/ip/ip_3/sim/bd_6849_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_1/bd_0/ip/ip_4/sim/bd_6849_s00sic_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_2_1/bd_0/ip/ip_0/sim/bd_6849_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_2_1/bd_0/ip/ip_1/sim/bd_6849_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_2_1/sim/design_1_axi_smc_2_1.v" \
"../../../bd/design_1/ip/design_1_axi_smc_3_1/bd_0/sim/bd_a818.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_3_1/bd_0/ip/ip_5/sim/bd_a818_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_1/bd_0/ip/ip_11/sim/bd_a818_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_1/bd_0/ip/ip_12/sim/bd_a818_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_1/bd_0/ip/ip_6/sim/bd_a818_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_1/bd_0/ip/ip_7/sim/bd_a818_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_1/bd_0/ip/ip_8/sim/bd_a818_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_1/bd_0/ip/ip_9/sim/bd_a818_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_1/bd_0/ip/ip_10/sim/bd_a818_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_1/bd_0/ip/ip_2/sim/bd_a818_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_1/bd_0/ip/ip_3/sim/bd_a818_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_1/bd_0/ip/ip_4/sim/bd_a818_s00sic_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_3_1/bd_0/ip/ip_0/sim/bd_a818_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_3_1/bd_0/ip/ip_1/sim/bd_a818_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_3_1/sim/design_1_axi_smc_3_1.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_19 -93 \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/0a2c/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_timer_0_0/sim/design_1_axi_timer_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -93 \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_16  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_18  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work axi_protocol_converter_v2_1_17  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../Lenet.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

