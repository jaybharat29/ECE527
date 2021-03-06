// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "maxpool_2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic maxpool_2::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic maxpool_2::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<8> maxpool_2::ap_ST_fsm_state1 = "1";
const sc_lv<8> maxpool_2::ap_ST_fsm_state2 = "10";
const sc_lv<8> maxpool_2::ap_ST_fsm_state3 = "100";
const sc_lv<8> maxpool_2::ap_ST_fsm_state4 = "1000";
const sc_lv<8> maxpool_2::ap_ST_fsm_state5 = "10000";
const sc_lv<8> maxpool_2::ap_ST_fsm_state6 = "100000";
const sc_lv<8> maxpool_2::ap_ST_fsm_state7 = "1000000";
const sc_lv<8> maxpool_2::ap_ST_fsm_state8 = "10000000";
const sc_lv<32> maxpool_2::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> maxpool_2::ap_const_lv32_1 = "1";
const sc_lv<1> maxpool_2::ap_const_lv1_0 = "0";
const sc_lv<32> maxpool_2::ap_const_lv32_2 = "10";
const sc_lv<32> maxpool_2::ap_const_lv32_3 = "11";
const sc_lv<32> maxpool_2::ap_const_lv32_4 = "100";
const sc_lv<32> maxpool_2::ap_const_lv32_5 = "101";
const sc_lv<32> maxpool_2::ap_const_lv32_6 = "110";
const sc_lv<32> maxpool_2::ap_const_lv32_7 = "111";
const sc_lv<3> maxpool_2::ap_const_lv3_0 = "000";
const sc_lv<1> maxpool_2::ap_const_lv1_1 = "1";
const sc_lv<4> maxpool_2::ap_const_lv4_0 = "0000";
const sc_lv<32> maxpool_2::ap_const_lv32_D368D4A5 = "11010011011010001101010010100101";
const sc_lv<2> maxpool_2::ap_const_lv2_0 = "00";
const sc_lv<3> maxpool_2::ap_const_lv3_6 = "110";
const sc_lv<3> maxpool_2::ap_const_lv3_1 = "1";
const sc_lv<5> maxpool_2::ap_const_lv5_0 = "00000";
const sc_lv<4> maxpool_2::ap_const_lv4_E = "1110";
const sc_lv<4> maxpool_2::ap_const_lv4_1 = "1";
const sc_lv<2> maxpool_2::ap_const_lv2_2 = "10";
const sc_lv<2> maxpool_2::ap_const_lv2_1 = "1";
const sc_lv<32> maxpool_2::ap_const_lv32_17 = "10111";
const sc_lv<32> maxpool_2::ap_const_lv32_1E = "11110";
const sc_lv<8> maxpool_2::ap_const_lv8_FF = "11111111";
const sc_lv<23> maxpool_2::ap_const_lv23_0 = "00000000000000000000000";
const sc_lv<5> maxpool_2::ap_const_lv5_2 = "10";
const bool maxpool_2::ap_const_boolean_1 = true;

maxpool_2::maxpool_2(sc_module_name name) : sc_module(name), mVcdFile(0) {
    conv1_fcmp_32ns_3dEe_U35 = new conv1_fcmp_32ns_3dEe<1,1,32,32,1>("conv1_fcmp_32ns_3dEe_U35");
    conv1_fcmp_32ns_3dEe_U35->din0(max_value_1_reg_150);
    conv1_fcmp_32ns_3dEe_U35->din1(input_load_reg_611);
    conv1_fcmp_32ns_3dEe_U35->opcode(ap_var_for_const0);
    conv1_fcmp_32ns_3dEe_U35->dout(tmp_37_fu_173_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond4_fu_178_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond4_fu_178_p2 );

    SC_METHOD(thread_c_2_fu_184_p2);
    sensitive << ( c_reg_92 );

    SC_METHOD(thread_exitcond1_fu_341_p2);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( i_reg_139 );

    SC_METHOD(thread_exitcond2_fu_317_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( w_reg_114 );

    SC_METHOD(thread_exitcond3_fu_258_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( h_reg_103 );

    SC_METHOD(thread_exitcond4_fu_178_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( c_reg_92 );

    SC_METHOD(thread_exitcond_fu_415_p2);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( j_reg_162 );

    SC_METHOD(thread_h_2_fu_264_p2);
    sensitive << ( h_reg_103 );

    SC_METHOD(thread_i_14_fu_347_p2);
    sensitive << ( i_reg_139 );

    SC_METHOD(thread_i_cast2_fu_337_p1);
    sensitive << ( i_reg_139 );

    SC_METHOD(thread_input_load_to_int_fu_464_p1);
    sensitive << ( input_load_reg_611 );

    SC_METHOD(thread_input_r_address0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_89_cast_fu_441_p1 );

    SC_METHOD(thread_input_r_ce0);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_j_10_fu_421_p2);
    sensitive << ( j_reg_162 );

    SC_METHOD(thread_j_cast1_fu_411_p1);
    sensitive << ( j_reg_162 );

    SC_METHOD(thread_max_value_1_to_int_fu_446_p1);
    sensitive << ( max_value_1_reg_150 );

    SC_METHOD(thread_max_value_3_fu_529_p3);
    sensitive << ( input_load_reg_611 );
    sensitive << ( max_value_1_reg_150 );
    sensitive << ( tmp_38_fu_523_p2 );

    SC_METHOD(thread_notlhs6_fu_499_p2);
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( tmp_32_fu_467_p4 );

    SC_METHOD(thread_notlhs_fu_481_p2);
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( tmp_30_fu_450_p4 );

    SC_METHOD(thread_notrhs7_fu_505_p2);
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( tmp_42_fu_477_p1 );

    SC_METHOD(thread_notrhs_fu_487_p2);
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( tmp_41_fu_460_p1 );

    SC_METHOD(thread_output_r_address0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_84_cast_fu_406_p1 );

    SC_METHOD(thread_output_r_ce0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_output_r_d0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( max_value_reg_126 );

    SC_METHOD(thread_output_r_we0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( exitcond1_fu_341_p2 );

    SC_METHOD(thread_p_shl1_cast_fu_244_p1);
    sensitive << ( tmp_53_fu_236_p3 );

    SC_METHOD(thread_p_shl2_cast_fu_198_p1);
    sensitive << ( tmp_fu_190_p3 );

    SC_METHOD(thread_p_shl3_cast_fu_210_p1);
    sensitive << ( tmp_50_fu_202_p3 );

    SC_METHOD(thread_p_shl4_cast_fu_291_p3);
    sensitive << ( tmp_31_fu_287_p1 );

    SC_METHOD(thread_p_shl5_cast_fu_307_p1);
    sensitive << ( tmp_33_fu_299_p3 );

    SC_METHOD(thread_p_shl6_cast_fu_371_p3);
    sensitive << ( tmp_39_fu_367_p1 );

    SC_METHOD(thread_p_shl7_cast_fu_387_p1);
    sensitive << ( tmp_40_fu_379_p3 );

    SC_METHOD(thread_p_shl_cast_fu_232_p1);
    sensitive << ( tmp_52_fu_224_p3 );

    SC_METHOD(thread_tmp_30_fu_450_p4);
    sensitive << ( max_value_1_to_int_fu_446_p1 );

    SC_METHOD(thread_tmp_31_fu_287_p1);
    sensitive << ( tmp_55_fu_282_p2 );

    SC_METHOD(thread_tmp_32_fu_467_p4);
    sensitive << ( input_load_to_int_fu_464_p1 );

    SC_METHOD(thread_tmp_33_fu_299_p3);
    sensitive << ( tmp_55_fu_282_p2 );

    SC_METHOD(thread_tmp_34_fu_493_p2);
    sensitive << ( notrhs_fu_487_p2 );
    sensitive << ( notlhs_fu_481_p2 );

    SC_METHOD(thread_tmp_35_fu_511_p2);
    sensitive << ( notrhs7_fu_505_p2 );
    sensitive << ( notlhs6_fu_499_p2 );

    SC_METHOD(thread_tmp_36_fu_517_p2);
    sensitive << ( tmp_34_fu_493_p2 );
    sensitive << ( tmp_35_fu_511_p2 );

    SC_METHOD(thread_tmp_38_fu_523_p2);
    sensitive << ( tmp_36_fu_517_p2 );
    sensitive << ( tmp_37_fu_173_p2 );

    SC_METHOD(thread_tmp_39_fu_367_p1);
    sensitive << ( tmp_58_fu_362_p2 );

    SC_METHOD(thread_tmp_3_cast_fu_278_p1);
    sensitive << ( h_reg_103 );

    SC_METHOD(thread_tmp_40_fu_379_p3);
    sensitive << ( tmp_58_fu_362_p2 );

    SC_METHOD(thread_tmp_41_fu_460_p1);
    sensitive << ( max_value_1_to_int_fu_446_p1 );

    SC_METHOD(thread_tmp_42_fu_477_p1);
    sensitive << ( input_load_to_int_fu_464_p1 );

    SC_METHOD(thread_tmp_4_fu_329_p3);
    sensitive << ( w_reg_114 );

    SC_METHOD(thread_tmp_50_fu_202_p3);
    sensitive << ( c_reg_92 );

    SC_METHOD(thread_tmp_51_fu_214_p2);
    sensitive << ( p_shl2_cast_fu_198_p1 );
    sensitive << ( p_shl3_cast_fu_210_p1 );

    SC_METHOD(thread_tmp_52_fu_224_p3);
    sensitive << ( c_reg_92 );

    SC_METHOD(thread_tmp_53_fu_236_p3);
    sensitive << ( c_reg_92 );

    SC_METHOD(thread_tmp_54_fu_248_p2);
    sensitive << ( p_shl_cast_fu_232_p1 );
    sensitive << ( p_shl1_cast_fu_244_p1 );

    SC_METHOD(thread_tmp_55_fu_282_p2);
    sensitive << ( tmp_79_cast_reg_549 );
    sensitive << ( tmp_3_cast_fu_278_p1 );

    SC_METHOD(thread_tmp_56_fu_311_p2);
    sensitive << ( p_shl4_cast_fu_291_p3 );
    sensitive << ( p_shl5_cast_fu_307_p1 );

    SC_METHOD(thread_tmp_57_fu_401_p2);
    sensitive << ( tmp_56_reg_567 );
    sensitive << ( tmp_5_cast_fu_397_p1 );

    SC_METHOD(thread_tmp_58_fu_362_p2);
    sensitive << ( tmp_76_cast_reg_544 );
    sensitive << ( tmp_7_cast_fu_358_p1 );

    SC_METHOD(thread_tmp_59_fu_391_p2);
    sensitive << ( p_shl6_cast_fu_371_p3 );
    sensitive << ( p_shl7_cast_fu_387_p1 );

    SC_METHOD(thread_tmp_5_cast_fu_397_p1);
    sensitive << ( w_reg_114 );

    SC_METHOD(thread_tmp_60_fu_436_p2);
    sensitive << ( tmp_59_reg_593 );
    sensitive << ( tmp_9_cast_fu_432_p1 );

    SC_METHOD(thread_tmp_6_fu_353_p2);
    sensitive << ( tmp_s_reg_562 );
    sensitive << ( i_cast2_fu_337_p1 );

    SC_METHOD(thread_tmp_76_cast_fu_220_p1);
    sensitive << ( tmp_51_fu_214_p2 );

    SC_METHOD(thread_tmp_79_cast_fu_254_p1);
    sensitive << ( tmp_54_fu_248_p2 );

    SC_METHOD(thread_tmp_7_cast_fu_358_p1);
    sensitive << ( tmp_6_fu_353_p2 );

    SC_METHOD(thread_tmp_84_cast_fu_406_p1);
    sensitive << ( tmp_57_fu_401_p2 );

    SC_METHOD(thread_tmp_89_cast_fu_441_p1);
    sensitive << ( tmp_60_fu_436_p2 );

    SC_METHOD(thread_tmp_8_fu_427_p2);
    sensitive << ( tmp_4_reg_580 );
    sensitive << ( j_cast1_fu_411_p1 );

    SC_METHOD(thread_tmp_9_cast_fu_432_p1);
    sensitive << ( tmp_8_fu_427_p2 );

    SC_METHOD(thread_tmp_fu_190_p3);
    sensitive << ( c_reg_92 );

    SC_METHOD(thread_tmp_s_fu_270_p3);
    sensitive << ( h_reg_103 );

    SC_METHOD(thread_w_2_fu_323_p2);
    sensitive << ( w_reg_114 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond4_fu_178_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( exitcond3_fu_258_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond2_fu_317_p2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( exitcond1_fu_341_p2 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( exitcond_fu_415_p2 );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "00000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "maxpool_2_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, input_r_address0, "(port)input_r_address0");
    sc_trace(mVcdFile, input_r_ce0, "(port)input_r_ce0");
    sc_trace(mVcdFile, input_r_q0, "(port)input_r_q0");
    sc_trace(mVcdFile, output_r_address0, "(port)output_r_address0");
    sc_trace(mVcdFile, output_r_ce0, "(port)output_r_ce0");
    sc_trace(mVcdFile, output_r_we0, "(port)output_r_we0");
    sc_trace(mVcdFile, output_r_d0, "(port)output_r_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, c_2_fu_184_p2, "c_2_fu_184_p2");
    sc_trace(mVcdFile, c_2_reg_539, "c_2_reg_539");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_76_cast_fu_220_p1, "tmp_76_cast_fu_220_p1");
    sc_trace(mVcdFile, tmp_76_cast_reg_544, "tmp_76_cast_reg_544");
    sc_trace(mVcdFile, exitcond4_fu_178_p2, "exitcond4_fu_178_p2");
    sc_trace(mVcdFile, tmp_79_cast_fu_254_p1, "tmp_79_cast_fu_254_p1");
    sc_trace(mVcdFile, tmp_79_cast_reg_549, "tmp_79_cast_reg_549");
    sc_trace(mVcdFile, h_2_fu_264_p2, "h_2_fu_264_p2");
    sc_trace(mVcdFile, h_2_reg_557, "h_2_reg_557");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_s_fu_270_p3, "tmp_s_fu_270_p3");
    sc_trace(mVcdFile, tmp_s_reg_562, "tmp_s_reg_562");
    sc_trace(mVcdFile, exitcond3_fu_258_p2, "exitcond3_fu_258_p2");
    sc_trace(mVcdFile, tmp_56_fu_311_p2, "tmp_56_fu_311_p2");
    sc_trace(mVcdFile, tmp_56_reg_567, "tmp_56_reg_567");
    sc_trace(mVcdFile, w_2_fu_323_p2, "w_2_fu_323_p2");
    sc_trace(mVcdFile, w_2_reg_575, "w_2_reg_575");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, tmp_4_fu_329_p3, "tmp_4_fu_329_p3");
    sc_trace(mVcdFile, tmp_4_reg_580, "tmp_4_reg_580");
    sc_trace(mVcdFile, exitcond2_fu_317_p2, "exitcond2_fu_317_p2");
    sc_trace(mVcdFile, i_14_fu_347_p2, "i_14_fu_347_p2");
    sc_trace(mVcdFile, i_14_reg_588, "i_14_reg_588");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, tmp_59_fu_391_p2, "tmp_59_fu_391_p2");
    sc_trace(mVcdFile, tmp_59_reg_593, "tmp_59_reg_593");
    sc_trace(mVcdFile, exitcond1_fu_341_p2, "exitcond1_fu_341_p2");
    sc_trace(mVcdFile, j_10_fu_421_p2, "j_10_fu_421_p2");
    sc_trace(mVcdFile, j_10_reg_601, "j_10_reg_601");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, exitcond_fu_415_p2, "exitcond_fu_415_p2");
    sc_trace(mVcdFile, input_load_reg_611, "input_load_reg_611");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, max_value_3_fu_529_p3, "max_value_3_fu_529_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, c_reg_92, "c_reg_92");
    sc_trace(mVcdFile, h_reg_103, "h_reg_103");
    sc_trace(mVcdFile, w_reg_114, "w_reg_114");
    sc_trace(mVcdFile, max_value_reg_126, "max_value_reg_126");
    sc_trace(mVcdFile, i_reg_139, "i_reg_139");
    sc_trace(mVcdFile, max_value_1_reg_150, "max_value_1_reg_150");
    sc_trace(mVcdFile, j_reg_162, "j_reg_162");
    sc_trace(mVcdFile, tmp_84_cast_fu_406_p1, "tmp_84_cast_fu_406_p1");
    sc_trace(mVcdFile, tmp_89_cast_fu_441_p1, "tmp_89_cast_fu_441_p1");
    sc_trace(mVcdFile, tmp_fu_190_p3, "tmp_fu_190_p3");
    sc_trace(mVcdFile, tmp_50_fu_202_p3, "tmp_50_fu_202_p3");
    sc_trace(mVcdFile, p_shl2_cast_fu_198_p1, "p_shl2_cast_fu_198_p1");
    sc_trace(mVcdFile, p_shl3_cast_fu_210_p1, "p_shl3_cast_fu_210_p1");
    sc_trace(mVcdFile, tmp_51_fu_214_p2, "tmp_51_fu_214_p2");
    sc_trace(mVcdFile, tmp_52_fu_224_p3, "tmp_52_fu_224_p3");
    sc_trace(mVcdFile, tmp_53_fu_236_p3, "tmp_53_fu_236_p3");
    sc_trace(mVcdFile, p_shl_cast_fu_232_p1, "p_shl_cast_fu_232_p1");
    sc_trace(mVcdFile, p_shl1_cast_fu_244_p1, "p_shl1_cast_fu_244_p1");
    sc_trace(mVcdFile, tmp_54_fu_248_p2, "tmp_54_fu_248_p2");
    sc_trace(mVcdFile, tmp_3_cast_fu_278_p1, "tmp_3_cast_fu_278_p1");
    sc_trace(mVcdFile, tmp_55_fu_282_p2, "tmp_55_fu_282_p2");
    sc_trace(mVcdFile, tmp_31_fu_287_p1, "tmp_31_fu_287_p1");
    sc_trace(mVcdFile, tmp_33_fu_299_p3, "tmp_33_fu_299_p3");
    sc_trace(mVcdFile, p_shl4_cast_fu_291_p3, "p_shl4_cast_fu_291_p3");
    sc_trace(mVcdFile, p_shl5_cast_fu_307_p1, "p_shl5_cast_fu_307_p1");
    sc_trace(mVcdFile, i_cast2_fu_337_p1, "i_cast2_fu_337_p1");
    sc_trace(mVcdFile, tmp_6_fu_353_p2, "tmp_6_fu_353_p2");
    sc_trace(mVcdFile, tmp_7_cast_fu_358_p1, "tmp_7_cast_fu_358_p1");
    sc_trace(mVcdFile, tmp_58_fu_362_p2, "tmp_58_fu_362_p2");
    sc_trace(mVcdFile, tmp_39_fu_367_p1, "tmp_39_fu_367_p1");
    sc_trace(mVcdFile, tmp_40_fu_379_p3, "tmp_40_fu_379_p3");
    sc_trace(mVcdFile, p_shl6_cast_fu_371_p3, "p_shl6_cast_fu_371_p3");
    sc_trace(mVcdFile, p_shl7_cast_fu_387_p1, "p_shl7_cast_fu_387_p1");
    sc_trace(mVcdFile, tmp_5_cast_fu_397_p1, "tmp_5_cast_fu_397_p1");
    sc_trace(mVcdFile, tmp_57_fu_401_p2, "tmp_57_fu_401_p2");
    sc_trace(mVcdFile, j_cast1_fu_411_p1, "j_cast1_fu_411_p1");
    sc_trace(mVcdFile, tmp_8_fu_427_p2, "tmp_8_fu_427_p2");
    sc_trace(mVcdFile, tmp_9_cast_fu_432_p1, "tmp_9_cast_fu_432_p1");
    sc_trace(mVcdFile, tmp_60_fu_436_p2, "tmp_60_fu_436_p2");
    sc_trace(mVcdFile, max_value_1_to_int_fu_446_p1, "max_value_1_to_int_fu_446_p1");
    sc_trace(mVcdFile, input_load_to_int_fu_464_p1, "input_load_to_int_fu_464_p1");
    sc_trace(mVcdFile, tmp_30_fu_450_p4, "tmp_30_fu_450_p4");
    sc_trace(mVcdFile, tmp_41_fu_460_p1, "tmp_41_fu_460_p1");
    sc_trace(mVcdFile, notrhs_fu_487_p2, "notrhs_fu_487_p2");
    sc_trace(mVcdFile, notlhs_fu_481_p2, "notlhs_fu_481_p2");
    sc_trace(mVcdFile, tmp_32_fu_467_p4, "tmp_32_fu_467_p4");
    sc_trace(mVcdFile, tmp_42_fu_477_p1, "tmp_42_fu_477_p1");
    sc_trace(mVcdFile, notrhs7_fu_505_p2, "notrhs7_fu_505_p2");
    sc_trace(mVcdFile, notlhs6_fu_499_p2, "notlhs6_fu_499_p2");
    sc_trace(mVcdFile, tmp_34_fu_493_p2, "tmp_34_fu_493_p2");
    sc_trace(mVcdFile, tmp_35_fu_511_p2, "tmp_35_fu_511_p2");
    sc_trace(mVcdFile, tmp_36_fu_517_p2, "tmp_36_fu_517_p2");
    sc_trace(mVcdFile, tmp_37_fu_173_p2, "tmp_37_fu_173_p2");
    sc_trace(mVcdFile, tmp_38_fu_523_p2, "tmp_38_fu_523_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

maxpool_2::~maxpool_2() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete conv1_fcmp_32ns_3dEe_U35;
}

void maxpool_2::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_lv5_2;
}

void maxpool_2::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(exitcond3_fu_258_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        c_reg_92 = c_2_reg_539.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        c_reg_92 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(exitcond2_fu_317_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        h_reg_103 = h_2_reg_557.read();
    } else if ((esl_seteq<1,1,1>(exitcond4_fu_178_p2.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        h_reg_103 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_415_p2.read(), ap_const_lv1_1))) {
        i_reg_139 = i_14_reg_588.read();
    } else if ((esl_seteq<1,1,1>(exitcond2_fu_317_p2.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        i_reg_139 = ap_const_lv2_0;
    }
    if ((esl_seteq<1,1,1>(exitcond1_fu_341_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        j_reg_162 = ap_const_lv2_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        j_reg_162 = j_10_reg_601.read();
    }
    if ((esl_seteq<1,1,1>(exitcond1_fu_341_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        max_value_1_reg_150 = max_value_reg_126.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        max_value_1_reg_150 = max_value_3_fu_529_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_415_p2.read(), ap_const_lv1_1))) {
        max_value_reg_126 = max_value_1_reg_150.read();
    } else if ((esl_seteq<1,1,1>(exitcond2_fu_317_p2.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        max_value_reg_126 = ap_const_lv32_D368D4A5;
    }
    if ((esl_seteq<1,1,1>(exitcond3_fu_258_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        w_reg_114 = ap_const_lv4_0;
    } else if ((esl_seteq<1,1,1>(exitcond1_fu_341_p2.read(), ap_const_lv1_1) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        w_reg_114 = w_2_reg_575.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        c_2_reg_539 = c_2_fu_184_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        h_2_reg_557 = h_2_fu_264_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        i_14_reg_588 = i_14_fu_347_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        input_load_reg_611 = input_r_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        j_10_reg_601 = j_10_fu_421_p2.read();
    }
    if ((esl_seteq<1,1,1>(exitcond2_fu_317_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        tmp_4_reg_580 = tmp_4_fu_329_p3.read();
    }
    if ((esl_seteq<1,1,1>(exitcond3_fu_258_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        tmp_56_reg_567 = tmp_56_fu_311_p2.read();
        tmp_s_reg_562 = tmp_s_fu_270_p3.read();
    }
    if ((esl_seteq<1,1,1>(exitcond1_fu_341_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        tmp_59_reg_593 = tmp_59_fu_391_p2.read();
    }
    if ((esl_seteq<1,1,1>(exitcond4_fu_178_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        tmp_76_cast_reg_544 = tmp_76_cast_fu_220_p1.read();
        tmp_79_cast_reg_549 = tmp_79_cast_fu_254_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        w_2_reg_575 = w_2_fu_323_p2.read();
    }
}

void maxpool_2::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void maxpool_2::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void maxpool_2::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void maxpool_2::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void maxpool_2::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void maxpool_2::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void maxpool_2::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void maxpool_2::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void maxpool_2::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(exitcond4_fu_178_p2.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void maxpool_2::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void maxpool_2::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(exitcond4_fu_178_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void maxpool_2::thread_c_2_fu_184_p2() {
    c_2_fu_184_p2 = (!c_reg_92.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(c_reg_92.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void maxpool_2::thread_exitcond1_fu_341_p2() {
    exitcond1_fu_341_p2 = (!i_reg_139.read().is_01() || !ap_const_lv2_2.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_139.read() == ap_const_lv2_2);
}

void maxpool_2::thread_exitcond2_fu_317_p2() {
    exitcond2_fu_317_p2 = (!w_reg_114.read().is_01() || !ap_const_lv4_E.is_01())? sc_lv<1>(): sc_lv<1>(w_reg_114.read() == ap_const_lv4_E);
}

void maxpool_2::thread_exitcond3_fu_258_p2() {
    exitcond3_fu_258_p2 = (!h_reg_103.read().is_01() || !ap_const_lv4_E.is_01())? sc_lv<1>(): sc_lv<1>(h_reg_103.read() == ap_const_lv4_E);
}

void maxpool_2::thread_exitcond4_fu_178_p2() {
    exitcond4_fu_178_p2 = (!c_reg_92.read().is_01() || !ap_const_lv3_6.is_01())? sc_lv<1>(): sc_lv<1>(c_reg_92.read() == ap_const_lv3_6);
}

void maxpool_2::thread_exitcond_fu_415_p2() {
    exitcond_fu_415_p2 = (!j_reg_162.read().is_01() || !ap_const_lv2_2.is_01())? sc_lv<1>(): sc_lv<1>(j_reg_162.read() == ap_const_lv2_2);
}

void maxpool_2::thread_h_2_fu_264_p2() {
    h_2_fu_264_p2 = (!h_reg_103.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(h_reg_103.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void maxpool_2::thread_i_14_fu_347_p2() {
    i_14_fu_347_p2 = (!i_reg_139.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(i_reg_139.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void maxpool_2::thread_i_cast2_fu_337_p1() {
    i_cast2_fu_337_p1 = esl_zext<5,2>(i_reg_139.read());
}

void maxpool_2::thread_input_load_to_int_fu_464_p1() {
    input_load_to_int_fu_464_p1 = input_load_reg_611.read();
}

void maxpool_2::thread_input_r_address0() {
    input_r_address0 =  (sc_lv<13>) (tmp_89_cast_fu_441_p1.read());
}

void maxpool_2::thread_input_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        input_r_ce0 = ap_const_logic_1;
    } else {
        input_r_ce0 = ap_const_logic_0;
    }
}

void maxpool_2::thread_j_10_fu_421_p2() {
    j_10_fu_421_p2 = (!j_reg_162.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(j_reg_162.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void maxpool_2::thread_j_cast1_fu_411_p1() {
    j_cast1_fu_411_p1 = esl_zext<5,2>(j_reg_162.read());
}

void maxpool_2::thread_max_value_1_to_int_fu_446_p1() {
    max_value_1_to_int_fu_446_p1 = max_value_1_reg_150.read();
}

void maxpool_2::thread_max_value_3_fu_529_p3() {
    max_value_3_fu_529_p3 = (!tmp_38_fu_523_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_38_fu_523_p2.read()[0].to_bool())? max_value_1_reg_150.read(): input_load_reg_611.read());
}

void maxpool_2::thread_notlhs6_fu_499_p2() {
    notlhs6_fu_499_p2 = (!tmp_32_fu_467_p4.read().is_01() || !ap_const_lv8_FF.is_01())? sc_lv<1>(): sc_lv<1>(tmp_32_fu_467_p4.read() != ap_const_lv8_FF);
}

void maxpool_2::thread_notlhs_fu_481_p2() {
    notlhs_fu_481_p2 = (!tmp_30_fu_450_p4.read().is_01() || !ap_const_lv8_FF.is_01())? sc_lv<1>(): sc_lv<1>(tmp_30_fu_450_p4.read() != ap_const_lv8_FF);
}

void maxpool_2::thread_notrhs7_fu_505_p2() {
    notrhs7_fu_505_p2 = (!tmp_42_fu_477_p1.read().is_01() || !ap_const_lv23_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_42_fu_477_p1.read() == ap_const_lv23_0);
}

void maxpool_2::thread_notrhs_fu_487_p2() {
    notrhs_fu_487_p2 = (!tmp_41_fu_460_p1.read().is_01() || !ap_const_lv23_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_41_fu_460_p1.read() == ap_const_lv23_0);
}

void maxpool_2::thread_output_r_address0() {
    output_r_address0 =  (sc_lv<11>) (tmp_84_cast_fu_406_p1.read());
}

void maxpool_2::thread_output_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        output_r_ce0 = ap_const_logic_1;
    } else {
        output_r_ce0 = ap_const_logic_0;
    }
}

void maxpool_2::thread_output_r_d0() {
    output_r_d0 = max_value_reg_126.read();
}

void maxpool_2::thread_output_r_we0() {
    if ((esl_seteq<1,1,1>(exitcond1_fu_341_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        output_r_we0 = ap_const_logic_1;
    } else {
        output_r_we0 = ap_const_logic_0;
    }
}

void maxpool_2::thread_p_shl1_cast_fu_244_p1() {
    p_shl1_cast_fu_244_p1 = esl_zext<8,4>(tmp_53_fu_236_p3.read());
}

void maxpool_2::thread_p_shl2_cast_fu_198_p1() {
    p_shl2_cast_fu_198_p1 = esl_zext<9,8>(tmp_fu_190_p3.read());
}

void maxpool_2::thread_p_shl3_cast_fu_210_p1() {
    p_shl3_cast_fu_210_p1 = esl_zext<9,5>(tmp_50_fu_202_p3.read());
}

void maxpool_2::thread_p_shl4_cast_fu_291_p3() {
    p_shl4_cast_fu_291_p3 = esl_concat<8,4>(tmp_31_fu_287_p1.read(), ap_const_lv4_0);
}

void maxpool_2::thread_p_shl5_cast_fu_307_p1() {
    p_shl5_cast_fu_307_p1 = esl_sext<12,10>(tmp_33_fu_299_p3.read());
}

void maxpool_2::thread_p_shl6_cast_fu_371_p3() {
    p_shl6_cast_fu_371_p3 = esl_concat<9,5>(tmp_39_fu_367_p1.read(), ap_const_lv5_0);
}

void maxpool_2::thread_p_shl7_cast_fu_387_p1() {
    p_shl7_cast_fu_387_p1 = esl_sext<14,12>(tmp_40_fu_379_p3.read());
}

void maxpool_2::thread_p_shl_cast_fu_232_p1() {
    p_shl_cast_fu_232_p1 = esl_zext<8,7>(tmp_52_fu_224_p3.read());
}

void maxpool_2::thread_tmp_30_fu_450_p4() {
    tmp_30_fu_450_p4 = max_value_1_to_int_fu_446_p1.read().range(30, 23);
}

void maxpool_2::thread_tmp_31_fu_287_p1() {
    tmp_31_fu_287_p1 = tmp_55_fu_282_p2.read().range(8-1, 0);
}

void maxpool_2::thread_tmp_32_fu_467_p4() {
    tmp_32_fu_467_p4 = input_load_to_int_fu_464_p1.read().range(30, 23);
}

void maxpool_2::thread_tmp_33_fu_299_p3() {
    tmp_33_fu_299_p3 = esl_concat<9,1>(tmp_55_fu_282_p2.read(), ap_const_lv1_0);
}

void maxpool_2::thread_tmp_34_fu_493_p2() {
    tmp_34_fu_493_p2 = (notrhs_fu_487_p2.read() | notlhs_fu_481_p2.read());
}

void maxpool_2::thread_tmp_35_fu_511_p2() {
    tmp_35_fu_511_p2 = (notrhs7_fu_505_p2.read() | notlhs6_fu_499_p2.read());
}

void maxpool_2::thread_tmp_36_fu_517_p2() {
    tmp_36_fu_517_p2 = (tmp_34_fu_493_p2.read() & tmp_35_fu_511_p2.read());
}

void maxpool_2::thread_tmp_38_fu_523_p2() {
    tmp_38_fu_523_p2 = (tmp_36_fu_517_p2.read() & tmp_37_fu_173_p2.read());
}

void maxpool_2::thread_tmp_39_fu_367_p1() {
    tmp_39_fu_367_p1 = tmp_58_fu_362_p2.read().range(9-1, 0);
}

void maxpool_2::thread_tmp_3_cast_fu_278_p1() {
    tmp_3_cast_fu_278_p1 = esl_zext<9,4>(h_reg_103.read());
}

void maxpool_2::thread_tmp_40_fu_379_p3() {
    tmp_40_fu_379_p3 = esl_concat<10,2>(tmp_58_fu_362_p2.read(), ap_const_lv2_0);
}

void maxpool_2::thread_tmp_41_fu_460_p1() {
    tmp_41_fu_460_p1 = max_value_1_to_int_fu_446_p1.read().range(23-1, 0);
}

void maxpool_2::thread_tmp_42_fu_477_p1() {
    tmp_42_fu_477_p1 = input_load_to_int_fu_464_p1.read().range(23-1, 0);
}

void maxpool_2::thread_tmp_4_fu_329_p3() {
    tmp_4_fu_329_p3 = esl_concat<4,1>(w_reg_114.read(), ap_const_lv1_0);
}

void maxpool_2::thread_tmp_50_fu_202_p3() {
    tmp_50_fu_202_p3 = esl_concat<3,2>(c_reg_92.read(), ap_const_lv2_0);
}

void maxpool_2::thread_tmp_51_fu_214_p2() {
    tmp_51_fu_214_p2 = (!p_shl2_cast_fu_198_p1.read().is_01() || !p_shl3_cast_fu_210_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(p_shl2_cast_fu_198_p1.read()) - sc_biguint<9>(p_shl3_cast_fu_210_p1.read()));
}

void maxpool_2::thread_tmp_52_fu_224_p3() {
    tmp_52_fu_224_p3 = esl_concat<3,4>(c_reg_92.read(), ap_const_lv4_0);
}

void maxpool_2::thread_tmp_53_fu_236_p3() {
    tmp_53_fu_236_p3 = esl_concat<3,1>(c_reg_92.read(), ap_const_lv1_0);
}

void maxpool_2::thread_tmp_54_fu_248_p2() {
    tmp_54_fu_248_p2 = (!p_shl_cast_fu_232_p1.read().is_01() || !p_shl1_cast_fu_244_p1.read().is_01())? sc_lv<8>(): (sc_biguint<8>(p_shl_cast_fu_232_p1.read()) - sc_biguint<8>(p_shl1_cast_fu_244_p1.read()));
}

void maxpool_2::thread_tmp_55_fu_282_p2() {
    tmp_55_fu_282_p2 = (!tmp_3_cast_fu_278_p1.read().is_01() || !tmp_79_cast_reg_549.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_3_cast_fu_278_p1.read()) + sc_bigint<9>(tmp_79_cast_reg_549.read()));
}

void maxpool_2::thread_tmp_56_fu_311_p2() {
    tmp_56_fu_311_p2 = (!p_shl4_cast_fu_291_p3.read().is_01() || !p_shl5_cast_fu_307_p1.read().is_01())? sc_lv<12>(): (sc_biguint<12>(p_shl4_cast_fu_291_p3.read()) - sc_bigint<12>(p_shl5_cast_fu_307_p1.read()));
}

void maxpool_2::thread_tmp_57_fu_401_p2() {
    tmp_57_fu_401_p2 = (!tmp_56_reg_567.read().is_01() || !tmp_5_cast_fu_397_p1.read().is_01())? sc_lv<12>(): (sc_biguint<12>(tmp_56_reg_567.read()) + sc_biguint<12>(tmp_5_cast_fu_397_p1.read()));
}

void maxpool_2::thread_tmp_58_fu_362_p2() {
    tmp_58_fu_362_p2 = (!tmp_76_cast_reg_544.read().is_01() || !tmp_7_cast_fu_358_p1.read().is_01())? sc_lv<10>(): (sc_bigint<10>(tmp_76_cast_reg_544.read()) + sc_biguint<10>(tmp_7_cast_fu_358_p1.read()));
}

void maxpool_2::thread_tmp_59_fu_391_p2() {
    tmp_59_fu_391_p2 = (!p_shl6_cast_fu_371_p3.read().is_01() || !p_shl7_cast_fu_387_p1.read().is_01())? sc_lv<14>(): (sc_biguint<14>(p_shl6_cast_fu_371_p3.read()) - sc_bigint<14>(p_shl7_cast_fu_387_p1.read()));
}

void maxpool_2::thread_tmp_5_cast_fu_397_p1() {
    tmp_5_cast_fu_397_p1 = esl_zext<12,4>(w_reg_114.read());
}

void maxpool_2::thread_tmp_60_fu_436_p2() {
    tmp_60_fu_436_p2 = (!tmp_59_reg_593.read().is_01() || !tmp_9_cast_fu_432_p1.read().is_01())? sc_lv<14>(): (sc_biguint<14>(tmp_59_reg_593.read()) + sc_biguint<14>(tmp_9_cast_fu_432_p1.read()));
}

void maxpool_2::thread_tmp_6_fu_353_p2() {
    tmp_6_fu_353_p2 = (!i_cast2_fu_337_p1.read().is_01() || !tmp_s_reg_562.read().is_01())? sc_lv<5>(): (sc_biguint<5>(i_cast2_fu_337_p1.read()) + sc_biguint<5>(tmp_s_reg_562.read()));
}

void maxpool_2::thread_tmp_76_cast_fu_220_p1() {
    tmp_76_cast_fu_220_p1 = esl_sext<10,9>(tmp_51_fu_214_p2.read());
}

void maxpool_2::thread_tmp_79_cast_fu_254_p1() {
    tmp_79_cast_fu_254_p1 = esl_sext<9,8>(tmp_54_fu_248_p2.read());
}

void maxpool_2::thread_tmp_7_cast_fu_358_p1() {
    tmp_7_cast_fu_358_p1 = esl_zext<10,5>(tmp_6_fu_353_p2.read());
}

void maxpool_2::thread_tmp_84_cast_fu_406_p1() {
    tmp_84_cast_fu_406_p1 = esl_zext<64,12>(tmp_57_fu_401_p2.read());
}

void maxpool_2::thread_tmp_89_cast_fu_441_p1() {
    tmp_89_cast_fu_441_p1 = esl_zext<64,14>(tmp_60_fu_436_p2.read());
}

void maxpool_2::thread_tmp_8_fu_427_p2() {
    tmp_8_fu_427_p2 = (!j_cast1_fu_411_p1.read().is_01() || !tmp_4_reg_580.read().is_01())? sc_lv<5>(): (sc_biguint<5>(j_cast1_fu_411_p1.read()) + sc_biguint<5>(tmp_4_reg_580.read()));
}

void maxpool_2::thread_tmp_9_cast_fu_432_p1() {
    tmp_9_cast_fu_432_p1 = esl_zext<14,5>(tmp_8_fu_427_p2.read());
}

void maxpool_2::thread_tmp_fu_190_p3() {
    tmp_fu_190_p3 = esl_concat<3,5>(c_reg_92.read(), ap_const_lv5_0);
}

void maxpool_2::thread_tmp_s_fu_270_p3() {
    tmp_s_fu_270_p3 = esl_concat<4,1>(h_reg_103.read(), ap_const_lv1_0);
}

void maxpool_2::thread_w_2_fu_323_p2() {
    w_2_fu_323_p2 = (!w_reg_114.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(w_reg_114.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void maxpool_2::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(exitcond4_fu_178_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(exitcond3_fu_258_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(exitcond2_fu_317_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(exitcond1_fu_341_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        case 32 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(exitcond_fu_415_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state7;
            }
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        default : 
            ap_NS_fsm = "XXXXXXXX";
            break;
    }
}

}

