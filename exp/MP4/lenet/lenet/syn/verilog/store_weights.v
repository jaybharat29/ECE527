// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module store_weights (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_weights_AWVALID,
        m_axi_weights_AWREADY,
        m_axi_weights_AWADDR,
        m_axi_weights_AWID,
        m_axi_weights_AWLEN,
        m_axi_weights_AWSIZE,
        m_axi_weights_AWBURST,
        m_axi_weights_AWLOCK,
        m_axi_weights_AWCACHE,
        m_axi_weights_AWPROT,
        m_axi_weights_AWQOS,
        m_axi_weights_AWREGION,
        m_axi_weights_AWUSER,
        m_axi_weights_WVALID,
        m_axi_weights_WREADY,
        m_axi_weights_WDATA,
        m_axi_weights_WSTRB,
        m_axi_weights_WLAST,
        m_axi_weights_WID,
        m_axi_weights_WUSER,
        m_axi_weights_ARVALID,
        m_axi_weights_ARREADY,
        m_axi_weights_ARADDR,
        m_axi_weights_ARID,
        m_axi_weights_ARLEN,
        m_axi_weights_ARSIZE,
        m_axi_weights_ARBURST,
        m_axi_weights_ARLOCK,
        m_axi_weights_ARCACHE,
        m_axi_weights_ARPROT,
        m_axi_weights_ARQOS,
        m_axi_weights_ARREGION,
        m_axi_weights_ARUSER,
        m_axi_weights_RVALID,
        m_axi_weights_RREADY,
        m_axi_weights_RDATA,
        m_axi_weights_RLAST,
        m_axi_weights_RID,
        m_axi_weights_RUSER,
        m_axi_weights_RRESP,
        m_axi_weights_BVALID,
        m_axi_weights_BREADY,
        m_axi_weights_BRESP,
        m_axi_weights_BID,
        m_axi_weights_BUSER,
        weights_offset,
        weights_oc_0_address0,
        weights_oc_0_ce0,
        weights_oc_0_we0,
        weights_oc_0_d0
);

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_weights_AWVALID;
input   m_axi_weights_AWREADY;
output  [31:0] m_axi_weights_AWADDR;
output  [0:0] m_axi_weights_AWID;
output  [31:0] m_axi_weights_AWLEN;
output  [2:0] m_axi_weights_AWSIZE;
output  [1:0] m_axi_weights_AWBURST;
output  [1:0] m_axi_weights_AWLOCK;
output  [3:0] m_axi_weights_AWCACHE;
output  [2:0] m_axi_weights_AWPROT;
output  [3:0] m_axi_weights_AWQOS;
output  [3:0] m_axi_weights_AWREGION;
output  [0:0] m_axi_weights_AWUSER;
output   m_axi_weights_WVALID;
input   m_axi_weights_WREADY;
output  [31:0] m_axi_weights_WDATA;
output  [3:0] m_axi_weights_WSTRB;
output   m_axi_weights_WLAST;
output  [0:0] m_axi_weights_WID;
output  [0:0] m_axi_weights_WUSER;
output   m_axi_weights_ARVALID;
input   m_axi_weights_ARREADY;
output  [31:0] m_axi_weights_ARADDR;
output  [0:0] m_axi_weights_ARID;
output  [31:0] m_axi_weights_ARLEN;
output  [2:0] m_axi_weights_ARSIZE;
output  [1:0] m_axi_weights_ARBURST;
output  [1:0] m_axi_weights_ARLOCK;
output  [3:0] m_axi_weights_ARCACHE;
output  [2:0] m_axi_weights_ARPROT;
output  [3:0] m_axi_weights_ARQOS;
output  [3:0] m_axi_weights_ARREGION;
output  [0:0] m_axi_weights_ARUSER;
input   m_axi_weights_RVALID;
output   m_axi_weights_RREADY;
input  [31:0] m_axi_weights_RDATA;
input   m_axi_weights_RLAST;
input  [0:0] m_axi_weights_RID;
input  [0:0] m_axi_weights_RUSER;
input  [1:0] m_axi_weights_RRESP;
input   m_axi_weights_BVALID;
output   m_axi_weights_BREADY;
input  [1:0] m_axi_weights_BRESP;
input  [0:0] m_axi_weights_BID;
input  [0:0] m_axi_weights_BUSER;
input  [29:0] weights_offset;
output  [7:0] weights_oc_0_address0;
output   weights_oc_0_ce0;
output   weights_oc_0_we0;
output  [31:0] weights_oc_0_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_weights_ARVALID;
reg m_axi_weights_RREADY;
reg weights_oc_0_ce0;
reg weights_oc_0_we0;

(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    weights_blk_n_AR;
wire    ap_CS_fsm_state4;
reg    weights_blk_n_R;
wire    ap_CS_fsm_state11;
wire   [0:0] exitcond_fu_208_p2;
wire   [63:0] sext_fu_116_p1;
reg   [63:0] sext_reg_229;
wire   [2:0] i_3_fu_126_p2;
reg   [2:0] i_3_reg_237;
wire    ap_CS_fsm_state2;
wire   [5:0] tmp_19_fu_148_p2;
reg   [5:0] tmp_19_reg_242;
wire   [0:0] exitcond2_fu_120_p2;
wire   [2:0] j_3_fu_160_p2;
reg   [2:0] j_3_reg_250;
wire    ap_CS_fsm_state3;
wire   [63:0] tmp_21_fu_191_p2;
reg   [63:0] tmp_21_reg_255;
wire   [0:0] exitcond1_fu_154_p2;
reg   [31:0] weights_addr_reg_260;
wire   [2:0] k_3_fu_214_p2;
reg   [2:0] k_3_reg_269;
reg    ap_block_state11;
wire   [63:0] tmp_22_fu_224_p2;
reg   [63:0] tmp_22_reg_274;
reg   [31:0] weights_addr_read_reg_279;
reg   [2:0] i_reg_83;
reg   [2:0] j_reg_94;
reg   [2:0] k_reg_105;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state10;
wire   [63:0] tmp_12_fu_197_p2;
reg    ap_reg_ioackin_m_axi_weights_ARREADY;
reg    ap_sig_ioackin_m_axi_weights_ARREADY;
wire   [4:0] tmp_s_fu_136_p3;
wire   [5:0] tmp_cast_fu_132_p1;
wire   [5:0] p_shl_cast_fu_144_p1;
wire   [5:0] tmp_cast_10_fu_166_p1;
wire   [5:0] tmp_20_fu_170_p2;
wire   [7:0] tmp_fu_179_p3;
wire   [63:0] tmp_28_cast_fu_175_p1;
wire   [63:0] p_shl1_fu_187_p1;
wire   [63:0] tmp_2_fu_220_p1;
reg   [11:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_reg_ioackin_m_axi_weights_ARREADY = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_weights_ARREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            if ((ap_sig_ioackin_m_axi_weights_ARREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_weights_ARREADY <= 1'b0;
            end else if ((m_axi_weights_ARREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_weights_ARREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond1_fu_154_p2 == 1'd1))) begin
        i_reg_83 <= i_3_reg_237;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_83 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((exitcond_fu_208_p2 == 1'd0) & (m_axi_weights_RVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state11) & (exitcond_fu_208_p2 == 1'd1))) begin
        j_reg_94 <= j_3_reg_250;
    end else if (((exitcond2_fu_120_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_94 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        k_reg_105 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        k_reg_105 <= k_3_reg_269;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_3_reg_237 <= i_3_fu_126_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_3_reg_250 <= j_3_fu_160_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((exitcond_fu_208_p2 == 1'd0) & (m_axi_weights_RVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state11))) begin
        k_3_reg_269 <= k_3_fu_214_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        sext_reg_229[29 : 0] <= sext_fu_116_p1[29 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_120_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_19_reg_242 <= tmp_19_fu_148_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_154_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_21_reg_255 <= tmp_21_fu_191_p2;
        weights_addr_reg_260 <= tmp_12_fu_197_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((exitcond_fu_208_p2 == 1'd0) & (m_axi_weights_RVALID == 1'b0)) & (exitcond_fu_208_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        tmp_22_reg_274 <= tmp_22_fu_224_p2;
        weights_addr_read_reg_279 <= m_axi_weights_RDATA;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_120_p2 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_120_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_m_axi_weights_ARREADY == 1'b0)) begin
        ap_sig_ioackin_m_axi_weights_ARREADY = m_axi_weights_ARREADY;
    end else begin
        ap_sig_ioackin_m_axi_weights_ARREADY = 1'b1;
    end
end

always @ (*) begin
    if (((ap_reg_ioackin_m_axi_weights_ARREADY == 1'b0) & (1'b1 == ap_CS_fsm_state4))) begin
        m_axi_weights_ARVALID = 1'b1;
    end else begin
        m_axi_weights_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if ((~((exitcond_fu_208_p2 == 1'd0) & (m_axi_weights_RVALID == 1'b0)) & (exitcond_fu_208_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        m_axi_weights_RREADY = 1'b1;
    end else begin
        m_axi_weights_RREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        weights_blk_n_AR = m_axi_weights_ARREADY;
    end else begin
        weights_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_fu_208_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        weights_blk_n_R = m_axi_weights_RVALID;
    end else begin
        weights_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        weights_oc_0_ce0 = 1'b1;
    end else begin
        weights_oc_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        weights_oc_0_we0 = 1'b1;
    end else begin
        weights_oc_0_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_120_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond1_fu_154_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (ap_sig_ioackin_m_axi_weights_ARREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if ((~((exitcond_fu_208_p2 == 1'd0) & (m_axi_weights_RVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state11) & (exitcond_fu_208_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else if ((~((exitcond_fu_208_p2 == 1'd0) & (m_axi_weights_RVALID == 1'b0)) & (exitcond_fu_208_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state11 = ((exitcond_fu_208_p2 == 1'd0) & (m_axi_weights_RVALID == 1'b0));
end

assign exitcond1_fu_154_p2 = ((j_reg_94 == 3'd5) ? 1'b1 : 1'b0);

assign exitcond2_fu_120_p2 = ((i_reg_83 == 3'd6) ? 1'b1 : 1'b0);

assign exitcond_fu_208_p2 = ((k_reg_105 == 3'd5) ? 1'b1 : 1'b0);

assign i_3_fu_126_p2 = (i_reg_83 + 3'd1);

assign j_3_fu_160_p2 = (j_reg_94 + 3'd1);

assign k_3_fu_214_p2 = (k_reg_105 + 3'd1);

assign m_axi_weights_ARADDR = weights_addr_reg_260;

assign m_axi_weights_ARBURST = 2'd0;

assign m_axi_weights_ARCACHE = 4'd0;

assign m_axi_weights_ARID = 1'd0;

assign m_axi_weights_ARLEN = 32'd5;

assign m_axi_weights_ARLOCK = 2'd0;

assign m_axi_weights_ARPROT = 3'd0;

assign m_axi_weights_ARQOS = 4'd0;

assign m_axi_weights_ARREGION = 4'd0;

assign m_axi_weights_ARSIZE = 3'd0;

assign m_axi_weights_ARUSER = 1'd0;

assign m_axi_weights_AWADDR = 32'd0;

assign m_axi_weights_AWBURST = 2'd0;

assign m_axi_weights_AWCACHE = 4'd0;

assign m_axi_weights_AWID = 1'd0;

assign m_axi_weights_AWLEN = 32'd0;

assign m_axi_weights_AWLOCK = 2'd0;

assign m_axi_weights_AWPROT = 3'd0;

assign m_axi_weights_AWQOS = 4'd0;

assign m_axi_weights_AWREGION = 4'd0;

assign m_axi_weights_AWSIZE = 3'd0;

assign m_axi_weights_AWUSER = 1'd0;

assign m_axi_weights_AWVALID = 1'b0;

assign m_axi_weights_BREADY = 1'b0;

assign m_axi_weights_WDATA = 32'd0;

assign m_axi_weights_WID = 1'd0;

assign m_axi_weights_WLAST = 1'b0;

assign m_axi_weights_WSTRB = 4'd0;

assign m_axi_weights_WUSER = 1'd0;

assign m_axi_weights_WVALID = 1'b0;

assign p_shl1_fu_187_p1 = tmp_fu_179_p3;

assign p_shl_cast_fu_144_p1 = tmp_s_fu_136_p3;

assign sext_fu_116_p1 = weights_offset;

assign tmp_12_fu_197_p2 = (sext_reg_229 + tmp_21_fu_191_p2);

assign tmp_19_fu_148_p2 = (tmp_cast_fu_132_p1 + p_shl_cast_fu_144_p1);

assign tmp_20_fu_170_p2 = (tmp_19_reg_242 + tmp_cast_10_fu_166_p1);

assign tmp_21_fu_191_p2 = (tmp_28_cast_fu_175_p1 + p_shl1_fu_187_p1);

assign tmp_22_fu_224_p2 = (tmp_2_fu_220_p1 + tmp_21_reg_255);

assign tmp_28_cast_fu_175_p1 = tmp_20_fu_170_p2;

assign tmp_2_fu_220_p1 = k_reg_105;

assign tmp_cast_10_fu_166_p1 = j_reg_94;

assign tmp_cast_fu_132_p1 = i_reg_83;

assign tmp_fu_179_p3 = {{tmp_20_fu_170_p2}, {2'd0}};

assign tmp_s_fu_136_p3 = {{i_reg_83}, {2'd0}};

assign weights_oc_0_address0 = tmp_22_reg_274;

assign weights_oc_0_d0 = weights_addr_read_reg_279;

always @ (posedge ap_clk) begin
    sext_reg_229[63:30] <= 34'b0000000000000000000000000000000000;
end

endmodule //store_weights
