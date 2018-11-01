set C_TypeInfoList {{ 
"conv1" : [[], {"return": [[], {"scalar": "int"}] }, [{"ExternC" : 0}], [ {"input": [[], {"array": [ {"array": [ {"scalar": "float"}, [32,32]]}, [1]]}] }, {"weights": [[], {"array": [ {"array": [ {"scalar": "float"}, [1,5,5]]}, [6]]}] }, {"weights_3": [[], {"array": [ {"array": [ {"scalar": "float"}, [6,5,5]]}, [16]]}] }, {"weights_5": [[], {"array": [ {"array": [ {"scalar": "float"}, [16,5,5]]}, [120]]}] }, {"weights_6": [[], {"array": [ {"array": [ {"scalar": "float"}, [120,1,1]]}, [10]]}] }, {"bias": [[], {"array": [ {"scalar": "float"}, [6]]}] }, {"bias_3": [[], {"array": [ {"scalar": "float"}, [16]]}] }, {"bias_5": [[], {"array": [ {"scalar": "float"}, [120]]}] }, {"bias_6": [[], {"array": [ {"scalar": "float"}, [10]]}] }, {"output": [[], {"array": [ {"scalar": "float"}, [10]]}] }],[],""]
}}
set moduleName conv1
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
set C_modelName {conv1}
set C_modelType { int 32 }
set C_modelArgList {
	{ DATA_INPUT float 32 regular {axi_master 0}  }
	{ DATA_WEIGHT float 32 regular {axi_master 0}  }
	{ DATA_BIAS float 32 regular {axi_master 0}  }
	{ DATA_OUTPUT float 32 regular {axi_master 1}  }
	{ input_r int 32 regular {axi_slave 0}  }
	{ weights int 32 regular {axi_slave 0}  }
	{ weights_3 int 32 regular {axi_slave 0}  }
	{ weights_5 int 32 regular {axi_slave 0}  }
	{ weights_6 int 32 regular {axi_slave 0}  }
	{ bias int 32 regular {axi_slave 0}  }
	{ bias_3 int 32 regular {axi_slave 0}  }
	{ bias_5 int 32 regular {axi_slave 0}  }
	{ bias_6 int 32 regular {axi_slave 0}  }
	{ output_r int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "DATA_INPUT", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "input","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "input_r","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 31,"step" : 1},{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "DATA_WEIGHT", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weights","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "weights","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 5,"step" : 1},{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]},{"cName": "weights_3","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "weights_3","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 15,"step" : 1},{"low" : 0,"up" : 5,"step" : 1},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]},{"cName": "weights_5","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "weights_5","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 119,"step" : 1},{"low" : 0,"up" : 15,"step" : 1},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]},{"cName": "weights_6","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "weights_6","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 0,"up" : 119,"step" : 1},{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "DATA_BIAS", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bias","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "bias","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 5,"step" : 1}]},{"cName": "bias_3","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "bias_3","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 15,"step" : 1}]},{"cName": "bias_5","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "bias_5","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 119,"step" : 1}]},{"cName": "bias_6","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "bias_6","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "DATA_OUTPUT", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "output","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "output_r","bundle": "AXILiteS"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "input_r", "interface" : "axi_slave", "bundle":"CTL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "weights", "interface" : "axi_slave", "bundle":"CTL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "weights_3", "interface" : "axi_slave", "bundle":"CTL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "weights_5", "interface" : "axi_slave", "bundle":"CTL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "weights_6", "interface" : "axi_slave", "bundle":"CTL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "bias", "interface" : "axi_slave", "bundle":"CTL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "bias_3", "interface" : "axi_slave", "bundle":"CTL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "bias_5", "interface" : "axi_slave", "bundle":"CTL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "bias_6", "interface" : "axi_slave", "bundle":"CTL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "output_r", "interface" : "axi_slave", "bundle":"CTL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"CTL","type":"ap_none","bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}], "offset" : {"out":16}} ]}
