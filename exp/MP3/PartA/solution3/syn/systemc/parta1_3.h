// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _parta1_3_HH_
#define _parta1_3_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "parta1_3_mac_mulabkb.h"

namespace ap_rtl {

struct parta1_3 : public sc_module {
    // Port declarations 23
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<14> > A_address0;
    sc_out< sc_logic > A_ce0;
    sc_in< sc_lv<32> > A_q0;
    sc_out< sc_lv<14> > B_address0;
    sc_out< sc_logic > B_ce0;
    sc_in< sc_lv<32> > B_q0;
    sc_out< sc_lv<14> > C_address0;
    sc_out< sc_logic > C_ce0;
    sc_out< sc_logic > C_we0;
    sc_out< sc_lv<32> > C_d0;
    sc_in< sc_lv<32> > C_q0;
    sc_in< sc_lv<32> > mA;
    sc_in< sc_lv<32> > nA;
    sc_in< sc_lv<32> > mB;
    sc_in< sc_lv<32> > nB;
    sc_in< sc_lv<32> > mC;
    sc_in< sc_lv<32> > nC;


    // Module declarations
    parta1_3(sc_module_name name);
    SC_HAS_PROCESS(parta1_3);

    ~parta1_3();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    parta1_3_mac_mulabkb<1,1,8,15,15,15>* parta1_3_mac_mulabkb_U1;
    parta1_3_mac_mulabkb<1,1,8,15,15,15>* parta1_3_mac_mulabkb_U2;
    parta1_3_mac_mulabkb<1,1,8,15,15,15>* parta1_3_mac_mulabkb_U3;
    parta1_3_mac_mulabkb<1,1,8,15,15,15>* parta1_3_mac_mulabkb_U4;
    sc_signal< sc_lv<16> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > reg_223;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<32> > reg_227;
    sc_signal< sc_lv<32> > grp_fu_231_p2;
    sc_signal< sc_lv<32> > reg_237;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<15> > tmp_1_fu_241_p1;
    sc_signal< sc_lv<15> > tmp_1_reg_561;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<38> > next_mul_fu_245_p2;
    sc_signal< sc_lv<38> > next_mul_reg_570;
    sc_signal< sc_lv<31> > i_1_fu_260_p2;
    sc_signal< sc_lv<31> > i_1_reg_578;
    sc_signal< sc_lv<31> > j_1_fu_275_p2;
    sc_signal< sc_lv<31> > j_1_reg_586;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<15> > tmp_3_fu_281_p1;
    sc_signal< sc_lv<15> > tmp_3_reg_591;
    sc_signal< sc_lv<1> > tmp_2_fu_270_p2;
    sc_signal< sc_lv<14> > C_addr_reg_599;
    sc_signal< sc_lv<32> > tmp_25_fu_362_p3;
    sc_signal< sc_lv<32> > tmp_25_reg_604;
    sc_signal< sc_lv<1> > tmp_26_fu_370_p2;
    sc_signal< sc_lv<1> > tmp_26_reg_609;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > C_load_reg_623;
    sc_signal< sc_lv<32> > tmp_8_fu_393_p2;
    sc_signal< sc_lv<32> > tmp_8_reg_628;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > tmp_5_1_fu_405_p2;
    sc_signal< sc_lv<1> > tmp_5_1_reg_633;
    sc_signal< sc_lv<32> > tmp_8_1_fu_428_p2;
    sc_signal< sc_lv<32> > tmp_8_1_reg_647;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > tmp_5_2_fu_440_p2;
    sc_signal< sc_lv<1> > tmp_5_2_reg_652;
    sc_signal< sc_lv<32> > tmp_7_2_reg_666;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<32> > tmp_8_2_fu_463_p2;
    sc_signal< sc_lv<32> > tmp_8_2_reg_671;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<1> > tmp_5_3_fu_474_p2;
    sc_signal< sc_lv<32> > k_1_3_fu_497_p2;
    sc_signal< sc_lv<32> > k_1_3_reg_689;
    sc_signal< sc_lv<31> > i_reg_178;
    sc_signal< sc_lv<38> > phi_mul_reg_189;
    sc_signal< sc_lv<31> > j_reg_200;
    sc_signal< sc_lv<1> > tmp_fu_255_p2;
    sc_signal< sc_lv<32> > k_reg_211;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<64> > tmp_10_cast_fu_290_p1;
    sc_signal< sc_lv<64> > tmp_11_cast_fu_384_p1;
    sc_signal< sc_lv<64> > tmp_13_cast_fu_389_p1;
    sc_signal< sc_lv<64> > tmp_14_cast_fu_419_p1;
    sc_signal< sc_lv<64> > tmp_16_cast_fu_424_p1;
    sc_signal< sc_lv<64> > tmp_17_cast_fu_454_p1;
    sc_signal< sc_lv<64> > tmp_19_cast_fu_459_p1;
    sc_signal< sc_lv<64> > tmp_20_cast_fu_488_p1;
    sc_signal< sc_lv<64> > tmp_22_cast_fu_493_p1;
    sc_signal< sc_lv<32> > tmp_8_3_fu_503_p2;
    sc_signal< sc_lv<32> > i_cast_fu_251_p1;
    sc_signal< sc_lv<32> > j_cast_fu_266_p1;
    sc_signal< sc_lv<15> > tmp_s_fu_285_p2;
    sc_signal< sc_lv<32> > nA_op_op_fu_302_p2;
    sc_signal< sc_lv<32> > p_neg_fu_315_p2;
    sc_signal< sc_lv<30> > p_lshr_fu_320_p4;
    sc_signal< sc_lv<1> > tmp_9_fu_307_p3;
    sc_signal< sc_lv<30> > p_neg_t_fu_330_p2;
    sc_signal< sc_lv<30> > tmp_10_fu_336_p4;
    sc_signal< sc_lv<1> > tmp_6_fu_295_p3;
    sc_signal< sc_lv<30> > tmp_23_fu_346_p3;
    sc_signal< sc_lv<30> > tmp_24_fu_354_p3;
    sc_signal< sc_lv<15> > tmp_27_fu_375_p1;
    sc_signal< sc_lv<15> > tmp_11_fu_379_p2;
    sc_signal< sc_lv<15> > grp_fu_509_p3;
    sc_signal< sc_lv<32> > k_1_s_fu_399_p2;
    sc_signal< sc_lv<15> > tmp_28_fu_410_p1;
    sc_signal< sc_lv<15> > tmp_14_fu_414_p2;
    sc_signal< sc_lv<15> > grp_fu_517_p3;
    sc_signal< sc_lv<32> > k_1_1_fu_434_p2;
    sc_signal< sc_lv<15> > tmp_29_fu_445_p1;
    sc_signal< sc_lv<15> > tmp_17_fu_449_p2;
    sc_signal< sc_lv<15> > grp_fu_525_p3;
    sc_signal< sc_lv<32> > k_1_2_fu_468_p2;
    sc_signal< sc_lv<15> > tmp_30_fu_479_p1;
    sc_signal< sc_lv<15> > tmp_20_fu_483_p2;
    sc_signal< sc_lv<15> > grp_fu_533_p3;
    sc_signal< sc_lv<8> > grp_fu_509_p0;
    sc_signal< sc_lv<8> > grp_fu_517_p0;
    sc_signal< sc_lv<8> > grp_fu_525_p0;
    sc_signal< sc_lv<8> > grp_fu_533_p0;
    sc_signal< sc_lv<16> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<16> ap_ST_fsm_state1;
    static const sc_lv<16> ap_ST_fsm_state2;
    static const sc_lv<16> ap_ST_fsm_state3;
    static const sc_lv<16> ap_ST_fsm_state4;
    static const sc_lv<16> ap_ST_fsm_state5;
    static const sc_lv<16> ap_ST_fsm_state6;
    static const sc_lv<16> ap_ST_fsm_state7;
    static const sc_lv<16> ap_ST_fsm_state8;
    static const sc_lv<16> ap_ST_fsm_state9;
    static const sc_lv<16> ap_ST_fsm_state10;
    static const sc_lv<16> ap_ST_fsm_state11;
    static const sc_lv<16> ap_ST_fsm_state12;
    static const sc_lv<16> ap_ST_fsm_state13;
    static const sc_lv<16> ap_ST_fsm_state14;
    static const sc_lv<16> ap_ST_fsm_state15;
    static const sc_lv<16> ap_ST_fsm_state16;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<38> ap_const_lv38_0;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<38> ap_const_lv38_64;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_FFFFFFFD;
    static const sc_lv<30> ap_const_lv30_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<15> ap_const_lv15_64;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_A_address0();
    void thread_A_ce0();
    void thread_B_address0();
    void thread_B_ce0();
    void thread_C_address0();
    void thread_C_ce0();
    void thread_C_d0();
    void thread_C_we0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_fu_231_p2();
    void thread_grp_fu_509_p0();
    void thread_grp_fu_517_p0();
    void thread_grp_fu_525_p0();
    void thread_grp_fu_533_p0();
    void thread_i_1_fu_260_p2();
    void thread_i_cast_fu_251_p1();
    void thread_j_1_fu_275_p2();
    void thread_j_cast_fu_266_p1();
    void thread_k_1_1_fu_434_p2();
    void thread_k_1_2_fu_468_p2();
    void thread_k_1_3_fu_497_p2();
    void thread_k_1_s_fu_399_p2();
    void thread_nA_op_op_fu_302_p2();
    void thread_next_mul_fu_245_p2();
    void thread_p_lshr_fu_320_p4();
    void thread_p_neg_fu_315_p2();
    void thread_p_neg_t_fu_330_p2();
    void thread_tmp_10_cast_fu_290_p1();
    void thread_tmp_10_fu_336_p4();
    void thread_tmp_11_cast_fu_384_p1();
    void thread_tmp_11_fu_379_p2();
    void thread_tmp_13_cast_fu_389_p1();
    void thread_tmp_14_cast_fu_419_p1();
    void thread_tmp_14_fu_414_p2();
    void thread_tmp_16_cast_fu_424_p1();
    void thread_tmp_17_cast_fu_454_p1();
    void thread_tmp_17_fu_449_p2();
    void thread_tmp_19_cast_fu_459_p1();
    void thread_tmp_1_fu_241_p1();
    void thread_tmp_20_cast_fu_488_p1();
    void thread_tmp_20_fu_483_p2();
    void thread_tmp_22_cast_fu_493_p1();
    void thread_tmp_23_fu_346_p3();
    void thread_tmp_24_fu_354_p3();
    void thread_tmp_25_fu_362_p3();
    void thread_tmp_26_fu_370_p2();
    void thread_tmp_27_fu_375_p1();
    void thread_tmp_28_fu_410_p1();
    void thread_tmp_29_fu_445_p1();
    void thread_tmp_2_fu_270_p2();
    void thread_tmp_30_fu_479_p1();
    void thread_tmp_3_fu_281_p1();
    void thread_tmp_5_1_fu_405_p2();
    void thread_tmp_5_2_fu_440_p2();
    void thread_tmp_5_3_fu_474_p2();
    void thread_tmp_6_fu_295_p3();
    void thread_tmp_8_1_fu_428_p2();
    void thread_tmp_8_2_fu_463_p2();
    void thread_tmp_8_3_fu_503_p2();
    void thread_tmp_8_fu_393_p2();
    void thread_tmp_9_fu_307_p3();
    void thread_tmp_fu_255_p2();
    void thread_tmp_s_fu_285_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif