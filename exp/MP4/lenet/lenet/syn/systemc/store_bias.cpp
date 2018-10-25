// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "store_bias.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic store_bias::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic store_bias::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<9> store_bias::ap_ST_fsm_state1 = "1";
const sc_lv<9> store_bias::ap_ST_fsm_state2 = "10";
const sc_lv<9> store_bias::ap_ST_fsm_state3 = "100";
const sc_lv<9> store_bias::ap_ST_fsm_state4 = "1000";
const sc_lv<9> store_bias::ap_ST_fsm_state5 = "10000";
const sc_lv<9> store_bias::ap_ST_fsm_state6 = "100000";
const sc_lv<9> store_bias::ap_ST_fsm_state7 = "1000000";
const sc_lv<9> store_bias::ap_ST_fsm_state8 = "10000000";
const sc_lv<9> store_bias::ap_ST_fsm_state9 = "100000000";
const sc_lv<32> store_bias::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> store_bias::ap_const_lv1_0 = "0";
const sc_lv<3> store_bias::ap_const_lv3_0 = "000";
const sc_lv<2> store_bias::ap_const_lv2_0 = "00";
const sc_lv<4> store_bias::ap_const_lv4_0 = "0000";
const sc_lv<32> store_bias::ap_const_lv32_7 = "111";
const sc_lv<32> store_bias::ap_const_lv32_6 = "110";
const sc_lv<32> store_bias::ap_const_lv32_8 = "1000";
const sc_lv<3> store_bias::ap_const_lv3_6 = "110";
const sc_lv<3> store_bias::ap_const_lv3_1 = "1";
const sc_lv<1> store_bias::ap_const_lv1_1 = "1";
const bool store_bias::ap_const_boolean_1 = true;