# RTL Port declarations: 
set portNum 200
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_DATA_INPUT_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_INPUT_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_INPUT_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_DATA_INPUT_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_INPUT_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_DATA_INPUT_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_INPUT_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_INPUT_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_INPUT_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_INPUT_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_INPUT_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_INPUT_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_INPUT_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_INPUT_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_INPUT_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_INPUT_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_DATA_INPUT_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_INPUT_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_INPUT_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_INPUT_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_INPUT_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_INPUT_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_INPUT_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_DATA_INPUT_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_INPUT_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_DATA_INPUT_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_INPUT_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_INPUT_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_INPUT_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_INPUT_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_INPUT_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_INPUT_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_INPUT_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_INPUT_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_INPUT_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_INPUT_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_DATA_INPUT_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_INPUT_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_INPUT_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_INPUT_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_DATA_INPUT_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_INPUT_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_INPUT_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_DATA_INPUT_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_INPUT_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_WEIGHT_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_DATA_WEIGHT_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_DATA_WEIGHT_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_WEIGHT_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_WEIGHT_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_WEIGHT_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_WEIGHT_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_WEIGHT_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_WEIGHT_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_WEIGHT_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_DATA_WEIGHT_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_WEIGHT_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_DATA_WEIGHT_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_DATA_WEIGHT_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_WEIGHT_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_WEIGHT_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_WEIGHT_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_WEIGHT_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_WEIGHT_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_WEIGHT_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_WEIGHT_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_DATA_WEIGHT_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_DATA_WEIGHT_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_DATA_WEIGHT_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_DATA_WEIGHT_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_DATA_BIAS_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_DATA_BIAS_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_DATA_BIAS_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_DATA_BIAS_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_DATA_BIAS_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_DATA_BIAS_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_DATA_BIAS_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_DATA_BIAS_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_DATA_BIAS_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_BIAS_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_DATA_BIAS_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_BIAS_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_BIAS_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_DATA_BIAS_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_DATA_BIAS_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_DATA_BIAS_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_DATA_BIAS_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_BIAS_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_DATA_BIAS_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_DATA_BIAS_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_DATA_BIAS_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_DATA_BIAS_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_DATA_BIAS_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_DATA_BIAS_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_DATA_BIAS_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_DATA_BIAS_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_DATA_BIAS_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_DATA_BIAS_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_DATA_BIAS_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_BIAS_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_DATA_BIAS_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_BIAS_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_BIAS_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_DATA_BIAS_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_DATA_BIAS_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_DATA_BIAS_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_DATA_BIAS_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_DATA_BIAS_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_DATA_BIAS_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_DATA_BIAS_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_DATA_BIAS_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_DATA_BIAS_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_DATA_BIAS_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_DATA_BIAS_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_DATA_BIAS_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_DATA_OUTPUT_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_AWADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_DATA_OUTPUT_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_DATA_OUTPUT_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_DATA_OUTPUT_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_DATA_OUTPUT_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_DATA_OUTPUT_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_DATA_OUTPUT_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_DATA_OUTPUT_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_DATA_OUTPUT_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_DATA_OUTPUT_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_DATA_OUTPUT_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_DATA_OUTPUT_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_ARADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_DATA_OUTPUT_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_DATA_OUTPUT_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_DATA_OUTPUT_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_DATA_OUTPUT_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_DATA_OUTPUT_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_DATA_OUTPUT_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_DATA_OUTPUT_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_DATA_OUTPUT_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_DATA_OUTPUT_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_DATA_OUTPUT_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_DATA_OUTPUT_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_DATA_OUTPUT_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_DATA_OUTPUT_BUSER sc_in sc_lv 1 signal 3 } 
	{ s_axi_CTL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTL_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_CTL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTL_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_CTL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "CTL", "role": "AWADDR" },"address":[{"name":"conv1","role":"start","value":"0","valid_bit":"0"},{"name":"conv1","role":"continue","value":"0","valid_bit":"4"},{"name":"conv1","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_r","role":"data","value":"24"},{"name":"weights","role":"data","value":"32"},{"name":"weights_3","role":"data","value":"40"},{"name":"weights_5","role":"data","value":"48"},{"name":"weights_6","role":"data","value":"56"},{"name":"bias","role":"data","value":"64"},{"name":"bias_3","role":"data","value":"72"},{"name":"bias_5","role":"data","value":"80"},{"name":"bias_6","role":"data","value":"88"},{"name":"output_r","role":"data","value":"96"}] },
	{ "name": "s_axi_CTL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "AWVALID" } },
	{ "name": "s_axi_CTL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "AWREADY" } },
	{ "name": "s_axi_CTL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "WVALID" } },
	{ "name": "s_axi_CTL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "WREADY" } },
	{ "name": "s_axi_CTL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTL", "role": "WDATA" } },
	{ "name": "s_axi_CTL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTL", "role": "WSTRB" } },
	{ "name": "s_axi_CTL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "CTL", "role": "ARADDR" },"address":[{"name":"conv1","role":"start","value":"0","valid_bit":"0"},{"name":"conv1","role":"done","value":"0","valid_bit":"1"},{"name":"conv1","role":"idle","value":"0","valid_bit":"2"},{"name":"conv1","role":"ready","value":"0","valid_bit":"3"},{"name":"conv1","role":"auto_start","value":"0","valid_bit":"7"},{"name":"return","role":"data","value":"16"}] },
	{ "name": "s_axi_CTL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "ARVALID" } },
	{ "name": "s_axi_CTL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "ARREADY" } },
	{ "name": "s_axi_CTL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "RVALID" } },
	{ "name": "s_axi_CTL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "RREADY" } },
	{ "name": "s_axi_CTL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTL", "role": "RDATA" } },
	{ "name": "s_axi_CTL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTL", "role": "RRESP" } },
	{ "name": "s_axi_CTL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "BVALID" } },
	{ "name": "s_axi_CTL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "BREADY" } },
	{ "name": "s_axi_CTL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_DATA_INPUT_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "AWVALID" }} , 
 	{ "name": "m_axi_DATA_INPUT_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "AWREADY" }} , 
 	{ "name": "m_axi_DATA_INPUT_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "AWADDR" }} , 
 	{ "name": "m_axi_DATA_INPUT_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "AWID" }} , 
 	{ "name": "m_axi_DATA_INPUT_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "AWLEN" }} , 
 	{ "name": "m_axi_DATA_INPUT_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_DATA_INPUT_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "AWBURST" }} , 
 	{ "name": "m_axi_DATA_INPUT_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_DATA_INPUT_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_DATA_INPUT_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "AWPROT" }} , 
 	{ "name": "m_axi_DATA_INPUT_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "AWQOS" }} , 
 	{ "name": "m_axi_DATA_INPUT_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "AWREGION" }} , 
 	{ "name": "m_axi_DATA_INPUT_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "AWUSER" }} , 
 	{ "name": "m_axi_DATA_INPUT_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "WVALID" }} , 
 	{ "name": "m_axi_DATA_INPUT_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "WREADY" }} , 
 	{ "name": "m_axi_DATA_INPUT_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "WDATA" }} , 
 	{ "name": "m_axi_DATA_INPUT_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "WSTRB" }} , 
 	{ "name": "m_axi_DATA_INPUT_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "WLAST" }} , 
 	{ "name": "m_axi_DATA_INPUT_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "WID" }} , 
 	{ "name": "m_axi_DATA_INPUT_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "WUSER" }} , 
 	{ "name": "m_axi_DATA_INPUT_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "ARVALID" }} , 
 	{ "name": "m_axi_DATA_INPUT_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "ARREADY" }} , 
 	{ "name": "m_axi_DATA_INPUT_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "ARADDR" }} , 
 	{ "name": "m_axi_DATA_INPUT_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "ARID" }} , 
 	{ "name": "m_axi_DATA_INPUT_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "ARLEN" }} , 
 	{ "name": "m_axi_DATA_INPUT_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_DATA_INPUT_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "ARBURST" }} , 
 	{ "name": "m_axi_DATA_INPUT_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_DATA_INPUT_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_DATA_INPUT_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "ARPROT" }} , 
 	{ "name": "m_axi_DATA_INPUT_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "ARQOS" }} , 
 	{ "name": "m_axi_DATA_INPUT_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "ARREGION" }} , 
 	{ "name": "m_axi_DATA_INPUT_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "ARUSER" }} , 
 	{ "name": "m_axi_DATA_INPUT_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "RVALID" }} , 
 	{ "name": "m_axi_DATA_INPUT_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "RREADY" }} , 
 	{ "name": "m_axi_DATA_INPUT_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "RDATA" }} , 
 	{ "name": "m_axi_DATA_INPUT_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "RLAST" }} , 
 	{ "name": "m_axi_DATA_INPUT_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "RID" }} , 
 	{ "name": "m_axi_DATA_INPUT_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "RUSER" }} , 
 	{ "name": "m_axi_DATA_INPUT_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "RRESP" }} , 
 	{ "name": "m_axi_DATA_INPUT_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "BVALID" }} , 
 	{ "name": "m_axi_DATA_INPUT_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "BREADY" }} , 
 	{ "name": "m_axi_DATA_INPUT_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "BRESP" }} , 
 	{ "name": "m_axi_DATA_INPUT_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "BID" }} , 
 	{ "name": "m_axi_DATA_INPUT_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_INPUT", "role": "BUSER" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "AWVALID" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "AWREADY" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "AWADDR" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "AWID" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "AWLEN" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "AWBURST" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "AWPROT" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "AWQOS" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "AWREGION" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "AWUSER" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "WVALID" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "WREADY" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "WDATA" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "WSTRB" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "WLAST" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "WID" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "WUSER" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "ARVALID" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "ARREADY" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "ARADDR" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "ARID" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "ARLEN" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "ARBURST" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "ARPROT" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "ARQOS" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "ARREGION" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "ARUSER" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "RVALID" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "RREADY" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "RDATA" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "RLAST" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "RID" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "RUSER" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "RRESP" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "BVALID" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "BREADY" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "BRESP" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "BID" }} , 
 	{ "name": "m_axi_DATA_WEIGHT_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_WEIGHT", "role": "BUSER" }} , 
 	{ "name": "m_axi_DATA_BIAS_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "AWVALID" }} , 
 	{ "name": "m_axi_DATA_BIAS_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "AWREADY" }} , 
 	{ "name": "m_axi_DATA_BIAS_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "AWADDR" }} , 
 	{ "name": "m_axi_DATA_BIAS_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "AWID" }} , 
 	{ "name": "m_axi_DATA_BIAS_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "AWLEN" }} , 
 	{ "name": "m_axi_DATA_BIAS_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_DATA_BIAS_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "AWBURST" }} , 
 	{ "name": "m_axi_DATA_BIAS_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_DATA_BIAS_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_DATA_BIAS_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "AWPROT" }} , 
 	{ "name": "m_axi_DATA_BIAS_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "AWQOS" }} , 
 	{ "name": "m_axi_DATA_BIAS_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "AWREGION" }} , 
 	{ "name": "m_axi_DATA_BIAS_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "AWUSER" }} , 
 	{ "name": "m_axi_DATA_BIAS_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "WVALID" }} , 
 	{ "name": "m_axi_DATA_BIAS_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "WREADY" }} , 
 	{ "name": "m_axi_DATA_BIAS_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "WDATA" }} , 
 	{ "name": "m_axi_DATA_BIAS_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "WSTRB" }} , 
 	{ "name": "m_axi_DATA_BIAS_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "WLAST" }} , 
 	{ "name": "m_axi_DATA_BIAS_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "WID" }} , 
 	{ "name": "m_axi_DATA_BIAS_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "WUSER" }} , 
 	{ "name": "m_axi_DATA_BIAS_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "ARVALID" }} , 
 	{ "name": "m_axi_DATA_BIAS_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "ARREADY" }} , 
 	{ "name": "m_axi_DATA_BIAS_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "ARADDR" }} , 
 	{ "name": "m_axi_DATA_BIAS_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "ARID" }} , 
 	{ "name": "m_axi_DATA_BIAS_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "ARLEN" }} , 
 	{ "name": "m_axi_DATA_BIAS_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_DATA_BIAS_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "ARBURST" }} , 
 	{ "name": "m_axi_DATA_BIAS_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_DATA_BIAS_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_DATA_BIAS_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "ARPROT" }} , 
 	{ "name": "m_axi_DATA_BIAS_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "ARQOS" }} , 
 	{ "name": "m_axi_DATA_BIAS_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "ARREGION" }} , 
 	{ "name": "m_axi_DATA_BIAS_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "ARUSER" }} , 
 	{ "name": "m_axi_DATA_BIAS_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "RVALID" }} , 
 	{ "name": "m_axi_DATA_BIAS_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "RREADY" }} , 
 	{ "name": "m_axi_DATA_BIAS_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "RDATA" }} , 
 	{ "name": "m_axi_DATA_BIAS_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "RLAST" }} , 
 	{ "name": "m_axi_DATA_BIAS_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "RID" }} , 
 	{ "name": "m_axi_DATA_BIAS_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "RUSER" }} , 
 	{ "name": "m_axi_DATA_BIAS_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "RRESP" }} , 
 	{ "name": "m_axi_DATA_BIAS_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "BVALID" }} , 
 	{ "name": "m_axi_DATA_BIAS_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "BREADY" }} , 
 	{ "name": "m_axi_DATA_BIAS_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "BRESP" }} , 
 	{ "name": "m_axi_DATA_BIAS_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "BID" }} , 
 	{ "name": "m_axi_DATA_BIAS_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BIAS", "role": "BUSER" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "AWVALID" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "AWREADY" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "AWADDR" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "AWID" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "AWLEN" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "AWBURST" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "AWPROT" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "AWQOS" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "AWREGION" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "AWUSER" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "WVALID" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "WREADY" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "WDATA" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "WSTRB" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "WLAST" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "WID" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "WUSER" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "ARVALID" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "ARREADY" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "ARADDR" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "ARID" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "ARLEN" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "ARBURST" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "ARPROT" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "ARQOS" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "ARREGION" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "ARUSER" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "RVALID" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "RREADY" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "RDATA" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "RLAST" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "RID" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "RUSER" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "RRESP" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "BVALID" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "BREADY" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "BRESP" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "BID" }} , 
 	{ "name": "m_axi_DATA_OUTPUT_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUTPUT", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "26", "31", "34", "37", "39", "41", "42", "43", "45", "47", "49", "51", "52", "53", "54", "55", "56", "57"],
		"CDFG" : "conv1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "527161", "EstimateLatencyMax" : "527161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_convolution_3_fu_354"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_convulution1_fu_362"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fc_6_fu_370"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_convolution_5_fu_382"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_maxpool_2_fu_390"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_maxpool_4_fu_396"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_store_weights_5_fu_402"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_store_weights_3_fu_410"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_relu_1_fu_418"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_relu_3_fu_423"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_relu_4_fu_428"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_relu_2_fu_433"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_store_weights_fu_438"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_store_input_fu_447"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_store_bias_5_fu_456"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_store_bias_3_fu_464"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_store_output_fu_472"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_store_bias_fu_480"}],
		"Port" : [
			{"Name" : "DATA_INPUT", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_store_input_fu_447", "Port" : "input_r"}]},
			{"Name" : "DATA_WEIGHT", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_store_weights_fu_438", "Port" : "weights"},
					{"ID" : "42", "SubInstance" : "grp_store_weights_3_fu_410", "Port" : "weights"},
					{"ID" : "31", "SubInstance" : "grp_fc_6_fu_370", "Port" : "weights"},
					{"ID" : "41", "SubInstance" : "grp_store_weights_5_fu_402", "Port" : "weights"}]},
			{"Name" : "DATA_BIAS", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_store_bias_3_fu_464", "Port" : "bias"},
					{"ID" : "31", "SubInstance" : "grp_fc_6_fu_370", "Port" : "bias"},
					{"ID" : "53", "SubInstance" : "grp_store_bias_5_fu_456", "Port" : "bias"},
					{"ID" : "56", "SubInstance" : "grp_store_bias_fu_480", "Port" : "bias"}]},
			{"Name" : "DATA_OUTPUT", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_store_output_fu_472", "Port" : "output_r"}]},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_CTL_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_DATA_INPUT_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_DATA_WEIGHT_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_DATA_BIAS_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_DATA_OUTPUT_m_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_oc_0_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_oc_0_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_3_oc_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_5_oc_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_oc_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_3_oc_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_5_oc_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output1_oc_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output2_oc_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output3_oc_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output4_oc_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output5_oc_0_0_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output6_oc_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution_3_fu_354", "Parent" : "0", "Child" : ["20", "21", "22", "23", "24", "25"],
		"CDFG" : "convolution_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120692", "EstimateLatencyMax" : "120692",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_3_fu_354.conv1_fadd_32ns_3bkb_U40", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_3_fu_354.conv1_fadd_32ns_3bkb_U41", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_3_fu_354.conv1_fadd_32ns_3bkb_U42", "Parent" : "19"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_3_fu_354.conv1_fmul_32ns_3cud_U43", "Parent" : "19"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_3_fu_354.conv1_fmul_32ns_3cud_U44", "Parent" : "19"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_3_fu_354.conv1_mul_mul_6nseOg_U45", "Parent" : "19"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convulution1_fu_362", "Parent" : "0", "Child" : ["27", "28", "29", "30"],
		"CDFG" : "convulution1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "61278", "EstimateLatencyMax" : "61278",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convulution1_fu_362.conv1_fadd_32ns_3bkb_U22", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convulution1_fu_362.conv1_fadd_32ns_3bkb_U23", "Parent" : "26"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convulution1_fu_362.conv1_fmul_32ns_3cud_U24", "Parent" : "26"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convulution1_fu_362.conv1_fmul_32ns_3cud_U25", "Parent" : "26"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fc_6_fu_370", "Parent" : "0", "Child" : ["32", "33"],
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
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fc_6_fu_370.conv1_fadd_32ns_3bkb_U64", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fc_6_fu_370.conv1_fmul_32ns_3cud_U65", "Parent" : "31"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution_5_fu_382", "Parent" : "0", "Child" : ["35", "36"],
		"CDFG" : "convolution_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "242041", "EstimateLatencyMax" : "242041",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_0_0", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_5_fu_382.conv1_fadd_32ns_3bkb_U58", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_5_fu_382.conv1_fmul_32ns_3cud_U59", "Parent" : "34"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_maxpool_2_fu_390", "Parent" : "0", "Child" : ["38"],
		"CDFG" : "maxpool_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21349", "EstimateLatencyMax" : "21349",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxpool_2_fu_390.conv1_fcmp_32ns_3dEe_U35", "Parent" : "37"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_maxpool_4_fu_396", "Parent" : "0", "Child" : ["40"],
		"CDFG" : "maxpool_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7393", "EstimateLatencyMax" : "7393",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxpool_4_fu_396.conv1_fcmp_32ns_3dEe_U53", "Parent" : "39"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_store_weights_5_fu_402", "Parent" : "0",
		"CDFG" : "store_weights_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "48012", "EstimateLatencyMax" : "48012",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "weights", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "weights_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "weights_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "weights_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_oc", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_store_weights_3_fu_410", "Parent" : "0",
		"CDFG" : "store_weights_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9345", "EstimateLatencyMax" : "9345",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "weights", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "weights_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "weights_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "weights_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_oc", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_relu_1_fu_418", "Parent" : "0", "Child" : ["44"],
		"CDFG" : "relu_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14461", "EstimateLatencyMax" : "14461",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_relu_1_fu_418.conv1_fcmp_32ns_3dEe_U32", "Parent" : "43"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_relu_3_fu_423", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "relu_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5153", "EstimateLatencyMax" : "5153",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_relu_3_fu_423.conv1_fcmp_32ns_3dEe_U51", "Parent" : "45"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_relu_4_fu_428", "Parent" : "0", "Child" : ["48"],
		"CDFG" : "relu_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1393", "EstimateLatencyMax" : "1393",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_relu_4_fu_428.conv1_fcmp_32ns_3dEe_U56", "Parent" : "47"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_relu_2_fu_433", "Parent" : "0", "Child" : ["50"],
		"CDFG" : "relu_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3709", "EstimateLatencyMax" : "3709",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_relu_2_fu_433.conv1_fcmp_32ns_3dEe_U38", "Parent" : "49"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_store_weights_fu_438", "Parent" : "0",
		"CDFG" : "store_weights",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "583", "EstimateLatencyMax" : "583",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "weights", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "weights_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "weights_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "weights_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_oc_0", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_store_input_fu_447", "Parent" : "0",
		"CDFG" : "store_input",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2337", "EstimateLatencyMax" : "2337",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_r_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "input_r_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "input_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_oc_0", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_store_bias_5_fu_456", "Parent" : "0",
		"CDFG" : "store_bias_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "247", "EstimateLatencyMax" : "247",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "bias", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bias_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bias_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "bias_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_oc", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_store_bias_3_fu_464", "Parent" : "0",
		"CDFG" : "store_bias_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "39",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "bias", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bias_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bias_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "bias_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_oc", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_store_output_fu_472", "Parent" : "0",
		"CDFG" : "store_output",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35", "EstimateLatencyMax" : "35",
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
			{"Name" : "output_oc", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_store_bias_fu_480", "Parent" : "0",
		"CDFG" : "store_bias",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "bias", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bias_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bias_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "bias_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_oc", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_fcmp_32ns_3dEe_U75", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv1 {
		DATA_INPUT {Type I LastRead 9 FirstWrite -1}
		DATA_WEIGHT {Type I LastRead 143 FirstWrite -1}
		DATA_BIAS {Type I LastRead 150 FirstWrite -1}
		DATA_OUTPUT {Type O LastRead 1 FirstWrite 3}
		input_r {Type I LastRead 0 FirstWrite -1}
		weights {Type I LastRead 0 FirstWrite -1}
		weights_3 {Type I LastRead 0 FirstWrite -1}
		weights_5 {Type I LastRead 0 FirstWrite -1}
		weights_6 {Type I LastRead 0 FirstWrite -1}
		bias {Type I LastRead 0 FirstWrite -1}
		bias_3 {Type I LastRead 0 FirstWrite -1}
		bias_5 {Type I LastRead 0 FirstWrite -1}
		bias_6 {Type I LastRead 0 FirstWrite -1}
		output_r {Type I LastRead 0 FirstWrite -1}}
	convolution_3 {
		input_r {Type I LastRead 77 FirstWrite -1}
		weights {Type I LastRead 77 FirstWrite -1}
		bias {Type I LastRead 759 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 766}}
	convulution1 {
		input_0 {Type I LastRead 15 FirstWrite -1}
		weights_0 {Type I LastRead 15 FirstWrite -1}
		bias {Type I LastRead 131 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 138}}
	fc_6 {
		input_0_0 {Type I LastRead 142 FirstWrite -1}
		weights {Type I LastRead 143 FirstWrite -1}
		weights_offset {Type I LastRead 0 FirstWrite -1}
		bias {Type I LastRead 150 FirstWrite -1}
		bias_offset {Type I LastRead 6 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 21}}
	convolution_5 {
		input_r {Type I LastRead 4 FirstWrite -1}
		weights {Type I LastRead 4 FirstWrite -1}
		bias {Type I LastRead 3 FirstWrite -1}
		output_0_0 {Type O LastRead -1 FirstWrite 10}}
	maxpool_2 {
		input_r {Type I LastRead 5 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 4}}
	maxpool_4 {
		input_r {Type I LastRead 5 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 4}}
	store_weights_5 {
		weights {Type I LastRead 11 FirstWrite -1}
		weights_offset {Type I LastRead 0 FirstWrite -1}
		weights_oc {Type O LastRead -1 FirstWrite 12}}
	store_weights_3 {
		weights {Type I LastRead 11 FirstWrite -1}
		weights_offset {Type I LastRead 0 FirstWrite -1}
		weights_oc {Type O LastRead -1 FirstWrite 12}}
	relu_1 {
		output_r {Type IO LastRead 3 FirstWrite 5}}
	relu_3 {
		output_r {Type IO LastRead 3 FirstWrite 5}}
	relu_4 {
		output_r {Type IO LastRead 3 FirstWrite 5}}
	relu_2 {
		output_r {Type IO LastRead 3 FirstWrite 5}}
	store_weights {
		weights {Type I LastRead 10 FirstWrite -1}
		weights_offset {Type I LastRead 0 FirstWrite -1}
		weights_oc_0 {Type O LastRead -1 FirstWrite 11}}
	store_input {
		input_r {Type I LastRead 9 FirstWrite -1}
		input_offset {Type I LastRead 0 FirstWrite -1}
		input_oc_0 {Type O LastRead -1 FirstWrite 10}}
	store_bias_5 {
		bias {Type I LastRead 7 FirstWrite -1}
		bias_offset {Type I LastRead 0 FirstWrite -1}
		bias_oc {Type O LastRead -1 FirstWrite 8}}
	store_bias_3 {
		bias {Type I LastRead 7 FirstWrite -1}
		bias_offset {Type I LastRead 0 FirstWrite -1}
		bias_oc {Type O LastRead -1 FirstWrite 8}}
	store_output {
		output_r {Type O LastRead 1 FirstWrite 3}
		output_offset {Type I LastRead 0 FirstWrite -1}
		output_oc {Type I LastRead 1 FirstWrite -1}}
	store_bias {
		bias {Type I LastRead 7 FirstWrite -1}
		bias_offset {Type I LastRead 0 FirstWrite -1}
		bias_oc {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "527161", "Max" : "527161"}
	, {"Name" : "Interval", "Min" : "527162", "Max" : "527162"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	DATA_INPUT { m_axi {  { m_axi_DATA_INPUT_AWVALID VALID 1 1 }  { m_axi_DATA_INPUT_AWREADY READY 0 1 }  { m_axi_DATA_INPUT_AWADDR ADDR 1 32 }  { m_axi_DATA_INPUT_AWID ID 1 1 }  { m_axi_DATA_INPUT_AWLEN LEN 1 8 }  { m_axi_DATA_INPUT_AWSIZE SIZE 1 3 }  { m_axi_DATA_INPUT_AWBURST BURST 1 2 }  { m_axi_DATA_INPUT_AWLOCK LOCK 1 2 }  { m_axi_DATA_INPUT_AWCACHE CACHE 1 4 }  { m_axi_DATA_INPUT_AWPROT PROT 1 3 }  { m_axi_DATA_INPUT_AWQOS QOS 1 4 }  { m_axi_DATA_INPUT_AWREGION REGION 1 4 }  { m_axi_DATA_INPUT_AWUSER USER 1 1 }  { m_axi_DATA_INPUT_WVALID VALID 1 1 }  { m_axi_DATA_INPUT_WREADY READY 0 1 }  { m_axi_DATA_INPUT_WDATA DATA 1 32 }  { m_axi_DATA_INPUT_WSTRB STRB 1 4 }  { m_axi_DATA_INPUT_WLAST LAST 1 1 }  { m_axi_DATA_INPUT_WID ID 1 1 }  { m_axi_DATA_INPUT_WUSER USER 1 1 }  { m_axi_DATA_INPUT_ARVALID VALID 1 1 }  { m_axi_DATA_INPUT_ARREADY READY 0 1 }  { m_axi_DATA_INPUT_ARADDR ADDR 1 32 }  { m_axi_DATA_INPUT_ARID ID 1 1 }  { m_axi_DATA_INPUT_ARLEN LEN 1 8 }  { m_axi_DATA_INPUT_ARSIZE SIZE 1 3 }  { m_axi_DATA_INPUT_ARBURST BURST 1 2 }  { m_axi_DATA_INPUT_ARLOCK LOCK 1 2 }  { m_axi_DATA_INPUT_ARCACHE CACHE 1 4 }  { m_axi_DATA_INPUT_ARPROT PROT 1 3 }  { m_axi_DATA_INPUT_ARQOS QOS 1 4 }  { m_axi_DATA_INPUT_ARREGION REGION 1 4 }  { m_axi_DATA_INPUT_ARUSER USER 1 1 }  { m_axi_DATA_INPUT_RVALID VALID 0 1 }  { m_axi_DATA_INPUT_RREADY READY 1 1 }  { m_axi_DATA_INPUT_RDATA DATA 0 32 }  { m_axi_DATA_INPUT_RLAST LAST 0 1 }  { m_axi_DATA_INPUT_RID ID 0 1 }  { m_axi_DATA_INPUT_RUSER USER 0 1 }  { m_axi_DATA_INPUT_RRESP RESP 0 2 }  { m_axi_DATA_INPUT_BVALID VALID 0 1 }  { m_axi_DATA_INPUT_BREADY READY 1 1 }  { m_axi_DATA_INPUT_BRESP RESP 0 2 }  { m_axi_DATA_INPUT_BID ID 0 1 }  { m_axi_DATA_INPUT_BUSER USER 0 1 } } }
	DATA_WEIGHT { m_axi {  { m_axi_DATA_WEIGHT_AWVALID VALID 1 1 }  { m_axi_DATA_WEIGHT_AWREADY READY 0 1 }  { m_axi_DATA_WEIGHT_AWADDR ADDR 1 32 }  { m_axi_DATA_WEIGHT_AWID ID 1 1 }  { m_axi_DATA_WEIGHT_AWLEN LEN 1 8 }  { m_axi_DATA_WEIGHT_AWSIZE SIZE 1 3 }  { m_axi_DATA_WEIGHT_AWBURST BURST 1 2 }  { m_axi_DATA_WEIGHT_AWLOCK LOCK 1 2 }  { m_axi_DATA_WEIGHT_AWCACHE CACHE 1 4 }  { m_axi_DATA_WEIGHT_AWPROT PROT 1 3 }  { m_axi_DATA_WEIGHT_AWQOS QOS 1 4 }  { m_axi_DATA_WEIGHT_AWREGION REGION 1 4 }  { m_axi_DATA_WEIGHT_AWUSER USER 1 1 }  { m_axi_DATA_WEIGHT_WVALID VALID 1 1 }  { m_axi_DATA_WEIGHT_WREADY READY 0 1 }  { m_axi_DATA_WEIGHT_WDATA DATA 1 32 }  { m_axi_DATA_WEIGHT_WSTRB STRB 1 4 }  { m_axi_DATA_WEIGHT_WLAST LAST 1 1 }  { m_axi_DATA_WEIGHT_WID ID 1 1 }  { m_axi_DATA_WEIGHT_WUSER USER 1 1 }  { m_axi_DATA_WEIGHT_ARVALID VALID 1 1 }  { m_axi_DATA_WEIGHT_ARREADY READY 0 1 }  { m_axi_DATA_WEIGHT_ARADDR ADDR 1 32 }  { m_axi_DATA_WEIGHT_ARID ID 1 1 }  { m_axi_DATA_WEIGHT_ARLEN LEN 1 8 }  { m_axi_DATA_WEIGHT_ARSIZE SIZE 1 3 }  { m_axi_DATA_WEIGHT_ARBURST BURST 1 2 }  { m_axi_DATA_WEIGHT_ARLOCK LOCK 1 2 }  { m_axi_DATA_WEIGHT_ARCACHE CACHE 1 4 }  { m_axi_DATA_WEIGHT_ARPROT PROT 1 3 }  { m_axi_DATA_WEIGHT_ARQOS QOS 1 4 }  { m_axi_DATA_WEIGHT_ARREGION REGION 1 4 }  { m_axi_DATA_WEIGHT_ARUSER USER 1 1 }  { m_axi_DATA_WEIGHT_RVALID VALID 0 1 }  { m_axi_DATA_WEIGHT_RREADY READY 1 1 }  { m_axi_DATA_WEIGHT_RDATA DATA 0 32 }  { m_axi_DATA_WEIGHT_RLAST LAST 0 1 }  { m_axi_DATA_WEIGHT_RID ID 0 1 }  { m_axi_DATA_WEIGHT_RUSER USER 0 1 }  { m_axi_DATA_WEIGHT_RRESP RESP 0 2 }  { m_axi_DATA_WEIGHT_BVALID VALID 0 1 }  { m_axi_DATA_WEIGHT_BREADY READY 1 1 }  { m_axi_DATA_WEIGHT_BRESP RESP 0 2 }  { m_axi_DATA_WEIGHT_BID ID 0 1 }  { m_axi_DATA_WEIGHT_BUSER USER 0 1 } } }
	DATA_BIAS { m_axi {  { m_axi_DATA_BIAS_AWVALID VALID 1 1 }  { m_axi_DATA_BIAS_AWREADY READY 0 1 }  { m_axi_DATA_BIAS_AWADDR ADDR 1 32 }  { m_axi_DATA_BIAS_AWID ID 1 1 }  { m_axi_DATA_BIAS_AWLEN LEN 1 8 }  { m_axi_DATA_BIAS_AWSIZE SIZE 1 3 }  { m_axi_DATA_BIAS_AWBURST BURST 1 2 }  { m_axi_DATA_BIAS_AWLOCK LOCK 1 2 }  { m_axi_DATA_BIAS_AWCACHE CACHE 1 4 }  { m_axi_DATA_BIAS_AWPROT PROT 1 3 }  { m_axi_DATA_BIAS_AWQOS QOS 1 4 }  { m_axi_DATA_BIAS_AWREGION REGION 1 4 }  { m_axi_DATA_BIAS_AWUSER USER 1 1 }  { m_axi_DATA_BIAS_WVALID VALID 1 1 }  { m_axi_DATA_BIAS_WREADY READY 0 1 }  { m_axi_DATA_BIAS_WDATA DATA 1 32 }  { m_axi_DATA_BIAS_WSTRB STRB 1 4 }  { m_axi_DATA_BIAS_WLAST LAST 1 1 }  { m_axi_DATA_BIAS_WID ID 1 1 }  { m_axi_DATA_BIAS_WUSER USER 1 1 }  { m_axi_DATA_BIAS_ARVALID VALID 1 1 }  { m_axi_DATA_BIAS_ARREADY READY 0 1 }  { m_axi_DATA_BIAS_ARADDR ADDR 1 32 }  { m_axi_DATA_BIAS_ARID ID 1 1 }  { m_axi_DATA_BIAS_ARLEN LEN 1 8 }  { m_axi_DATA_BIAS_ARSIZE SIZE 1 3 }  { m_axi_DATA_BIAS_ARBURST BURST 1 2 }  { m_axi_DATA_BIAS_ARLOCK LOCK 1 2 }  { m_axi_DATA_BIAS_ARCACHE CACHE 1 4 }  { m_axi_DATA_BIAS_ARPROT PROT 1 3 }  { m_axi_DATA_BIAS_ARQOS QOS 1 4 }  { m_axi_DATA_BIAS_ARREGION REGION 1 4 }  { m_axi_DATA_BIAS_ARUSER USER 1 1 }  { m_axi_DATA_BIAS_RVALID VALID 0 1 }  { m_axi_DATA_BIAS_RREADY READY 1 1 }  { m_axi_DATA_BIAS_RDATA DATA 0 32 }  { m_axi_DATA_BIAS_RLAST LAST 0 1 }  { m_axi_DATA_BIAS_RID ID 0 1 }  { m_axi_DATA_BIAS_RUSER USER 0 1 }  { m_axi_DATA_BIAS_RRESP RESP 0 2 }  { m_axi_DATA_BIAS_BVALID VALID 0 1 }  { m_axi_DATA_BIAS_BREADY READY 1 1 }  { m_axi_DATA_BIAS_BRESP RESP 0 2 }  { m_axi_DATA_BIAS_BID ID 0 1 }  { m_axi_DATA_BIAS_BUSER USER 0 1 } } }
	DATA_OUTPUT { m_axi {  { m_axi_DATA_OUTPUT_AWVALID VALID 1 1 }  { m_axi_DATA_OUTPUT_AWREADY READY 0 1 }  { m_axi_DATA_OUTPUT_AWADDR ADDR 1 32 }  { m_axi_DATA_OUTPUT_AWID ID 1 1 }  { m_axi_DATA_OUTPUT_AWLEN LEN 1 8 }  { m_axi_DATA_OUTPUT_AWSIZE SIZE 1 3 }  { m_axi_DATA_OUTPUT_AWBURST BURST 1 2 }  { m_axi_DATA_OUTPUT_AWLOCK LOCK 1 2 }  { m_axi_DATA_OUTPUT_AWCACHE CACHE 1 4 }  { m_axi_DATA_OUTPUT_AWPROT PROT 1 3 }  { m_axi_DATA_OUTPUT_AWQOS QOS 1 4 }  { m_axi_DATA_OUTPUT_AWREGION REGION 1 4 }  { m_axi_DATA_OUTPUT_AWUSER USER 1 1 }  { m_axi_DATA_OUTPUT_WVALID VALID 1 1 }  { m_axi_DATA_OUTPUT_WREADY READY 0 1 }  { m_axi_DATA_OUTPUT_WDATA DATA 1 32 }  { m_axi_DATA_OUTPUT_WSTRB STRB 1 4 }  { m_axi_DATA_OUTPUT_WLAST LAST 1 1 }  { m_axi_DATA_OUTPUT_WID ID 1 1 }  { m_axi_DATA_OUTPUT_WUSER USER 1 1 }  { m_axi_DATA_OUTPUT_ARVALID VALID 1 1 }  { m_axi_DATA_OUTPUT_ARREADY READY 0 1 }  { m_axi_DATA_OUTPUT_ARADDR ADDR 1 32 }  { m_axi_DATA_OUTPUT_ARID ID 1 1 }  { m_axi_DATA_OUTPUT_ARLEN LEN 1 8 }  { m_axi_DATA_OUTPUT_ARSIZE SIZE 1 3 }  { m_axi_DATA_OUTPUT_ARBURST BURST 1 2 }  { m_axi_DATA_OUTPUT_ARLOCK LOCK 1 2 }  { m_axi_DATA_OUTPUT_ARCACHE CACHE 1 4 }  { m_axi_DATA_OUTPUT_ARPROT PROT 1 3 }  { m_axi_DATA_OUTPUT_ARQOS QOS 1 4 }  { m_axi_DATA_OUTPUT_ARREGION REGION 1 4 }  { m_axi_DATA_OUTPUT_ARUSER USER 1 1 }  { m_axi_DATA_OUTPUT_RVALID VALID 0 1 }  { m_axi_DATA_OUTPUT_RREADY READY 1 1 }  { m_axi_DATA_OUTPUT_RDATA DATA 0 32 }  { m_axi_DATA_OUTPUT_RLAST LAST 0 1 }  { m_axi_DATA_OUTPUT_RID ID 0 1 }  { m_axi_DATA_OUTPUT_RUSER USER 0 1 }  { m_axi_DATA_OUTPUT_RRESP RESP 0 2 }  { m_axi_DATA_OUTPUT_BVALID VALID 0 1 }  { m_axi_DATA_OUTPUT_BREADY READY 1 1 }  { m_axi_DATA_OUTPUT_BRESP RESP 0 2 }  { m_axi_DATA_OUTPUT_BID ID 0 1 }  { m_axi_DATA_OUTPUT_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ DATA_INPUT { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ DATA_WEIGHT { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ DATA_BIAS { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ DATA_OUTPUT { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ DATA_INPUT 1 }
	{ DATA_WEIGHT 1 }
	{ DATA_BIAS 1 }
	{ DATA_OUTPUT 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ DATA_INPUT 1 }
	{ DATA_WEIGHT 1 }
	{ DATA_BIAS 1 }
	{ DATA_OUTPUT 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
