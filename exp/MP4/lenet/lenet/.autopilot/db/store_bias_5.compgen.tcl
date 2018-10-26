# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 21 \
    name bias_oc \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bias_oc \
    op interface \
    ports { bias_oc_address0 { O 7 vector } bias_oc_ce0 { O 1 bit } bias_oc_we0 { O 1 bit } bias_oc_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_oc'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name bias \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias \
    op interface \
    ports { m_axi_bias_AWVALID { O 1 bit } m_axi_bias_AWREADY { I 1 bit } m_axi_bias_AWADDR { O 32 vector } m_axi_bias_AWID { O 1 vector } m_axi_bias_AWLEN { O 32 vector } m_axi_bias_AWSIZE { O 3 vector } m_axi_bias_AWBURST { O 2 vector } m_axi_bias_AWLOCK { O 2 vector } m_axi_bias_AWCACHE { O 4 vector } m_axi_bias_AWPROT { O 3 vector } m_axi_bias_AWQOS { O 4 vector } m_axi_bias_AWREGION { O 4 vector } m_axi_bias_AWUSER { O 1 vector } m_axi_bias_WVALID { O 1 bit } m_axi_bias_WREADY { I 1 bit } m_axi_bias_WDATA { O 32 vector } m_axi_bias_WSTRB { O 4 vector } m_axi_bias_WLAST { O 1 bit } m_axi_bias_WID { O 1 vector } m_axi_bias_WUSER { O 1 vector } m_axi_bias_ARVALID { O 1 bit } m_axi_bias_ARREADY { I 1 bit } m_axi_bias_ARADDR { O 32 vector } m_axi_bias_ARID { O 1 vector } m_axi_bias_ARLEN { O 32 vector } m_axi_bias_ARSIZE { O 3 vector } m_axi_bias_ARBURST { O 2 vector } m_axi_bias_ARLOCK { O 2 vector } m_axi_bias_ARCACHE { O 4 vector } m_axi_bias_ARPROT { O 3 vector } m_axi_bias_ARQOS { O 4 vector } m_axi_bias_ARREGION { O 4 vector } m_axi_bias_ARUSER { O 1 vector } m_axi_bias_RVALID { I 1 bit } m_axi_bias_RREADY { O 1 bit } m_axi_bias_RDATA { I 32 vector } m_axi_bias_RLAST { I 1 bit } m_axi_bias_RID { I 1 vector } m_axi_bias_RUSER { I 1 vector } m_axi_bias_RRESP { I 2 vector } m_axi_bias_BVALID { I 1 bit } m_axi_bias_BREADY { O 1 bit } m_axi_bias_BRESP { I 2 vector } m_axi_bias_BID { I 1 vector } m_axi_bias_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name bias_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_offset \
    op interface \
    ports { bias_offset { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


