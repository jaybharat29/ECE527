// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _maxpool_4_HH_
#define _maxpool_4_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "conv1_fcmp_32ns_3dEe.h"

namespace ap_rtl {

struct maxpool_4 : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<11> > input_r_address0;
    sc_out< sc_logic > input_r_ce0;
    sc_in< sc_lv<32> > input_r_q0;
    sc_out< sc_lv<9> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<32> > output_r_d0;
    sc_signal< sc_lv<5> > ap_var_for_const0;


    // Module declarations
    maxpool_4(sc_module_name name);
    SC_HAS_PROCESS(maxpool_4);

    ~maxpool_4();

    sc_trace_file* mVcdFile;

    conv1_fcmp_32ns_3dEe<1,1,32,32,1>* conv1_fcmp_32ns_3dEe_U53;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > c_1_fu_178_p2;
    sc_signal< sc_lv<5> > c_1_reg_501;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<9> > tmp_41_fu_212_p2;
    sc_signal< sc_lv<9> > tmp_41_reg_506;
    sc_signal< sc_lv<1> > exitcond4_fu_172_p2;
    sc_signal< sc_lv<8> > tmp_43_fu_230_p2;
    sc_signal< sc_lv<8> > tmp_43_reg_511;
    sc_signal< sc_lv<3> > h_1_fu_242_p2;
    sc_signal< sc_lv<3> > h_1_reg_519;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<4> > tmp_s_fu_248_p3;
    sc_signal< sc_lv<4> > tmp_s_reg_524;
    sc_signal< sc_lv<1> > exitcond3_fu_236_p2;
    sc_signal< sc_lv<10> > tmp_45_fu_277_p2;
    sc_signal< sc_lv<10> > tmp_45_reg_529;
    sc_signal< sc_lv<3> > w_1_fu_289_p2;
    sc_signal< sc_lv<3> > w_1_reg_537;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<4> > tmp_5_fu_295_p3;
    sc_signal< sc_lv<4> > tmp_5_reg_542;
    sc_signal< sc_lv<1> > exitcond2_fu_283_p2;
    sc_signal< sc_lv<2> > i_13_fu_313_p2;
    sc_signal< sc_lv<2> > i_13_reg_550;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<12> > tmp_48_fu_353_p2;
    sc_signal< sc_lv<12> > tmp_48_reg_555;
    sc_signal< sc_lv<1> > exitcond1_fu_307_p2;
    sc_signal< sc_lv<2> > j_9_fu_383_p2;
    sc_signal< sc_lv<2> > j_9_reg_563;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > exitcond_fu_377_p2;
    sc_signal< sc_lv<32> > input_load_reg_573;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > max_value_2_fu_491_p3;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<5> > c_reg_86;
    sc_signal< sc_lv<3> > h_reg_97;
    sc_signal< sc_lv<3> > w_reg_108;
    sc_signal< sc_lv<32> > max_value_reg_120;
    sc_signal< sc_lv<2> > i_reg_133;
    sc_signal< sc_lv<32> > max_value_1_reg_144;
    sc_signal< sc_lv<2> > j_reg_156;
    sc_signal< sc_lv<64> > tmp_69_cast_fu_368_p1;
    sc_signal< sc_lv<64> > tmp_74_cast_fu_403_p1;
    sc_signal< sc_lv<8> > tmp_39_fu_188_p3;
    sc_signal< sc_lv<6> > tmp_40_fu_200_p3;
    sc_signal< sc_lv<9> > p_shl2_cast_fu_208_p1;
    sc_signal< sc_lv<9> > p_shl1_cast_fu_196_p1;
    sc_signal< sc_lv<7> > tmp_42_fu_218_p3;
    sc_signal< sc_lv<8> > tmp_cast_fu_184_p1;
    sc_signal< sc_lv<8> > p_shl_cast_fu_226_p1;
    sc_signal< sc_lv<8> > tmp_4_cast_fu_256_p1;
    sc_signal< sc_lv<8> > tmp_44_fu_260_p2;
    sc_signal< sc_lv<10> > p_shl3_cast_fu_269_p3;
    sc_signal< sc_lv<10> > tmp_66_cast_fu_265_p1;
    sc_signal< sc_lv<4> > i_cast2_fu_303_p1;
    sc_signal< sc_lv<4> > tmp_7_fu_319_p2;
    sc_signal< sc_lv<9> > tmp_8_cast_fu_324_p1;
    sc_signal< sc_lv<9> > tmp_47_fu_328_p2;
    sc_signal< sc_lv<10> > tmp_fu_341_p3;
    sc_signal< sc_lv<12> > p_shl4_cast_fu_333_p3;
    sc_signal< sc_lv<12> > p_shl5_cast_fu_349_p1;
    sc_signal< sc_lv<10> > tmp_6_cast_fu_359_p1;
    sc_signal< sc_lv<10> > tmp_46_fu_363_p2;
    sc_signal< sc_lv<4> > j_cast1_fu_373_p1;
    sc_signal< sc_lv<4> > tmp_9_fu_389_p2;
    sc_signal< sc_lv<12> > tmp_1_cast_fu_394_p1;
    sc_signal< sc_lv<12> > tmp_49_fu_398_p2;
    sc_signal< sc_lv<32> > max_value_1_to_int_fu_408_p1;
    sc_signal< sc_lv<32> > input_load_to_int_fu_426_p1;
    sc_signal< sc_lv<8> > tmp_21_fu_412_p4;
    sc_signal< sc_lv<23> > tmp_24_fu_422_p1;
    sc_signal< sc_lv<1> > notrhs_fu_449_p2;
    sc_signal< sc_lv<1> > notlhs_fu_443_p2;
    sc_signal< sc_lv<8> > tmp_23_fu_429_p4;
    sc_signal< sc_lv<23> > tmp_30_fu_439_p1;
    sc_signal< sc_lv<1> > notrhs7_fu_467_p2;
    sc_signal< sc_lv<1> > notlhs6_fu_461_p2;
    sc_signal< sc_lv<1> > tmp_25_fu_455_p2;
    sc_signal< sc_lv<1> > tmp_26_fu_473_p2;
    sc_signal< sc_lv<1> > tmp_27_fu_479_p2;
    sc_signal< sc_lv<1> > tmp_28_fu_167_p2;
    sc_signal< sc_lv<1> > tmp_29_fu_485_p2;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_fsm_state1;
    static const sc_lv<8> ap_ST_fsm_state2;
    static const sc_lv<8> ap_ST_fsm_state3;
    static const sc_lv<8> ap_ST_fsm_state4;
    static const sc_lv<8> ap_ST_fsm_state5;
    static const sc_lv<8> ap_ST_fsm_state6;
    static const sc_lv<8> ap_ST_fsm_state7;
    static const sc_lv<8> ap_ST_fsm_state8;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_D368D4A5;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<5> ap_const_lv5_2;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_c_1_fu_178_p2();
    void thread_exitcond1_fu_307_p2();
    void thread_exitcond2_fu_283_p2();
    void thread_exitcond3_fu_236_p2();
    void thread_exitcond4_fu_172_p2();
    void thread_exitcond_fu_377_p2();
    void thread_h_1_fu_242_p2();
    void thread_i_13_fu_313_p2();
    void thread_i_cast2_fu_303_p1();
    void thread_input_load_to_int_fu_426_p1();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_j_9_fu_383_p2();
    void thread_j_cast1_fu_373_p1();
    void thread_max_value_1_to_int_fu_408_p1();
    void thread_max_value_2_fu_491_p3();
    void thread_notlhs6_fu_461_p2();
    void thread_notlhs_fu_443_p2();
    void thread_notrhs7_fu_467_p2();
    void thread_notrhs_fu_449_p2();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_p_shl1_cast_fu_196_p1();
    void thread_p_shl2_cast_fu_208_p1();
    void thread_p_shl3_cast_fu_269_p3();
    void thread_p_shl4_cast_fu_333_p3();
    void thread_p_shl5_cast_fu_349_p1();
    void thread_p_shl_cast_fu_226_p1();
    void thread_tmp_1_cast_fu_394_p1();
    void thread_tmp_21_fu_412_p4();
    void thread_tmp_23_fu_429_p4();
    void thread_tmp_24_fu_422_p1();
    void thread_tmp_25_fu_455_p2();
    void thread_tmp_26_fu_473_p2();
    void thread_tmp_27_fu_479_p2();
    void thread_tmp_29_fu_485_p2();
    void thread_tmp_30_fu_439_p1();
    void thread_tmp_39_fu_188_p3();
    void thread_tmp_40_fu_200_p3();
    void thread_tmp_41_fu_212_p2();
    void thread_tmp_42_fu_218_p3();
    void thread_tmp_43_fu_230_p2();
    void thread_tmp_44_fu_260_p2();
    void thread_tmp_45_fu_277_p2();
    void thread_tmp_46_fu_363_p2();
    void thread_tmp_47_fu_328_p2();
    void thread_tmp_48_fu_353_p2();
    void thread_tmp_49_fu_398_p2();
    void thread_tmp_4_cast_fu_256_p1();
    void thread_tmp_5_fu_295_p3();
    void thread_tmp_66_cast_fu_265_p1();
    void thread_tmp_69_cast_fu_368_p1();
    void thread_tmp_6_cast_fu_359_p1();
    void thread_tmp_74_cast_fu_403_p1();
    void thread_tmp_7_fu_319_p2();
    void thread_tmp_8_cast_fu_324_p1();
    void thread_tmp_9_fu_389_p2();
    void thread_tmp_cast_fu_184_p1();
    void thread_tmp_fu_341_p3();
    void thread_tmp_s_fu_248_p3();
    void thread_w_1_fu_289_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif