-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity parta1_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    A_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    A_ce0 : OUT STD_LOGIC;
    A_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    B_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    B_ce0 : OUT STD_LOGIC;
    B_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    C_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    C_ce0 : OUT STD_LOGIC;
    C_we0 : OUT STD_LOGIC;
    C_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    C_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    mA : IN STD_LOGIC_VECTOR (31 downto 0);
    nA : IN STD_LOGIC_VECTOR (31 downto 0);
    mB : IN STD_LOGIC_VECTOR (31 downto 0);
    nB : IN STD_LOGIC_VECTOR (31 downto 0);
    mC : IN STD_LOGIC_VECTOR (31 downto 0);
    nC : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of parta1_2 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "parta1_2,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.634000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=24,HLS_SYN_FF=1400,HLS_SYN_LUT=1237,HLS_VERSION=2018_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv96_0 : STD_LOGIC_VECTOR (95 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv96_1 : STD_LOGIC_VECTOR (95 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv15_64 : STD_LOGIC_VECTOR (14 downto 0) := "000000001100100";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal indvar_flatten1_reg_114 : STD_LOGIC_VECTOR (95 downto 0);
    signal i_reg_125 : STD_LOGIC_VECTOR (30 downto 0);
    signal indvar_flatten_reg_136 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_reg_147 : STD_LOGIC_VECTOR (30 downto 0);
    signal k_reg_158 : STD_LOGIC_VECTOR (30 downto 0);
    signal bound_fu_177_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bound_reg_386 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_fu_190_p2 : STD_LOGIC_VECTOR (95 downto 0);
    signal bound6_reg_402 : STD_LOGIC_VECTOR (95 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal tmp_5_mid_fu_196_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_mid_reg_407 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten1_fu_210_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten1_reg_412 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state7_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state9_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state11_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal exitcond_flatten1_reg_412_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten1_reg_412_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_next1_fu_215_p2 : STD_LOGIC_VECTOR (95 downto 0);
    signal indvar_flatten_next1_reg_416 : STD_LOGIC_VECTOR (95 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal tmp_1_mid2_v_fu_248_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_1_mid2_v_reg_421 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_3_fu_256_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_3_reg_426 : STD_LOGIC_VECTOR (14 downto 0);
    signal k_mid2_fu_273_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal k_mid2_reg_431 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_12_fu_297_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_12_reg_436 : STD_LOGIC_VECTOR (14 downto 0);
    signal j_mid2_fu_305_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal j_mid2_reg_442 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_13_fu_313_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_13_reg_447 : STD_LOGIC_VECTOR (14 downto 0);
    signal indvar_flatten_next_fu_323_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal indvar_flatten_next_reg_453 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_368_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_reg_458 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state8_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state10_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_state12_pp0_stage1_iter2 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal k_1_fu_331_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal k_1_reg_464 : STD_LOGIC_VECTOR (30 downto 0);
    signal C_addr_reg_469 : STD_LOGIC_VECTOR (13 downto 0);
    signal C_addr_reg_469_pp0_iter2_reg : STD_LOGIC_VECTOR (13 downto 0);
    signal A_load_reg_484 : STD_LOGIC_VECTOR (31 downto 0);
    signal B_load_reg_489 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_7_fu_358_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_7_reg_494 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state7 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_phi_mux_indvar_flatten1_phi_fu_118_p4 : STD_LOGIC_VECTOR (95 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_phi_mux_i_phi_fu_129_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_phi_mux_indvar_flatten_phi_fu_140_p4 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_phi_mux_j_phi_fu_151_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_phi_mux_k_phi_fu_162_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_1_cast_fu_340_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_2_cast_fu_349_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_9_cast_fu_354_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal bound_fu_177_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bound_fu_177_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_190_p0 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_190_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_cast_fu_201_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond_flatten7_fu_227_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_1_fu_221_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_5_fu_205_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_mid_fu_232_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_5_mid1_fu_260_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal k_mid_fu_240_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_6_fu_281_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal j_1_fu_267_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_10_fu_285_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_11_fu_293_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal indvar_flatten_op_fu_317_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1_fu_336_p2 : STD_LOGIC_VECTOR (14 downto 0);
    attribute use_dsp48 : string;
    attribute use_dsp48 of tmp_1_fu_336_p2 : signal is "no";
    signal tmp_2_fu_345_p2 : STD_LOGIC_VECTOR (14 downto 0);
    attribute use_dsp48 of tmp_2_fu_345_p2 : signal is "no";
    signal grp_fu_373_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_fu_368_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_373_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal bound_fu_177_p00 : STD_LOGIC_VECTOR (63 downto 0);
    signal bound_fu_177_p10 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_190_p00 : STD_LOGIC_VECTOR (95 downto 0);
    signal grp_fu_190_p10 : STD_LOGIC_VECTOR (95 downto 0);

    component parta1_2_mul_64nsbkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (95 downto 0) );
    end component;


    component parta1_2_mul_mul_cud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (14 downto 0);
        dout : OUT STD_LOGIC_VECTOR (14 downto 0) );
    end component;


    component parta1_2_mac_muladEe IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (14 downto 0);
        din2 : IN STD_LOGIC_VECTOR (14 downto 0);
        dout : OUT STD_LOGIC_VECTOR (14 downto 0) );
    end component;



