-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity parta1_4 is
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


architecture behav of parta1_4 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "parta1_4,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.510000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=517,HLS_SYN_LUT=466,HLS_VERSION=2018_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv38_0 : STD_LOGIC_VECTOR (37 downto 0) := "00000000000000000000000000000000000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv38_64 : STD_LOGIC_VECTOR (37 downto 0) := "00000000000000000000000000000001100100";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_1_fu_181_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_1_reg_314 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal next_mul2_fu_191_p2 : STD_LOGIC_VECTOR (37 downto 0);
    signal next_mul2_reg_320 : STD_LOGIC_VECTOR (37 downto 0);
    signal i_1_fu_206_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal i_1_reg_328 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_fu_201_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_1_fu_221_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal j_1_reg_340 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_3_fu_227_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_3_reg_345 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_2_fu_216_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal C_addr_1_reg_350 : STD_LOGIC_VECTOR (13 downto 0);
    signal k_1_fu_254_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal k_1_reg_358 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_5_fu_249_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal next_mul_fu_274_p2 : STD_LOGIC_VECTOR (37 downto 0);
    signal next_mul_reg_368 : STD_LOGIC_VECTOR (37 downto 0);
    signal A_load_reg_378 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal B_load_reg_383 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_7_fu_290_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_7_reg_388 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal C_load_reg_393 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_126 : STD_LOGIC_VECTOR (30 downto 0);
    signal phi_mul1_reg_137 : STD_LOGIC_VECTOR (37 downto 0);
    signal j_reg_148 : STD_LOGIC_VECTOR (30 downto 0);
    signal k_reg_159 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal phi_mul_reg_170 : STD_LOGIC_VECTOR (37 downto 0);
    signal tmp_11_cast_fu_236_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_12_cast_fu_269_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_14_cast_fu_285_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_cast_fu_197_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_cast_fu_212_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_s_fu_231_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal k_cast_fu_245_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_10_fu_260_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_11_fu_264_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_6_fu_241_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_12_fu_280_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);


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


    i_reg_126_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_2_fu_216_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_reg_126 <= i_1_reg_328;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_reg_126 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    j_reg_148_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (tmp_5_fu_249_p2 = ap_const_lv1_0))) then 
                j_reg_148 <= j_1_reg_340;
            elsif (((tmp_fu_201_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_reg_148 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    k_reg_159_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                k_reg_159 <= k_1_reg_358;
            elsif (((tmp_2_fu_216_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                k_reg_159 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    phi_mul1_reg_137_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_2_fu_216_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                phi_mul1_reg_137 <= next_mul2_reg_320;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                phi_mul1_reg_137 <= ap_const_lv38_0;
            end if; 
        end if;
    end process;

    phi_mul_reg_170_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                phi_mul_reg_170 <= next_mul_reg_368;
            elsif (((tmp_2_fu_216_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                phi_mul_reg_170 <= ap_const_lv38_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                A_load_reg_378 <= A_q0;
                B_load_reg_383 <= B_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_2_fu_216_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                C_addr_1_reg_350 <= tmp_11_cast_fu_236_p1(14 - 1 downto 0);
                tmp_3_reg_345 <= tmp_3_fu_227_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                C_load_reg_393 <= C_q0;
                tmp_7_reg_388 <= tmp_7_fu_290_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_1_reg_328 <= i_1_fu_206_p2;
                next_mul2_reg_320 <= next_mul2_fu_191_p2;
                tmp_1_reg_314 <= tmp_1_fu_181_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                j_1_reg_340 <= j_1_fu_221_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                k_1_reg_358 <= k_1_fu_254_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_5_fu_249_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                next_mul_reg_368 <= next_mul_fu_274_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, tmp_fu_201_p2, ap_CS_fsm_state3, tmp_2_fu_216_p2, ap_CS_fsm_state4, tmp_5_fu_249_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((tmp_fu_201_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((tmp_2_fu_216_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (tmp_5_fu_249_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    A_address0 <= tmp_12_cast_fu_269_p1(14 - 1 downto 0);

    A_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            A_ce0 <= ap_const_logic_1;
        else 
            A_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    B_address0 <= tmp_14_cast_fu_285_p1(14 - 1 downto 0);

    B_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            B_ce0 <= ap_const_logic_1;
        else 
            B_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    C_address0 <= C_addr_1_reg_350;

    C_ce0_assign_proc : process(ap_CS_fsm_state5, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            C_ce0 <= ap_const_logic_1;
        else 
            C_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    C_d0 <= std_logic_vector(unsigned(tmp_7_reg_388) + unsigned(C_load_reg_393));

    C_we0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            C_we0 <= ap_const_logic_1;
        else 
            C_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_done_assign_proc : process(ap_CS_fsm_state2, tmp_fu_201_p2)
    begin
        if (((tmp_fu_201_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, tmp_fu_201_p2)
    begin
        if (((tmp_fu_201_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_1_fu_206_p2 <= std_logic_vector(unsigned(ap_const_lv31_1) + unsigned(i_reg_126));
    i_cast_fu_197_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_126),32));
    j_1_fu_221_p2 <= std_logic_vector(unsigned(j_reg_148) + unsigned(ap_const_lv31_1));
    j_cast_fu_212_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_148),32));
    k_1_fu_254_p2 <= std_logic_vector(unsigned(ap_const_lv31_1) + unsigned(k_reg_159));
    k_cast_fu_245_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(k_reg_159),32));
    next_mul2_fu_191_p2 <= std_logic_vector(unsigned(ap_const_lv38_64) + unsigned(phi_mul1_reg_137));
    next_mul_fu_274_p2 <= std_logic_vector(unsigned(ap_const_lv38_64) + unsigned(phi_mul_reg_170));
    tmp_10_fu_260_p1 <= k_reg_159(15 - 1 downto 0);
    tmp_11_cast_fu_236_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_231_p2),64));
    tmp_11_fu_264_p2 <= std_logic_vector(unsigned(tmp_1_reg_314) + unsigned(tmp_10_fu_260_p1));
    tmp_12_cast_fu_269_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_11_fu_264_p2),64));
    tmp_12_fu_280_p2 <= std_logic_vector(unsigned(tmp_6_fu_241_p1) + unsigned(tmp_3_reg_345));
    tmp_14_cast_fu_285_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_12_fu_280_p2),64));
    tmp_1_fu_181_p1 <= phi_mul1_reg_137(15 - 1 downto 0);
    tmp_2_fu_216_p2 <= "1" when (signed(j_cast_fu_212_p1) < signed(nC)) else "0";
    tmp_3_fu_227_p1 <= j_reg_148(15 - 1 downto 0);
    tmp_5_fu_249_p2 <= "1" when (signed(k_cast_fu_245_p1) < signed(nA)) else "0";
    tmp_6_fu_241_p1 <= phi_mul_reg_170(15 - 1 downto 0);
    tmp_7_fu_290_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(B_load_reg_383) * signed(A_load_reg_378))), 32));
    tmp_fu_201_p2 <= "1" when (signed(i_cast_fu_197_p1) < signed(mC)) else "0";
    tmp_s_fu_231_p2 <= std_logic_vector(unsigned(tmp_1_reg_314) + unsigned(tmp_3_fu_227_p1));
end behav;
