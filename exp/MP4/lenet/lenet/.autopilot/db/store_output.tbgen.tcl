set moduleName store_output
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
set C_modelName {store_output}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_r float 32 regular {axi_master 1}  }
	{ output_offset int 30 regular  }
	{ output_oc float 32 regular {array 1176 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_r", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_offset", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "output_oc", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 55
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_output_r_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_output_r_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_output_r_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_output_r_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_output_r_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_output_r_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_output_r_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_output_r_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_output_r_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_output_r_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_output_r_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_output_r_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_output_r_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_output_r_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_output_r_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_output_r_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_output_r_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_output_r_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_output_r_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_output_r_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_output_r_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_output_r_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_output_r_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_output_r_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_output_r_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_output_r_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_output_r_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_output_r_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_output_r_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_output_r_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_output_r_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_output_r_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_output_r_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_output_r_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_output_r_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_output_r_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_output_r_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_output_r_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_output_r_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_output_r_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_output_r_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_output_r_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_output_r_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_output_r_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_output_r_BUSER sc_in sc_lv 1 signal 0 } 
	{ output_offset sc_in sc_lv 30 signal 1 } 
	{ output_oc_address0 sc_out sc_lv 11 signal 2 } 
	{ output_oc_ce0 sc_out sc_logic 1 signal 2 } 
	{ output_oc_q0 sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_output_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_output_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_output_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_output_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "AWID" }} , 
 	{ "name": "m_axi_output_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_r", "role": "AWLEN" }} , 
 	{ "name": "m_axi_output_r_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output_r", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_output_r_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_r", "role": "AWBURST" }} , 
 	{ "name": "m_axi_output_r_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_r", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_output_r_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_r", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_output_r_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output_r", "role": "AWPROT" }} , 
 	{ "name": "m_axi_output_r_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_r", "role": "AWQOS" }} , 
 	{ "name": "m_axi_output_r_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_r", "role": "AWREGION" }} , 
 	{ "name": "m_axi_output_r_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "AWUSER" }} , 
 	{ "name": "m_axi_output_r_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "WVALID" }} , 
 	{ "name": "m_axi_output_r_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "WREADY" }} , 
 	{ "name": "m_axi_output_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_output_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_output_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_output_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "WID" }} , 
 	{ "name": "m_axi_output_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_output_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_output_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_output_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_output_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ARID" }} , 
 	{ "name": "m_axi_output_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_r", "role": "ARLEN" }} , 
 	{ "name": "m_axi_output_r_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output_r", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_output_r_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_r", "role": "ARBURST" }} , 
 	{ "name": "m_axi_output_r_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_r", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_output_r_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_r", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_output_r_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output_r", "role": "ARPROT" }} , 
 	{ "name": "m_axi_output_r_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_r", "role": "ARQOS" }} , 
 	{ "name": "m_axi_output_r_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_r", "role": "ARREGION" }} , 
 	{ "name": "m_axi_output_r_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ARUSER" }} , 
 	{ "name": "m_axi_output_r_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "RVALID" }} , 
 	{ "name": "m_axi_output_r_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "RREADY" }} , 
 	{ "name": "m_axi_output_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_output_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_output_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "RID" }} , 
 	{ "name": "m_axi_output_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_output_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_output_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_output_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_output_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_output_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "BID" }} , 
 	{ "name": "m_axi_output_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "BUSER" }} , 
 	{ "name": "output_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "output_offset", "role": "default" }} , 
 	{ "name": "output_oc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_oc", "role": "address0" }} , 
 	{ "name": "output_oc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_oc", "role": "ce0" }} , 
 	{ "name": "output_oc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_oc", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "store_output",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4129", "EstimateLatencyMax" : "4129",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_r_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "output_r_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "output_r_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_oc", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	store_output {
		output_r {Type O LastRead 4 FirstWrite 6}
		output_offset {Type I LastRead 0 FirstWrite -1}
		output_oc {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4129", "Max" : "4129"}
	, {"Name" : "Interval", "Min" : "4129", "Max" : "4129"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_r { m_axi {  { m_axi_output_r_AWVALID VALID 1 1 }  { m_axi_output_r_AWREADY READY 0 1 }  { m_axi_output_r_AWADDR ADDR 1 32 }  { m_axi_output_r_AWID ID 1 1 }  { m_axi_output_r_AWLEN LEN 1 32 }  { m_axi_output_r_AWSIZE SIZE 1 3 }  { m_axi_output_r_AWBURST BURST 1 2 }  { m_axi_output_r_AWLOCK LOCK 1 2 }  { m_axi_output_r_AWCACHE CACHE 1 4 }  { m_axi_output_r_AWPROT PROT 1 3 }  { m_axi_output_r_AWQOS QOS 1 4 }  { m_axi_output_r_AWREGION REGION 1 4 }  { m_axi_output_r_AWUSER USER 1 1 }  { m_axi_output_r_WVALID VALID 1 1 }  { m_axi_output_r_WREADY READY 0 1 }  { m_axi_output_r_WDATA DATA 1 32 }  { m_axi_output_r_WSTRB STRB 1 4 }  { m_axi_output_r_WLAST LAST 1 1 }  { m_axi_output_r_WID ID 1 1 }  { m_axi_output_r_WUSER USER 1 1 }  { m_axi_output_r_ARVALID VALID 1 1 }  { m_axi_output_r_ARREADY READY 0 1 }  { m_axi_output_r_ARADDR ADDR 1 32 }  { m_axi_output_r_ARID ID 1 1 }  { m_axi_output_r_ARLEN LEN 1 32 }  { m_axi_output_r_ARSIZE SIZE 1 3 }  { m_axi_output_r_ARBURST BURST 1 2 }  { m_axi_output_r_ARLOCK LOCK 1 2 }  { m_axi_output_r_ARCACHE CACHE 1 4 }  { m_axi_output_r_ARPROT PROT 1 3 }  { m_axi_output_r_ARQOS QOS 1 4 }  { m_axi_output_r_ARREGION REGION 1 4 }  { m_axi_output_r_ARUSER USER 1 1 }  { m_axi_output_r_RVALID VALID 0 1 }  { m_axi_output_r_RREADY READY 1 1 }  { m_axi_output_r_RDATA DATA 0 32 }  { m_axi_output_r_RLAST LAST 0 1 }  { m_axi_output_r_RID ID 0 1 }  { m_axi_output_r_RUSER USER 0 1 }  { m_axi_output_r_RRESP RESP 0 2 }  { m_axi_output_r_BVALID VALID 0 1 }  { m_axi_output_r_BREADY READY 1 1 }  { m_axi_output_r_BRESP RESP 0 2 }  { m_axi_output_r_BID ID 0 1 }  { m_axi_output_r_BUSER USER 0 1 } } }
	output_offset { ap_none {  { output_offset in_data 0 30 } } }
	output_oc { ap_memory {  { output_oc_address0 mem_address 1 11 }  { output_oc_ce0 mem_ce 1 1 }  { output_oc_q0 mem_dout 0 32 } } }
}
