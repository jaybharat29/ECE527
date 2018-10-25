-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity store_weights is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_weights_AWVALID : OUT STD_LOGIC;
    m_axi_weights_AWREADY : IN STD_LOGIC;
    m_axi_weights_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_weights_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_weights_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_weights_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_weights_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_weights_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_weights_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_weights_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_weights_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_weights_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_weights_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_weights_WVALID : OUT STD_LOGIC;
    m_axi_weights_WREADY : IN STD_LOGIC;
    m_axi_weights_WDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_weights_WSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_weights_WLAST : OUT STD_LOGIC;
    m_axi_weights_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_weights_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_weights_ARVALID : OUT STD_LOGIC;
    m_axi_weights_ARREADY : IN STD_LOGIC;
    m_axi_weights_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_weights_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_weights_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_weights_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_weights_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_weights_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_weights_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_weights_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_weights_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_weights_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_weights_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_weights_RVALID : IN STD_LOGIC;
    m_axi_weights_RREADY : OUT STD_LOGIC;
    m_axi_weights_RDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    m_axi_weights_RLAST : IN STD_LOGIC;
    m_axi_weights_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_weights_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_weights_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_weights_BVALID : IN STD_LOGIC;
    m_axi_weights_BREADY : OUT STD_LOGIC;
    m_axi_weights_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_weights_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_weights_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    weights_offset : IN STD_LOGIC_VECTOR (29 downto 0);
    weights_oc_0_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    weights_oc_0_ce0 : OUT STD_LOGIC;
    weights_oc_0_we0 : OUT STD_LOGIC;
    weights_oc_0_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of store_weights is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (11 downto 0) := "000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (11 downto 0) := "000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (11 downto 0) := "000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (11 downto 0) := "000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (11 downto 0) := "000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (11 downto 0) := "000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (11 downto 0) := "000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (11 downto 0) := "000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (11 downto 0) := "001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (11 downto 0) := "010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (11 downto 0) := "100000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal weights_blk_n_AR : STD_LOGIC;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal weights_blk_n_R : STD_LOGIC;
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal exitcond_fu_208_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sext_fu_116_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_reg_229 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_1_fu_126_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_1_reg_237 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_3_fu_148_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_3_reg_242 : STD_LOGIC_VECTOR (5 downto 0);
    signal exitcond2_fu_120_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_1_fu_160_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_1_reg_250 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_7_fu_191_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_7_reg_255 : STD_LOGIC_VECTOR (63 downto 0);
    signal exitcond1_fu_154_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal weights_addr_reg_260 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_1_fu_214_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal k_1_reg_269 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_block_state11 : BOOLEAN;
    signal tmp_8_fu_224_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_8_reg_274 : STD_LOGIC_VECTOR (63 downto 0);
    signal weights_addr_read_reg_279 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_83 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_reg_94 : STD_LOGIC_VECTOR (2 downto 0);
    signal k_reg_105 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal tmp_2_fu_197_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_reg_ioackin_m_axi_weights_ARREADY : STD_LOGIC := '0';
    signal ap_sig_ioackin_m_axi_weights_ARREADY : STD_LOGIC;
    signal tmp_1_fu_136_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_cast_fu_132_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_shl_cast_fu_144_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_2_cast_fu_166_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_5_fu_170_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_fu_179_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_5_cast_fu_175_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_shl1_fu_187_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_4_fu_220_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (11 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_reg_ioackin_m_axi_weights_ARREADY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ioackin_m_axi_weights_ARREADY <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                    if ((ap_sig_ioackin_m_axi_weights_ARREADY = ap_const_logic_1)) then 
                        ap_reg_ioackin_m_axi_weights_ARREADY <= ap_const_logic_0;
                    elsif ((m_axi_weights_ARREADY = ap_const_logic_1)) then 
                        ap_reg_ioackin_m_axi_weights_ARREADY <= ap_const_logic_1;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    i_reg_83_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond1_fu_154_p2 = ap_const_lv1_1))) then 
                i_reg_83 <= i_1_reg_237;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_reg_83 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    j_reg_94_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((exitcond_fu_208_p2 = ap_const_lv1_0) and (m_axi_weights_RVALID = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state11) and (exitcond_fu_208_p2 = ap_const_lv1_1))) then 
                j_reg_94 <= j_1_reg_250;
            elsif (((exitcond2_fu_120_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_reg_94 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    k_reg_105_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                k_reg_105 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
                k_reg_105 <= k_1_reg_269;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_1_reg_237 <= i_1_fu_126_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                j_1_reg_250 <= j_1_fu_160_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((exitcond_fu_208_p2 = ap_const_lv1_0) and (m_axi_weights_RVALID = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state11))) then
                k_1_reg_269 <= k_1_fu_214_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    sext_reg_229(29 downto 0) <= sext_fu_116_p1(29 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond2_fu_120_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmp_3_reg_242 <= tmp_3_fu_148_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_154_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                tmp_7_reg_255 <= tmp_7_fu_191_p2;
                weights_addr_reg_260 <= tmp_2_fu_197_p2(32 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((exitcond_fu_208_p2 = ap_const_lv1_0) and (m_axi_weights_RVALID = ap_const_logic_0))) and (exitcond_fu_208_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state11))) then
                tmp_8_reg_274 <= tmp_8_fu_224_p2;
                weights_addr_read_reg_279 <= m_axi_weights_RDATA;
            end if;
        end if;
    end process;
    sext_reg_229(63 downto 30) <= "0000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, m_axi_weights_RVALID, ap_CS_fsm_state4, ap_CS_fsm_state11, exitcond_fu_208_p2, ap_CS_fsm_state2, exitcond2_fu_120_p2, ap_CS_fsm_state3, exitcond1_fu_154_p2, ap_sig_ioackin_m_axi_weights_ARREADY)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond2_fu_120_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond1_fu_154_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_sig_ioackin_m_axi_weights_ARREADY = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                if ((not(((exitcond_fu_208_p2 = ap_const_lv1_0) and (m_axi_weights_RVALID = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state11) and (exitcond_fu_208_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                elsif ((not(((exitcond_fu_208_p2 = ap_const_lv1_0) and (m_axi_weights_RVALID = ap_const_logic_0))) and (exitcond_fu_208_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state11))) then
                    ap_NS_fsm <= ap_ST_fsm_state12;
                else
                    ap_NS_fsm <= ap_ST_fsm_state11;
                end if;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_block_state11_assign_proc : process(m_axi_weights_RVALID, exitcond_fu_208_p2)
    begin
                ap_block_state11 <= ((exitcond_fu_208_p2 = ap_const_lv1_0) and (m_axi_weights_RVALID = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond2_fu_120_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond2_fu_120_p2 = ap_const_lv1_1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond2_fu_120_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond2_fu_120_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_ioackin_m_axi_weights_ARREADY_assign_proc : process(m_axi_weights_ARREADY, ap_reg_ioackin_m_axi_weights_ARREADY)
    begin
        if ((ap_reg_ioackin_m_axi_weights_ARREADY = ap_const_logic_0)) then 
            ap_sig_ioackin_m_axi_weights_ARREADY <= m_axi_weights_ARREADY;
        else 
            ap_sig_ioackin_m_axi_weights_ARREADY <= ap_const_logic_1;
        end if; 
    end process;

    exitcond1_fu_154_p2 <= "1" when (j_reg_94 = ap_const_lv3_5) else "0";
    exitcond2_fu_120_p2 <= "1" when (i_reg_83 = ap_const_lv3_6) else "0";
    exitcond_fu_208_p2 <= "1" when (k_reg_105 = ap_const_lv3_5) else "0";
    i_1_fu_126_p2 <= std_logic_vector(unsigned(i_reg_83) + unsigned(ap_const_lv3_1));
    j_1_fu_160_p2 <= std_logic_vector(unsigned(j_reg_94) + unsigned(ap_const_lv3_1));
    k_1_fu_214_p2 <= std_logic_vector(unsigned(k_reg_105) + unsigned(ap_const_lv3_1));
    m_axi_weights_ARADDR <= weights_addr_reg_260;
    m_axi_weights_ARBURST <= ap_const_lv2_0;
    m_axi_weights_ARCACHE <= ap_const_lv4_0;
    m_axi_weights_ARID <= ap_const_lv1_0;
    m_axi_weights_ARLEN <= ap_const_lv32_5;
    m_axi_weights_ARLOCK <= ap_const_lv2_0;
    m_axi_weights_ARPROT <= ap_const_lv3_0;
    m_axi_weights_ARQOS <= ap_const_lv4_0;
    m_axi_weights_ARREGION <= ap_const_lv4_0;
    m_axi_weights_ARSIZE <= ap_const_lv3_0;
    m_axi_weights_ARUSER <= ap_const_lv1_0;

    m_axi_weights_ARVALID_assign_proc : process(ap_CS_fsm_state4, ap_reg_ioackin_m_axi_weights_ARREADY)
    begin
        if (((ap_reg_ioackin_m_axi_weights_ARREADY = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            m_axi_weights_ARVALID <= ap_const_logic_1;
        else 
            m_axi_weights_ARVALID <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_weights_AWADDR <= ap_const_lv32_0;
    m_axi_weights_AWBURST <= ap_const_lv2_0;
    m_axi_weights_AWCACHE <= ap_const_lv4_0;
    m_axi_weights_AWID <= ap_const_lv1_0;
    m_axi_weights_AWLEN <= ap_const_lv32_0;
    m_axi_weights_AWLOCK <= ap_const_lv2_0;
    m_axi_weights_AWPROT <= ap_const_lv3_0;
    m_axi_weights_AWQOS <= ap_const_lv4_0;
    m_axi_weights_AWREGION <= ap_const_lv4_0;
    m_axi_weights_AWSIZE <= ap_const_lv3_0;
    m_axi_weights_AWUSER <= ap_const_lv1_0;
    m_axi_weights_AWVALID <= ap_const_logic_0;
    m_axi_weights_BREADY <= ap_const_logic_0;

    m_axi_weights_RREADY_assign_proc : process(m_axi_weights_RVALID, ap_CS_fsm_state11, exitcond_fu_208_p2)
    begin
        if ((not(((exitcond_fu_208_p2 = ap_const_lv1_0) and (m_axi_weights_RVALID = ap_const_logic_0))) and (exitcond_fu_208_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            m_axi_weights_RREADY <= ap_const_logic_1;
        else 
            m_axi_weights_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_weights_WDATA <= ap_const_lv32_0;
    m_axi_weights_WID <= ap_const_lv1_0;
    m_axi_weights_WLAST <= ap_const_logic_0;
    m_axi_weights_WSTRB <= ap_const_lv4_0;
    m_axi_weights_WUSER <= ap_const_lv1_0;
    m_axi_weights_WVALID <= ap_const_logic_0;
    p_shl1_fu_187_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_179_p3),64));
    p_shl_cast_fu_144_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_136_p3),6));
    sext_fu_116_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(weights_offset),64));
    tmp_1_fu_136_p3 <= (i_reg_83 & ap_const_lv2_0);
    tmp_2_cast_fu_166_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_94),6));
    tmp_2_fu_197_p2 <= std_logic_vector(unsigned(sext_reg_229) + unsigned(tmp_7_fu_191_p2));
    tmp_3_fu_148_p2 <= std_logic_vector(unsigned(tmp_cast_fu_132_p1) + unsigned(p_shl_cast_fu_144_p1));
    tmp_4_fu_220_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(k_reg_105),64));
    tmp_5_cast_fu_175_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_5_fu_170_p2),64));
    tmp_5_fu_170_p2 <= std_logic_vector(unsigned(tmp_3_reg_242) + unsigned(tmp_2_cast_fu_166_p1));
    tmp_7_fu_191_p2 <= std_logic_vector(unsigned(tmp_5_cast_fu_175_p1) + unsigned(p_shl1_fu_187_p1));
    tmp_8_fu_224_p2 <= std_logic_vector(unsigned(tmp_4_fu_220_p1) + unsigned(tmp_7_reg_255));
    tmp_cast_fu_132_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_83),6));
    tmp_fu_179_p3 <= (tmp_5_fu_170_p2 & ap_const_lv2_0);

    weights_blk_n_AR_assign_proc : process(m_axi_weights_ARREADY, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            weights_blk_n_AR <= m_axi_weights_ARREADY;
        else 
            weights_blk_n_AR <= ap_const_logic_1;
        end if; 
    end process;


    weights_blk_n_R_assign_proc : process(m_axi_weights_RVALID, ap_CS_fsm_state11, exitcond_fu_208_p2)
    begin
        if (((exitcond_fu_208_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            weights_blk_n_R <= m_axi_weights_RVALID;
        else 
            weights_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    weights_oc_0_address0 <= tmp_8_reg_274(8 - 1 downto 0);

    weights_oc_0_ce0_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            weights_oc_0_ce0 <= ap_const_logic_1;
        else 
            weights_oc_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    weights_oc_0_d0 <= weights_addr_read_reg_279;

    weights_oc_0_we0_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            weights_oc_0_we0 <= ap_const_logic_1;
        else 
            weights_oc_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

end behav;