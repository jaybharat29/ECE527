-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity parta1_5 is
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


architecture behav of parta1_5 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "parta1_5,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.060000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=7,HLS_SYN_FF=742,HLS_SYN_LUT=658,HLS_VERSION=2018_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv38_0 : STD_LOGIC_VECTOR (37 downto 0) := "00000000000000000000000000000000000000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv38_64 : STD_LOGIC_VECTOR (37 downto 0) := "00000000000000000000000000000001100100";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv15_64 : STD_LOGIC_VECTOR (14 downto 0) := "000000001100100";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal indvar_flatten_reg_163 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_reg_174 : STD_LOGIC_VECTOR (30 downto 0);
    signal k_reg_185 : STD_LOGIC_VECTOR (30 downto 0);
    signal bound_fu_204_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bound_reg_352 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1_fu_210_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_1_reg_357 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal next_mul_fu_220_p2 : STD_LOGIC_VECTOR (37 downto 0);
    signal next_mul_reg_363 : STD_LOGIC_VECTOR (37 downto 0);
    signal tmp_fu_230_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_1_fu_235_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal i_1_reg_372 : STD_LOGIC_VECTOR (30 downto 0);
    signal exitcond_flatten_fu_250_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten_reg_377 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state7_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal exitcond_flatten_reg_377_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten_reg_377_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_next_fu_255_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal indvar_flatten_next_reg_381 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal k_mid2_fu_267_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal k_mid2_reg_386 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_3_mid2_v_fu_275_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_3_mid2_v_reg_391 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_2_fu_283_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_2_reg_396 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_6_fu_287_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_6_reg_402 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_3_fu_337_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_3_reg_408 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state4_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state6_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_state8_pp0_stage1_iter2 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal C_addr_1_reg_414 : STD_LOGIC_VECTOR (13 downto 0);
    signal C_addr_1_reg_414_pp0_iter1_reg : STD_LOGIC_VECTOR (13 downto 0);
    signal k_1_fu_300_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal k_1_reg_419 : STD_LOGIC_VECTOR (30 downto 0);
    signal A_load_reg_434 : STD_LOGIC_VECTOR (31 downto 0);
    signal B_load_reg_439 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_7_fu_327_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_7_reg_444 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal i_reg_141 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal phi_mul_reg_152 : STD_LOGIC_VECTOR (37 downto 0);
    signal ap_phi_mux_indvar_flatten_phi_fu_167_p4 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_phi_mux_j_phi_fu_178_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_phi_mux_k_phi_fu_189_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_9_cast_fu_295_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal tmp_10_cast_fu_313_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_11_cast_fu_322_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal bound_fu_204_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bound_fu_204_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cast_fu_226_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_cast_fu_241_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_5_fu_245_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_1_fu_261_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_9_fu_291_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_10_fu_309_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_11_fu_318_p2 : STD_LOGIC_VECTOR (14 downto 0);
    attribute use_dsp48 : string;
    attribute use_dsp48 of tmp_11_fu_318_p2 : signal is "no";
    signal tmp_3_fu_337_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal bound_fu_204_p00 : STD_LOGIC_VECTOR (63 downto 0);
    signal bound_fu_204_p10 : STD_LOGIC_VECTOR (63 downto 0);

    component parta1_5_mul_mul_bkb IS
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



