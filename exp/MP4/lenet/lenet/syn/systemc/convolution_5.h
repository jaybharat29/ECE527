// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _convolution_5_HH_
#define _convolution_5_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "conv1_fadd_32ns_3bkb.h"
#include "conv1_fmul_32ns_3cud.h"

namespace ap_rtl {

struct convolution_5 : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<9> > input_r_address0;
    sc_out< sc_logic > input_r_ce0;
    sc_in< sc_lv<32> > input_r_q0;
    sc_out< sc_lv<16> > weights_address0;
    sc_out< sc_logic > weights_ce0;
    sc_in< sc_lv<32> > weights_q0;
    sc_out< sc_lv<7> > bias_address0;
    sc_out< sc_logic > bias_ce0;
    sc_in< sc_lv<32> > bias_q0;
    sc_out< sc_lv<7> > output_0_0_address0;
    sc_out< sc_logic > output_0_0_ce0;
    sc_out< sc_logic > output_0_0_we0;
    sc_out< sc_lv<32> > output_0_0_d0;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    convolution_5(sc_module_name name);
    SC_HAS_PROCESS(convolution_5);

    ~convolution_5();

    sc_trace_file* mVcdFile;

    conv1_fadd_32ns_3bkb<1,5,32,32,32>* conv1_fadd_32ns_3bkb_U58;
    conv1_fmul_32ns_3cud<1,4,32,32,32>* conv1_fmul_32ns_3cud_U59;
    sc_signal< sc_lv<15> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<9> > indvar_flatten4_reg_141;
    sc_signal< sc_lv<3> > i_reg_152;
    sc_signal< sc_lv<8> > indvar_flatten_reg_163;
    sc_signal< sc_lv<3> > j_reg_174;
    sc_signal< sc_lv<32> > sum_2_reg_185;
    sc_signal< sc_lv<5> > ci_reg_197;
    sc_signal< sc_lv<1> > exitcond3_fu_217_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<7> > co_2_fu_223_p2;
    sc_signal< sc_lv<7> > co_2_reg_486;
    sc_signal< sc_lv<64> > tmp_fu_229_p1;
    sc_signal< sc_lv<64> > tmp_reg_491;
    sc_signal< sc_lv<12> > tmp_175_cast_fu_241_p1;
    sc_signal< sc_lv<12> > tmp_175_cast_reg_497;
    sc_signal< sc_lv<1> > exitcond_flatten4_fu_245_p2;
    sc_signal< sc_lv<1> > exitcond_flatten4_reg_502;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state13_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > exitcond_flatten4_reg_502_pp0_iter1_reg;
    sc_signal< sc_lv<1> > exitcond_flatten4_reg_502_pp0_iter2_reg;
    sc_signal< sc_lv<9> > indvar_flatten_next4_fu_251_p2;
    sc_signal< sc_lv<9> > indvar_flatten_next4_reg_506;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<3> > tmp_16_mid2_v_fu_277_p3;
    sc_signal< sc_lv<3> > tmp_16_mid2_v_reg_511;
    sc_signal< sc_lv<5> > ci_mid2_fu_315_p3;
    sc_signal< sc_lv<5> > ci_mid2_reg_518;
    sc_signal< sc_lv<3> > tmp_17_mid2_fu_323_p3;
    sc_signal< sc_lv<3> > tmp_17_mid2_reg_525;
    sc_signal< sc_lv<12> > tmp_159_fu_335_p2;
    sc_signal< sc_lv<12> > tmp_159_reg_532;
    sc_signal< sc_lv<8> > indvar_flatten_next_fu_346_p3;
    sc_signal< sc_lv<8> > indvar_flatten_next_reg_538;
    sc_signal< sc_lv<8> > tmp_156_fu_383_p2;
    sc_signal< sc_lv<8> > tmp_156_reg_543;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state4_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state9_pp0_stage1_iter1;
    sc_signal< bool > ap_block_state14_pp0_stage1_iter2;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<17> > tmp_165_fu_437_p2;
    sc_signal< sc_lv<17> > tmp_165_reg_549;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_state5_pp0_stage2_iter0;
    sc_signal< bool > ap_block_state10_pp0_stage2_iter1;
    sc_signal< bool > ap_block_state15_pp0_stage2_iter2;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< sc_lv<32> > weights_load_reg_564;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage3;
    sc_signal< bool > ap_block_state6_pp0_stage3_iter0;
    sc_signal< bool > ap_block_state11_pp0_stage3_iter1;
    sc_signal< bool > ap_block_pp0_stage3_11001;
    sc_signal< sc_lv<32> > input_load_reg_569;
    sc_signal< sc_lv<5> > ci_1_fu_477_p2;
    sc_signal< sc_lv<5> > ci_1_reg_574;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage4;
    sc_signal< bool > ap_block_state7_pp0_stage4_iter0;
    sc_signal< bool > ap_block_state12_pp0_stage4_iter1;
    sc_signal< bool > ap_block_pp0_stage4_11001;
    sc_signal< sc_lv<32> > grp_fu_213_p2;
    sc_signal< sc_lv<32> > tmp_19_reg_579;
    sc_signal< sc_lv<32> > grp_fu_208_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<32> > bias_load_reg_594;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<32> > tmp_s_reg_599;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage4_subdone;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< sc_lv<7> > co_reg_130;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_lv<9> > ap_phi_mux_indvar_flatten4_phi_fu_145_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<3> > ap_phi_mux_i_phi_fu_156_p4;
    sc_signal< sc_lv<8> > ap_phi_mux_indvar_flatten_phi_fu_167_p4;
    sc_signal< sc_lv<3> > ap_phi_mux_j_phi_fu_178_p4;
    sc_signal< sc_lv<32> > ap_phi_mux_sum_2_phi_fu_189_p4;
    sc_signal< sc_lv<5> > ap_phi_mux_ci_phi_fu_201_p4;
    sc_signal< sc_lv<64> > tmp_182_cast_fu_468_p1;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< sc_lv<64> > tmp_189_cast_fu_473_p1;
    sc_signal< sc_lv<32> > grp_fu_208_p0;
    sc_signal< sc_lv<32> > grp_fu_208_p1;
    sc_signal< bool > ap_block_pp0_stage3;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< bool > ap_block_pp0_stage4;
    sc_signal< sc_lv<11> > tmp_152_fu_233_p3;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_263_p2;
    sc_signal< sc_lv<3> > i_17_fu_257_p2;
    sc_signal< sc_lv<1> > exitcond_fu_291_p2;
    sc_signal< sc_lv<1> > not_exitcond_flatten_fu_285_p2;
    sc_signal< sc_lv<3> > j_mid_fu_269_p3;
    sc_signal< sc_lv<1> > exitcond_mid_fu_297_p2;
    sc_signal< sc_lv<1> > tmp_153_fu_309_p2;
    sc_signal< sc_lv<3> > j_13_fu_303_p2;
    sc_signal< sc_lv<12> > tmp_18_cast1_fu_331_p1;
    sc_signal< sc_lv<8> > indvar_flatten_op_fu_340_p2;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<7> > tmp_154_fu_366_p3;
    sc_signal< sc_lv<8> > p_shl3_cast_fu_373_p1;
    sc_signal< sc_lv<8> > tmp_18_cast_fu_363_p1;
    sc_signal< sc_lv<8> > tmp_16_mid2_cast_fu_357_p1;
    sc_signal< sc_lv<8> > tmp_155_fu_377_p2;
    sc_signal< sc_lv<14> > tmp_151_fu_392_p3;
    sc_signal< sc_lv<64> > p_shl1_fu_399_p1;
    sc_signal< sc_lv<64> > tmp_183_cast_fu_389_p1;
    sc_signal< sc_lv<64> > tmp_16_mid2_fu_354_p1;
    sc_signal< sc_lv<64> > tmp_160_fu_403_p2;
    sc_signal< sc_lv<64> > tmp_161_fu_409_p2;
    sc_signal< sc_lv<15> > tmp_163_fu_419_p1;
    sc_signal< sc_lv<17> > p_shl_cast_fu_423_p3;
    sc_signal< sc_lv<17> > tmp_162_fu_415_p1;
    sc_signal< sc_lv<17> > tmp_17_mid2_cast1_fu_360_p1;
    sc_signal< sc_lv<17> > tmp_164_fu_431_p2;
    sc_signal< sc_lv<10> > p_shl2_cast_fu_449_p3;
    sc_signal< sc_lv<10> > tmp_179_cast_fu_446_p1;
    sc_signal< sc_lv<10> > tmp_17_mid2_cast_fu_443_p1;
    sc_signal< sc_lv<10> > tmp_157_fu_456_p2;
    sc_signal< sc_lv<10> > tmp_158_fu_462_p2;
    sc_signal< sc_lv<15> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< bool > ap_block_pp0_stage3_subdone;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<15> ap_ST_fsm_state1;
    static const sc_lv<15> ap_ST_fsm_state2;
    static const sc_lv<15> ap_ST_fsm_pp0_stage0;
    static const sc_lv<15> ap_ST_fsm_pp0_stage1;
    static const sc_lv<15> ap_ST_fsm_pp0_stage2;
    static const sc_lv<15> ap_ST_fsm_pp0_stage3;
    static const sc_lv<15> ap_ST_fsm_pp0_stage4;
    static const sc_lv<15> ap_ST_fsm_state16;
    static const sc_lv<15> ap_ST_fsm_state17;
    static const sc_lv<15> ap_ST_fsm_state18;
    static const sc_lv<15> ap_ST_fsm_state19;
    static const sc_lv<15> ap_ST_fsm_state20;
    static const sc_lv<15> ap_ST_fsm_state21;
    static const sc_lv<15> ap_ST_fsm_state22;
    static const sc_lv<15> ap_ST_fsm_state23;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<7> ap_const_lv7_78;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<9> ap_const_lv9_190;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<8> ap_const_lv8_50;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<5> ap_const_lv5_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage3();
    void thread_ap_CS_fsm_pp0_stage4();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2();
    void thread_ap_block_pp0_stage2_11001();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_pp0_stage3();
    void thread_ap_block_pp0_stage3_11001();
    void thread_ap_block_pp0_stage3_subdone();
    void thread_ap_block_pp0_stage4();
    void thread_ap_block_pp0_stage4_11001();
    void thread_ap_block_pp0_stage4_subdone();
    void thread_ap_block_state10_pp0_stage2_iter1();
    void thread_ap_block_state11_pp0_stage3_iter1();
    void thread_ap_block_state12_pp0_stage4_iter1();
    void thread_ap_block_state13_pp0_stage0_iter2();
    void thread_ap_block_state14_pp0_stage1_iter2();
    void thread_ap_block_state15_pp0_stage2_iter2();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage1_iter0();
    void thread_ap_block_state5_pp0_stage2_iter0();
    void thread_ap_block_state6_pp0_stage3_iter0();
    void thread_ap_block_state7_pp0_stage4_iter0();
    void thread_ap_block_state8_pp0_stage0_iter1();
    void thread_ap_block_state9_pp0_stage1_iter1();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_ci_phi_fu_201_p4();
    void thread_ap_phi_mux_i_phi_fu_156_p4();
    void thread_ap_phi_mux_indvar_flatten4_phi_fu_145_p4();
    void thread_ap_phi_mux_indvar_flatten_phi_fu_167_p4();
    void thread_ap_phi_mux_j_phi_fu_178_p4();
    void thread_ap_phi_mux_sum_2_phi_fu_189_p4();
    void thread_ap_ready();
    void thread_bias_address0();
    void thread_bias_ce0();
    void thread_ci_1_fu_477_p2();
    void thread_ci_mid2_fu_315_p3();
    void thread_co_2_fu_223_p2();
    void thread_exitcond3_fu_217_p2();
    void thread_exitcond_flatten4_fu_245_p2();
    void thread_exitcond_flatten_fu_263_p2();
    void thread_exitcond_fu_291_p2();
    void thread_exitcond_mid_fu_297_p2();
    void thread_grp_fu_208_p0();
    void thread_grp_fu_208_p1();
    void thread_i_17_fu_257_p2();
    void thread_indvar_flatten_next4_fu_251_p2();
    void thread_indvar_flatten_next_fu_346_p3();
    void thread_indvar_flatten_op_fu_340_p2();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_j_13_fu_303_p2();
    void thread_j_mid_fu_269_p3();
    void thread_not_exitcond_flatten_fu_285_p2();
    void thread_output_0_0_address0();
    void thread_output_0_0_ce0();
    void thread_output_0_0_d0();
    void thread_output_0_0_we0();
    void thread_p_shl1_fu_399_p1();
    void thread_p_shl2_cast_fu_449_p3();
    void thread_p_shl3_cast_fu_373_p1();
    void thread_p_shl_cast_fu_423_p3();
    void thread_tmp_151_fu_392_p3();
    void thread_tmp_152_fu_233_p3();
    void thread_tmp_153_fu_309_p2();
    void thread_tmp_154_fu_366_p3();
    void thread_tmp_155_fu_377_p2();
    void thread_tmp_156_fu_383_p2();
    void thread_tmp_157_fu_456_p2();
    void thread_tmp_158_fu_462_p2();
    void thread_tmp_159_fu_335_p2();
    void thread_tmp_160_fu_403_p2();
    void thread_tmp_161_fu_409_p2();
    void thread_tmp_162_fu_415_p1();
    void thread_tmp_163_fu_419_p1();
    void thread_tmp_164_fu_431_p2();
    void thread_tmp_165_fu_437_p2();
    void thread_tmp_16_mid2_cast_fu_357_p1();
    void thread_tmp_16_mid2_fu_354_p1();
    void thread_tmp_16_mid2_v_fu_277_p3();
    void thread_tmp_175_cast_fu_241_p1();
    void thread_tmp_179_cast_fu_446_p1();
    void thread_tmp_17_mid2_cast1_fu_360_p1();
    void thread_tmp_17_mid2_cast_fu_443_p1();
    void thread_tmp_17_mid2_fu_323_p3();
    void thread_tmp_182_cast_fu_468_p1();
    void thread_tmp_183_cast_fu_389_p1();
    void thread_tmp_189_cast_fu_473_p1();
    void thread_tmp_18_cast1_fu_331_p1();
    void thread_tmp_18_cast_fu_363_p1();
    void thread_tmp_fu_229_p1();
    void thread_weights_address0();
    void thread_weights_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif