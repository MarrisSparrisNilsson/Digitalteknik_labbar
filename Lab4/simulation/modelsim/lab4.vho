-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/06/2023 11:36:38"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	clk_50 : IN std_logic;
	sw : IN std_logic_vector(3 DOWNTO 0);
	key_n : IN std_logic_vector(3 DOWNTO 0);
	ledr : OUT std_logic_vector(17 DOWNTO 0);
	ledg : OUT std_logic_vector(7 DOWNTO 0);
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	hex1 : OUT std_logic_vector(6 DOWNTO 0);
	hex2 : OUT std_logic_vector(6 DOWNTO 0);
	hex3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- sw[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ledr[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_sw : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_key_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_ledg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter[0]~23_combout\ : std_logic;
SIGNAL \counter[1]~25_combout\ : std_logic;
SIGNAL \counter[3]~29_combout\ : std_logic;
SIGNAL \counter[5]~33_combout\ : std_logic;
SIGNAL \counter[7]~37_combout\ : std_logic;
SIGNAL \counter[14]~51_combout\ : std_logic;
SIGNAL \counter[17]~57_combout\ : std_logic;
SIGNAL \counter[20]~64\ : std_logic;
SIGNAL \counter[21]~65_combout\ : std_logic;
SIGNAL \counter[21]~66\ : std_logic;
SIGNAL \counter[22]~67_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \chance~1_combout\ : std_logic;
SIGNAL \chance~2_combout\ : std_logic;
SIGNAL \clk_50~combout\ : std_logic;
SIGNAL \clk_50~clkctrl_outclk\ : std_logic;
SIGNAL \roll_btn_r~regout\ : std_logic;
SIGNAL \roll_btn_2r~feeder_combout\ : std_logic;
SIGNAL \roll_btn_2r~regout\ : std_logic;
SIGNAL \chance[1]~0_combout\ : std_logic;
SIGNAL \sw_r~feeder_combout\ : std_logic;
SIGNAL \sw_r~regout\ : std_logic;
SIGNAL \sw_2r~feeder_combout\ : std_logic;
SIGNAL \sw_2r~regout\ : std_logic;
SIGNAL \main_state~20_combout\ : std_logic;
SIGNAL \main_state~21_combout\ : std_logic;
SIGNAL \reset_n_r~feeder_combout\ : std_logic;
SIGNAL \reset_n_r~regout\ : std_logic;
SIGNAL \reset_n_2r~feeder_combout\ : std_logic;
SIGNAL \reset_n_2r~regout\ : std_logic;
SIGNAL \main_state.s_1~regout\ : std_logic;
SIGNAL \main_state~23_combout\ : std_logic;
SIGNAL \main_state.s_2~regout\ : std_logic;
SIGNAL \main_state~24_combout\ : std_logic;
SIGNAL \main_state.s_3~regout\ : std_logic;
SIGNAL \main_state~19_combout\ : std_logic;
SIGNAL \main_state.s_4~regout\ : std_logic;
SIGNAL \main_state~22_combout\ : std_logic;
SIGNAL \main_state.s_5~regout\ : std_logic;
SIGNAL \main_state~18_combout\ : std_logic;
SIGNAL \main_state.s_6~regout\ : std_logic;
SIGNAL \ledg~0_combout\ : std_logic;
SIGNAL \ledg[7]~reg0_regout\ : std_logic;
SIGNAL \loading_state.s_2~0_combout\ : std_logic;
SIGNAL \counter[0]~24\ : std_logic;
SIGNAL \counter[1]~26\ : std_logic;
SIGNAL \counter[2]~27_combout\ : std_logic;
SIGNAL \counter[15]~54\ : std_logic;
SIGNAL \counter[16]~56\ : std_logic;
SIGNAL \counter[17]~58\ : std_logic;
SIGNAL \counter[18]~59_combout\ : std_logic;
SIGNAL \counter[18]~60\ : std_logic;
SIGNAL \counter[19]~61_combout\ : std_logic;
SIGNAL \counter[19]~62\ : std_logic;
SIGNAL \counter[20]~63_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \counter[6]~35_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \counter[2]~28\ : std_logic;
SIGNAL \counter[3]~30\ : std_logic;
SIGNAL \counter[4]~31_combout\ : std_logic;
SIGNAL \counter[4]~32\ : std_logic;
SIGNAL \counter[5]~34\ : std_logic;
SIGNAL \counter[6]~36\ : std_logic;
SIGNAL \counter[7]~38\ : std_logic;
SIGNAL \counter[8]~39_combout\ : std_logic;
SIGNAL \counter[8]~40\ : std_logic;
SIGNAL \counter[9]~41_combout\ : std_logic;
SIGNAL \counter[9]~42\ : std_logic;
SIGNAL \counter[10]~43_combout\ : std_logic;
SIGNAL \counter[10]~44\ : std_logic;
SIGNAL \counter[11]~45_combout\ : std_logic;
SIGNAL \counter[11]~46\ : std_logic;
SIGNAL \counter[12]~47_combout\ : std_logic;
SIGNAL \counter[12]~48\ : std_logic;
SIGNAL \counter[13]~49_combout\ : std_logic;
SIGNAL \counter[13]~50\ : std_logic;
SIGNAL \counter[14]~52\ : std_logic;
SIGNAL \counter[15]~53_combout\ : std_logic;
SIGNAL \counter[16]~55_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \loading_state~16_combout\ : std_logic;
SIGNAL \loading_state.s_2~regout\ : std_logic;
SIGNAL \loading_state.s_3~regout\ : std_logic;
SIGNAL \loading_state.s_4~regout\ : std_logic;
SIGNAL \loading_state.s_5~regout\ : std_logic;
SIGNAL \loading_state.s_6~regout\ : std_logic;
SIGNAL \loading_state.s_1~0_combout\ : std_logic;
SIGNAL \loading_state.s_1~regout\ : std_logic;
SIGNAL \hex0_state~0_combout\ : std_logic;
SIGNAL \hex0_state[0]~1_combout\ : std_logic;
SIGNAL \hex0_state~2_combout\ : std_logic;
SIGNAL \hex0_state~3_combout\ : std_logic;
SIGNAL \hex0_state~4_combout\ : std_logic;
SIGNAL \hex0_state~5_combout\ : std_logic;
SIGNAL \hex0_state~6_combout\ : std_logic;
SIGNAL \hex0_state~7_combout\ : std_logic;
SIGNAL \hex0_state~8_combout\ : std_logic;
SIGNAL \main_state.s_stop~feeder_combout\ : std_logic;
SIGNAL \main_state.s_stop~regout\ : std_logic;
SIGNAL \hex0_state~9_combout\ : std_logic;
SIGNAL \hex1_state[0]~feeder_combout\ : std_logic;
SIGNAL \is_first_roll~feeder_combout\ : std_logic;
SIGNAL \is_first_roll~regout\ : std_logic;
SIGNAL \waiting_for_roll~0_combout\ : std_logic;
SIGNAL \waiting_for_roll~regout\ : std_logic;
SIGNAL \hex1_state[0]~0_combout\ : std_logic;
SIGNAL \hex1_state[1]~feeder_combout\ : std_logic;
SIGNAL \hex1_state[2]~feeder_combout\ : std_logic;
SIGNAL \hex1_state[3]~feeder_combout\ : std_logic;
SIGNAL \hex1_state[4]~feeder_combout\ : std_logic;
SIGNAL \hex1_state[5]~feeder_combout\ : std_logic;
SIGNAL \hex1_state[6]~feeder_combout\ : std_logic;
SIGNAL \hex2_state[0]~feeder_combout\ : std_logic;
SIGNAL \hex2_state[0]~0_combout\ : std_logic;
SIGNAL \hex2_state[1]~feeder_combout\ : std_logic;
SIGNAL \hex2_state[2]~feeder_combout\ : std_logic;
SIGNAL \hex2_state[3]~feeder_combout\ : std_logic;
SIGNAL \hex2_state[4]~feeder_combout\ : std_logic;
SIGNAL \hex2_state[5]~feeder_combout\ : std_logic;
SIGNAL \hex2_state[6]~feeder_combout\ : std_logic;
SIGNAL \hex3_state[0]~feeder_combout\ : std_logic;
SIGNAL \hex3_state[1]~feeder_combout\ : std_logic;
SIGNAL \hex3_state[2]~feeder_combout\ : std_logic;
SIGNAL \hex3_state[3]~feeder_combout\ : std_logic;
SIGNAL \hex3_state[5]~feeder_combout\ : std_logic;
SIGNAL hex3_state : std_logic_vector(6 DOWNTO 0);
SIGNAL hex2_state : std_logic_vector(6 DOWNTO 0);
SIGNAL hex1_state : std_logic_vector(6 DOWNTO 0);
SIGNAL hex0_state : std_logic_vector(6 DOWNTO 0);
SIGNAL counter : std_logic_vector(22 DOWNTO 0);
SIGNAL chance : std_logic_vector(2 DOWNTO 0);
SIGNAL \sw~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key_n~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_hex1_state : std_logic_vector(6 DOWNTO 0);
SIGNAL ALT_INV_hex0_state : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_roll_btn_2r~regout\ : std_logic;
SIGNAL \ALT_INV_reset_n_2r~regout\ : std_logic;
SIGNAL ALT_INV_hex3_state : std_logic_vector(6 DOWNTO 0);
SIGNAL ALT_INV_hex2_state : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_clk_50 <= clk_50;
ww_sw <= sw;
ww_key_n <= key_n;
ledr <= ww_ledr;
ledg <= ww_ledg;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_50~combout\);
ALT_INV_hex1_state(4) <= NOT hex1_state(4);
ALT_INV_hex1_state(3) <= NOT hex1_state(3);
ALT_INV_hex1_state(2) <= NOT hex1_state(2);
ALT_INV_hex1_state(1) <= NOT hex1_state(1);
ALT_INV_hex1_state(0) <= NOT hex1_state(0);
ALT_INV_hex0_state(6) <= NOT hex0_state(6);
ALT_INV_hex0_state(5) <= NOT hex0_state(5);
ALT_INV_hex0_state(4) <= NOT hex0_state(4);
ALT_INV_hex0_state(3) <= NOT hex0_state(3);
ALT_INV_hex0_state(2) <= NOT hex0_state(2);
ALT_INV_hex0_state(1) <= NOT hex0_state(1);
ALT_INV_hex0_state(0) <= NOT hex0_state(0);
\ALT_INV_roll_btn_2r~regout\ <= NOT \roll_btn_2r~regout\;
\ALT_INV_reset_n_2r~regout\ <= NOT \reset_n_2r~regout\;
ALT_INV_hex3_state(6) <= NOT hex3_state(6);
ALT_INV_hex3_state(5) <= NOT hex3_state(5);
ALT_INV_hex3_state(4) <= NOT hex3_state(4);
ALT_INV_hex3_state(3) <= NOT hex3_state(3);
ALT_INV_hex3_state(2) <= NOT hex3_state(2);
ALT_INV_hex3_state(1) <= NOT hex3_state(1);
ALT_INV_hex3_state(0) <= NOT hex3_state(0);
ALT_INV_hex2_state(6) <= NOT hex2_state(6);
ALT_INV_hex2_state(5) <= NOT hex2_state(5);
ALT_INV_hex2_state(4) <= NOT hex2_state(4);
ALT_INV_hex2_state(3) <= NOT hex2_state(3);
ALT_INV_hex2_state(2) <= NOT hex2_state(2);
ALT_INV_hex2_state(1) <= NOT hex2_state(1);
ALT_INV_hex2_state(0) <= NOT hex2_state(0);
ALT_INV_hex1_state(6) <= NOT hex1_state(6);
ALT_INV_hex1_state(5) <= NOT hex1_state(5);

-- Location: LCFF_X59_Y14_N25
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[7]~37_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCFF_X59_Y13_N7
\counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[14]~51_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: LCFF_X59_Y13_N13
\counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[17]~57_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(17));