store_bias::store_bias(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state9);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state8);
    sensitive << ( m_axi_bias_RVALID );
    sensitive << ( exitcond_fu_94_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( m_axi_bias_RVALID );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( exitcond_fu_94_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( m_axi_bias_RVALID );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( exitcond_fu_94_p2 );

    SC_METHOD(thread_ap_sig_ioackin_m_axi_bias_ARREADY);
    sensitive << ( m_axi_bias_ARREADY );
    sensitive << ( ap_reg_ioackin_m_axi_bias_ARREADY );

    SC_METHOD(thread_bias_blk_n_AR);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( m_axi_bias_ARREADY );

    SC_METHOD(thread_bias_blk_n_R);
    sensitive << ( m_axi_bias_RVALID );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( exitcond_fu_94_p2 );

    SC_METHOD(thread_bias_oc_address0);
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( tmp_fu_106_p1 );

    SC_METHOD(thread_bias_oc_ce0);
    sensitive << ( ap_CS_fsm_state9 );

    SC_METHOD(thread_bias_oc_d0);
    sensitive << ( bias_addr_read_reg_125 );
    sensitive << ( ap_CS_fsm_state9 );

    SC_METHOD(thread_bias_oc_we0);
    sensitive << ( ap_CS_fsm_state9 );

    SC_METHOD(thread_exitcond_fu_94_p2);
    sensitive << ( m_axi_bias_RVALID );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( exitcond_fu_94_p2 );
    sensitive << ( i_reg_71 );

    SC_METHOD(thread_i_4_fu_100_p2);
    sensitive << ( i_reg_71 );

    SC_METHOD(thread_m_axi_bias_ARADDR);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( sext_fu_83_p1 );
    sensitive << ( ap_reg_ioackin_m_axi_bias_ARREADY );

    SC_METHOD(thread_m_axi_bias_ARBURST);

    SC_METHOD(thread_m_axi_bias_ARCACHE);

    SC_METHOD(thread_m_axi_bias_ARID);

    SC_METHOD(thread_m_axi_bias_ARLEN);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_reg_ioackin_m_axi_bias_ARREADY );

    SC_METHOD(thread_m_axi_bias_ARLOCK);

    SC_METHOD(thread_m_axi_bias_ARPROT);

    SC_METHOD(thread_m_axi_bias_ARQOS);

    SC_METHOD(thread_m_axi_bias_ARREGION);

    SC_METHOD(thread_m_axi_bias_ARSIZE);

    SC_METHOD(thread_m_axi_bias_ARUSER);

    SC_METHOD(thread_m_axi_bias_ARVALID);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_reg_ioackin_m_axi_bias_ARREADY );

    SC_METHOD(thread_m_axi_bias_AWADDR);

    SC_METHOD(thread_m_axi_bias_AWBURST);

    SC_METHOD(thread_m_axi_bias_AWCACHE);

    SC_METHOD(thread_m_axi_bias_AWID);

    SC_METHOD(thread_m_axi_bias_AWLEN);

    SC_METHOD(thread_m_axi_bias_AWLOCK);

    SC_METHOD(thread_m_axi_bias_AWPROT);

    SC_METHOD(thread_m_axi_bias_AWQOS);

    SC_METHOD(thread_m_axi_bias_AWREGION);

    SC_METHOD(thread_m_axi_bias_AWSIZE);

    SC_METHOD(thread_m_axi_bias_AWUSER);

    SC_METHOD(thread_m_axi_bias_AWVALID);

    SC_METHOD(thread_m_axi_bias_BREADY);

    SC_METHOD(thread_m_axi_bias_RREADY);
    sensitive << ( m_axi_bias_RVALID );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( exitcond_fu_94_p2 );

    SC_METHOD(thread_m_axi_bias_WDATA);

    SC_METHOD(thread_m_axi_bias_WID);

    SC_METHOD(thread_m_axi_bias_WLAST);

    SC_METHOD(thread_m_axi_bias_WSTRB);

    SC_METHOD(thread_m_axi_bias_WUSER);

    SC_METHOD(thread_m_axi_bias_WVALID);

    SC_METHOD(thread_sext_fu_83_p1);
    sensitive << ( bias_offset );

    SC_METHOD(thread_tmp_fu_106_p1);
    sensitive << ( i_reg_71 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( m_axi_bias_RVALID );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( exitcond_fu_94_p2 );
    sensitive << ( ap_sig_ioackin_m_axi_bias_ARREADY );

    ap_CS_fsm = "000000001";
    ap_reg_ioackin_m_axi_bias_ARREADY = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "store_bias_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, m_axi_bias_AWVALID, "(port)m_axi_bias_AWVALID");
    sc_trace(mVcdFile, m_axi_bias_AWREADY, "(port)m_axi_bias_AWREADY");
    sc_trace(mVcdFile, m_axi_bias_AWADDR, "(port)m_axi_bias_AWADDR");
    sc_trace(mVcdFile, m_axi_bias_AWID, "(port)m_axi_bias_AWID");
    sc_trace(mVcdFile, m_axi_bias_AWLEN, "(port)m_axi_bias_AWLEN");
    sc_trace(mVcdFile, m_axi_bias_AWSIZE, "(port)m_axi_bias_AWSIZE");
    sc_trace(mVcdFile, m_axi_bias_AWBURST, "(port)m_axi_bias_AWBURST");
    sc_trace(mVcdFile, m_axi_bias_AWLOCK, "(port)m_axi_bias_AWLOCK");
    sc_trace(mVcdFile, m_axi_bias_AWCACHE, "(port)m_axi_bias_AWCACHE");
    sc_trace(mVcdFile, m_axi_bias_AWPROT, "(port)m_axi_bias_AWPROT");
    sc_trace(mVcdFile, m_axi_bias_AWQOS, "(port)m_axi_bias_AWQOS");
    sc_trace(mVcdFile, m_axi_bias_AWREGION, "(port)m_axi_bias_AWREGION");
    sc_trace(mVcdFile, m_axi_bias_AWUSER, "(port)m_axi_bias_AWUSER");
    sc_trace(mVcdFile, m_axi_bias_WVALID, "(port)m_axi_bias_WVALID");
    sc_trace(mVcdFile, m_axi_bias_WREADY, "(port)m_axi_bias_WREADY");
    sc_trace(mVcdFile, m_axi_bias_WDATA, "(port)m_axi_bias_WDATA");
    sc_trace(mVcdFile, m_axi_bias_WSTRB, "(port)m_axi_bias_WSTRB");
    sc_trace(mVcdFile, m_axi_bias_WLAST, "(port)m_axi_bias_WLAST");
    sc_trace(mVcdFile, m_axi_bias_WID, "(port)m_axi_bias_WID");
    sc_trace(mVcdFile, m_axi_bias_WUSER, "(port)m_axi_bias_WUSER");
    sc_trace(mVcdFile, m_axi_bias_ARVALID, "(port)m_axi_bias_ARVALID");
    sc_trace(mVcdFile, m_axi_bias_ARREADY, "(port)m_axi_bias_ARREADY");
    sc_trace(mVcdFile, m_axi_bias_ARADDR, "(port)m_axi_bias_ARADDR");
    sc_trace(mVcdFile, m_axi_bias_ARID, "(port)m_axi_bias_ARID");
    sc_trace(mVcdFile, m_axi_bias_ARLEN, "(port)m_axi_bias_ARLEN");
    sc_trace(mVcdFile, m_axi_bias_ARSIZE, "(port)m_axi_bias_ARSIZE");
    sc_trace(mVcdFile, m_axi_bias_ARBURST, "(port)m_axi_bias_ARBURST");
    sc_trace(mVcdFile, m_axi_bias_ARLOCK, "(port)m_axi_bias_ARLOCK");
    sc_trace(mVcdFile, m_axi_bias_ARCACHE, "(port)m_axi_bias_ARCACHE");
    sc_trace(mVcdFile, m_axi_bias_ARPROT, "(port)m_axi_bias_ARPROT");
    sc_trace(mVcdFile, m_axi_bias_ARQOS, "(port)m_axi_bias_ARQOS");
    sc_trace(mVcdFile, m_axi_bias_ARREGION, "(port)m_axi_bias_ARREGION");
    sc_trace(mVcdFile, m_axi_bias_ARUSER, "(port)m_axi_bias_ARUSER");
    sc_trace(mVcdFile, m_axi_bias_RVALID, "(port)m_axi_bias_RVALID");
    sc_trace(mVcdFile, m_axi_bias_RREADY, "(port)m_axi_bias_RREADY");
    sc_trace(mVcdFile, m_axi_bias_RDATA, "(port)m_axi_bias_RDATA");
    sc_trace(mVcdFile, m_axi_bias_RLAST, "(port)m_axi_bias_RLAST");
    sc_trace(mVcdFile, m_axi_bias_RID, "(port)m_axi_bias_RID");
    sc_trace(mVcdFile, m_axi_bias_RUSER, "(port)m_axi_bias_RUSER");
    sc_trace(mVcdFile, m_axi_bias_RRESP, "(port)m_axi_bias_RRESP");
    sc_trace(mVcdFile, m_axi_bias_BVALID, "(port)m_axi_bias_BVALID");
    sc_trace(mVcdFile, m_axi_bias_BREADY, "(port)m_axi_bias_BREADY");
    sc_trace(mVcdFile, m_axi_bias_BRESP, "(port)m_axi_bias_BRESP");
    sc_trace(mVcdFile, m_axi_bias_BID, "(port)m_axi_bias_BID");
    sc_trace(mVcdFile, m_axi_bias_BUSER, "(port)m_axi_bias_BUSER");
    sc_trace(mVcdFile, bias_offset, "(port)bias_offset");
    sc_trace(mVcdFile, bias_oc_address0, "(port)bias_oc_address0");
    sc_trace(mVcdFile, bias_oc_ce0, "(port)bias_oc_ce0");
    sc_trace(mVcdFile, bias_oc_we0, "(port)bias_oc_we0");
    sc_trace(mVcdFile, bias_oc_d0, "(port)bias_oc_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, bias_blk_n_AR, "bias_blk_n_AR");
    sc_trace(mVcdFile, bias_blk_n_R, "bias_blk_n_R");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, exitcond_fu_94_p2, "exitcond_fu_94_p2");
    sc_trace(mVcdFile, ap_sig_ioackin_m_axi_bias_ARREADY, "ap_sig_ioackin_m_axi_bias_ARREADY");
    sc_trace(mVcdFile, i_4_fu_100_p2, "i_4_fu_100_p2");
    sc_trace(mVcdFile, i_4_reg_120, "i_4_reg_120");
    sc_trace(mVcdFile, ap_block_state8, "ap_block_state8");
    sc_trace(mVcdFile, bias_addr_read_reg_125, "bias_addr_read_reg_125");
    sc_trace(mVcdFile, i_reg_71, "i_reg_71");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, ap_CS_fsm_state9, "ap_CS_fsm_state9");
    sc_trace(mVcdFile, tmp_fu_106_p1, "tmp_fu_106_p1");
    sc_trace(mVcdFile, sext_fu_83_p1, "sext_fu_83_p1");
    sc_trace(mVcdFile, ap_reg_ioackin_m_axi_bias_ARREADY, "ap_reg_ioackin_m_axi_bias_ARREADY");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