begin
    parta1_5_mul_mul_bkb_U1 : component parta1_5_mul_mul_bkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 15,
        dout_WIDTH => 15)
    port map (
        din0 => tmp_3_fu_337_p0,
        din1 => tmp_2_reg_396,
        dout => tmp_3_fu_337_p2);





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
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((tmp_fu_230_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state3);
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
                elsif (((tmp_fu_230_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_reg_141_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                i_reg_141 <= i_1_reg_372;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_reg_141 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    indvar_flatten_reg_163_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_flatten_reg_377 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                indvar_flatten_reg_163 <= indvar_flatten_next_reg_381;
            elsif (((tmp_fu_230_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                indvar_flatten_reg_163 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;

    j_reg_174_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_flatten_reg_377 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                j_reg_174 <= tmp_3_mid2_v_reg_391;
            elsif (((tmp_fu_230_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_reg_174 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    k_reg_185_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_flatten_reg_377 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                k_reg_185 <= k_1_reg_419;
            elsif (((tmp_fu_230_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                k_reg_185 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    phi_mul_reg_152_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                phi_mul_reg_152 <= next_mul_reg_363;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                phi_mul_reg_152 <= ap_const_lv38_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten_reg_377_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                A_load_reg_434 <= A_q0;
                B_load_reg_439 <= B_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten_reg_377 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                C_addr_1_reg_414 <= tmp_9_cast_fu_295_p1(14 - 1 downto 0);
                tmp_3_reg_408 <= tmp_3_fu_337_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                C_addr_1_reg_414_pp0_iter1_reg <= C_addr_1_reg_414;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                bound_reg_352 <= bound_fu_204_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                exitcond_flatten_reg_377 <= exitcond_flatten_fu_250_p2;
                exitcond_flatten_reg_377_pp0_iter1_reg <= exitcond_flatten_reg_377;
                exitcond_flatten_reg_377_pp0_iter2_reg <= exitcond_flatten_reg_377_pp0_iter1_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_1_reg_372 <= i_1_fu_235_p2;
                next_mul_reg_363 <= next_mul_fu_220_p2;
                tmp_1_reg_357 <= tmp_1_fu_210_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                indvar_flatten_next_reg_381 <= indvar_flatten_next_fu_255_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten_reg_377 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                k_1_reg_419 <= k_1_fu_300_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_flatten_fu_250_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                k_mid2_reg_386 <= k_mid2_fu_267_p3;
                tmp_2_reg_396 <= tmp_2_fu_283_p1;
                tmp_6_reg_402 <= tmp_6_fu_287_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_flatten_fu_250_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_3_mid2_v_reg_391 <= tmp_3_mid2_v_fu_275_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten_reg_377_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_7_reg_444 <= tmp_7_fu_327_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, tmp_fu_230_p2, exitcond_flatten_fu_250_p2, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter1, ap_block_pp0_stage1_subdone, ap_enable_reg_pp0_iter2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((tmp_fu_230_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((exitcond_flatten_fu_250_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                elsif (((exitcond_flatten_fu_250_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((not(((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    A_address0 <= tmp_10_cast_fu_313_p1(14 - 1 downto 0);

    A_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            A_ce0 <= ap_const_logic_1;
        else 
            A_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    B_address0 <= tmp_11_cast_fu_322_p1(14 - 1 downto 0);

    B_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            B_ce0 <= ap_const_logic_1;
        else 
            B_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    C_address0 <= C_addr_1_reg_414_pp0_iter1_reg;

    C_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_enable_reg_pp0_iter2)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001)))) then 
            C_ce0 <= ap_const_logic_1;
        else 
            C_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    C_d0 <= std_logic_vector(unsigned(tmp_7_reg_444) + unsigned(C_q0));

    C_we0_assign_proc : process(exitcond_flatten_reg_377_pp0_iter2_reg, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((exitcond_flatten_reg_377_pp0_iter2_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
            C_we0 <= ap_const_logic_1;
        else 
            C_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(3);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state9 <= ap_CS_fsm(4);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state8_pp0_stage1_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state3_assign_proc : process(exitcond_flatten_fu_250_p2)
    begin
        if ((exitcond_flatten_fu_250_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state2, tmp_fu_230_p2)
    begin
        if (((tmp_fu_230_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_indvar_flatten_phi_fu_167_p4_assign_proc : process(indvar_flatten_reg_163, exitcond_flatten_reg_377, ap_CS_fsm_pp0_stage0, indvar_flatten_next_reg_381, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((exitcond_flatten_reg_377 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_indvar_flatten_phi_fu_167_p4 <= indvar_flatten_next_reg_381;
        else 
            ap_phi_mux_indvar_flatten_phi_fu_167_p4 <= indvar_flatten_reg_163;
        end if; 
    end process;


    ap_phi_mux_j_phi_fu_178_p4_assign_proc : process(j_reg_174, exitcond_flatten_reg_377, ap_CS_fsm_pp0_stage0, tmp_3_mid2_v_reg_391, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((exitcond_flatten_reg_377 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_j_phi_fu_178_p4 <= tmp_3_mid2_v_reg_391;
        else 
            ap_phi_mux_j_phi_fu_178_p4 <= j_reg_174;
        end if; 
    end process;


    ap_phi_mux_k_phi_fu_189_p4_assign_proc : process(k_reg_185, exitcond_flatten_reg_377, ap_CS_fsm_pp0_stage0, k_1_reg_419, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((exitcond_flatten_reg_377 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_k_phi_fu_189_p4 <= k_1_reg_419;
        else 
            ap_phi_mux_k_phi_fu_189_p4 <= k_reg_185;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, tmp_fu_230_p2)
    begin
        if (((tmp_fu_230_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bound_fu_204_p0 <= bound_fu_204_p00(32 - 1 downto 0);
    bound_fu_204_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(nA),64));
    bound_fu_204_p1 <= bound_fu_204_p10(32 - 1 downto 0);
    bound_fu_204_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(nC),64));
    bound_fu_204_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bound_fu_204_p0) * unsigned(bound_fu_204_p1), 64));
    exitcond_flatten_fu_250_p2 <= "1" when (ap_phi_mux_indvar_flatten_phi_fu_167_p4 = bound_reg_352) else "0";
    i_1_fu_235_p2 <= std_logic_vector(unsigned(ap_const_lv31_1) + unsigned(i_reg_141));
    i_cast_fu_226_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_141),32));
    indvar_flatten_next_fu_255_p2 <= std_logic_vector(unsigned(ap_phi_mux_indvar_flatten_phi_fu_167_p4) + unsigned(ap_const_lv64_1));
    j_1_fu_261_p2 <= std_logic_vector(unsigned(ap_const_lv31_1) + unsigned(ap_phi_mux_j_phi_fu_178_p4));
    k_1_fu_300_p2 <= std_logic_vector(unsigned(ap_const_lv31_1) + unsigned(k_mid2_reg_386));
    k_cast_fu_241_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_phi_mux_k_phi_fu_189_p4),32));
    k_mid2_fu_267_p3 <= 
        ap_phi_mux_k_phi_fu_189_p4 when (tmp_5_fu_245_p2(0) = '1') else 
        ap_const_lv31_0;
    next_mul_fu_220_p2 <= std_logic_vector(unsigned(ap_const_lv38_64) + unsigned(phi_mul_reg_152));
    tmp_10_cast_fu_313_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_10_fu_309_p2),64));
    tmp_10_fu_309_p2 <= std_logic_vector(unsigned(tmp_1_reg_357) + unsigned(tmp_6_reg_402));
        tmp_11_cast_fu_322_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_11_fu_318_p2),64));

    tmp_11_fu_318_p2 <= std_logic_vector(signed(tmp_3_reg_408) + signed(tmp_6_reg_402));
    tmp_1_fu_210_p1 <= phi_mul_reg_152(15 - 1 downto 0);
    tmp_2_fu_283_p1 <= tmp_3_mid2_v_fu_275_p3(15 - 1 downto 0);
    tmp_3_fu_337_p0 <= ap_const_lv15_64(8 - 1 downto 0);
    tmp_3_mid2_v_fu_275_p3 <= 
        ap_phi_mux_j_phi_fu_178_p4 when (tmp_5_fu_245_p2(0) = '1') else 
        j_1_fu_261_p2;
    tmp_5_fu_245_p2 <= "1" when (signed(k_cast_fu_241_p1) < signed(nA)) else "0";
    tmp_6_fu_287_p1 <= k_mid2_fu_267_p3(15 - 1 downto 0);
    tmp_7_fu_327_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(B_load_reg_439) * signed(A_load_reg_434))), 32));
    tmp_9_cast_fu_295_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_9_fu_291_p2),64));
    tmp_9_fu_291_p2 <= std_logic_vector(unsigned(tmp_1_reg_357) + unsigned(tmp_2_reg_396));
    tmp_fu_230_p2 <= "1" when (signed(i_cast_fu_226_p1) < signed(mC)) else "0";
end behav;