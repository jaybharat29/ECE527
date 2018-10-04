-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity parta1_6 is
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


architecture behav of parta1_6 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "parta1_6,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.634000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=7,HLS_SYN_FF=613,HLS_SYN_LUT=1022,HLS_VERSION=2018_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (15 downto 0) := "0000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (15 downto 0) := "0000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (15 downto 0) := "0000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (15 downto 0) := "0000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (15 downto 0) := "0000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (15 downto 0) := "0000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (15 downto 0) := "0001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (15 downto 0) := "0010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (15 downto 0) := "0100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (15 downto 0) := "1000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv38_0 : STD_LOGIC_VECTOR (37 downto 0) := "00000000000000000000000000000000000000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv38_64 : STD_LOGIC_VECTOR (37 downto 0) := "00000000000000000000000000000001100100";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_FFFFFFFD : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111101";
    constant ap_const_lv30_0 : STD_LOGIC_VECTOR (29 downto 0) := "000000000000000000000000000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv15_64 : STD_LOGIC_VECTOR (14 downto 0) := "000000001100100";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal reg_243 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal ap_CS_fsm_state14 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state14 : signal is "none";
    signal reg_247 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_251_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_257 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_CS_fsm_state15 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state15 : signal is "none";
    signal tmp_1_fu_261_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_1_reg_587 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal next_mul_fu_271_p2 : STD_LOGIC_VECTOR (37 downto 0);
    signal next_mul_reg_596 : STD_LOGIC_VECTOR (37 downto 0);
    signal i_1_fu_286_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal i_1_reg_604 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_fu_281_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_1_fu_301_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal j_1_reg_616 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_3_fu_307_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_3_reg_621 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_2_fu_296_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal C_addr_1_reg_629 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_25_fu_388_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_25_reg_634 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_26_fu_396_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_26_reg_639 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal C_load_reg_653 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_fu_419_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_reg_658 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal tmp_5_1_fu_431_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_1_reg_663 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_1_fu_454_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_1_reg_677 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal tmp_5_2_fu_466_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_2_reg_682 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_7_2_reg_696 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal tmp_8_2_fu_489_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_2_reg_701 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal tmp_5_3_fu_500_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal k_1_3_fu_523_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_1_3_reg_719 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_198 : STD_LOGIC_VECTOR (30 downto 0);
    signal phi_mul_reg_209 : STD_LOGIC_VECTOR (37 downto 0);
    signal j_reg_220 : STD_LOGIC_VECTOR (30 downto 0);
    signal k_reg_231 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state16 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state16 : signal is "none";
    signal tmp_10_cast_fu_316_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_11_cast_fu_410_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_13_cast_fu_415_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_14_cast_fu_445_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_16_cast_fu_450_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_17_cast_fu_480_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_19_cast_fu_485_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_20_cast_fu_514_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_22_cast_fu_519_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_8_3_fu_529_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cast_fu_277_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_cast_fu_292_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_s_fu_311_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal nA_op_op_fu_328_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_neg_fu_341_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_lshr_fu_346_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_9_fu_333_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_neg_t_fu_356_p2 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_10_fu_362_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_6_fu_321_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_23_fu_372_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_24_fu_380_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_27_fu_401_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_11_fu_405_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_fu_535_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal k_1_s_fu_425_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_28_fu_436_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_14_fu_440_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_fu_543_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal k_1_1_fu_460_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_29_fu_471_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_17_fu_475_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_fu_551_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal k_1_2_fu_494_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_30_fu_505_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_20_fu_509_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_fu_559_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_fu_535_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_543_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_551_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_559_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (15 downto 0);

    component parta1_6_mac_mulabkb IS
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
    parta1_6_mac_mulabkb_U1 : component parta1_6_mac_mulabkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 15,
        din2_WIDTH => 15,
        dout_WIDTH => 15)
    port map (
        din0 => grp_fu_535_p0,
        din1 => tmp_27_fu_401_p1,
        din2 => tmp_3_reg_621,
        dout => grp_fu_535_p3);

    parta1_6_mac_mulabkb_U2 : component parta1_6_mac_mulabkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 15,
        din2_WIDTH => 15,
        dout_WIDTH => 15)
    port map (
        din0 => grp_fu_543_p0,
        din1 => tmp_28_fu_436_p1,
        din2 => tmp_3_reg_621,
        dout => grp_fu_543_p3);

    parta1_6_mac_mulabkb_U3 : component parta1_6_mac_mulabkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 15,
        din2_WIDTH => 15,
        dout_WIDTH => 15)
    port map (
        din0 => grp_fu_551_p0,
        din1 => tmp_29_fu_471_p1,
        din2 => tmp_3_reg_621,
        dout => grp_fu_551_p3);

    parta1_6_mac_mulabkb_U4 : component parta1_6_mac_mulabkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 15,
        din2_WIDTH => 15,
        dout_WIDTH => 15)
    port map (
        din0 => grp_fu_559_p0,
        din1 => tmp_30_fu_505_p1,
        din2 => tmp_3_reg_621,
        dout => grp_fu_559_p3);





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


    i_reg_198_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_2_fu_296_p2 = ap_const_lv1_0))) then 
                i_reg_198 <= i_1_reg_604;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_reg_198 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    j_reg_220_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state13) and ((tmp_5_3_fu_500_p2 = ap_const_lv1_0) or (tmp_5_2_reg_682 = ap_const_lv1_0) or (tmp_5_1_reg_663 = ap_const_lv1_0) or (tmp_26_reg_639 = ap_const_lv1_1)))) then 
                j_reg_220 <= j_1_reg_616;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_281_p2 = ap_const_lv1_1))) then 
                j_reg_220 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    k_reg_231_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state16)) then 
                k_reg_231 <= k_1_3_reg_719;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_2_fu_296_p2 = ap_const_lv1_1))) then 
                k_reg_231 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    phi_mul_reg_209_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_2_fu_296_p2 = ap_const_lv1_0))) then 
                phi_mul_reg_209 <= next_mul_reg_596;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                phi_mul_reg_209 <= ap_const_lv38_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_2_fu_296_p2 = ap_const_lv1_1))) then
                C_addr_1_reg_629 <= tmp_10_cast_fu_316_p1(14 - 1 downto 0);
                    tmp_25_reg_634(31 downto 2) <= tmp_25_fu_388_p3(31 downto 2);
                tmp_3_reg_621 <= tmp_3_fu_307_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                C_load_reg_653 <= C_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_1_reg_604 <= i_1_fu_286_p2;
                next_mul_reg_596 <= next_mul_fu_271_p2;
                tmp_1_reg_587 <= tmp_1_fu_261_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                j_1_reg_616 <= j_1_fu_301_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state13) and (tmp_26_reg_639 = ap_const_lv1_0) and (tmp_5_3_fu_500_p2 = ap_const_lv1_1) and (tmp_5_2_reg_682 = ap_const_lv1_1) and (tmp_5_1_reg_663 = ap_const_lv1_1))) then
                k_1_3_reg_719 <= k_1_3_fu_523_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state14) or (ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state5))) then
                reg_243 <= A_q0;
                reg_247 <= B_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state15))) then
                reg_257 <= grp_fu_251_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                tmp_26_reg_639 <= tmp_26_fu_396_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                tmp_5_1_reg_663 <= tmp_5_1_fu_431_p2;
                tmp_8_reg_658 <= tmp_8_fu_419_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                tmp_5_2_reg_682 <= tmp_5_2_fu_466_p2;
                tmp_8_1_reg_677 <= tmp_8_1_fu_454_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state12)) then
                tmp_7_2_reg_696 <= grp_fu_251_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state13) and (tmp_26_reg_639 = ap_const_lv1_0) and (tmp_5_2_reg_682 = ap_const_lv1_1) and (tmp_5_1_reg_663 = ap_const_lv1_1))) then
                tmp_8_2_reg_701 <= tmp_8_2_fu_489_p2;
            end if;
        end if;
    end process;
    tmp_25_reg_634(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, tmp_fu_281_p2, ap_CS_fsm_state3, tmp_2_fu_296_p2, tmp_26_fu_396_p2, tmp_26_reg_639, ap_CS_fsm_state4, ap_CS_fsm_state7, tmp_5_1_fu_431_p2, tmp_5_1_reg_663, ap_CS_fsm_state10, tmp_5_2_fu_466_p2, tmp_5_2_reg_682, ap_CS_fsm_state13, tmp_5_3_fu_500_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_281_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_2_fu_296_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (tmp_26_fu_396_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state13;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (tmp_5_1_fu_431_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state13;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state10) and (tmp_5_2_fu_466_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state13;
                else
                    ap_NS_fsm <= ap_ST_fsm_state11;
                end if;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state13) and ((tmp_5_3_fu_500_p2 = ap_const_lv1_0) or (tmp_5_2_reg_682 = ap_const_lv1_0) or (tmp_5_1_reg_663 = ap_const_lv1_0) or (tmp_26_reg_639 = ap_const_lv1_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state14;
                end if;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXX";
        end case;
    end process;

    A_address0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state7, ap_CS_fsm_state10, ap_CS_fsm_state13, tmp_11_cast_fu_410_p1, tmp_14_cast_fu_445_p1, tmp_17_cast_fu_480_p1, tmp_20_cast_fu_514_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            A_address0 <= tmp_20_cast_fu_514_p1(14 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            A_address0 <= tmp_17_cast_fu_480_p1(14 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            A_address0 <= tmp_14_cast_fu_445_p1(14 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            A_address0 <= tmp_11_cast_fu_410_p1(14 - 1 downto 0);
        else 
            A_address0 <= "XXXXXXXXXXXXXX";
        end if; 
    end process;


    A_ce0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state7, ap_CS_fsm_state10, ap_CS_fsm_state13)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state13) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            A_ce0 <= ap_const_logic_1;
        else 
            A_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    B_address0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state7, ap_CS_fsm_state10, ap_CS_fsm_state13, tmp_13_cast_fu_415_p1, tmp_16_cast_fu_450_p1, tmp_19_cast_fu_485_p1, tmp_22_cast_fu_519_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            B_address0 <= tmp_22_cast_fu_519_p1(14 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            B_address0 <= tmp_19_cast_fu_485_p1(14 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            B_address0 <= tmp_16_cast_fu_450_p1(14 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            B_address0 <= tmp_13_cast_fu_415_p1(14 - 1 downto 0);
        else 
            B_address0 <= "XXXXXXXXXXXXXX";
        end if; 
    end process;


    B_ce0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state7, ap_CS_fsm_state10, ap_CS_fsm_state13)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state13) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            B_ce0 <= ap_const_logic_1;
        else 
            B_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    C_address0 <= C_addr_1_reg_629;

    C_ce0_assign_proc : process(ap_CS_fsm_state5, ap_CS_fsm_state7, ap_CS_fsm_state10, ap_CS_fsm_state13, ap_CS_fsm_state16)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state16) or (ap_const_logic_1 = ap_CS_fsm_state13) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            C_ce0 <= ap_const_logic_1;
        else 
            C_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    C_d0_assign_proc : process(tmp_8_fu_419_p2, ap_CS_fsm_state7, tmp_8_1_fu_454_p2, ap_CS_fsm_state10, tmp_8_2_fu_489_p2, ap_CS_fsm_state13, ap_CS_fsm_state16, tmp_8_3_fu_529_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state16)) then 
            C_d0 <= tmp_8_3_fu_529_p2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            C_d0 <= tmp_8_2_fu_489_p2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            C_d0 <= tmp_8_1_fu_454_p2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            C_d0 <= tmp_8_fu_419_p2;
        else 
            C_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    C_we0_assign_proc : process(tmp_26_reg_639, ap_CS_fsm_state7, tmp_5_1_reg_663, ap_CS_fsm_state10, tmp_5_2_reg_682, ap_CS_fsm_state13, ap_CS_fsm_state16)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state16) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state7) or ((ap_const_logic_1 = ap_CS_fsm_state13) and (tmp_26_reg_639 = ap_const_lv1_0) and (tmp_5_2_reg_682 = ap_const_lv1_1) and (tmp_5_1_reg_663 = ap_const_lv1_1)))) then 
            C_we0 <= ap_const_logic_1;
        else 
            C_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state14 <= ap_CS_fsm(13);
    ap_CS_fsm_state15 <= ap_CS_fsm(14);
    ap_CS_fsm_state16 <= ap_CS_fsm(15);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_CS_fsm_state2, tmp_fu_281_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_281_p2 = ap_const_lv1_0))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, tmp_fu_281_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_281_p2 = ap_const_lv1_0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_251_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(reg_247) * signed(reg_243))), 32));
    grp_fu_535_p0 <= ap_const_lv15_64(8 - 1 downto 0);
    grp_fu_543_p0 <= ap_const_lv15_64(8 - 1 downto 0);
    grp_fu_551_p0 <= ap_const_lv15_64(8 - 1 downto 0);
    grp_fu_559_p0 <= ap_const_lv15_64(8 - 1 downto 0);
    i_1_fu_286_p2 <= std_logic_vector(unsigned(ap_const_lv31_1) + unsigned(i_reg_198));
    i_cast_fu_277_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_198),32));
    j_1_fu_301_p2 <= std_logic_vector(unsigned(j_reg_220) + unsigned(ap_const_lv31_1));
    j_cast_fu_292_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_220),32));
    k_1_1_fu_460_p2 <= (k_reg_231 or ap_const_lv32_2);
    k_1_2_fu_494_p2 <= (k_reg_231 or ap_const_lv32_3);
    k_1_3_fu_523_p2 <= std_logic_vector(unsigned(ap_const_lv32_4) + unsigned(k_reg_231));
    k_1_s_fu_425_p2 <= (k_reg_231 or ap_const_lv32_1);
    nA_op_op_fu_328_p2 <= std_logic_vector(unsigned(ap_const_lv32_3) + unsigned(nA));
    next_mul_fu_271_p2 <= std_logic_vector(unsigned(ap_const_lv38_64) + unsigned(phi_mul_reg_209));
    p_lshr_fu_346_p4 <= p_neg_fu_341_p2(31 downto 2);
    p_neg_fu_341_p2 <= std_logic_vector(signed(ap_const_lv32_FFFFFFFD) - signed(nA));
    p_neg_t_fu_356_p2 <= std_logic_vector(unsigned(ap_const_lv30_0) - unsigned(p_lshr_fu_346_p4));
    tmp_10_cast_fu_316_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_311_p2),64));
    tmp_10_fu_362_p4 <= nA_op_op_fu_328_p2(31 downto 2);
    tmp_11_cast_fu_410_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_11_fu_405_p2),64));
    tmp_11_fu_405_p2 <= std_logic_vector(unsigned(tmp_1_reg_587) + unsigned(tmp_27_fu_401_p1));
        tmp_13_cast_fu_415_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(grp_fu_535_p3),64));

    tmp_14_cast_fu_445_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_14_fu_440_p2),64));
    tmp_14_fu_440_p2 <= std_logic_vector(unsigned(tmp_1_reg_587) + unsigned(tmp_28_fu_436_p1));
        tmp_16_cast_fu_450_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(grp_fu_543_p3),64));

    tmp_17_cast_fu_480_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_17_fu_475_p2),64));
    tmp_17_fu_475_p2 <= std_logic_vector(unsigned(tmp_1_reg_587) + unsigned(tmp_29_fu_471_p1));
        tmp_19_cast_fu_485_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(grp_fu_551_p3),64));

    tmp_1_fu_261_p1 <= phi_mul_reg_209(15 - 1 downto 0);
    tmp_20_cast_fu_514_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_20_fu_509_p2),64));
    tmp_20_fu_509_p2 <= std_logic_vector(unsigned(tmp_1_reg_587) + unsigned(tmp_30_fu_505_p1));
        tmp_22_cast_fu_519_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(grp_fu_559_p3),64));

    tmp_23_fu_372_p3 <= 
        p_neg_t_fu_356_p2 when (tmp_9_fu_333_p3(0) = '1') else 
        tmp_10_fu_362_p4;
    tmp_24_fu_380_p3 <= 
        ap_const_lv30_0 when (tmp_6_fu_321_p3(0) = '1') else 
        tmp_23_fu_372_p3;
    tmp_25_fu_388_p3 <= (tmp_24_fu_380_p3 & ap_const_lv2_0);
    tmp_26_fu_396_p2 <= "1" when (k_reg_231 = tmp_25_reg_634) else "0";
    tmp_27_fu_401_p1 <= k_reg_231(15 - 1 downto 0);
    tmp_28_fu_436_p1 <= k_1_s_fu_425_p2(15 - 1 downto 0);
    tmp_29_fu_471_p1 <= k_1_1_fu_460_p2(15 - 1 downto 0);
    tmp_2_fu_296_p2 <= "1" when (signed(j_cast_fu_292_p1) < signed(nC)) else "0";
    tmp_30_fu_505_p1 <= k_1_2_fu_494_p2(15 - 1 downto 0);
    tmp_3_fu_307_p1 <= j_reg_220(15 - 1 downto 0);
    tmp_5_1_fu_431_p2 <= "1" when (signed(k_1_s_fu_425_p2) < signed(nA)) else "0";
    tmp_5_2_fu_466_p2 <= "1" when (signed(k_1_1_fu_460_p2) < signed(nA)) else "0";
    tmp_5_3_fu_500_p2 <= "1" when (signed(k_1_2_fu_494_p2) < signed(nA)) else "0";
    tmp_6_fu_321_p3 <= nA(31 downto 31);
    tmp_8_1_fu_454_p2 <= std_logic_vector(unsigned(tmp_8_reg_658) + unsigned(reg_257));
    tmp_8_2_fu_489_p2 <= std_logic_vector(unsigned(tmp_8_1_reg_677) + unsigned(tmp_7_2_reg_696));
    tmp_8_3_fu_529_p2 <= std_logic_vector(unsigned(tmp_8_2_reg_701) + unsigned(reg_257));
    tmp_8_fu_419_p2 <= std_logic_vector(unsigned(reg_257) + unsigned(C_load_reg_653));
    tmp_9_fu_333_p3 <= nA_op_op_fu_328_p2(31 downto 31);
    tmp_fu_281_p2 <= "1" when (signed(i_cast_fu_277_p1) < signed(mC)) else "0";
    tmp_s_fu_311_p2 <= std_logic_vector(unsigned(tmp_3_fu_307_p1) + unsigned(tmp_1_reg_587));
end behav;