store_bias::~store_bias() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void store_bias::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ioackin_m_axi_bias_ARREADY = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
            if (!(esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_sig_ioackin_m_axi_bias_ARREADY.read(), ap_const_logic_0))) {
                ap_reg_ioackin_m_axi_bias_ARREADY = ap_const_logic_0;
            } else if ((esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                        esl_seteq<1,1,1>(ap_const_logic_1, m_axi_bias_ARREADY.read()))) {
                ap_reg_ioackin_m_axi_bias_ARREADY = ap_const_logic_1;
            }
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        i_reg_71 = i_4_reg_120.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        i_reg_71 = ap_const_lv3_0;
    }
    if ((!(esl_seteq<1,1,1>(exitcond_fu_94_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(m_axi_bias_RVALID.read(), ap_const_logic_0)) && esl_seteq<1,1,1>(exitcond_fu_94_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()))) {
        bias_addr_read_reg_125 = m_axi_bias_RDATA.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && !(esl_seteq<1,1,1>(exitcond_fu_94_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(m_axi_bias_RVALID.read(), ap_const_logic_0)))) {
        i_4_reg_120 = i_4_fu_100_p2.read();
    }
}

void store_bias::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void store_bias::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void store_bias::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void store_bias::thread_ap_CS_fsm_state9() {
    ap_CS_fsm_state9 = ap_CS_fsm.read()[8];
}

void store_bias::thread_ap_block_state8() {
    ap_block_state8 = (esl_seteq<1,1,1>(exitcond_fu_94_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(m_axi_bias_RVALID.read(), ap_const_logic_0));
}

void store_bias::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (!(esl_seteq<1,1,1>(exitcond_fu_94_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(m_axi_bias_RVALID.read(), ap_const_logic_0)) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && 
          esl_seteq<1,1,1>(exitcond_fu_94_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void store_bias::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void store_bias::thread_ap_ready() {
    if ((!(esl_seteq<1,1,1>(exitcond_fu_94_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(m_axi_bias_RVALID.read(), ap_const_logic_0)) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_94_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void store_bias::thread_ap_sig_ioackin_m_axi_bias_ARREADY() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_m_axi_bias_ARREADY.read())) {
        ap_sig_ioackin_m_axi_bias_ARREADY = m_axi_bias_ARREADY.read();
    } else {
        ap_sig_ioackin_m_axi_bias_ARREADY = ap_const_logic_1;
    }
}

void store_bias::thread_bias_blk_n_AR() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        bias_blk_n_AR = m_axi_bias_ARREADY.read();
    } else {
        bias_blk_n_AR = ap_const_logic_1;
    }
}

void store_bias::thread_bias_blk_n_R() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_94_p2.read(), ap_const_lv1_0))) {
        bias_blk_n_R = m_axi_bias_RVALID.read();
    } else {
        bias_blk_n_R = ap_const_logic_1;
    }
}

void store_bias::thread_bias_oc_address0() {
    bias_oc_address0 =  (sc_lv<3>) (tmp_fu_106_p1.read());
}

void store_bias::thread_bias_oc_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        bias_oc_ce0 = ap_const_logic_1;
    } else {
        bias_oc_ce0 = ap_const_logic_0;
    }
}

void store_bias::thread_bias_oc_d0() {
    bias_oc_d0 = bias_addr_read_reg_125.read();
}

void store_bias::thread_bias_oc_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        bias_oc_we0 = ap_const_logic_1;
    } else {
        bias_oc_we0 = ap_const_logic_0;
    }
}

void store_bias::thread_exitcond_fu_94_p2() {
    exitcond_fu_94_p2 = (!i_reg_71.read().is_01() || !ap_const_lv3_6.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_71.read() == ap_const_lv3_6);
}

void store_bias::thread_i_4_fu_100_p2() {
    i_4_fu_100_p2 = (!i_reg_71.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(i_reg_71.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void store_bias::thread_m_axi_bias_ARADDR() {
    m_axi_bias_ARADDR =  (sc_lv<32>) (sext_fu_83_p1.read());
}

void store_bias::thread_m_axi_bias_ARBURST() {
    m_axi_bias_ARBURST = ap_const_lv2_0;
}

void store_bias::thread_m_axi_bias_ARCACHE() {
    m_axi_bias_ARCACHE = ap_const_lv4_0;
}

void store_bias::thread_m_axi_bias_ARID() {
    m_axi_bias_ARID = ap_const_lv1_0;
}

void store_bias::thread_m_axi_bias_ARLEN() {
    m_axi_bias_ARLEN = ap_const_lv32_6;
}

void store_bias::thread_m_axi_bias_ARLOCK() {
    m_axi_bias_ARLOCK = ap_const_lv2_0;
}

void store_bias::thread_m_axi_bias_ARPROT() {
    m_axi_bias_ARPROT = ap_const_lv3_0;
}

void store_bias::thread_m_axi_bias_ARQOS() {
    m_axi_bias_ARQOS = ap_const_lv4_0;
}

void store_bias::thread_m_axi_bias_ARREGION() {
    m_axi_bias_ARREGION = ap_const_lv4_0;
}

void store_bias::thread_m_axi_bias_ARSIZE() {
    m_axi_bias_ARSIZE = ap_const_lv3_0;
}

void store_bias::thread_m_axi_bias_ARUSER() {
    m_axi_bias_ARUSER = ap_const_lv1_0;
}

void store_bias::thread_m_axi_bias_ARVALID() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_m_axi_bias_ARREADY.read()))) {
        m_axi_bias_ARVALID = ap_const_logic_1;
    } else {
        m_axi_bias_ARVALID = ap_const_logic_0;
    }
}

