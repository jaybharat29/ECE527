-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Oct 25 11:51:01 2018
-- Host        : Jay running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_conv1_0_1_stub.vhdl
-- Design      : design_1_conv1_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_CTL_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTL_AWVALID : in STD_LOGIC;
    s_axi_CTL_AWREADY : out STD_LOGIC;
    s_axi_CTL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTL_WVALID : in STD_LOGIC;
    s_axi_CTL_WREADY : out STD_LOGIC;
    s_axi_CTL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTL_BVALID : out STD_LOGIC;
    s_axi_CTL_BREADY : in STD_LOGIC;
    s_axi_CTL_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTL_ARVALID : in STD_LOGIC;
    s_axi_CTL_ARREADY : out STD_LOGIC;
    s_axi_CTL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTL_RVALID : out STD_LOGIC;
    s_axi_CTL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_DATA_INPUT_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_INPUT_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_INPUT_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_INPUT_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_INPUT_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_INPUT_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_INPUT_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_INPUT_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_INPUT_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_INPUT_AWVALID : out STD_LOGIC;
    m_axi_DATA_INPUT_AWREADY : in STD_LOGIC;
    m_axi_DATA_INPUT_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_INPUT_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_INPUT_WLAST : out STD_LOGIC;
    m_axi_DATA_INPUT_WVALID : out STD_LOGIC;
    m_axi_DATA_INPUT_WREADY : in STD_LOGIC;
    m_axi_DATA_INPUT_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_INPUT_BVALID : in STD_LOGIC;
    m_axi_DATA_INPUT_BREADY : out STD_LOGIC;
    m_axi_DATA_INPUT_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_INPUT_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_INPUT_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_INPUT_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_INPUT_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_INPUT_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_INPUT_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_INPUT_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_INPUT_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_INPUT_ARVALID : out STD_LOGIC;
    m_axi_DATA_INPUT_ARREADY : in STD_LOGIC;
    m_axi_DATA_INPUT_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_INPUT_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_INPUT_RLAST : in STD_LOGIC;
    m_axi_DATA_INPUT_RVALID : in STD_LOGIC;
    m_axi_DATA_INPUT_RREADY : out STD_LOGIC;
    m_axi_DATA_WEIGHT_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_WEIGHT_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_WEIGHT_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_WEIGHT_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_WEIGHT_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_WEIGHT_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_WEIGHT_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_WEIGHT_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_WEIGHT_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_WEIGHT_AWVALID : out STD_LOGIC;
    m_axi_DATA_WEIGHT_AWREADY : in STD_LOGIC;
    m_axi_DATA_WEIGHT_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_WEIGHT_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_WEIGHT_WLAST : out STD_LOGIC;
    m_axi_DATA_WEIGHT_WVALID : out STD_LOGIC;
    m_axi_DATA_WEIGHT_WREADY : in STD_LOGIC;
    m_axi_DATA_WEIGHT_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_WEIGHT_BVALID : in STD_LOGIC;
    m_axi_DATA_WEIGHT_BREADY : out STD_LOGIC;
    m_axi_DATA_WEIGHT_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_WEIGHT_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_WEIGHT_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_WEIGHT_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_WEIGHT_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_WEIGHT_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_WEIGHT_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_WEIGHT_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_WEIGHT_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_WEIGHT_ARVALID : out STD_LOGIC;
    m_axi_DATA_WEIGHT_ARREADY : in STD_LOGIC;
    m_axi_DATA_WEIGHT_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_WEIGHT_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_WEIGHT_RLAST : in STD_LOGIC;
    m_axi_DATA_WEIGHT_RVALID : in STD_LOGIC;
    m_axi_DATA_WEIGHT_RREADY : out STD_LOGIC;
    m_axi_DATA_BIAS_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_BIAS_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_BIAS_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_BIAS_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BIAS_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BIAS_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BIAS_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BIAS_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_BIAS_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BIAS_AWVALID : out STD_LOGIC;
    m_axi_DATA_BIAS_AWREADY : in STD_LOGIC;
    m_axi_DATA_BIAS_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_BIAS_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BIAS_WLAST : out STD_LOGIC;
    m_axi_DATA_BIAS_WVALID : out STD_LOGIC;
    m_axi_DATA_BIAS_WREADY : in STD_LOGIC;
    m_axi_DATA_BIAS_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BIAS_BVALID : in STD_LOGIC;
    m_axi_DATA_BIAS_BREADY : out STD_LOGIC;
    m_axi_DATA_BIAS_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_BIAS_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_BIAS_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_BIAS_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BIAS_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BIAS_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BIAS_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BIAS_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_BIAS_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BIAS_ARVALID : out STD_LOGIC;
    m_axi_DATA_BIAS_ARREADY : in STD_LOGIC;
    m_axi_DATA_BIAS_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_BIAS_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BIAS_RLAST : in STD_LOGIC;
    m_axi_DATA_BIAS_RVALID : in STD_LOGIC;
    m_axi_DATA_BIAS_RREADY : out STD_LOGIC;
    m_axi_DATA_OUTPUT_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_OUTPUT_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_OUTPUT_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_OUTPUT_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_OUTPUT_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_OUTPUT_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_OUTPUT_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_OUTPUT_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_OUTPUT_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_OUTPUT_AWVALID : out STD_LOGIC;
    m_axi_DATA_OUTPUT_AWREADY : in STD_LOGIC;
    m_axi_DATA_OUTPUT_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_OUTPUT_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_OUTPUT_WLAST : out STD_LOGIC;
    m_axi_DATA_OUTPUT_WVALID : out STD_LOGIC;
    m_axi_DATA_OUTPUT_WREADY : in STD_LOGIC;
    m_axi_DATA_OUTPUT_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_OUTPUT_BVALID : in STD_LOGIC;
    m_axi_DATA_OUTPUT_BREADY : out STD_LOGIC;
    m_axi_DATA_OUTPUT_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_OUTPUT_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_OUTPUT_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_OUTPUT_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_OUTPUT_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_OUTPUT_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_OUTPUT_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_OUTPUT_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_OUTPUT_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_OUTPUT_ARVALID : out STD_LOGIC;
    m_axi_DATA_OUTPUT_ARREADY : in STD_LOGIC;
    m_axi_DATA_OUTPUT_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_OUTPUT_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_OUTPUT_RLAST : in STD_LOGIC;
    m_axi_DATA_OUTPUT_RVALID : in STD_LOGIC;
    m_axi_DATA_OUTPUT_RREADY : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_CTL_AWADDR[5:0],s_axi_CTL_AWVALID,s_axi_CTL_AWREADY,s_axi_CTL_WDATA[31:0],s_axi_CTL_WSTRB[3:0],s_axi_CTL_WVALID,s_axi_CTL_WREADY,s_axi_CTL_BRESP[1:0],s_axi_CTL_BVALID,s_axi_CTL_BREADY,s_axi_CTL_ARADDR[5:0],s_axi_CTL_ARVALID,s_axi_CTL_ARREADY,s_axi_CTL_RDATA[31:0],s_axi_CTL_RRESP[1:0],s_axi_CTL_RVALID,s_axi_CTL_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_DATA_INPUT_AWADDR[31:0],m_axi_DATA_INPUT_AWLEN[7:0],m_axi_DATA_INPUT_AWSIZE[2:0],m_axi_DATA_INPUT_AWBURST[1:0],m_axi_DATA_INPUT_AWLOCK[1:0],m_axi_DATA_INPUT_AWREGION[3:0],m_axi_DATA_INPUT_AWCACHE[3:0],m_axi_DATA_INPUT_AWPROT[2:0],m_axi_DATA_INPUT_AWQOS[3:0],m_axi_DATA_INPUT_AWVALID,m_axi_DATA_INPUT_AWREADY,m_axi_DATA_INPUT_WDATA[31:0],m_axi_DATA_INPUT_WSTRB[3:0],m_axi_DATA_INPUT_WLAST,m_axi_DATA_INPUT_WVALID,m_axi_DATA_INPUT_WREADY,m_axi_DATA_INPUT_BRESP[1:0],m_axi_DATA_INPUT_BVALID,m_axi_DATA_INPUT_BREADY,m_axi_DATA_INPUT_ARADDR[31:0],m_axi_DATA_INPUT_ARLEN[7:0],m_axi_DATA_INPUT_ARSIZE[2:0],m_axi_DATA_INPUT_ARBURST[1:0],m_axi_DATA_INPUT_ARLOCK[1:0],m_axi_DATA_INPUT_ARREGION[3:0],m_axi_DATA_INPUT_ARCACHE[3:0],m_axi_DATA_INPUT_ARPROT[2:0],m_axi_DATA_INPUT_ARQOS[3:0],m_axi_DATA_INPUT_ARVALID,m_axi_DATA_INPUT_ARREADY,m_axi_DATA_INPUT_RDATA[31:0],m_axi_DATA_INPUT_RRESP[1:0],m_axi_DATA_INPUT_RLAST,m_axi_DATA_INPUT_RVALID,m_axi_DATA_INPUT_RREADY,m_axi_DATA_WEIGHT_AWADDR[31:0],m_axi_DATA_WEIGHT_AWLEN[7:0],m_axi_DATA_WEIGHT_AWSIZE[2:0],m_axi_DATA_WEIGHT_AWBURST[1:0],m_axi_DATA_WEIGHT_AWLOCK[1:0],m_axi_DATA_WEIGHT_AWREGION[3:0],m_axi_DATA_WEIGHT_AWCACHE[3:0],m_axi_DATA_WEIGHT_AWPROT[2:0],m_axi_DATA_WEIGHT_AWQOS[3:0],m_axi_DATA_WEIGHT_AWVALID,m_axi_DATA_WEIGHT_AWREADY,m_axi_DATA_WEIGHT_WDATA[31:0],m_axi_DATA_WEIGHT_WSTRB[3:0],m_axi_DATA_WEIGHT_WLAST,m_axi_DATA_WEIGHT_WVALID,m_axi_DATA_WEIGHT_WREADY,m_axi_DATA_WEIGHT_BRESP[1:0],m_axi_DATA_WEIGHT_BVALID,m_axi_DATA_WEIGHT_BREADY,m_axi_DATA_WEIGHT_ARADDR[31:0],m_axi_DATA_WEIGHT_ARLEN[7:0],m_axi_DATA_WEIGHT_ARSIZE[2:0],m_axi_DATA_WEIGHT_ARBURST[1:0],m_axi_DATA_WEIGHT_ARLOCK[1:0],m_axi_DATA_WEIGHT_ARREGION[3:0],m_axi_DATA_WEIGHT_ARCACHE[3:0],m_axi_DATA_WEIGHT_ARPROT[2:0],m_axi_DATA_WEIGHT_ARQOS[3:0],m_axi_DATA_WEIGHT_ARVALID,m_axi_DATA_WEIGHT_ARREADY,m_axi_DATA_WEIGHT_RDATA[31:0],m_axi_DATA_WEIGHT_RRESP[1:0],m_axi_DATA_WEIGHT_RLAST,m_axi_DATA_WEIGHT_RVALID,m_axi_DATA_WEIGHT_RREADY,m_axi_DATA_BIAS_AWADDR[31:0],m_axi_DATA_BIAS_AWLEN[7:0],m_axi_DATA_BIAS_AWSIZE[2:0],m_axi_DATA_BIAS_AWBURST[1:0],m_axi_DATA_BIAS_AWLOCK[1:0],m_axi_DATA_BIAS_AWREGION[3:0],m_axi_DATA_BIAS_AWCACHE[3:0],m_axi_DATA_BIAS_AWPROT[2:0],m_axi_DATA_BIAS_AWQOS[3:0],m_axi_DATA_BIAS_AWVALID,m_axi_DATA_BIAS_AWREADY,m_axi_DATA_BIAS_WDATA[31:0],m_axi_DATA_BIAS_WSTRB[3:0],m_axi_DATA_BIAS_WLAST,m_axi_DATA_BIAS_WVALID,m_axi_DATA_BIAS_WREADY,m_axi_DATA_BIAS_BRESP[1:0],m_axi_DATA_BIAS_BVALID,m_axi_DATA_BIAS_BREADY,m_axi_DATA_BIAS_ARADDR[31:0],m_axi_DATA_BIAS_ARLEN[7:0],m_axi_DATA_BIAS_ARSIZE[2:0],m_axi_DATA_BIAS_ARBURST[1:0],m_axi_DATA_BIAS_ARLOCK[1:0],m_axi_DATA_BIAS_ARREGION[3:0],m_axi_DATA_BIAS_ARCACHE[3:0],m_axi_DATA_BIAS_ARPROT[2:0],m_axi_DATA_BIAS_ARQOS[3:0],m_axi_DATA_BIAS_ARVALID,m_axi_DATA_BIAS_ARREADY,m_axi_DATA_BIAS_RDATA[31:0],m_axi_DATA_BIAS_RRESP[1:0],m_axi_DATA_BIAS_RLAST,m_axi_DATA_BIAS_RVALID,m_axi_DATA_BIAS_RREADY,m_axi_DATA_OUTPUT_AWADDR[31:0],m_axi_DATA_OUTPUT_AWLEN[7:0],m_axi_DATA_OUTPUT_AWSIZE[2:0],m_axi_DATA_OUTPUT_AWBURST[1:0],m_axi_DATA_OUTPUT_AWLOCK[1:0],m_axi_DATA_OUTPUT_AWREGION[3:0],m_axi_DATA_OUTPUT_AWCACHE[3:0],m_axi_DATA_OUTPUT_AWPROT[2:0],m_axi_DATA_OUTPUT_AWQOS[3:0],m_axi_DATA_OUTPUT_AWVALID,m_axi_DATA_OUTPUT_AWREADY,m_axi_DATA_OUTPUT_WDATA[31:0],m_axi_DATA_OUTPUT_WSTRB[3:0],m_axi_DATA_OUTPUT_WLAST,m_axi_DATA_OUTPUT_WVALID,m_axi_DATA_OUTPUT_WREADY,m_axi_DATA_OUTPUT_BRESP[1:0],m_axi_DATA_OUTPUT_BVALID,m_axi_DATA_OUTPUT_BREADY,m_axi_DATA_OUTPUT_ARADDR[31:0],m_axi_DATA_OUTPUT_ARLEN[7:0],m_axi_DATA_OUTPUT_ARSIZE[2:0],m_axi_DATA_OUTPUT_ARBURST[1:0],m_axi_DATA_OUTPUT_ARLOCK[1:0],m_axi_DATA_OUTPUT_ARREGION[3:0],m_axi_DATA_OUTPUT_ARCACHE[3:0],m_axi_DATA_OUTPUT_ARPROT[2:0],m_axi_DATA_OUTPUT_ARQOS[3:0],m_axi_DATA_OUTPUT_ARVALID,m_axi_DATA_OUTPUT_ARREADY,m_axi_DATA_OUTPUT_RDATA[31:0],m_axi_DATA_OUTPUT_RRESP[1:0],m_axi_DATA_OUTPUT_RLAST,m_axi_DATA_OUTPUT_RVALID,m_axi_DATA_OUTPUT_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "conv1,Vivado 2018.2";
begin
end;
