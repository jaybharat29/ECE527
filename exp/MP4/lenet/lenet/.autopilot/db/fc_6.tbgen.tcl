set moduleName fc_6
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {fc_6}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_0_0 float 32 regular {array 120 { 1 3 } 1 1 }  }
	{ weights float 32 regular {axi_master 0}  }
	{ weights_offset int 30 regular  }
	{ bias float 32 regular {axi_master 0}  }
	{ bias_offset int 30 regular  }
	{ output_r float 32 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_0_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_offset", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "bias", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bias_offset", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 105
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0_0_address0 sc_out sc_lv 7 signal 0 } 
	{ input_0_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_0_0_q0 sc_in sc_lv 32 signal 0 } 
	{ m_axi_weights_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_weights_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_weights_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_weights_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_weights_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_weights_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_weights_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_weights_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_weights_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_weights_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_weights_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_weights_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_weights_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_weights_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_weights_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_weights_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_weights_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_weights_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_weights_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_weights_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_weights_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_weights_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_weights_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_weights_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_weights_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_weights_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_weights_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_weights_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_weights_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_weights_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_weights_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_weights_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_weights_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_weights_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_weights_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_weights_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_weights_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_weights_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_weights_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_weights_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_weights_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_weights_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_weights_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_weights_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_weights_BUSER sc_in sc_lv 1 signal 1 } 
	{ weights_offset sc_in sc_lv 30 signal 2 } 
	{ m_axi_bias_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bias_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bias_AWADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_bias_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bias_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bias_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bias_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bias_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bias_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bias_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bias_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bias_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bias_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bias_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bias_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bias_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_bias_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_bias_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_bias_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bias_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bias_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bias_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bias_ARADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_bias_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bias_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bias_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bias_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bias_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bias_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bias_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bias_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bias_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bias_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bias_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bias_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bias_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_bias_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_bias_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bias_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_bias_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bias_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bias_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bias_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bias_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bias_BUSER sc_in sc_lv 1 signal 3 } 
	{ bias_offset sc_in sc_lv 30 signal 4 } 
	{ output_r_address0 sc_out sc_lv 4 signal 5 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 5 } 
	{ output_r_we0 sc_out sc_logic 1 signal 5 } 
	{ output_r_d0 sc_out sc_lv 32 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_0_0", "role": "address0" }} , 
 	{ "name": "input_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0_0", "role": "ce0" }} , 
 	{ "name": "input_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_0_0", "role": "q0" }} , 
 	{ "name": "m_axi_weights_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "AWVALID" }} , 
 	{ "name": "m_axi_weights_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "AWREADY" }} , 
 	{ "name": "m_axi_weights_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "AWADDR" }} , 
 	{ "name": "m_axi_weights_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "AWID" }} , 
 	{ "name": "m_axi_weights_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "AWLEN" }} , 
 	{ "name": "m_axi_weights_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weights", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_weights_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weights", "role": "AWBURST" }} , 
 	{ "name": "m_axi_weights_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weights", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_weights_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_weights_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weights", "role": "AWPROT" }} , 
 	{ "name": "m_axi_weights_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights", "role": "AWQOS" }} , 
 	{ "name": "m_axi_weights_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights", "role": "AWREGION" }} , 
 	{ "name": "m_axi_weights_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "AWUSER" }} , 
 	{ "name": "m_axi_weights_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "WVALID" }} , 
 	{ "name": "m_axi_weights_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "WREADY" }} , 
 	{ "name": "m_axi_weights_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "WDATA" }} , 
 	{ "name": "m_axi_weights_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights", "role": "WSTRB" }} , 
 	{ "name": "m_axi_weights_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "WLAST" }} , 
 	{ "name": "m_axi_weights_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "WID" }} , 
 	{ "name": "m_axi_weights_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "WUSER" }} , 
 	{ "name": "m_axi_weights_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ARVALID" }} , 
 	{ "name": "m_axi_weights_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ARREADY" }} , 
 	{ "name": "m_axi_weights_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "ARADDR" }} , 
 	{ "name": "m_axi_weights_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ARID" }} , 
 	{ "name": "m_axi_weights_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "ARLEN" }} , 
 	{ "name": "m_axi_weights_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weights", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_weights_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weights", "role": "ARBURST" }} , 
 	{ "name": "m_axi_weights_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weights", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_weights_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_weights_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weights", "role": "ARPROT" }} , 
 	{ "name": "m_axi_weights_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights", "role": "ARQOS" }} , 
 	{ "name": "m_axi_weights_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights", "role": "ARREGION" }} , 
 	{ "name": "m_axi_weights_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ARUSER" }} , 
 	{ "name": "m_axi_weights_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "RVALID" }} , 
 	{ "name": "m_axi_weights_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "RREADY" }} , 
 	{ "name": "m_axi_weights_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "RDATA" }} , 
 	{ "name": "m_axi_weights_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "RLAST" }} , 
 	{ "name": "m_axi_weights_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "RID" }} , 
 	{ "name": "m_axi_weights_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "RUSER" }} , 
 	{ "name": "m_axi_weights_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weights", "role": "RRESP" }} , 
 	{ "name": "m_axi_weights_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "BVALID" }} , 
 	{ "name": "m_axi_weights_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "BREADY" }} , 
 	{ "name": "m_axi_weights_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weights", "role": "BRESP" }} , 
 	{ "name": "m_axi_weights_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "BID" }} , 
 	{ "name": "m_axi_weights_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "BUSER" }} , 
 	{ "name": "weights_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "weights_offset", "role": "default" }} , 
 	{ "name": "m_axi_bias_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bias_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bias_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bias", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bias_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "AWID" }} , 
 	{ "name": "m_axi_bias_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bias", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bias_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bias", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bias_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bias", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bias_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bias", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bias_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bias", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bias_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bias", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bias_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bias", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bias_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bias", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bias_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bias_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "WVALID" }} , 
 	{ "name": "m_axi_bias_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "WREADY" }} , 
 	{ "name": "m_axi_bias_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bias", "role": "WDATA" }} , 
 	{ "name": "m_axi_bias_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bias", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bias_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "WLAST" }} , 
 	{ "name": "m_axi_bias_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "WID" }} , 
 	{ "name": "m_axi_bias_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "WUSER" }} , 
 	{ "name": "m_axi_bias_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bias_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bias_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bias", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bias_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "ARID" }} , 
 	{ "name": "m_axi_bias_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bias", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bias_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bias", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bias_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bias", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bias_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bias", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bias_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bias", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bias_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bias", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bias_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bias", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bias_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bias", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bias_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bias_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "RVALID" }} , 
 	{ "name": "m_axi_bias_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "RREADY" }} , 
 	{ "name": "m_axi_bias_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bias", "role": "RDATA" }} , 
 	{ "name": "m_axi_bias_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "RLAST" }} , 
 	{ "name": "m_axi_bias_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "RID" }} , 
 	{ "name": "m_axi_bias_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "RUSER" }} , 
 	{ "name": "m_axi_bias_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bias", "role": "RRESP" }} , 
 	{ "name": "m_axi_bias_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "BVALID" }} , 
 	{ "name": "m_axi_bias_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "BREADY" }} , 
 	{ "name": "m_axi_bias_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bias", "role": "BRESP" }} , 
 	{ "name": "m_axi_bias_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "BID" }} , 
 	{ "name": "m_axi_bias_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "BUSER" }} , 
 	{ "name": "bias_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "bias_offset", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "fc_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13356", "EstimateLatencyMax" : "13356",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "weights_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "weights_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "weights_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bias_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bias_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "bias_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_fadd_32ns_3bkb_U64", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_fmul_32ns_3cud_U65", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fc_6 {
		input_0_0 {Type I LastRead 142 FirstWrite -1}
		weights {Type I LastRead 143 FirstWrite -1}
		weights_offset {Type I LastRead 0 FirstWrite -1}
		bias {Type I LastRead 150 FirstWrite -1}
		bias_offset {Type I LastRead 6 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 21}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13356", "Max" : "13356"}
	, {"Name" : "Interval", "Min" : "13356", "Max" : "13356"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_0_0 { ap_memory {  { input_0_0_address0 mem_address 1 7 }  { input_0_0_ce0 mem_ce 1 1 }  { input_0_0_q0 mem_dout 0 32 } } }
	weights { m_axi {  { m_axi_weights_AWVALID VALID 1 1 }  { m_axi_weights_AWREADY READY 0 1 }  { m_axi_weights_AWADDR ADDR 1 32 }  { m_axi_weights_AWID ID 1 1 }  { m_axi_weights_AWLEN LEN 1 32 }  { m_axi_weights_AWSIZE SIZE 1 3 }  { m_axi_weights_AWBURST BURST 1 2 }  { m_axi_weights_AWLOCK LOCK 1 2 }  { m_axi_weights_AWCACHE CACHE 1 4 }  { m_axi_weights_AWPROT PROT 1 3 }  { m_axi_weights_AWQOS QOS 1 4 }  { m_axi_weights_AWREGION REGION 1 4 }  { m_axi_weights_AWUSER USER 1 1 }  { m_axi_weights_WVALID VALID 1 1 }  { m_axi_weights_WREADY READY 0 1 }  { m_axi_weights_WDATA DATA 1 32 }  { m_axi_weights_WSTRB STRB 1 4 }  { m_axi_weights_WLAST LAST 1 1 }  { m_axi_weights_WID ID 1 1 }  { m_axi_weights_WUSER USER 1 1 }  { m_axi_weights_ARVALID VALID 1 1 }  { m_axi_weights_ARREADY READY 0 1 }  { m_axi_weights_ARADDR ADDR 1 32 }  { m_axi_weights_ARID ID 1 1 }  { m_axi_weights_ARLEN LEN 1 32 }  { m_axi_weights_ARSIZE SIZE 1 3 }  { m_axi_weights_ARBURST BURST 1 2 }  { m_axi_weights_ARLOCK LOCK 1 2 }  { m_axi_weights_ARCACHE CACHE 1 4 }  { m_axi_weights_ARPROT PROT 1 3 }  { m_axi_weights_ARQOS QOS 1 4 }  { m_axi_weights_ARREGION REGION 1 4 }  { m_axi_weights_ARUSER USER 1 1 }  { m_axi_weights_RVALID VALID 0 1 }  { m_axi_weights_RREADY READY 1 1 }  { m_axi_weights_RDATA DATA 0 32 }  { m_axi_weights_RLAST LAST 0 1 }  { m_axi_weights_RID ID 0 1 }  { m_axi_weights_RUSER USER 0 1 }  { m_axi_weights_RRESP RESP 0 2 }  { m_axi_weights_BVALID VALID 0 1 }  { m_axi_weights_BREADY READY 1 1 }  { m_axi_weights_BRESP RESP 0 2 }  { m_axi_weights_BID ID 0 1 }  { m_axi_weights_BUSER USER 0 1 } } }
	weights_offset { ap_none {  { weights_offset in_data 0 30 } } }
	bias { m_axi {  { m_axi_bias_AWVALID VALID 1 1 }  { m_axi_bias_AWREADY READY 0 1 }  { m_axi_bias_AWADDR ADDR 1 32 }  { m_axi_bias_AWID ID 1 1 }  { m_axi_bias_AWLEN LEN 1 32 }  { m_axi_bias_AWSIZE SIZE 1 3 }  { m_axi_bias_AWBURST BURST 1 2 }  { m_axi_bias_AWLOCK LOCK 1 2 }  { m_axi_bias_AWCACHE CACHE 1 4 }  { m_axi_bias_AWPROT PROT 1 3 }  { m_axi_bias_AWQOS QOS 1 4 }  { m_axi_bias_AWREGION REGION 1 4 }  { m_axi_bias_AWUSER USER 1 1 }  { m_axi_bias_WVALID VALID 1 1 }  { m_axi_bias_WREADY READY 0 1 }  { m_axi_bias_WDATA DATA 1 32 }  { m_axi_bias_WSTRB STRB 1 4 }  { m_axi_bias_WLAST LAST 1 1 }  { m_axi_bias_WID ID 1 1 }  { m_axi_bias_WUSER USER 1 1 }  { m_axi_bias_ARVALID VALID 1 1 }  { m_axi_bias_ARREADY READY 0 1 }  { m_axi_bias_ARADDR ADDR 1 32 }  { m_axi_bias_ARID ID 1 1 }  { m_axi_bias_ARLEN LEN 1 32 }  { m_axi_bias_ARSIZE SIZE 1 3 }  { m_axi_bias_ARBURST BURST 1 2 }  { m_axi_bias_ARLOCK LOCK 1 2 }  { m_axi_bias_ARCACHE CACHE 1 4 }  { m_axi_bias_ARPROT PROT 1 3 }  { m_axi_bias_ARQOS QOS 1 4 }  { m_axi_bias_ARREGION REGION 1 4 }  { m_axi_bias_ARUSER USER 1 1 }  { m_axi_bias_RVALID VALID 0 1 }  { m_axi_bias_RREADY READY 1 1 }  { m_axi_bias_RDATA DATA 0 32 }  { m_axi_bias_RLAST LAST 0 1 }  { m_axi_bias_RID ID 0 1 }  { m_axi_bias_RUSER USER 0 1 }  { m_axi_bias_RRESP RESP 0 2 }  { m_axi_bias_BVALID VALID 0 1 }  { m_axi_bias_BREADY READY 1 1 }  { m_axi_bias_BRESP RESP 0 2 }  { m_axi_bias_BID ID 0 1 }  { m_axi_bias_BUSER USER 0 1 } } }
	bias_offset { ap_none {  { bias_offset in_data 0 30 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 4 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 32 } } }
}