void store_bias::thread_m_axi_bias_AWADDR() {
    m_axi_bias_AWADDR = ap_const_lv32_0;
}

void store_bias::thread_m_axi_bias_AWBURST() {
    m_axi_bias_AWBURST = ap_const_lv2_0;
}

void store_bias::thread_m_axi_bias_AWCACHE() {
    m_axi_bias_AWCACHE = ap_const_lv4_0;
}

void store_bias::thread_m_axi_bias_AWID() {
    m_axi_bias_AWID = ap_const_lv1_0;
}

void store_bias::thread_m_axi_bias_AWLEN() {
    m_axi_bias_AWLEN = ap_const_lv32_0;
}

void store_bias::thread_m_axi_bias_AWLOCK() {
    m_axi_bias_AWLOCK = ap_const_lv2_0;
}

void store_bias::thread_m_axi_bias_AWPROT() {
    m_axi_bias_AWPROT = ap_const_lv3_0;
}

void store_bias::thread_m_axi_bias_AWQOS() {
    m_axi_bias_AWQOS = ap_const_lv4_0;
}

void store_bias::thread_m_axi_bias_AWREGION() {
    m_axi_bias_AWREGION = ap_const_lv4_0;
}

void store_bias::thread_m_axi_bias_AWSIZE() {
    m_axi_bias_AWSIZE = ap_const_lv3_0;
}

void store_bias::thread_m_axi_bias_AWUSER() {
    m_axi_bias_AWUSER = ap_const_lv1_0;
}

void store_bias::thread_m_axi_bias_AWVALID() {
    m_axi_bias_AWVALID = ap_const_logic_0;
}

void store_bias::thread_m_axi_bias_BREADY() {
    m_axi_bias_BREADY = ap_const_logic_0;
}

void store_bias::thread_m_axi_bias_RREADY() {
    if ((!(esl_seteq<1,1,1>(exitcond_fu_94_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(m_axi_bias_RVALID.read(), ap_const_logic_0)) && 
         esl_seteq<1,1,1>(exitcond_fu_94_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()))) {
        m_axi_bias_RREADY = ap_const_logic_1;
    } else {
        m_axi_bias_RREADY = ap_const_logic_0;
    }
}

void store_bias::thread_m_axi_bias_WDATA() {
    m_axi_bias_WDATA = ap_const_lv32_0;
}

void store_bias::thread_m_axi_bias_WID() {
    m_axi_bias_WID = ap_const_lv1_0;
}

void store_bias::thread_m_axi_bias_WLAST() {
    m_axi_bias_WLAST = ap_const_logic_0;
}

void store_bias::thread_m_axi_bias_WSTRB() {
    m_axi_bias_WSTRB = ap_const_lv4_0;
}

void store_bias::thread_m_axi_bias_WUSER() {
    m_axi_bias_WUSER = ap_const_lv1_0;
}

void store_bias::thread_m_axi_bias_WVALID() {
    m_axi_bias_WVALID = ap_const_logic_0;
}

void store_bias::thread_sext_fu_83_p1() {
    sext_fu_83_p1 = esl_zext<64,30>(bias_offset.read());
}

void store_bias::thread_tmp_fu_106_p1() {
    tmp_fu_106_p1 = esl_zext<64,3>(i_reg_71.read());
}

void store_bias::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((!(esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_sig_ioackin_m_axi_bias_ARREADY.read(), ap_const_logic_0)) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            if ((!(esl_seteq<1,1,1>(exitcond_fu_94_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(m_axi_bias_RVALID.read(), ap_const_logic_0)) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && esl_seteq<1,1,1>(exitcond_fu_94_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else if ((!(esl_seteq<1,1,1>(exitcond_fu_94_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(m_axi_bias_RVALID.read(), ap_const_logic_0)) && esl_seteq<1,1,1>(exitcond_fu_94_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()))) {
                ap_NS_fsm = ap_ST_fsm_state9;
            } else {
                ap_NS_fsm = ap_ST_fsm_state8;
            }
            break;
        case 256 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        default : 
            ap_NS_fsm = "XXXXXXXXX";
            break;
    }
}

}