-- Location: LCFF_X59_Y13_N21
\counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[21]~65_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(21));

-- Location: LCFF_X59_Y13_N23
\counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[22]~67_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(22));

-- Location: LCFF_X59_Y14_N21
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[5]~33_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LCFF_X59_Y14_N17
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[3]~29_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCFF_X59_Y14_N13
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[1]~25_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCFF_X59_Y14_N11
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[0]~23_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCCOMB_X59_Y14_N10
\counter[0]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~23_combout\ = counter(0) $ (VCC)
-- \counter[0]~24\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \counter[0]~23_combout\,
	cout => \counter[0]~24\);

-- Location: LCCOMB_X59_Y14_N12
\counter[1]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1]~25_combout\ = (counter(1) & (!\counter[0]~24\)) # (!counter(1) & ((\counter[0]~24\) # (GND)))
-- \counter[1]~26\ = CARRY((!\counter[0]~24\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \counter[0]~24\,
	combout => \counter[1]~25_combout\,
	cout => \counter[1]~26\);

-- Location: LCCOMB_X59_Y14_N16
\counter[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[3]~29_combout\ = (counter(3) & (!\counter[2]~28\)) # (!counter(3) & ((\counter[2]~28\) # (GND)))
-- \counter[3]~30\ = CARRY((!\counter[2]~28\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~28\,
	combout => \counter[3]~29_combout\,
	cout => \counter[3]~30\);

-- Location: LCCOMB_X59_Y14_N20
\counter[5]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[5]~33_combout\ = (counter(5) & (!\counter[4]~32\)) # (!counter(5) & ((\counter[4]~32\) # (GND)))
-- \counter[5]~34\ = CARRY((!\counter[4]~32\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~32\,
	combout => \counter[5]~33_combout\,
	cout => \counter[5]~34\);

-- Location: LCCOMB_X59_Y14_N24
\counter[7]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[7]~37_combout\ = (counter(7) & (!\counter[6]~36\)) # (!counter(7) & ((\counter[6]~36\) # (GND)))
-- \counter[7]~38\ = CARRY((!\counter[6]~36\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datad => VCC,
	cin => \counter[6]~36\,
	combout => \counter[7]~37_combout\,
	cout => \counter[7]~38\);

-- Location: LCCOMB_X59_Y13_N6
\counter[14]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[14]~51_combout\ = (counter(14) & (\counter[13]~50\ $ (GND))) # (!counter(14) & (!\counter[13]~50\ & VCC))
-- \counter[14]~52\ = CARRY((counter(14) & !\counter[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datad => VCC,
	cin => \counter[13]~50\,
	combout => \counter[14]~51_combout\,
	cout => \counter[14]~52\);

-- Location: LCCOMB_X59_Y13_N12
\counter[17]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[17]~57_combout\ = (counter(17) & (!\counter[16]~56\)) # (!counter(17) & ((\counter[16]~56\) # (GND)))
-- \counter[17]~58\ = CARRY((!\counter[16]~56\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datad => VCC,
	cin => \counter[16]~56\,
	combout => \counter[17]~57_combout\,
	cout => \counter[17]~58\);

-- Location: LCCOMB_X59_Y13_N18
\counter[20]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[20]~63_combout\ = (counter(20) & (\counter[19]~62\ $ (GND))) # (!counter(20) & (!\counter[19]~62\ & VCC))
-- \counter[20]~64\ = CARRY((counter(20) & !\counter[19]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \counter[19]~62\,
	combout => \counter[20]~63_combout\,
	cout => \counter[20]~64\);

-- Location: LCCOMB_X59_Y13_N20
\counter[21]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[21]~65_combout\ = (counter(21) & (!\counter[20]~64\)) # (!counter(21) & ((\counter[20]~64\) # (GND)))
-- \counter[21]~66\ = CARRY((!\counter[20]~64\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \counter[20]~64\,
	combout => \counter[21]~65_combout\,
	cout => \counter[21]~66\);

-- Location: LCCOMB_X59_Y13_N22
\counter[22]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[22]~67_combout\ = \counter[21]~66\ $ (!counter(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(22),
	cin => \counter[21]~66\,
	combout => \counter[22]~67_combout\);

-- Location: LCCOMB_X59_Y13_N26
\LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!counter(20) & (((!counter(18) & !counter(17))) # (!counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datab => counter(20),
	datac => counter(18),
	datad => counter(17),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X60_Y13_N12
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ((\LessThan0~6_combout\) # (!counter(22))) # (!counter(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datab => counter(22),
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCFF_X60_Y9_N15
\chance[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \chance~1_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => chance(0));

-- Location: LCFF_X60_Y9_N3
\chance[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \chance~2_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => chance(2));

-- Location: LCCOMB_X60_Y9_N14
\chance~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \chance~1_combout\ = (!chance(0) & ((chance(1)) # (!chance(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => chance(2),
	datac => chance(0),
	datad => chance(1),
	combout => \chance~1_combout\);

-- Location: LCCOMB_X60_Y9_N2
\chance~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \chance~2_combout\ = (chance(0) & (chance(2) $ (chance(1)))) # (!chance(0) & (chance(2) & chance(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => chance(0),
	datac => chance(2),
	datad => chance(1),
	combout => \chance~2_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk_50,
	combout => \clk_50~combout\);

-- Location: CLKCTRL_G2
\clk_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50~clkctrl_outclk\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_n[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key_n(1),
	combout => \key_n~combout\(1));

-- Location: LCFF_X61_Y13_N19
roll_btn_r : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => \key_n~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \roll_btn_r~regout\);

-- Location: LCCOMB_X61_Y13_N28
\roll_btn_2r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \roll_btn_2r~feeder_combout\ = \roll_btn_r~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \roll_btn_r~regout\,
	combout => \roll_btn_2r~feeder_combout\);

-- Location: LCFF_X61_Y13_N29
roll_btn_2r : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \roll_btn_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \roll_btn_2r~regout\);

-- Location: LCCOMB_X61_Y9_N30
\chance[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \chance[1]~0_combout\ = chance(1) $ (((chance(0) & !\roll_btn_2r~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => chance(0),
	datac => chance(1),
	datad => \roll_btn_2r~regout\,
	combout => \chance[1]~0_combout\);

-- Location: LCFF_X61_Y9_N31
\chance[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \chance[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => chance(1));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(0),
	combout => \sw~combout\(0));

-- Location: LCCOMB_X61_Y13_N8
\sw_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sw_r~feeder_combout\ = \sw~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw~combout\(0),
	combout => \sw_r~feeder_combout\);

-- Location: LCFF_X61_Y13_N9
sw_r : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \sw_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sw_r~regout\);

-- Location: LCCOMB_X61_Y9_N20
\sw_2r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sw_2r~feeder_combout\ = \sw_r~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw_r~regout\,
	combout => \sw_2r~feeder_combout\);

-- Location: LCFF_X61_Y9_N21
sw_2r : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \sw_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sw_2r~regout\);

-- Location: LCCOMB_X61_Y9_N26
\main_state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_state~20_combout\ = (chance(0)) # ((chance(1)) # (!\sw_2r~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => chance(0),
	datac => \sw_2r~regout\,
	datad => chance(1),
	combout => \main_state~20_combout\);

-- Location: LCCOMB_X61_Y9_N6
\main_state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_state~21_combout\ = (\main_state~20_combout\ & ((\main_state.s_6~regout\) # (!\main_state.s_stop~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.s_stop~regout\,
	datac => \main_state.s_6~regout\,
	datad => \main_state~20_combout\,
	combout => \main_state~21_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_n[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key_n(0),
	combout => \key_n~combout\(0));

-- Location: LCCOMB_X61_Y9_N0
\reset_n_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset_n_r~feeder_combout\ = \key_n~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_n~combout\(0),
	combout => \reset_n_r~feeder_combout\);

-- Location: LCFF_X61_Y9_N1
reset_n_r : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \reset_n_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_n_r~regout\);

-- Location: LCCOMB_X61_Y9_N10
\reset_n_2r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset_n_2r~feeder_combout\ = \reset_n_r~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_n_r~regout\,
	combout => \reset_n_2r~feeder_combout\);

-- Location: LCFF_X61_Y9_N11
reset_n_2r : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \reset_n_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_n_2r~regout\);

-- Location: LCFF_X61_Y9_N7
\main_state.s_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \main_state~21_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \main_state.s_1~regout\);

-- Location: LCCOMB_X61_Y9_N2
\main_state~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_state~23_combout\ = (\main_state.s_1~regout\ & ((chance(0)) # ((chance(1)) # (!\sw_2r~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => chance(0),
	datab => chance(1),
	datac => \sw_2r~regout\,
	datad => \main_state.s_1~regout\,
	combout => \main_state~23_combout\);

-- Location: LCFF_X61_Y9_N3
\main_state.s_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \main_state~23_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \main_state.s_2~regout\);

-- Location: LCCOMB_X61_Y9_N28
\main_state~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_state~24_combout\ = (\main_state.s_2~regout\ & ((chance(0)) # ((chance(1)) # (!\sw_2r~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => chance(0),
	datab => chance(1),
	datac => \sw_2r~regout\,
	datad => \main_state.s_2~regout\,
	combout => \main_state~24_combout\);

-- Location: LCFF_X61_Y9_N29
\main_state.s_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \main_state~24_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \main_state.s_3~regout\);

-- Location: LCCOMB_X61_Y9_N12
\main_state~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_state~19_combout\ = (\main_state.s_3~regout\ & ((chance(0)) # ((chance(1)) # (!\sw_2r~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => chance(0),
	datab => chance(1),
	datac => \sw_2r~regout\,
	datad => \main_state.s_3~regout\,
	combout => \main_state~19_combout\);

-- Location: LCFF_X61_Y9_N13
\main_state.s_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \main_state~19_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \main_state.s_4~regout\);

-- Location: LCCOMB_X61_Y9_N24
\main_state~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_state~22_combout\ = (\main_state.s_4~regout\ & ((chance(0)) # ((chance(1)) # (!\sw_2r~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => chance(0),
	datab => chance(1),
	datac => \sw_2r~regout\,
	datad => \main_state.s_4~regout\,
	combout => \main_state~22_combout\);

-- Location: LCFF_X61_Y9_N25
\main_state.s_5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \main_state~22_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \main_state.s_5~regout\);

-- Location: LCCOMB_X61_Y9_N8
\main_state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_state~18_combout\ = (\main_state.s_5~regout\) # ((!chance(0) & (!chance(1) & \sw_2r~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => chance(0),
	datab => chance(1),
	datac => \sw_2r~regout\,
	datad => \main_state.s_5~regout\,
	combout => \main_state~18_combout\);

-- Location: LCFF_X61_Y9_N9
\main_state.s_6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \main_state~18_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \main_state.s_6~regout\);

-- Location: LCCOMB_X61_Y9_N4
\ledg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ledg~0_combout\ = (\main_state.s_6~regout\) # (\ledg[7]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_state.s_6~regout\,
	datac => \ledg[7]~reg0_regout\,
	combout => \ledg~0_combout\);

-- Location: LCFF_X61_Y9_N5
\ledg[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \ledg~0_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ledg[7]~reg0_regout\);

-- Location: LCCOMB_X60_Y13_N30
\loading_state.s_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \loading_state.s_2~0_combout\ = !\loading_state.s_1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \loading_state.s_1~regout\,
	combout => \loading_state.s_2~0_combout\);

-- Location: LCCOMB_X59_Y14_N14
\counter[2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[2]~27_combout\ = (counter(2) & (\counter[1]~26\ $ (GND))) # (!counter(2) & (!\counter[1]~26\ & VCC))
-- \counter[2]~28\ = CARRY((counter(2) & !\counter[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~26\,
	combout => \counter[2]~27_combout\,
	cout => \counter[2]~28\);

-- Location: LCCOMB_X59_Y13_N8
\counter[15]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~53_combout\ = (counter(15) & (!\counter[14]~52\)) # (!counter(15) & ((\counter[14]~52\) # (GND)))
-- \counter[15]~54\ = CARRY((!\counter[14]~52\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \counter[14]~52\,
	combout => \counter[15]~53_combout\,
	cout => \counter[15]~54\);

-- Location: LCCOMB_X59_Y13_N10
\counter[16]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[16]~55_combout\ = (counter(16) & (\counter[15]~54\ $ (GND))) # (!counter(16) & (!\counter[15]~54\ & VCC))
-- \counter[16]~56\ = CARRY((counter(16) & !\counter[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datad => VCC,
	cin => \counter[15]~54\,
	combout => \counter[16]~55_combout\,
	cout => \counter[16]~56\);

-- Location: LCCOMB_X59_Y13_N14
\counter[18]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[18]~59_combout\ = (counter(18) & (\counter[17]~58\ $ (GND))) # (!counter(18) & (!\counter[17]~58\ & VCC))
-- \counter[18]~60\ = CARRY((counter(18) & !\counter[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \counter[17]~58\,
	combout => \counter[18]~59_combout\,
	cout => \counter[18]~60\);

-- Location: LCFF_X59_Y13_N15
\counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[18]~59_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(18));

-- Location: LCCOMB_X59_Y13_N16
\counter[19]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[19]~61_combout\ = (counter(19) & (!\counter[18]~60\)) # (!counter(19) & ((\counter[18]~60\) # (GND)))
-- \counter[19]~62\ = CARRY((!\counter[18]~60\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datad => VCC,
	cin => \counter[18]~60\,
	combout => \counter[19]~61_combout\,
	cout => \counter[19]~62\);

-- Location: LCFF_X59_Y13_N17
\counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[19]~61_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(19));

-- Location: LCFF_X59_Y13_N19
\counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[20]~63_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(20));

-- Location: LCCOMB_X59_Y13_N28
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counter(16) & (!counter(12) & (!counter(18) & !counter(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datab => counter(12),
	datac => counter(18),
	datad => counter(20),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X60_Y13_N18
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!counter(10)) # (!counter(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => counter(10),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X59_Y14_N22
\counter[6]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[6]~35_combout\ = (counter(6) & (\counter[5]~34\ $ (GND))) # (!counter(6) & (!\counter[5]~34\ & VCC))
-- \counter[6]~36\ = CARRY((counter(6) & !\counter[5]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \counter[5]~34\,
	combout => \counter[6]~35_combout\,
	cout => \counter[6]~36\);

-- Location: LCFF_X59_Y14_N23
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[6]~35_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCCOMB_X59_Y14_N8
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!counter(6)) # (!counter(9))) # (!counter(8))) # (!counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(8),
	datac => counter(9),
	datad => counter(6),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X60_Y13_N28
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!counter(13) & (\LessThan0~0_combout\ & ((\LessThan0~2_combout\) # (\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X60_Y13_N0
\LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!\LessThan0~7_combout\ & (!\LessThan0~5_combout\ & !\LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => \LessThan0~5_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCFF_X59_Y14_N15
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[2]~27_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCCOMB_X59_Y14_N18
\counter[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~31_combout\ = (counter(4) & (\counter[3]~30\ $ (GND))) # (!counter(4) & (!\counter[3]~30\ & VCC))
-- \counter[4]~32\ = CARRY((counter(4) & !\counter[3]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~30\,
	combout => \counter[4]~31_combout\,
	cout => \counter[4]~32\);

-- Location: LCFF_X59_Y14_N19
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[4]~31_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCCOMB_X59_Y14_N26
\counter[8]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[8]~39_combout\ = (counter(8) & (\counter[7]~38\ $ (GND))) # (!counter(8) & (!\counter[7]~38\ & VCC))
-- \counter[8]~40\ = CARRY((counter(8) & !\counter[7]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~38\,
	combout => \counter[8]~39_combout\,
	cout => \counter[8]~40\);

-- Location: LCFF_X59_Y14_N27
\counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[8]~39_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

-- Location: LCCOMB_X59_Y14_N28
\counter[9]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[9]~41_combout\ = (counter(9) & (!\counter[8]~40\)) # (!counter(9) & ((\counter[8]~40\) # (GND)))
-- \counter[9]~42\ = CARRY((!\counter[8]~40\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~40\,
	combout => \counter[9]~41_combout\,
	cout => \counter[9]~42\);

-- Location: LCFF_X59_Y14_N29
\counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[9]~41_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9));

-- Location: LCCOMB_X59_Y14_N30
\counter[10]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[10]~43_combout\ = (counter(10) & (\counter[9]~42\ $ (GND))) # (!counter(10) & (!\counter[9]~42\ & VCC))
-- \counter[10]~44\ = CARRY((counter(10) & !\counter[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~42\,
	combout => \counter[10]~43_combout\,
	cout => \counter[10]~44\);

-- Location: LCFF_X59_Y14_N31
\counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[10]~43_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: LCCOMB_X59_Y13_N0
\counter[11]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[11]~45_combout\ = (counter(11) & (!\counter[10]~44\)) # (!counter(11) & ((\counter[10]~44\) # (GND)))
-- \counter[11]~46\ = CARRY((!\counter[10]~44\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \counter[10]~44\,
	combout => \counter[11]~45_combout\,
	cout => \counter[11]~46\);

-- Location: LCFF_X59_Y13_N1
\counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[11]~45_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LCCOMB_X59_Y13_N2
\counter[12]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[12]~47_combout\ = (counter(12) & (\counter[11]~46\ $ (GND))) # (!counter(12) & (!\counter[11]~46\ & VCC))
-- \counter[12]~48\ = CARRY((counter(12) & !\counter[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~46\,
	combout => \counter[12]~47_combout\,
	cout => \counter[12]~48\);

-- Location: LCFF_X59_Y13_N3
\counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[12]~47_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

-- Location: LCCOMB_X59_Y13_N4
\counter[13]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[13]~49_combout\ = (counter(13) & (!\counter[12]~48\)) # (!counter(13) & ((\counter[12]~48\) # (GND)))
-- \counter[13]~50\ = CARRY((!\counter[12]~48\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \counter[12]~48\,
	combout => \counter[13]~49_combout\,
	cout => \counter[13]~50\);

-- Location: LCFF_X59_Y13_N5
\counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[13]~49_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LCFF_X59_Y13_N9
\counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[15]~53_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

-- Location: LCFF_X59_Y13_N11
\counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \counter[16]~55_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(16));

-- Location: LCCOMB_X59_Y13_N30
\LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!counter(20) & (!counter(18) & !counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datac => counter(18),
	datad => counter(16),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X59_Y13_N24
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~4_combout\ & ((!counter(15)) # (!counter(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datac => counter(15),
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X60_Y13_N10
\loading_state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \loading_state~16_combout\ = (!\LessThan0~7_combout\ & (!\LessThan0~5_combout\ & (!\roll_btn_2r~regout\ & !\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => \LessThan0~5_combout\,
	datac => \roll_btn_2r~regout\,
	datad => \LessThan0~3_combout\,
	combout => \loading_state~16_combout\);

-- Location: LCFF_X60_Y13_N31
\loading_state.s_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \loading_state.s_2~0_combout\,
	ena => \loading_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \loading_state.s_2~regout\);

-- Location: LCFF_X60_Y13_N1
\loading_state.s_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => \loading_state.s_2~regout\,
	sload => VCC,
	ena => \loading_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \loading_state.s_3~regout\);

-- Location: LCFF_X60_Y13_N13
\loading_state.s_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => \loading_state.s_3~regout\,
	sload => VCC,
	ena => \loading_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \loading_state.s_4~regout\);

-- Location: LCFF_X60_Y13_N19
\loading_state.s_5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => \loading_state.s_4~regout\,
	sload => VCC,
	ena => \loading_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \loading_state.s_5~regout\);

-- Location: LCFF_X60_Y13_N15
\loading_state.s_6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => \loading_state.s_5~regout\,
	sload => VCC,
	ena => \loading_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \loading_state.s_6~regout\);

-- Location: LCCOMB_X60_Y13_N4
\loading_state.s_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \loading_state.s_1~0_combout\ = !\loading_state.s_6~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \loading_state.s_6~regout\,
	combout => \loading_state.s_1~0_combout\);

-- Location: LCFF_X60_Y13_N5
\loading_state.s_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \loading_state.s_1~0_combout\,
	ena => \loading_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \loading_state.s_1~regout\);

-- Location: LCCOMB_X60_Y13_N26
\hex0_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0_state~0_combout\ = (\roll_btn_2r~regout\ & (!\main_state.s_1~regout\ & (!\main_state.s_4~regout\))) # (!\roll_btn_2r~regout\ & (((!\loading_state.s_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.s_1~regout\,
	datab => \main_state.s_4~regout\,
	datac => \loading_state.s_1~regout\,
	datad => \roll_btn_2r~regout\,
	combout => \hex0_state~0_combout\);

-- Location: LCCOMB_X60_Y13_N20
\hex0_state[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0_state[0]~1_combout\ = (\roll_btn_2r~regout\) # ((!\LessThan0~7_combout\ & (!\LessThan0~5_combout\ & !\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => \LessThan0~5_combout\,
	datac => \roll_btn_2r~regout\,
	datad => \LessThan0~3_combout\,
	combout => \hex0_state[0]~1_combout\);

-- Location: LCFF_X60_Y13_N27
\hex0_state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex0_state~0_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex0_state[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex0_state(0));

-- Location: LCCOMB_X60_Y13_N16
\hex0_state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0_state~2_combout\ = (\roll_btn_2r~regout\ & (!\main_state.s_6~regout\ & (!\main_state.s_5~regout\))) # (!\roll_btn_2r~regout\ & (((\loading_state.s_2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.s_6~regout\,
	datab => \main_state.s_5~regout\,
	datac => \loading_state.s_2~regout\,
	datad => \roll_btn_2r~regout\,
	combout => \hex0_state~2_combout\);

-- Location: LCFF_X60_Y13_N17
\hex0_state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex0_state~2_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex0_state[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex0_state(1));

-- Location: LCCOMB_X60_Y13_N8
\hex0_state~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0_state~3_combout\ = (\roll_btn_2r~regout\ & ((!\main_state.s_2~regout\))) # (!\roll_btn_2r~regout\ & (\loading_state.s_3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \roll_btn_2r~regout\,
	datac => \loading_state.s_3~regout\,
	datad => \main_state.s_2~regout\,
	combout => \hex0_state~3_combout\);

-- Location: LCFF_X60_Y13_N9
\hex0_state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex0_state~3_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex0_state[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex0_state(2));

-- Location: LCCOMB_X60_Y13_N24
\hex0_state~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0_state~4_combout\ = (\roll_btn_2r~regout\ & (!\main_state.s_1~regout\ & (!\main_state.s_4~regout\))) # (!\roll_btn_2r~regout\ & (((\loading_state.s_4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.s_1~regout\,
	datab => \main_state.s_4~regout\,
	datac => \loading_state.s_4~regout\,
	datad => \roll_btn_2r~regout\,
	combout => \hex0_state~4_combout\);

-- Location: LCFF_X60_Y13_N25
\hex0_state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex0_state~4_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex0_state[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex0_state(3));

-- Location: LCCOMB_X61_Y9_N18
\hex0_state~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0_state~5_combout\ = (\main_state.s_stop~regout\ & (!\main_state.s_2~regout\ & (!\main_state.s_6~regout\ & \roll_btn_2r~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.s_stop~regout\,
	datab => \main_state.s_2~regout\,
	datac => \main_state.s_6~regout\,
	datad => \roll_btn_2r~regout\,
	combout => \hex0_state~5_combout\);

-- Location: LCCOMB_X60_Y13_N22
\hex0_state~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0_state~6_combout\ = (!\hex0_state~5_combout\ & ((\roll_btn_2r~regout\) # (\loading_state.s_5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \roll_btn_2r~regout\,
	datac => \loading_state.s_5~regout\,
	datad => \hex0_state~5_combout\,
	combout => \hex0_state~6_combout\);

-- Location: LCFF_X60_Y13_N23
\hex0_state[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex0_state~6_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex0_state[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex0_state(4));

-- Location: LCCOMB_X60_Y13_N14
\hex0_state~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0_state~7_combout\ = (\roll_btn_2r~regout\ & ((\main_state.s_2~regout\) # ((\main_state.s_1~regout\)))) # (!\roll_btn_2r~regout\ & (((!\loading_state.s_6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.s_2~regout\,
	datab => \roll_btn_2r~regout\,
	datac => \loading_state.s_6~regout\,
	datad => \main_state.s_1~regout\,
	combout => \hex0_state~7_combout\);

-- Location: LCCOMB_X60_Y13_N2
\hex0_state~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0_state~8_combout\ = (!\hex0_state~7_combout\ & ((!\main_state.s_3~regout\) # (!\roll_btn_2r~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \roll_btn_2r~regout\,
	datac => \main_state.s_3~regout\,
	datad => \hex0_state~7_combout\,
	combout => \hex0_state~8_combout\);

-- Location: LCFF_X60_Y13_N3
\hex0_state[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex0_state~8_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex0_state[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex0_state(5));

-- Location: LCCOMB_X61_Y9_N16
\main_state.s_stop~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_state.s_stop~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \main_state.s_stop~feeder_combout\);

-- Location: LCFF_X61_Y9_N17
\main_state.s_stop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \main_state.s_stop~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \main_state.s_stop~regout\);

-- Location: LCCOMB_X60_Y13_N6
\hex0_state~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0_state~9_combout\ = (\roll_btn_2r~regout\ & (\main_state.s_stop~regout\ & !\main_state.s_1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \roll_btn_2r~regout\,
	datac => \main_state.s_stop~regout\,
	datad => \main_state.s_1~regout\,
	combout => \hex0_state~9_combout\);

-- Location: LCFF_X60_Y13_N7
\hex0_state[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex0_state~9_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex0_state[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex0_state(6));

-- Location: LCCOMB_X60_Y9_N16
\hex1_state[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex1_state[0]~feeder_combout\ = hex0_state(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hex0_state(0),
	combout => \hex1_state[0]~feeder_combout\);

-- Location: LCCOMB_X60_Y9_N12
\is_first_roll~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \is_first_roll~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \is_first_roll~feeder_combout\);

-- Location: LCFF_X60_Y9_N13
is_first_roll : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \is_first_roll~feeder_combout\,
	ena => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \is_first_roll~regout\);

-- Location: LCCOMB_X61_Y9_N22
\waiting_for_roll~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \waiting_for_roll~0_combout\ = (\waiting_for_roll~regout\) # (\is_first_roll~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \waiting_for_roll~regout\,
	datad => \is_first_roll~regout\,
	combout => \waiting_for_roll~0_combout\);

-- Location: LCFF_X61_Y9_N23
waiting_for_roll : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \waiting_for_roll~0_combout\,
	sclr => \ALT_INV_roll_btn_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \waiting_for_roll~regout\);

-- Location: LCCOMB_X61_Y9_N14
\hex1_state[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex1_state[0]~0_combout\ = (\waiting_for_roll~regout\ & (\main_state.s_stop~regout\ & !\roll_btn_2r~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \waiting_for_roll~regout\,
	datac => \main_state.s_stop~regout\,
	datad => \roll_btn_2r~regout\,
	combout => \hex1_state[0]~0_combout\);

-- Location: LCFF_X60_Y9_N17
\hex1_state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex1_state[0]~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex1_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex1_state(0));

-- Location: LCCOMB_X60_Y9_N10
\hex1_state[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex1_state[1]~feeder_combout\ = hex0_state(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hex0_state(1),
	combout => \hex1_state[1]~feeder_combout\);

-- Location: LCFF_X60_Y9_N11
\hex1_state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex1_state[1]~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex1_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex1_state(1));

-- Location: LCCOMB_X60_Y9_N8
\hex1_state[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex1_state[2]~feeder_combout\ = hex0_state(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hex0_state(2),
	combout => \hex1_state[2]~feeder_combout\);

-- Location: LCFF_X60_Y9_N9
\hex1_state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex1_state[2]~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex1_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex1_state(2));

-- Location: LCCOMB_X60_Y9_N18
\hex1_state[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex1_state[3]~feeder_combout\ = hex0_state(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hex0_state(3),
	combout => \hex1_state[3]~feeder_combout\);

-- Location: LCFF_X60_Y9_N19
\hex1_state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex1_state[3]~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex1_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex1_state(3));

-- Location: LCCOMB_X60_Y9_N24
\hex1_state[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex1_state[4]~feeder_combout\ = hex0_state(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hex0_state(4),
	combout => \hex1_state[4]~feeder_combout\);

-- Location: LCFF_X60_Y9_N25
\hex1_state[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex1_state[4]~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex1_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex1_state(4));

-- Location: LCCOMB_X62_Y9_N28
\hex1_state[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex1_state[5]~feeder_combout\ = hex0_state(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hex0_state(5),
	combout => \hex1_state[5]~feeder_combout\);

-- Location: LCFF_X62_Y9_N29
\hex1_state[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex1_state[5]~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex1_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex1_state(5));

-- Location: LCCOMB_X62_Y9_N10
\hex1_state[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex1_state[6]~feeder_combout\ = hex0_state(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hex0_state(6),
	combout => \hex1_state[6]~feeder_combout\);

-- Location: LCFF_X62_Y9_N11
\hex1_state[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex1_state[6]~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex1_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex1_state(6));

-- Location: LCCOMB_X62_Y9_N12
\hex2_state[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex2_state[0]~feeder_combout\ = hex1_state(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hex1_state(0),
	combout => \hex2_state[0]~feeder_combout\);

-- Location: LCCOMB_X61_Y13_N18
\hex2_state[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex2_state[0]~0_combout\ = (!\roll_btn_2r~regout\ & \waiting_for_roll~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \roll_btn_2r~regout\,
	datad => \waiting_for_roll~regout\,
	combout => \hex2_state[0]~0_combout\);

-- Location: LCFF_X62_Y9_N13
\hex2_state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex2_state[0]~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex2_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex2_state(0));

-- Location: LCCOMB_X62_Y9_N2
\hex2_state[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex2_state[1]~feeder_combout\ = hex1_state(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hex1_state(1),
	combout => \hex2_state[1]~feeder_combout\);

-- Location: LCFF_X62_Y9_N3
\hex2_state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex2_state[1]~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex2_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex2_state(1));

-- Location: LCCOMB_X62_Y9_N0
\hex2_state[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex2_state[2]~feeder_combout\ = hex1_state(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hex1_state(2),
	combout => \hex2_state[2]~feeder_combout\);

-- Location: LCFF_X62_Y9_N1
\hex2_state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex2_state[2]~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex2_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex2_state(2));

-- Location: LCCOMB_X62_Y9_N22
\hex2_state[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex2_state[3]~feeder_combout\ = hex1_state(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hex1_state(3),
	combout => \hex2_state[3]~feeder_combout\);

-- Location: LCFF_X62_Y9_N23
\hex2_state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex2_state[3]~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex2_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex2_state(3));

-- Location: LCCOMB_X62_Y9_N16
\hex2_state[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex2_state[4]~feeder_combout\ = hex1_state(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hex1_state(4),
	combout => \hex2_state[4]~feeder_combout\);

-- Location: LCFF_X62_Y9_N17
\hex2_state[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex2_state[4]~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex2_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex2_state(4));

-- Location: LCCOMB_X62_Y9_N30
\hex2_state[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex2_state[5]~feeder_combout\ = hex1_state(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hex1_state(5),
	combout => \hex2_state[5]~feeder_combout\);

-- Location: LCFF_X62_Y9_N31
\hex2_state[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex2_state[5]~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex2_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex2_state(5));

-- Location: LCCOMB_X62_Y9_N8
\hex2_state[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex2_state[6]~feeder_combout\ = hex1_state(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hex1_state(6),
	combout => \hex2_state[6]~feeder_combout\);

-- Location: LCFF_X62_Y9_N9
\hex2_state[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex2_state[6]~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex2_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex2_state(6));

-- Location: LCCOMB_X62_Y9_N26
\hex3_state[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex3_state[0]~feeder_combout\ = hex2_state(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hex2_state(0),
	combout => \hex3_state[0]~feeder_combout\);

-- Location: LCFF_X62_Y9_N27
\hex3_state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex3_state[0]~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex2_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex3_state(0));

-- Location: LCCOMB_X62_Y9_N4
\hex3_state[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex3_state[1]~feeder_combout\ = hex2_state(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hex2_state(1),
	combout => \hex3_state[1]~feeder_combout\);

-- Location: LCFF_X62_Y9_N5
\hex3_state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex3_state[1]~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex2_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex3_state(1));

-- Location: LCCOMB_X62_Y9_N14
\hex3_state[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex3_state[2]~feeder_combout\ = hex2_state(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hex2_state(2),
	combout => \hex3_state[2]~feeder_combout\);

-- Location: LCFF_X62_Y9_N15
\hex3_state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex3_state[2]~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex2_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex3_state(2));

-- Location: LCCOMB_X62_Y9_N24
\hex3_state[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex3_state[3]~feeder_combout\ = hex2_state(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hex2_state(3),
	combout => \hex3_state[3]~feeder_combout\);

-- Location: LCFF_X62_Y9_N25
\hex3_state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex3_state[3]~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex2_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex3_state(3));

-- Location: LCFF_X62_Y9_N7
\hex3_state[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => hex2_state(4),
	aclr => \ALT_INV_reset_n_2r~regout\,
	sload => VCC,
	ena => \hex2_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex3_state(4));

-- Location: LCCOMB_X62_Y9_N20
\hex3_state[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex3_state[5]~feeder_combout\ = hex2_state(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hex2_state(5),
	combout => \hex3_state[5]~feeder_combout\);

-- Location: LCFF_X62_Y9_N21
\hex3_state[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hex3_state[5]~feeder_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \hex2_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex3_state(5));

-- Location: LCFF_X62_Y9_N19
\hex3_state[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => hex2_state(6),
	aclr => \ALT_INV_reset_n_2r~regout\,
	sload => VCC,
	ena => \hex2_state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hex3_state(6));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(1));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(3));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_n[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key_n(2));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_n[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key_n(3));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(15));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(16));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(17));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ledg[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ledg[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ledg[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ledg[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ledg[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(4));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ledg[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(5));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ledg[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(6));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ledg[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(7));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex0_state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex0_state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex0_state(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex0_state(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex0_state(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex0_state(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex0_state(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex1_state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex1_state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex1_state(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex1_state(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex1_state(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex1_state(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex1_state(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex2_state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex2_state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex2_state(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex2_state(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex2_state(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex2_state(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex2_state(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex3_state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex3_state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex3_state(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex3_state(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex3_state(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex3_state(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_hex3_state(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(6));
END structure;


