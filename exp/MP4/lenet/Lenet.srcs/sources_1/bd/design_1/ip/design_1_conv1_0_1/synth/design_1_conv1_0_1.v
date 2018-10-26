// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:conv1:1.0
// IP Revision: 1810252334

(* X_CORE_INFO = "conv1,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "design_1_conv1_0_1,conv1,{}" *)
(* CORE_GENERATION_INFO = "design_1_conv1_0_1,conv1,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=conv1,x_ipVersion=1.0,x_ipCoreRevision=1810252334,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CTL_ADDR_WIDTH=7,C_S_AXI_CTL_DATA_WIDTH=32,C_M_AXI_DATA_INPUT_ID_WIDTH=1,C_M_AXI_DATA_INPUT_ADDR_WIDTH=32,C_M_AXI_DATA_INPUT_DATA_WIDTH=32,C_M_AXI_DATA_INPUT_AWUSER_WIDTH=1,C_M_AXI_DATA_INPUT_ARUSER_WIDTH=1,C_M_AXI_DATA_INPUT_WUSER_WIDTH=1,C_M_AXI_DATA_INPUT_RUSER_WIDTH=1,C_M_AXI_DATA_INPUT_BUSER_WI\
DTH=1,C_M_AXI_DATA_INPUT_USER_VALUE=0x00000000,C_M_AXI_DATA_INPUT_PROT_VALUE=000,C_M_AXI_DATA_INPUT_CACHE_VALUE=0011,C_M_AXI_DATA_WEIGHT_ID_WIDTH=1,C_M_AXI_DATA_WEIGHT_ADDR_WIDTH=32,C_M_AXI_DATA_WEIGHT_DATA_WIDTH=32,C_M_AXI_DATA_WEIGHT_AWUSER_WIDTH=1,C_M_AXI_DATA_WEIGHT_ARUSER_WIDTH=1,C_M_AXI_DATA_WEIGHT_WUSER_WIDTH=1,C_M_AXI_DATA_WEIGHT_RUSER_WIDTH=1,C_M_AXI_DATA_WEIGHT_BUSER_WIDTH=1,C_M_AXI_DATA_WEIGHT_USER_VALUE=0x00000000,C_M_AXI_DATA_WEIGHT_PROT_VALUE=000,C_M_AXI_DATA_WEIGHT_CACHE_VALUE=001\
1,C_M_AXI_DATA_BIAS_ID_WIDTH=1,C_M_AXI_DATA_BIAS_ADDR_WIDTH=32,C_M_AXI_DATA_BIAS_DATA_WIDTH=32,C_M_AXI_DATA_BIAS_AWUSER_WIDTH=1,C_M_AXI_DATA_BIAS_ARUSER_WIDTH=1,C_M_AXI_DATA_BIAS_WUSER_WIDTH=1,C_M_AXI_DATA_BIAS_RUSER_WIDTH=1,C_M_AXI_DATA_BIAS_BUSER_WIDTH=1,C_M_AXI_DATA_BIAS_USER_VALUE=0x00000000,C_M_AXI_DATA_BIAS_PROT_VALUE=000,C_M_AXI_DATA_BIAS_CACHE_VALUE=0011,C_M_AXI_DATA_OUTPUT_ID_WIDTH=1,C_M_AXI_DATA_OUTPUT_ADDR_WIDTH=32,C_M_AXI_DATA_OUTPUT_DATA_WIDTH=32,C_M_AXI_DATA_OUTPUT_AWUSER_WIDTH=1,C\
_M_AXI_DATA_OUTPUT_ARUSER_WIDTH=1,C_M_AXI_DATA_OUTPUT_WUSER_WIDTH=1,C_M_AXI_DATA_OUTPUT_RUSER_WIDTH=1,C_M_AXI_DATA_OUTPUT_BUSER_WIDTH=1,C_M_AXI_DATA_OUTPUT_USER_VALUE=0x00000000,C_M_AXI_DATA_OUTPUT_PROT_VALUE=000,C_M_AXI_DATA_OUTPUT_CACHE_VALUE=0011}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_conv1_0_1 (
  s_axi_CTL_AWADDR,
  s_axi_CTL_AWVALID,
  s_axi_CTL_AWREADY,
  s_axi_CTL_WDATA,
  s_axi_CTL_WSTRB,
  s_axi_CTL_WVALID,
  s_axi_CTL_WREADY,
  s_axi_CTL_BRESP,
  s_axi_CTL_BVALID,
  s_axi_CTL_BREADY,
  s_axi_CTL_ARADDR,
  s_axi_CTL_ARVALID,
  s_axi_CTL_ARREADY,
  s_axi_CTL_RDATA,
  s_axi_CTL_RRESP,
  s_axi_CTL_RVALID,
  s_axi_CTL_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_DATA_INPUT_AWADDR,
  m_axi_DATA_INPUT_AWLEN,
  m_axi_DATA_INPUT_AWSIZE,
  m_axi_DATA_INPUT_AWBURST,
  m_axi_DATA_INPUT_AWLOCK,
  m_axi_DATA_INPUT_AWREGION,
  m_axi_DATA_INPUT_AWCACHE,
  m_axi_DATA_INPUT_AWPROT,
  m_axi_DATA_INPUT_AWQOS,
  m_axi_DATA_INPUT_AWVALID,
  m_axi_DATA_INPUT_AWREADY,
  m_axi_DATA_INPUT_WDATA,
  m_axi_DATA_INPUT_WSTRB,
  m_axi_DATA_INPUT_WLAST,
  m_axi_DATA_INPUT_WVALID,
  m_axi_DATA_INPUT_WREADY,
  m_axi_DATA_INPUT_BRESP,
  m_axi_DATA_INPUT_BVALID,
  m_axi_DATA_INPUT_BREADY,
  m_axi_DATA_INPUT_ARADDR,
  m_axi_DATA_INPUT_ARLEN,
  m_axi_DATA_INPUT_ARSIZE,
  m_axi_DATA_INPUT_ARBURST,
  m_axi_DATA_INPUT_ARLOCK,
  m_axi_DATA_INPUT_ARREGION,
  m_axi_DATA_INPUT_ARCACHE,
  m_axi_DATA_INPUT_ARPROT,
  m_axi_DATA_INPUT_ARQOS,
  m_axi_DATA_INPUT_ARVALID,
  m_axi_DATA_INPUT_ARREADY,
  m_axi_DATA_INPUT_RDATA,
  m_axi_DATA_INPUT_RRESP,
  m_axi_DATA_INPUT_RLAST,
  m_axi_DATA_INPUT_RVALID,
  m_axi_DATA_INPUT_RREADY,
  m_axi_DATA_WEIGHT_AWADDR,
  m_axi_DATA_WEIGHT_AWLEN,
  m_axi_DATA_WEIGHT_AWSIZE,
  m_axi_DATA_WEIGHT_AWBURST,
  m_axi_DATA_WEIGHT_AWLOCK,
  m_axi_DATA_WEIGHT_AWREGION,
  m_axi_DATA_WEIGHT_AWCACHE,
  m_axi_DATA_WEIGHT_AWPROT,
  m_axi_DATA_WEIGHT_AWQOS,
  m_axi_DATA_WEIGHT_AWVALID,
  m_axi_DATA_WEIGHT_AWREADY,
  m_axi_DATA_WEIGHT_WDATA,
  m_axi_DATA_WEIGHT_WSTRB,
  m_axi_DATA_WEIGHT_WLAST,
  m_axi_DATA_WEIGHT_WVALID,
  m_axi_DATA_WEIGHT_WREADY,
  m_axi_DATA_WEIGHT_BRESP,
  m_axi_DATA_WEIGHT_BVALID,
  m_axi_DATA_WEIGHT_BREADY,
  m_axi_DATA_WEIGHT_ARADDR,
  m_axi_DATA_WEIGHT_ARLEN,
  m_axi_DATA_WEIGHT_ARSIZE,
  m_axi_DATA_WEIGHT_ARBURST,
  m_axi_DATA_WEIGHT_ARLOCK,
  m_axi_DATA_WEIGHT_ARREGION,
  m_axi_DATA_WEIGHT_ARCACHE,
  m_axi_DATA_WEIGHT_ARPROT,
  m_axi_DATA_WEIGHT_ARQOS,
  m_axi_DATA_WEIGHT_ARVALID,
  m_axi_DATA_WEIGHT_ARREADY,
  m_axi_DATA_WEIGHT_RDATA,
  m_axi_DATA_WEIGHT_RRESP,
  m_axi_DATA_WEIGHT_RLAST,
  m_axi_DATA_WEIGHT_RVALID,
  m_axi_DATA_WEIGHT_RREADY,
  m_axi_DATA_BIAS_AWADDR,
  m_axi_DATA_BIAS_AWLEN,
  m_axi_DATA_BIAS_AWSIZE,
  m_axi_DATA_BIAS_AWBURST,
  m_axi_DATA_BIAS_AWLOCK,
  m_axi_DATA_BIAS_AWREGION,
  m_axi_DATA_BIAS_AWCACHE,
  m_axi_DATA_BIAS_AWPROT,
  m_axi_DATA_BIAS_AWQOS,
  m_axi_DATA_BIAS_AWVALID,
  m_axi_DATA_BIAS_AWREADY,
  m_axi_DATA_BIAS_WDATA,
  m_axi_DATA_BIAS_WSTRB,
  m_axi_DATA_BIAS_WLAST,
  m_axi_DATA_BIAS_WVALID,
  m_axi_DATA_BIAS_WREADY,
  m_axi_DATA_BIAS_BRESP,
  m_axi_DATA_BIAS_BVALID,
  m_axi_DATA_BIAS_BREADY,
  m_axi_DATA_BIAS_ARADDR,
  m_axi_DATA_BIAS_ARLEN,
  m_axi_DATA_BIAS_ARSIZE,
  m_axi_DATA_BIAS_ARBURST,
  m_axi_DATA_BIAS_ARLOCK,
  m_axi_DATA_BIAS_ARREGION,
  m_axi_DATA_BIAS_ARCACHE,
  m_axi_DATA_BIAS_ARPROT,
  m_axi_DATA_BIAS_ARQOS,
  m_axi_DATA_BIAS_ARVALID,
  m_axi_DATA_BIAS_ARREADY,
  m_axi_DATA_BIAS_RDATA,
  m_axi_DATA_BIAS_RRESP,
  m_axi_DATA_BIAS_RLAST,
  m_axi_DATA_BIAS_RVALID,
  m_axi_DATA_BIAS_RREADY,
  m_axi_DATA_OUTPUT_AWADDR,
  m_axi_DATA_OUTPUT_AWLEN,
  m_axi_DATA_OUTPUT_AWSIZE,
  m_axi_DATA_OUTPUT_AWBURST,
  m_axi_DATA_OUTPUT_AWLOCK,
  m_axi_DATA_OUTPUT_AWREGION,
  m_axi_DATA_OUTPUT_AWCACHE,
  m_axi_DATA_OUTPUT_AWPROT,
  m_axi_DATA_OUTPUT_AWQOS,
  m_axi_DATA_OUTPUT_AWVALID,
  m_axi_DATA_OUTPUT_AWREADY,
  m_axi_DATA_OUTPUT_WDATA,
  m_axi_DATA_OUTPUT_WSTRB,
  m_axi_DATA_OUTPUT_WLAST,
  m_axi_DATA_OUTPUT_WVALID,
  m_axi_DATA_OUTPUT_WREADY,
  m_axi_DATA_OUTPUT_BRESP,
  m_axi_DATA_OUTPUT_BVALID,
  m_axi_DATA_OUTPUT_BREADY,
  m_axi_DATA_OUTPUT_ARADDR,
  m_axi_DATA_OUTPUT_ARLEN,
  m_axi_DATA_OUTPUT_ARSIZE,
  m_axi_DATA_OUTPUT_ARBURST,
  m_axi_DATA_OUTPUT_ARLOCK,
  m_axi_DATA_OUTPUT_ARREGION,
  m_axi_DATA_OUTPUT_ARCACHE,
  m_axi_DATA_OUTPUT_ARPROT,
  m_axi_DATA_OUTPUT_ARQOS,
  m_axi_DATA_OUTPUT_ARVALID,
  m_axi_DATA_OUTPUT_ARREADY,
  m_axi_DATA_OUTPUT_RDATA,
  m_axi_DATA_OUTPUT_RRESP,
  m_axi_DATA_OUTPUT_RLAST,
  m_axi_DATA_OUTPUT_RVALID,
  m_axi_DATA_OUTPUT_RREADY
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL AWADDR" *)
input wire [6 : 0] s_axi_CTL_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL AWVALID" *)
input wire s_axi_CTL_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL AWREADY" *)
output wire s_axi_CTL_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL WDATA" *)
input wire [31 : 0] s_axi_CTL_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL WSTRB" *)
input wire [3 : 0] s_axi_CTL_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL WVALID" *)
input wire s_axi_CTL_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL WREADY" *)
output wire s_axi_CTL_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL BRESP" *)
output wire [1 : 0] s_axi_CTL_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL BVALID" *)
output wire s_axi_CTL_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL BREADY" *)
input wire s_axi_CTL_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL ARADDR" *)
input wire [6 : 0] s_axi_CTL_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL ARVALID" *)
input wire s_axi_CTL_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL ARREADY" *)
output wire s_axi_CTL_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL RDATA" *)
output wire [31 : 0] s_axi_CTL_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL RRESP" *)
output wire [1 : 0] s_axi_CTL_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL RVALID" *)
output wire s_axi_CTL_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTL, ADDR_WIDTH 7, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, ID_W\
IDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL RREADY" *)
input wire s_axi_CTL_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTL:m_axi_DATA_INPUT:m_axi_DATA_WEIGHT:m_axi_DATA_BIAS:m_axi_DATA_OUTPUT, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} max\
imum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {INTERRUPT {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT AWADDR" *)
output wire [31 : 0] m_axi_DATA_INPUT_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT AWLEN" *)
output wire [7 : 0] m_axi_DATA_INPUT_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT AWSIZE" *)
output wire [2 : 0] m_axi_DATA_INPUT_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT AWBURST" *)
output wire [1 : 0] m_axi_DATA_INPUT_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT AWLOCK" *)
output wire [1 : 0] m_axi_DATA_INPUT_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT AWREGION" *)
output wire [3 : 0] m_axi_DATA_INPUT_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT AWCACHE" *)
output wire [3 : 0] m_axi_DATA_INPUT_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT AWPROT" *)
output wire [2 : 0] m_axi_DATA_INPUT_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT AWQOS" *)
output wire [3 : 0] m_axi_DATA_INPUT_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT AWVALID" *)
output wire m_axi_DATA_INPUT_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT AWREADY" *)
input wire m_axi_DATA_INPUT_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT WDATA" *)
output wire [31 : 0] m_axi_DATA_INPUT_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT WSTRB" *)
output wire [3 : 0] m_axi_DATA_INPUT_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT WLAST" *)
output wire m_axi_DATA_INPUT_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT WVALID" *)
output wire m_axi_DATA_INPUT_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT WREADY" *)
input wire m_axi_DATA_INPUT_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT BRESP" *)
input wire [1 : 0] m_axi_DATA_INPUT_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT BVALID" *)
input wire m_axi_DATA_INPUT_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT BREADY" *)
output wire m_axi_DATA_INPUT_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT ARADDR" *)
output wire [31 : 0] m_axi_DATA_INPUT_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT ARLEN" *)
output wire [7 : 0] m_axi_DATA_INPUT_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT ARSIZE" *)
output wire [2 : 0] m_axi_DATA_INPUT_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT ARBURST" *)
output wire [1 : 0] m_axi_DATA_INPUT_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT ARLOCK" *)
output wire [1 : 0] m_axi_DATA_INPUT_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT ARREGION" *)
output wire [3 : 0] m_axi_DATA_INPUT_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT ARCACHE" *)
output wire [3 : 0] m_axi_DATA_INPUT_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT ARPROT" *)
output wire [2 : 0] m_axi_DATA_INPUT_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT ARQOS" *)
output wire [3 : 0] m_axi_DATA_INPUT_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT ARVALID" *)
output wire m_axi_DATA_INPUT_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT ARREADY" *)
input wire m_axi_DATA_INPUT_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT RDATA" *)
input wire [31 : 0] m_axi_DATA_INPUT_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT RRESP" *)
input wire [1 : 0] m_axi_DATA_INPUT_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT RLAST" *)
input wire m_axi_DATA_INPUT_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT RVALID" *)
input wire m_axi_DATA_INPUT_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_DATA_INPUT, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_D\
OMAIN design_1_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_INPUT RREADY" *)
output wire m_axi_DATA_INPUT_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT AWADDR" *)
output wire [31 : 0] m_axi_DATA_WEIGHT_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT AWLEN" *)
output wire [7 : 0] m_axi_DATA_WEIGHT_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT AWSIZE" *)
output wire [2 : 0] m_axi_DATA_WEIGHT_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT AWBURST" *)
output wire [1 : 0] m_axi_DATA_WEIGHT_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT AWLOCK" *)
output wire [1 : 0] m_axi_DATA_WEIGHT_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT AWREGION" *)
output wire [3 : 0] m_axi_DATA_WEIGHT_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT AWCACHE" *)
output wire [3 : 0] m_axi_DATA_WEIGHT_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT AWPROT" *)
output wire [2 : 0] m_axi_DATA_WEIGHT_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT AWQOS" *)
output wire [3 : 0] m_axi_DATA_WEIGHT_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT AWVALID" *)
output wire m_axi_DATA_WEIGHT_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT AWREADY" *)
input wire m_axi_DATA_WEIGHT_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT WDATA" *)
output wire [31 : 0] m_axi_DATA_WEIGHT_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT WSTRB" *)
output wire [3 : 0] m_axi_DATA_WEIGHT_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT WLAST" *)
output wire m_axi_DATA_WEIGHT_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT WVALID" *)
output wire m_axi_DATA_WEIGHT_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT WREADY" *)
input wire m_axi_DATA_WEIGHT_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT BRESP" *)
input wire [1 : 0] m_axi_DATA_WEIGHT_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT BVALID" *)
input wire m_axi_DATA_WEIGHT_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT BREADY" *)
output wire m_axi_DATA_WEIGHT_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT ARADDR" *)
output wire [31 : 0] m_axi_DATA_WEIGHT_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT ARLEN" *)
output wire [7 : 0] m_axi_DATA_WEIGHT_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT ARSIZE" *)
output wire [2 : 0] m_axi_DATA_WEIGHT_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT ARBURST" *)
output wire [1 : 0] m_axi_DATA_WEIGHT_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT ARLOCK" *)
output wire [1 : 0] m_axi_DATA_WEIGHT_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT ARREGION" *)
output wire [3 : 0] m_axi_DATA_WEIGHT_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT ARCACHE" *)
output wire [3 : 0] m_axi_DATA_WEIGHT_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT ARPROT" *)
output wire [2 : 0] m_axi_DATA_WEIGHT_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT ARQOS" *)
output wire [3 : 0] m_axi_DATA_WEIGHT_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT ARVALID" *)
output wire m_axi_DATA_WEIGHT_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT ARREADY" *)
input wire m_axi_DATA_WEIGHT_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT RDATA" *)
input wire [31 : 0] m_axi_DATA_WEIGHT_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT RRESP" *)
input wire [1 : 0] m_axi_DATA_WEIGHT_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT RLAST" *)
input wire m_axi_DATA_WEIGHT_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT RVALID" *)
input wire m_axi_DATA_WEIGHT_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_DATA_WEIGHT, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_\
DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_WEIGHT RREADY" *)
output wire m_axi_DATA_WEIGHT_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS AWADDR" *)
output wire [31 : 0] m_axi_DATA_BIAS_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS AWLEN" *)
output wire [7 : 0] m_axi_DATA_BIAS_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS AWSIZE" *)
output wire [2 : 0] m_axi_DATA_BIAS_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS AWBURST" *)
output wire [1 : 0] m_axi_DATA_BIAS_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS AWLOCK" *)
output wire [1 : 0] m_axi_DATA_BIAS_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS AWREGION" *)
output wire [3 : 0] m_axi_DATA_BIAS_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS AWCACHE" *)
output wire [3 : 0] m_axi_DATA_BIAS_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS AWPROT" *)
output wire [2 : 0] m_axi_DATA_BIAS_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS AWQOS" *)
output wire [3 : 0] m_axi_DATA_BIAS_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS AWVALID" *)
output wire m_axi_DATA_BIAS_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS AWREADY" *)
input wire m_axi_DATA_BIAS_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS WDATA" *)
output wire [31 : 0] m_axi_DATA_BIAS_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS WSTRB" *)
output wire [3 : 0] m_axi_DATA_BIAS_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS WLAST" *)
output wire m_axi_DATA_BIAS_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS WVALID" *)
output wire m_axi_DATA_BIAS_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS WREADY" *)
input wire m_axi_DATA_BIAS_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS BRESP" *)
input wire [1 : 0] m_axi_DATA_BIAS_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS BVALID" *)
input wire m_axi_DATA_BIAS_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS BREADY" *)
output wire m_axi_DATA_BIAS_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS ARADDR" *)
output wire [31 : 0] m_axi_DATA_BIAS_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS ARLEN" *)
output wire [7 : 0] m_axi_DATA_BIAS_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS ARSIZE" *)
output wire [2 : 0] m_axi_DATA_BIAS_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS ARBURST" *)
output wire [1 : 0] m_axi_DATA_BIAS_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS ARLOCK" *)
output wire [1 : 0] m_axi_DATA_BIAS_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS ARREGION" *)
output wire [3 : 0] m_axi_DATA_BIAS_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS ARCACHE" *)
output wire [3 : 0] m_axi_DATA_BIAS_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS ARPROT" *)
output wire [2 : 0] m_axi_DATA_BIAS_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS ARQOS" *)
output wire [3 : 0] m_axi_DATA_BIAS_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS ARVALID" *)
output wire m_axi_DATA_BIAS_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS ARREADY" *)
input wire m_axi_DATA_BIAS_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS RDATA" *)
input wire [31 : 0] m_axi_DATA_BIAS_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS RRESP" *)
input wire [1 : 0] m_axi_DATA_BIAS_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS RLAST" *)
input wire m_axi_DATA_BIAS_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS RVALID" *)
input wire m_axi_DATA_BIAS_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_DATA_BIAS, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DO\
MAIN design_1_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BIAS RREADY" *)
output wire m_axi_DATA_BIAS_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT AWADDR" *)
output wire [31 : 0] m_axi_DATA_OUTPUT_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT AWLEN" *)
output wire [7 : 0] m_axi_DATA_OUTPUT_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT AWSIZE" *)
output wire [2 : 0] m_axi_DATA_OUTPUT_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT AWBURST" *)
output wire [1 : 0] m_axi_DATA_OUTPUT_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT AWLOCK" *)
output wire [1 : 0] m_axi_DATA_OUTPUT_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT AWREGION" *)
output wire [3 : 0] m_axi_DATA_OUTPUT_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT AWCACHE" *)
output wire [3 : 0] m_axi_DATA_OUTPUT_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT AWPROT" *)
output wire [2 : 0] m_axi_DATA_OUTPUT_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT AWQOS" *)
output wire [3 : 0] m_axi_DATA_OUTPUT_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT AWVALID" *)
output wire m_axi_DATA_OUTPUT_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT AWREADY" *)
input wire m_axi_DATA_OUTPUT_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT WDATA" *)
output wire [31 : 0] m_axi_DATA_OUTPUT_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT WSTRB" *)
output wire [3 : 0] m_axi_DATA_OUTPUT_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT WLAST" *)
output wire m_axi_DATA_OUTPUT_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT WVALID" *)
output wire m_axi_DATA_OUTPUT_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT WREADY" *)
input wire m_axi_DATA_OUTPUT_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT BRESP" *)
input wire [1 : 0] m_axi_DATA_OUTPUT_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT BVALID" *)
input wire m_axi_DATA_OUTPUT_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT BREADY" *)
output wire m_axi_DATA_OUTPUT_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT ARADDR" *)
output wire [31 : 0] m_axi_DATA_OUTPUT_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT ARLEN" *)
output wire [7 : 0] m_axi_DATA_OUTPUT_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT ARSIZE" *)
output wire [2 : 0] m_axi_DATA_OUTPUT_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT ARBURST" *)
output wire [1 : 0] m_axi_DATA_OUTPUT_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT ARLOCK" *)
output wire [1 : 0] m_axi_DATA_OUTPUT_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT ARREGION" *)
output wire [3 : 0] m_axi_DATA_OUTPUT_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT ARCACHE" *)
output wire [3 : 0] m_axi_DATA_OUTPUT_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT ARPROT" *)
output wire [2 : 0] m_axi_DATA_OUTPUT_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT ARQOS" *)
output wire [3 : 0] m_axi_DATA_OUTPUT_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT ARVALID" *)
output wire m_axi_DATA_OUTPUT_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT ARREADY" *)
input wire m_axi_DATA_OUTPUT_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT RDATA" *)
input wire [31 : 0] m_axi_DATA_OUTPUT_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT RRESP" *)
input wire [1 : 0] m_axi_DATA_OUTPUT_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT RLAST" *)
input wire m_axi_DATA_OUTPUT_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT RVALID" *)
input wire m_axi_DATA_OUTPUT_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_DATA_OUTPUT, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_\
DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_OUTPUT RREADY" *)
output wire m_axi_DATA_OUTPUT_RREADY;

  conv1 #(
    .C_S_AXI_CTL_ADDR_WIDTH(7),
    .C_S_AXI_CTL_DATA_WIDTH(32),
    .C_M_AXI_DATA_INPUT_ID_WIDTH(1),
    .C_M_AXI_DATA_INPUT_ADDR_WIDTH(32),
    .C_M_AXI_DATA_INPUT_DATA_WIDTH(32),
    .C_M_AXI_DATA_INPUT_AWUSER_WIDTH(1),
    .C_M_AXI_DATA_INPUT_ARUSER_WIDTH(1),
    .C_M_AXI_DATA_INPUT_WUSER_WIDTH(1),
    .C_M_AXI_DATA_INPUT_RUSER_WIDTH(1),
    .C_M_AXI_DATA_INPUT_BUSER_WIDTH(1),
    .C_M_AXI_DATA_INPUT_USER_VALUE('H00000000),
    .C_M_AXI_DATA_INPUT_PROT_VALUE('B000),
    .C_M_AXI_DATA_INPUT_CACHE_VALUE('B0011),
    .C_M_AXI_DATA_WEIGHT_ID_WIDTH(1),
    .C_M_AXI_DATA_WEIGHT_ADDR_WIDTH(32),
    .C_M_AXI_DATA_WEIGHT_DATA_WIDTH(32),
    .C_M_AXI_DATA_WEIGHT_AWUSER_WIDTH(1),
    .C_M_AXI_DATA_WEIGHT_ARUSER_WIDTH(1),
    .C_M_AXI_DATA_WEIGHT_WUSER_WIDTH(1),
    .C_M_AXI_DATA_WEIGHT_RUSER_WIDTH(1),
    .C_M_AXI_DATA_WEIGHT_BUSER_WIDTH(1),
    .C_M_AXI_DATA_WEIGHT_USER_VALUE('H00000000),
    .C_M_AXI_DATA_WEIGHT_PROT_VALUE('B000),
    .C_M_AXI_DATA_WEIGHT_CACHE_VALUE('B0011),
    .C_M_AXI_DATA_BIAS_ID_WIDTH(1),
    .C_M_AXI_DATA_BIAS_ADDR_WIDTH(32),
    .C_M_AXI_DATA_BIAS_DATA_WIDTH(32),
    .C_M_AXI_DATA_BIAS_AWUSER_WIDTH(1),
    .C_M_AXI_DATA_BIAS_ARUSER_WIDTH(1),
    .C_M_AXI_DATA_BIAS_WUSER_WIDTH(1),
    .C_M_AXI_DATA_BIAS_RUSER_WIDTH(1),
    .C_M_AXI_DATA_BIAS_BUSER_WIDTH(1),
    .C_M_AXI_DATA_BIAS_USER_VALUE('H00000000),
    .C_M_AXI_DATA_BIAS_PROT_VALUE('B000),
    .C_M_AXI_DATA_BIAS_CACHE_VALUE('B0011),
    .C_M_AXI_DATA_OUTPUT_ID_WIDTH(1),
    .C_M_AXI_DATA_OUTPUT_ADDR_WIDTH(32),
    .C_M_AXI_DATA_OUTPUT_DATA_WIDTH(32),
    .C_M_AXI_DATA_OUTPUT_AWUSER_WIDTH(1),
    .C_M_AXI_DATA_OUTPUT_ARUSER_WIDTH(1),
    .C_M_AXI_DATA_OUTPUT_WUSER_WIDTH(1),
    .C_M_AXI_DATA_OUTPUT_RUSER_WIDTH(1),
    .C_M_AXI_DATA_OUTPUT_BUSER_WIDTH(1),
    .C_M_AXI_DATA_OUTPUT_USER_VALUE('H00000000),
    .C_M_AXI_DATA_OUTPUT_PROT_VALUE('B000),
    .C_M_AXI_DATA_OUTPUT_CACHE_VALUE('B0011)
  ) inst (
    .s_axi_CTL_AWADDR(s_axi_CTL_AWADDR),
    .s_axi_CTL_AWVALID(s_axi_CTL_AWVALID),
    .s_axi_CTL_AWREADY(s_axi_CTL_AWREADY),
    .s_axi_CTL_WDATA(s_axi_CTL_WDATA),
    .s_axi_CTL_WSTRB(s_axi_CTL_WSTRB),
    .s_axi_CTL_WVALID(s_axi_CTL_WVALID),
    .s_axi_CTL_WREADY(s_axi_CTL_WREADY),
    .s_axi_CTL_BRESP(s_axi_CTL_BRESP),
    .s_axi_CTL_BVALID(s_axi_CTL_BVALID),
    .s_axi_CTL_BREADY(s_axi_CTL_BREADY),
    .s_axi_CTL_ARADDR(s_axi_CTL_ARADDR),
    .s_axi_CTL_ARVALID(s_axi_CTL_ARVALID),
    .s_axi_CTL_ARREADY(s_axi_CTL_ARREADY),
    .s_axi_CTL_RDATA(s_axi_CTL_RDATA),
    .s_axi_CTL_RRESP(s_axi_CTL_RRESP),
    .s_axi_CTL_RVALID(s_axi_CTL_RVALID),
    .s_axi_CTL_RREADY(s_axi_CTL_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_DATA_INPUT_AWID(),
    .m_axi_DATA_INPUT_AWADDR(m_axi_DATA_INPUT_AWADDR),
    .m_axi_DATA_INPUT_AWLEN(m_axi_DATA_INPUT_AWLEN),
    .m_axi_DATA_INPUT_AWSIZE(m_axi_DATA_INPUT_AWSIZE),
    .m_axi_DATA_INPUT_AWBURST(m_axi_DATA_INPUT_AWBURST),
    .m_axi_DATA_INPUT_AWLOCK(m_axi_DATA_INPUT_AWLOCK),
    .m_axi_DATA_INPUT_AWREGION(m_axi_DATA_INPUT_AWREGION),
    .m_axi_DATA_INPUT_AWCACHE(m_axi_DATA_INPUT_AWCACHE),
    .m_axi_DATA_INPUT_AWPROT(m_axi_DATA_INPUT_AWPROT),
    .m_axi_DATA_INPUT_AWQOS(m_axi_DATA_INPUT_AWQOS),
    .m_axi_DATA_INPUT_AWUSER(),
    .m_axi_DATA_INPUT_AWVALID(m_axi_DATA_INPUT_AWVALID),
    .m_axi_DATA_INPUT_AWREADY(m_axi_DATA_INPUT_AWREADY),
    .m_axi_DATA_INPUT_WID(),
    .m_axi_DATA_INPUT_WDATA(m_axi_DATA_INPUT_WDATA),
    .m_axi_DATA_INPUT_WSTRB(m_axi_DATA_INPUT_WSTRB),
    .m_axi_DATA_INPUT_WLAST(m_axi_DATA_INPUT_WLAST),
    .m_axi_DATA_INPUT_WUSER(),
    .m_axi_DATA_INPUT_WVALID(m_axi_DATA_INPUT_WVALID),
    .m_axi_DATA_INPUT_WREADY(m_axi_DATA_INPUT_WREADY),
    .m_axi_DATA_INPUT_BID(1'B0),
    .m_axi_DATA_INPUT_BRESP(m_axi_DATA_INPUT_BRESP),
    .m_axi_DATA_INPUT_BUSER(1'B0),
    .m_axi_DATA_INPUT_BVALID(m_axi_DATA_INPUT_BVALID),
    .m_axi_DATA_INPUT_BREADY(m_axi_DATA_INPUT_BREADY),
    .m_axi_DATA_INPUT_ARID(),
    .m_axi_DATA_INPUT_ARADDR(m_axi_DATA_INPUT_ARADDR),
    .m_axi_DATA_INPUT_ARLEN(m_axi_DATA_INPUT_ARLEN),
    .m_axi_DATA_INPUT_ARSIZE(m_axi_DATA_INPUT_ARSIZE),
    .m_axi_DATA_INPUT_ARBURST(m_axi_DATA_INPUT_ARBURST),
    .m_axi_DATA_INPUT_ARLOCK(m_axi_DATA_INPUT_ARLOCK),
    .m_axi_DATA_INPUT_ARREGION(m_axi_DATA_INPUT_ARREGION),
    .m_axi_DATA_INPUT_ARCACHE(m_axi_DATA_INPUT_ARCACHE),
    .m_axi_DATA_INPUT_ARPROT(m_axi_DATA_INPUT_ARPROT),
    .m_axi_DATA_INPUT_ARQOS(m_axi_DATA_INPUT_ARQOS),
    .m_axi_DATA_INPUT_ARUSER(),
    .m_axi_DATA_INPUT_ARVALID(m_axi_DATA_INPUT_ARVALID),
    .m_axi_DATA_INPUT_ARREADY(m_axi_DATA_INPUT_ARREADY),
    .m_axi_DATA_INPUT_RID(1'B0),
    .m_axi_DATA_INPUT_RDATA(m_axi_DATA_INPUT_RDATA),
    .m_axi_DATA_INPUT_RRESP(m_axi_DATA_INPUT_RRESP),
    .m_axi_DATA_INPUT_RLAST(m_axi_DATA_INPUT_RLAST),
    .m_axi_DATA_INPUT_RUSER(1'B0),
    .m_axi_DATA_INPUT_RVALID(m_axi_DATA_INPUT_RVALID),
    .m_axi_DATA_INPUT_RREADY(m_axi_DATA_INPUT_RREADY),
    .m_axi_DATA_WEIGHT_AWID(),
    .m_axi_DATA_WEIGHT_AWADDR(m_axi_DATA_WEIGHT_AWADDR),
    .m_axi_DATA_WEIGHT_AWLEN(m_axi_DATA_WEIGHT_AWLEN),
    .m_axi_DATA_WEIGHT_AWSIZE(m_axi_DATA_WEIGHT_AWSIZE),
    .m_axi_DATA_WEIGHT_AWBURST(m_axi_DATA_WEIGHT_AWBURST),
    .m_axi_DATA_WEIGHT_AWLOCK(m_axi_DATA_WEIGHT_AWLOCK),
    .m_axi_DATA_WEIGHT_AWREGION(m_axi_DATA_WEIGHT_AWREGION),
    .m_axi_DATA_WEIGHT_AWCACHE(m_axi_DATA_WEIGHT_AWCACHE),
    .m_axi_DATA_WEIGHT_AWPROT(m_axi_DATA_WEIGHT_AWPROT),
    .m_axi_DATA_WEIGHT_AWQOS(m_axi_DATA_WEIGHT_AWQOS),
    .m_axi_DATA_WEIGHT_AWUSER(),
    .m_axi_DATA_WEIGHT_AWVALID(m_axi_DATA_WEIGHT_AWVALID),
    .m_axi_DATA_WEIGHT_AWREADY(m_axi_DATA_WEIGHT_AWREADY),
    .m_axi_DATA_WEIGHT_WID(),
    .m_axi_DATA_WEIGHT_WDATA(m_axi_DATA_WEIGHT_WDATA),
    .m_axi_DATA_WEIGHT_WSTRB(m_axi_DATA_WEIGHT_WSTRB),
    .m_axi_DATA_WEIGHT_WLAST(m_axi_DATA_WEIGHT_WLAST),
    .m_axi_DATA_WEIGHT_WUSER(),
    .m_axi_DATA_WEIGHT_WVALID(m_axi_DATA_WEIGHT_WVALID),
    .m_axi_DATA_WEIGHT_WREADY(m_axi_DATA_WEIGHT_WREADY),
    .m_axi_DATA_WEIGHT_BID(1'B0),
    .m_axi_DATA_WEIGHT_BRESP(m_axi_DATA_WEIGHT_BRESP),
    .m_axi_DATA_WEIGHT_BUSER(1'B0),
    .m_axi_DATA_WEIGHT_BVALID(m_axi_DATA_WEIGHT_BVALID),
    .m_axi_DATA_WEIGHT_BREADY(m_axi_DATA_WEIGHT_BREADY),
    .m_axi_DATA_WEIGHT_ARID(),
    .m_axi_DATA_WEIGHT_ARADDR(m_axi_DATA_WEIGHT_ARADDR),
    .m_axi_DATA_WEIGHT_ARLEN(m_axi_DATA_WEIGHT_ARLEN),
    .m_axi_DATA_WEIGHT_ARSIZE(m_axi_DATA_WEIGHT_ARSIZE),
    .m_axi_DATA_WEIGHT_ARBURST(m_axi_DATA_WEIGHT_ARBURST),
    .m_axi_DATA_WEIGHT_ARLOCK(m_axi_DATA_WEIGHT_ARLOCK),
    .m_axi_DATA_WEIGHT_ARREGION(m_axi_DATA_WEIGHT_ARREGION),
    .m_axi_DATA_WEIGHT_ARCACHE(m_axi_DATA_WEIGHT_ARCACHE),
    .m_axi_DATA_WEIGHT_ARPROT(m_axi_DATA_WEIGHT_ARPROT),
    .m_axi_DATA_WEIGHT_ARQOS(m_axi_DATA_WEIGHT_ARQOS),
    .m_axi_DATA_WEIGHT_ARUSER(),
    .m_axi_DATA_WEIGHT_ARVALID(m_axi_DATA_WEIGHT_ARVALID),
    .m_axi_DATA_WEIGHT_ARREADY(m_axi_DATA_WEIGHT_ARREADY),
    .m_axi_DATA_WEIGHT_RID(1'B0),
    .m_axi_DATA_WEIGHT_RDATA(m_axi_DATA_WEIGHT_RDATA),
    .m_axi_DATA_WEIGHT_RRESP(m_axi_DATA_WEIGHT_RRESP),
    .m_axi_DATA_WEIGHT_RLAST(m_axi_DATA_WEIGHT_RLAST),
    .m_axi_DATA_WEIGHT_RUSER(1'B0),
    .m_axi_DATA_WEIGHT_RVALID(m_axi_DATA_WEIGHT_RVALID),
    .m_axi_DATA_WEIGHT_RREADY(m_axi_DATA_WEIGHT_RREADY),
    .m_axi_DATA_BIAS_AWID(),
    .m_axi_DATA_BIAS_AWADDR(m_axi_DATA_BIAS_AWADDR),
    .m_axi_DATA_BIAS_AWLEN(m_axi_DATA_BIAS_AWLEN),
    .m_axi_DATA_BIAS_AWSIZE(m_axi_DATA_BIAS_AWSIZE),
    .m_axi_DATA_BIAS_AWBURST(m_axi_DATA_BIAS_AWBURST),
    .m_axi_DATA_BIAS_AWLOCK(m_axi_DATA_BIAS_AWLOCK),
    .m_axi_DATA_BIAS_AWREGION(m_axi_DATA_BIAS_AWREGION),
    .m_axi_DATA_BIAS_AWCACHE(m_axi_DATA_BIAS_AWCACHE),
    .m_axi_DATA_BIAS_AWPROT(m_axi_DATA_BIAS_AWPROT),
    .m_axi_DATA_BIAS_AWQOS(m_axi_DATA_BIAS_AWQOS),
    .m_axi_DATA_BIAS_AWUSER(),
    .m_axi_DATA_BIAS_AWVALID(m_axi_DATA_BIAS_AWVALID),
    .m_axi_DATA_BIAS_AWREADY(m_axi_DATA_BIAS_AWREADY),
    .m_axi_DATA_BIAS_WID(),
    .m_axi_DATA_BIAS_WDATA(m_axi_DATA_BIAS_WDATA),
    .m_axi_DATA_BIAS_WSTRB(m_axi_DATA_BIAS_WSTRB),
    .m_axi_DATA_BIAS_WLAST(m_axi_DATA_BIAS_WLAST),
    .m_axi_DATA_BIAS_WUSER(),
    .m_axi_DATA_BIAS_WVALID(m_axi_DATA_BIAS_WVALID),
    .m_axi_DATA_BIAS_WREADY(m_axi_DATA_BIAS_WREADY),
    .m_axi_DATA_BIAS_BID(1'B0),
    .m_axi_DATA_BIAS_BRESP(m_axi_DATA_BIAS_BRESP),
    .m_axi_DATA_BIAS_BUSER(1'B0),
    .m_axi_DATA_BIAS_BVALID(m_axi_DATA_BIAS_BVALID),
    .m_axi_DATA_BIAS_BREADY(m_axi_DATA_BIAS_BREADY),
    .m_axi_DATA_BIAS_ARID(),
    .m_axi_DATA_BIAS_ARADDR(m_axi_DATA_BIAS_ARADDR),
    .m_axi_DATA_BIAS_ARLEN(m_axi_DATA_BIAS_ARLEN),
    .m_axi_DATA_BIAS_ARSIZE(m_axi_DATA_BIAS_ARSIZE),
    .m_axi_DATA_BIAS_ARBURST(m_axi_DATA_BIAS_ARBURST),
    .m_axi_DATA_BIAS_ARLOCK(m_axi_DATA_BIAS_ARLOCK),
    .m_axi_DATA_BIAS_ARREGION(m_axi_DATA_BIAS_ARREGION),
    .m_axi_DATA_BIAS_ARCACHE(m_axi_DATA_BIAS_ARCACHE),
    .m_axi_DATA_BIAS_ARPROT(m_axi_DATA_BIAS_ARPROT),
    .m_axi_DATA_BIAS_ARQOS(m_axi_DATA_BIAS_ARQOS),
    .m_axi_DATA_BIAS_ARUSER(),
    .m_axi_DATA_BIAS_ARVALID(m_axi_DATA_BIAS_ARVALID),
    .m_axi_DATA_BIAS_ARREADY(m_axi_DATA_BIAS_ARREADY),
    .m_axi_DATA_BIAS_RID(1'B0),
    .m_axi_DATA_BIAS_RDATA(m_axi_DATA_BIAS_RDATA),
    .m_axi_DATA_BIAS_RRESP(m_axi_DATA_BIAS_RRESP),
    .m_axi_DATA_BIAS_RLAST(m_axi_DATA_BIAS_RLAST),
    .m_axi_DATA_BIAS_RUSER(1'B0),
    .m_axi_DATA_BIAS_RVALID(m_axi_DATA_BIAS_RVALID),
    .m_axi_DATA_BIAS_RREADY(m_axi_DATA_BIAS_RREADY),
    .m_axi_DATA_OUTPUT_AWID(),
    .m_axi_DATA_OUTPUT_AWADDR(m_axi_DATA_OUTPUT_AWADDR),
    .m_axi_DATA_OUTPUT_AWLEN(m_axi_DATA_OUTPUT_AWLEN),
    .m_axi_DATA_OUTPUT_AWSIZE(m_axi_DATA_OUTPUT_AWSIZE),
    .m_axi_DATA_OUTPUT_AWBURST(m_axi_DATA_OUTPUT_AWBURST),
    .m_axi_DATA_OUTPUT_AWLOCK(m_axi_DATA_OUTPUT_AWLOCK),
    .m_axi_DATA_OUTPUT_AWREGION(m_axi_DATA_OUTPUT_AWREGION),
    .m_axi_DATA_OUTPUT_AWCACHE(m_axi_DATA_OUTPUT_AWCACHE),
    .m_axi_DATA_OUTPUT_AWPROT(m_axi_DATA_OUTPUT_AWPROT),
    .m_axi_DATA_OUTPUT_AWQOS(m_axi_DATA_OUTPUT_AWQOS),
    .m_axi_DATA_OUTPUT_AWUSER(),
    .m_axi_DATA_OUTPUT_AWVALID(m_axi_DATA_OUTPUT_AWVALID),
    .m_axi_DATA_OUTPUT_AWREADY(m_axi_DATA_OUTPUT_AWREADY),
    .m_axi_DATA_OUTPUT_WID(),
    .m_axi_DATA_OUTPUT_WDATA(m_axi_DATA_OUTPUT_WDATA),
    .m_axi_DATA_OUTPUT_WSTRB(m_axi_DATA_OUTPUT_WSTRB),
    .m_axi_DATA_OUTPUT_WLAST(m_axi_DATA_OUTPUT_WLAST),
    .m_axi_DATA_OUTPUT_WUSER(),
    .m_axi_DATA_OUTPUT_WVALID(m_axi_DATA_OUTPUT_WVALID),
    .m_axi_DATA_OUTPUT_WREADY(m_axi_DATA_OUTPUT_WREADY),
    .m_axi_DATA_OUTPUT_BID(1'B0),
    .m_axi_DATA_OUTPUT_BRESP(m_axi_DATA_OUTPUT_BRESP),
    .m_axi_DATA_OUTPUT_BUSER(1'B0),
    .m_axi_DATA_OUTPUT_BVALID(m_axi_DATA_OUTPUT_BVALID),
    .m_axi_DATA_OUTPUT_BREADY(m_axi_DATA_OUTPUT_BREADY),
    .m_axi_DATA_OUTPUT_ARID(),
    .m_axi_DATA_OUTPUT_ARADDR(m_axi_DATA_OUTPUT_ARADDR),
    .m_axi_DATA_OUTPUT_ARLEN(m_axi_DATA_OUTPUT_ARLEN),
    .m_axi_DATA_OUTPUT_ARSIZE(m_axi_DATA_OUTPUT_ARSIZE),
    .m_axi_DATA_OUTPUT_ARBURST(m_axi_DATA_OUTPUT_ARBURST),
    .m_axi_DATA_OUTPUT_ARLOCK(m_axi_DATA_OUTPUT_ARLOCK),
    .m_axi_DATA_OUTPUT_ARREGION(m_axi_DATA_OUTPUT_ARREGION),
    .m_axi_DATA_OUTPUT_ARCACHE(m_axi_DATA_OUTPUT_ARCACHE),
    .m_axi_DATA_OUTPUT_ARPROT(m_axi_DATA_OUTPUT_ARPROT),
    .m_axi_DATA_OUTPUT_ARQOS(m_axi_DATA_OUTPUT_ARQOS),
    .m_axi_DATA_OUTPUT_ARUSER(),
    .m_axi_DATA_OUTPUT_ARVALID(m_axi_DATA_OUTPUT_ARVALID),
    .m_axi_DATA_OUTPUT_ARREADY(m_axi_DATA_OUTPUT_ARREADY),
    .m_axi_DATA_OUTPUT_RID(1'B0),
    .m_axi_DATA_OUTPUT_RDATA(m_axi_DATA_OUTPUT_RDATA),
    .m_axi_DATA_OUTPUT_RRESP(m_axi_DATA_OUTPUT_RRESP),
    .m_axi_DATA_OUTPUT_RLAST(m_axi_DATA_OUTPUT_RLAST),
    .m_axi_DATA_OUTPUT_RUSER(1'B0),
    .m_axi_DATA_OUTPUT_RVALID(m_axi_DATA_OUTPUT_RVALID),
    .m_axi_DATA_OUTPUT_RREADY(m_axi_DATA_OUTPUT_RREADY)
  );
endmodule