begin
    parta1_2_mul_64nsbkb_U1 : component parta1_2_mul_64nsbkb
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 64,
        din1_WIDTH => 32,
        dout_WIDTH => 96)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_190_p0,
        din1 => grp_fu_190_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_190_p2);

    parta1_2_mul_mul_cud_U2 : component parta1_2_mul_mul_cud
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 15,
        dout_WIDTH => 15)
    port map (
        din0 => tmp_fu_368_p0,
        din1 => tmp_3_reg_426,
        dout => tmp_fu_368_p2);

    parta1_2_mac_muladEe_U3 : component parta1_2_mac_muladEe
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 15,
        din2_WIDTH => 15,
        dout_WIDTH => 15)
    port map (
        din0 => grp_fu_373_p0,
        din1 => tmp_13_reg_447,
        din2 => tmp_12_reg_436,
        dout => grp_fu_373_p3);





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


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state7) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state7)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state7);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_reg_125_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_flatten1_reg_412 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                i_reg_125 <= tmp_1_mid2_v_reg_421;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                i_reg_125 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    indvar_flatten1_reg_114_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_flatten1_reg_412 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                indvar_flatten1_reg_114 <= indvar_flatten_next1_reg_416;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                indvar_flatten1_reg_114 <= ap_const_lv96_0;
            end if; 
        end if;
    end process;

    indvar_flatten_reg_136_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_flatten1_reg_412 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                indvar_flatten_reg_136 <= indvar_flatten_next_reg_453;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                indvar_flatten_reg_136 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;

    j_reg_147_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_flatten1_reg_412 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                j_reg_147 <= j_mid2_reg_442;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                j_reg_147 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    k_reg_158_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_flatten1_reg_412 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                k_reg_158 <= k_1_reg_464;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                k_reg_158 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (exitcond_flatten1_reg_412_pp0_iter1_reg = ap_const_lv1_0))) then
                A_load_reg_484 <= A_q0;
                B_load_reg_489 <= B_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_flatten1_reg_412 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                C_addr_reg_469 <= tmp_1_cast_fu_340_p1(14 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                C_addr_reg_469_pp0_iter2_reg <= C_addr_reg_469;
                exitcond_flatten1_reg_412 <= exitcond_flatten1_fu_210_p2;
                exitcond_flatten1_reg_412_pp0_iter1_reg <= exitcond_flatten1_reg_412;
                exitcond_flatten1_reg_412_pp0_iter2_reg <= exitcond_flatten1_reg_412_pp0_iter1_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                bound6_reg_402 <= grp_fu_190_p2;
                tmp_5_mid_reg_407 <= tmp_5_mid_fu_196_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                bound_reg_386 <= bound_fu_177_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then
                indvar_flatten_next1_reg_416 <= indvar_flatten_next1_fu_215_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_flatten1_fu_210_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then
                indvar_flatten_next_reg_453 <= indvar_flatten_next_fu_323_p3;
                j_mid2_reg_442 <= j_mid2_fu_305_p3;
                tmp_1_mid2_v_reg_421 <= tmp_1_mid2_v_fu_248_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten1_reg_412 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                k_1_reg_464 <= k_1_fu_331_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_flatten1_fu_210_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                k_mid2_reg_431 <= k_mid2_fu_273_p3;
                tmp_12_reg_436 <= tmp_12_fu_297_p3;
                tmp_13_reg_447 <= tmp_13_fu_313_p1;
                tmp_3_reg_426 <= tmp_3_fu_256_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (exitcond_flatten1_reg_412_pp0_iter1_reg = ap_const_lv1_0))) then
                tmp_7_reg_494 <= tmp_7_fu_358_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten1_reg_412 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                tmp_reg_458 <= tmp_fu_368_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, exitcond_flatten1_fu_210_p2, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter1, ap_block_pp0_stage1_subdone, ap_enable_reg_pp0_iter2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((exitcond_flatten1_fu_210_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                elsif (((exitcond_flatten1_fu_210_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state13;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((not(((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state13;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
    A_address0 <= tmp_2_cast_fu_349_p1(14 - 1 downto 0);

    A_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            A_ce0 <= ap_const_logic_1;
        else 
            A_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    B_address0 <= tmp_9_cast_fu_354_p1(14 - 1 downto 0);

    B_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            B_ce0 <= ap_const_logic_1;
        else 
            B_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    C_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, C_addr_reg_469, C_addr_reg_469_pp0_iter2_reg, ap_enable_reg_pp0_iter2, ap_block_pp0_stage0, ap_block_pp0_stage1)
    begin
        if ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                C_address0 <= C_addr_reg_469_pp0_iter2_reg;
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                C_address0 <= C_addr_reg_469;
            else 
                C_address0 <= "XXXXXXXXXXXXXX";
            end if;
        else 
            C_address0 <= "XXXXXXXXXXXXXX";
        end if; 
    end process;


    C_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_enable_reg_pp0_iter2)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001)))) then 
            C_ce0 <= ap_const_logic_1;
        else 
            C_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    C_d0 <= std_logic_vector(unsigned(tmp_7_reg_494) + unsigned(C_q0));

    C_we0_assign_proc : process(exitcond_flatten1_reg_412_pp0_iter2_reg, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (exitcond_flatten1_reg_412_pp0_iter2_reg = ap_const_lv1_0))) then 
            C_we0 <= ap_const_logic_1;
        else 
            C_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(6);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(7);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state13 <= ap_CS_fsm(8);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state10_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state11_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state12_pp0_stage1_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state8_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state9_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state7_assign_proc : process(exitcond_flatten1_fu_210_p2)
    begin
        if ((exitcond_flatten1_fu_210_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state7 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state7 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state13)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_i_phi_fu_129_p4_assign_proc : process(i_reg_125, exitcond_flatten1_reg_412, ap_CS_fsm_pp0_stage0, tmp_1_mid2_v_reg_421, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((exitcond_flatten1_reg_412 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_i_phi_fu_129_p4 <= tmp_1_mid2_v_reg_421;
        else 
            ap_phi_mux_i_phi_fu_129_p4 <= i_reg_125;
        end if; 
    end process;


    ap_phi_mux_indvar_flatten1_phi_fu_118_p4_assign_proc : process(indvar_flatten1_reg_114, exitcond_flatten1_reg_412, ap_CS_fsm_pp0_stage0, indvar_flatten_next1_reg_416, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((exitcond_flatten1_reg_412 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_indvar_flatten1_phi_fu_118_p4 <= indvar_flatten_next1_reg_416;
        else 
            ap_phi_mux_indvar_flatten1_phi_fu_118_p4 <= indvar_flatten1_reg_114;
        end if; 
    end process;


    ap_phi_mux_indvar_flatten_phi_fu_140_p4_assign_proc : process(indvar_flatten_reg_136, exitcond_flatten1_reg_412, ap_CS_fsm_pp0_stage0, indvar_flatten_next_reg_453, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((exitcond_flatten1_reg_412 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_indvar_flatten_phi_fu_140_p4 <= indvar_flatten_next_reg_453;
        else 
            ap_phi_mux_indvar_flatten_phi_fu_140_p4 <= indvar_flatten_reg_136;
        end if; 
    end process;


    ap_phi_mux_j_phi_fu_151_p4_assign_proc : process(j_reg_147, exitcond_flatten1_reg_412, ap_CS_fsm_pp0_stage0, j_mid2_reg_442, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((exitcond_flatten1_reg_412 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_j_phi_fu_151_p4 <= j_mid2_reg_442;
        else 
            ap_phi_mux_j_phi_fu_151_p4 <= j_reg_147;
        end if; 
    end process;


    ap_phi_mux_k_phi_fu_162_p4_assign_proc : process(k_reg_158, exitcond_flatten1_reg_412, ap_CS_fsm_pp0_stage0, k_1_reg_464, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((exitcond_flatten1_reg_412 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_k_phi_fu_162_p4 <= k_1_reg_464;
        else 
            ap_phi_mux_k_phi_fu_162_p4 <= k_reg_158;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state13)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bound_fu_177_p0 <= bound_fu_177_p00(32 - 1 downto 0);
    bound_fu_177_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(nA),64));
    bound_fu_177_p1 <= bound_fu_177_p10(32 - 1 downto 0);
    bound_fu_177_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(nC),64));
    bound_fu_177_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bound_fu_177_p0) * unsigned(bound_fu_177_p1), 64));
    exitcond_flatten1_fu_210_p2 <= "1" when (ap_phi_mux_indvar_flatten1_phi_fu_118_p4 = bound6_reg_402) else "0";
    exitcond_flatten7_fu_227_p2 <= "1" when (ap_phi_mux_indvar_flatten_phi_fu_140_p4 = bound_reg_386) else "0";
    grp_fu_190_p0 <= grp_fu_190_p00(64 - 1 downto 0);
    grp_fu_190_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bound_reg_386),96));
    grp_fu_190_p1 <= grp_fu_190_p10(32 - 1 downto 0);
    grp_fu_190_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mC),96));
    grp_fu_373_p0 <= ap_const_lv15_64(8 - 1 downto 0);
    i_1_fu_221_p2 <= std_logic_vector(unsigned(ap_const_lv31_1) + unsigned(ap_phi_mux_i_phi_fu_129_p4));
    indvar_flatten_next1_fu_215_p2 <= std_logic_vector(unsigned(ap_phi_mux_indvar_flatten1_phi_fu_118_p4) + unsigned(ap_const_lv96_1));
    indvar_flatten_next_fu_323_p3 <= 
        ap_const_lv64_1 when (exitcond_flatten7_fu_227_p2(0) = '1') else 
        indvar_flatten_op_fu_317_p2;
    indvar_flatten_op_fu_317_p2 <= std_logic_vector(unsigned(ap_const_lv64_1) + unsigned(ap_phi_mux_indvar_flatten_phi_fu_140_p4));
    j_1_fu_267_p2 <= std_logic_vector(unsigned(ap_const_lv31_1) + unsigned(j_mid_fu_232_p3));
    j_mid2_fu_305_p3 <= 
        j_mid_fu_232_p3 when (tmp_5_mid1_fu_260_p3(0) = '1') else 
        j_1_fu_267_p2;
    j_mid_fu_232_p3 <= 
        ap_const_lv31_0 when (exitcond_flatten7_fu_227_p2(0) = '1') else 
        ap_phi_mux_j_phi_fu_151_p4;
    k_1_fu_331_p2 <= std_logic_vector(unsigned(ap_const_lv31_1) + unsigned(k_mid2_reg_431));
    k_cast_fu_201_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_phi_mux_k_phi_fu_162_p4),32));
    k_mid2_fu_273_p3 <= 
        k_mid_fu_240_p3 when (tmp_5_mid1_fu_260_p3(0) = '1') else 
        ap_const_lv31_0;
    k_mid_fu_240_p3 <= 
        ap_const_lv31_0 when (exitcond_flatten7_fu_227_p2(0) = '1') else 
        ap_phi_mux_k_phi_fu_162_p4;
    tmp_10_fu_285_p3 <= 
        ap_const_lv15_0 when (exitcond_flatten7_fu_227_p2(0) = '1') else 
        tmp_6_fu_281_p1;
    tmp_11_fu_293_p1 <= j_1_fu_267_p2(15 - 1 downto 0);
    tmp_12_fu_297_p3 <= 
        tmp_10_fu_285_p3 when (tmp_5_mid1_fu_260_p3(0) = '1') else 
        tmp_11_fu_293_p1;
    tmp_13_fu_313_p1 <= k_mid2_fu_273_p3(15 - 1 downto 0);
        tmp_1_cast_fu_340_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_1_fu_336_p2),64));

    tmp_1_fu_336_p2 <= std_logic_vector(signed(tmp_reg_458) + signed(tmp_12_reg_436));
    tmp_1_mid2_v_fu_248_p3 <= 
        i_1_fu_221_p2 when (exitcond_flatten7_fu_227_p2(0) = '1') else 
        ap_phi_mux_i_phi_fu_129_p4;
        tmp_2_cast_fu_349_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_2_fu_345_p2),64));

    tmp_2_fu_345_p2 <= std_logic_vector(signed(tmp_reg_458) + signed(tmp_13_reg_447));
    tmp_3_fu_256_p1 <= tmp_1_mid2_v_fu_248_p3(15 - 1 downto 0);
    tmp_5_fu_205_p2 <= "1" when (signed(k_cast_fu_201_p1) < signed(nA)) else "0";
    tmp_5_mid1_fu_260_p3 <= 
        tmp_5_mid_reg_407 when (exitcond_flatten7_fu_227_p2(0) = '1') else 
        tmp_5_fu_205_p2;
    tmp_5_mid_fu_196_p2 <= "1" when (signed(nA) > signed(ap_const_lv32_0)) else "0";
    tmp_6_fu_281_p1 <= ap_phi_mux_j_phi_fu_151_p4(15 - 1 downto 0);
    tmp_7_fu_358_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(B_load_reg_489) * signed(A_load_reg_484))), 32));
        tmp_9_cast_fu_354_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(grp_fu_373_p3),64));

    tmp_fu_368_p0 <= ap_const_lv15_64(8 - 1 downto 0);
end behav;