set moduleName convolution_5
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
set C_modelName {convolution_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r float 32 regular {array 400 { 1 1 } 1 1 }  }
	{ weights_0 float 32 regular {array 3000 { 1 3 } 1 1 }  }
	{ weights_1 float 32 regular {array 3000 { 1 3 } 1 1 }  }
	{ weights_2 float 32 regular {array 3000 { 1 3 } 1 1 }  }
	{ weights_3 float 32 regular {array 3000 { 1 3 } 1 1 }  }
	{ weights_4 float 32 regular {array 3000 { 1 3 } 1 1 }  }
	{ weights_5 float 32 regular {array 3000 { 1 3 } 1 1 }  }
	{ weights_6 float 32 regular {array 3000 { 1 3 } 1 1 }  }
	{ weights_7 float 32 regular {array 3000 { 1 3 } 1 1 }  }
	{ weights_8 float 32 regular {array 3000 { 1 3 } 1 1 }  }
	{ weights_9 float 32 regular {array 3000 { 1 3 } 1 1 }  }
	{ weights_10 float 32 regular {array 3000 { 1 3 } 1 1 }  }
	{ weights_11 float 32 regular {array 3000 { 1 3 } 1 1 }  }
	{ weights_12 float 32 regular {array 3000 { 1 3 } 1 1 }  }
	{ weights_13 float 32 regular {array 3000 { 1 3 } 1 1 }  }
	{ weights_14 float 32 regular {array 3000 { 1 3 } 1 1 }  }
	{ weights_15 float 32 regular {array 3000 { 1 3 } 1 1 }  }
	{ bias float 32 regular {array 120 { 1 3 } 1 1 }  }
	{ output_0_0 float 32 regular {array 120 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bias", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_0_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 67
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_r_address0 sc_out sc_lv 9 signal 0 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_r_q0 sc_in sc_lv 32 signal 0 } 
	{ input_r_address1 sc_out sc_lv 9 signal 0 } 
	{ input_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ input_r_q1 sc_in sc_lv 32 signal 0 } 
	{ weights_0_address0 sc_out sc_lv 12 signal 1 } 
	{ weights_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_0_q0 sc_in sc_lv 32 signal 1 } 
	{ weights_1_address0 sc_out sc_lv 12 signal 2 } 
	{ weights_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ weights_1_q0 sc_in sc_lv 32 signal 2 } 
	{ weights_2_address0 sc_out sc_lv 12 signal 3 } 
	{ weights_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ weights_2_q0 sc_in sc_lv 32 signal 3 } 
	{ weights_3_address0 sc_out sc_lv 12 signal 4 } 
	{ weights_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ weights_3_q0 sc_in sc_lv 32 signal 4 } 
	{ weights_4_address0 sc_out sc_lv 12 signal 5 } 
	{ weights_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ weights_4_q0 sc_in sc_lv 32 signal 5 } 
	{ weights_5_address0 sc_out sc_lv 12 signal 6 } 
	{ weights_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ weights_5_q0 sc_in sc_lv 32 signal 6 } 
	{ weights_6_address0 sc_out sc_lv 12 signal 7 } 
	{ weights_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ weights_6_q0 sc_in sc_lv 32 signal 7 } 
	{ weights_7_address0 sc_out sc_lv 12 signal 8 } 
	{ weights_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ weights_7_q0 sc_in sc_lv 32 signal 8 } 
	{ weights_8_address0 sc_out sc_lv 12 signal 9 } 
	{ weights_8_ce0 sc_out sc_logic 1 signal 9 } 
	{ weights_8_q0 sc_in sc_lv 32 signal 9 } 
	{ weights_9_address0 sc_out sc_lv 12 signal 10 } 
	{ weights_9_ce0 sc_out sc_logic 1 signal 10 } 
	{ weights_9_q0 sc_in sc_lv 32 signal 10 } 
	{ weights_10_address0 sc_out sc_lv 12 signal 11 } 
	{ weights_10_ce0 sc_out sc_logic 1 signal 11 } 
	{ weights_10_q0 sc_in sc_lv 32 signal 11 } 
	{ weights_11_address0 sc_out sc_lv 12 signal 12 } 
	{ weights_11_ce0 sc_out sc_logic 1 signal 12 } 
	{ weights_11_q0 sc_in sc_lv 32 signal 12 } 
	{ weights_12_address0 sc_out sc_lv 12 signal 13 } 
	{ weights_12_ce0 sc_out sc_logic 1 signal 13 } 
	{ weights_12_q0 sc_in sc_lv 32 signal 13 } 
	{ weights_13_address0 sc_out sc_lv 12 signal 14 } 
	{ weights_13_ce0 sc_out sc_logic 1 signal 14 } 
	{ weights_13_q0 sc_in sc_lv 32 signal 14 } 
	{ weights_14_address0 sc_out sc_lv 12 signal 15 } 
	{ weights_14_ce0 sc_out sc_logic 1 signal 15 } 
	{ weights_14_q0 sc_in sc_lv 32 signal 15 } 
	{ weights_15_address0 sc_out sc_lv 12 signal 16 } 
	{ weights_15_ce0 sc_out sc_logic 1 signal 16 } 
	{ weights_15_q0 sc_in sc_lv 32 signal 16 } 
	{ bias_address0 sc_out sc_lv 7 signal 17 } 
	{ bias_ce0 sc_out sc_logic 1 signal 17 } 
	{ bias_q0 sc_in sc_lv 32 signal 17 } 
	{ output_0_0_address0 sc_out sc_lv 7 signal 18 } 
	{ output_0_0_ce0 sc_out sc_logic 1 signal 18 } 
	{ output_0_0_we0 sc_out sc_logic 1 signal 18 } 
	{ output_0_0_d0 sc_out sc_lv 32 signal 18 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "input_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_r", "role": "address1" }} , 
 	{ "name": "input_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce1" }} , 
 	{ "name": "input_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "q1" }} , 
 	{ "name": "weights_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights_0", "role": "address0" }} , 
 	{ "name": "weights_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_0", "role": "ce0" }} , 
 	{ "name": "weights_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_0", "role": "q0" }} , 
 	{ "name": "weights_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights_1", "role": "address0" }} , 
 	{ "name": "weights_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_1", "role": "ce0" }} , 
 	{ "name": "weights_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_1", "role": "q0" }} , 
 	{ "name": "weights_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights_2", "role": "address0" }} , 
 	{ "name": "weights_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_2", "role": "ce0" }} , 
 	{ "name": "weights_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_2", "role": "q0" }} , 
 	{ "name": "weights_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights_3", "role": "address0" }} , 
 	{ "name": "weights_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_3", "role": "ce0" }} , 
 	{ "name": "weights_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_3", "role": "q0" }} , 
 	{ "name": "weights_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights_4", "role": "address0" }} , 
 	{ "name": "weights_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_4", "role": "ce0" }} , 
 	{ "name": "weights_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_4", "role": "q0" }} , 
 	{ "name": "weights_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights_5", "role": "address0" }} , 
 	{ "name": "weights_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_5", "role": "ce0" }} , 
 	{ "name": "weights_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_5", "role": "q0" }} , 
 	{ "name": "weights_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights_6", "role": "address0" }} , 
 	{ "name": "weights_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_6", "role": "ce0" }} , 
 	{ "name": "weights_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_6", "role": "q0" }} , 
 	{ "name": "weights_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights_7", "role": "address0" }} , 
 	{ "name": "weights_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_7", "role": "ce0" }} , 
 	{ "name": "weights_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_7", "role": "q0" }} , 
 	{ "name": "weights_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights_8", "role": "address0" }} , 
 	{ "name": "weights_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_8", "role": "ce0" }} , 
 	{ "name": "weights_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_8", "role": "q0" }} , 
 	{ "name": "weights_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights_9", "role": "address0" }} , 
 	{ "name": "weights_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_9", "role": "ce0" }} , 
 	{ "name": "weights_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_9", "role": "q0" }} , 
 	{ "name": "weights_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights_10", "role": "address0" }} , 
 	{ "name": "weights_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_10", "role": "ce0" }} , 
 	{ "name": "weights_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_10", "role": "q0" }} , 
 	{ "name": "weights_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights_11", "role": "address0" }} , 
 	{ "name": "weights_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_11", "role": "ce0" }} , 
 	{ "name": "weights_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_11", "role": "q0" }} , 
 	{ "name": "weights_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights_12", "role": "address0" }} , 
 	{ "name": "weights_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_12", "role": "ce0" }} , 
 	{ "name": "weights_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_12", "role": "q0" }} , 
 	{ "name": "weights_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights_13", "role": "address0" }} , 
 	{ "name": "weights_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_13", "role": "ce0" }} , 
 	{ "name": "weights_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_13", "role": "q0" }} , 
 	{ "name": "weights_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights_14", "role": "address0" }} , 
 	{ "name": "weights_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_14", "role": "ce0" }} , 
 	{ "name": "weights_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_14", "role": "q0" }} , 
 	{ "name": "weights_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights_15", "role": "address0" }} , 
 	{ "name": "weights_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_15", "role": "ce0" }} , 
 	{ "name": "weights_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_15", "role": "q0" }} , 
 	{ "name": "bias_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bias", "role": "address0" }} , 
 	{ "name": "bias_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "ce0" }} , 
 	{ "name": "bias_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bias", "role": "q0" }} , 
 	{ "name": "output_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "output_0_0", "role": "address0" }} , 
 	{ "name": "output_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0_0", "role": "ce0" }} , 
 	{ "name": "output_0_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0_0", "role": "we0" }} , 
 	{ "name": "output_0_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_0_0", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "convolution_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58441", "EstimateLatencyMax" : "295441",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_0_0", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_fadd_32ns_3bkb_U59", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_fadd_32ns_3bkb_U60", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_fmul_32ns_3cud_U61", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_fmul_32ns_3cud_U62", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convolution_5 {
		input_r {Type I LastRead 11 FirstWrite -1}
		weights_0 {Type I LastRead 3 FirstWrite -1}
		weights_1 {Type I LastRead 3 FirstWrite -1}
		weights_2 {Type I LastRead 4 FirstWrite -1}
		weights_3 {Type I LastRead 4 FirstWrite -1}
		weights_4 {Type I LastRead 5 FirstWrite -1}
		weights_5 {Type I LastRead 5 FirstWrite -1}
		weights_6 {Type I LastRead 6 FirstWrite -1}
		weights_7 {Type I LastRead 6 FirstWrite -1}
		weights_8 {Type I LastRead 7 FirstWrite -1}
		weights_9 {Type I LastRead 7 FirstWrite -1}
		weights_10 {Type I LastRead 8 FirstWrite -1}
		weights_11 {Type I LastRead 8 FirstWrite -1}
		weights_12 {Type I LastRead 9 FirstWrite -1}
		weights_13 {Type I LastRead 9 FirstWrite -1}
		weights_14 {Type I LastRead 10 FirstWrite -1}
		weights_15 {Type I LastRead 10 FirstWrite -1}
		bias {Type I LastRead 93 FirstWrite -1}
		output_0_0 {Type O LastRead -1 FirstWrite 100}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "58441", "Max" : "295441"}
	, {"Name" : "Interval", "Min" : "58441", "Max" : "295441"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_r { ap_memory {  { input_r_address0 mem_address 1 9 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 32 }  { input_r_address1 mem_address 1 9 }  { input_r_ce1 mem_ce 1 1 }  { input_r_q1 mem_dout 0 32 } } }
	weights_0 { ap_memory {  { weights_0_address0 mem_address 1 12 }  { weights_0_ce0 mem_ce 1 1 }  { weights_0_q0 mem_dout 0 32 } } }
	weights_1 { ap_memory {  { weights_1_address0 mem_address 1 12 }  { weights_1_ce0 mem_ce 1 1 }  { weights_1_q0 mem_dout 0 32 } } }
	weights_2 { ap_memory {  { weights_2_address0 mem_address 1 12 }  { weights_2_ce0 mem_ce 1 1 }  { weights_2_q0 mem_dout 0 32 } } }
	weights_3 { ap_memory {  { weights_3_address0 mem_address 1 12 }  { weights_3_ce0 mem_ce 1 1 }  { weights_3_q0 mem_dout 0 32 } } }
	weights_4 { ap_memory {  { weights_4_address0 mem_address 1 12 }  { weights_4_ce0 mem_ce 1 1 }  { weights_4_q0 mem_dout 0 32 } } }
	weights_5 { ap_memory {  { weights_5_address0 mem_address 1 12 }  { weights_5_ce0 mem_ce 1 1 }  { weights_5_q0 mem_dout 0 32 } } }
	weights_6 { ap_memory {  { weights_6_address0 mem_address 1 12 }  { weights_6_ce0 mem_ce 1 1 }  { weights_6_q0 mem_dout 0 32 } } }
	weights_7 { ap_memory {  { weights_7_address0 mem_address 1 12 }  { weights_7_ce0 mem_ce 1 1 }  { weights_7_q0 mem_dout 0 32 } } }
	weights_8 { ap_memory {  { weights_8_address0 mem_address 1 12 }  { weights_8_ce0 mem_ce 1 1 }  { weights_8_q0 mem_dout 0 32 } } }
	weights_9 { ap_memory {  { weights_9_address0 mem_address 1 12 }  { weights_9_ce0 mem_ce 1 1 }  { weights_9_q0 mem_dout 0 32 } } }
	weights_10 { ap_memory {  { weights_10_address0 mem_address 1 12 }  { weights_10_ce0 mem_ce 1 1 }  { weights_10_q0 mem_dout 0 32 } } }
	weights_11 { ap_memory {  { weights_11_address0 mem_address 1 12 }  { weights_11_ce0 mem_ce 1 1 }  { weights_11_q0 mem_dout 0 32 } } }
	weights_12 { ap_memory {  { weights_12_address0 mem_address 1 12 }  { weights_12_ce0 mem_ce 1 1 }  { weights_12_q0 mem_dout 0 32 } } }
	weights_13 { ap_memory {  { weights_13_address0 mem_address 1 12 }  { weights_13_ce0 mem_ce 1 1 }  { weights_13_q0 mem_dout 0 32 } } }
	weights_14 { ap_memory {  { weights_14_address0 mem_address 1 12 }  { weights_14_ce0 mem_ce 1 1 }  { weights_14_q0 mem_dout 0 32 } } }
	weights_15 { ap_memory {  { weights_15_address0 mem_address 1 12 }  { weights_15_ce0 mem_ce 1 1 }  { weights_15_q0 mem_dout 0 32 } } }
	bias { ap_memory {  { bias_address0 mem_address 1 7 }  { bias_ce0 mem_ce 1 1 }  { bias_q0 mem_dout 0 32 } } }
	output_0_0 { ap_memory {  { output_0_0_address0 mem_address 1 7 }  { output_0_0_ce0 mem_ce 1 1 }  { output_0_0_we0 mem_we 1 1 }  { output_0_0_d0 mem_din 1 32 } } }
}
