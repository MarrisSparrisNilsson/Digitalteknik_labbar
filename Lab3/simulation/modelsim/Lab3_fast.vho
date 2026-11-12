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

-- DATE "04/25/2023 19:00:16"

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
	clock_50 : IN std_logic;
	key_n : IN std_logic_vector(3 DOWNTO 0);
	ledr : OUT std_logic
	);
END top_level;

-- Design Ports Information
-- key_n[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[2]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[3]	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ledr	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_key_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ledr : std_logic;
SIGNAL \clock_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter[1]~27_combout\ : std_logic;
SIGNAL \counter[2]~29_combout\ : std_logic;
SIGNAL \counter[4]~33_combout\ : std_logic;
SIGNAL \counter[6]~37_combout\ : std_logic;
SIGNAL \counter[8]~41_combout\ : std_logic;
SIGNAL \counter[15]~55_combout\ : std_logic;
SIGNAL \counter[18]~61_combout\ : std_logic;
SIGNAL \counter[22]~69_combout\ : std_logic;
SIGNAL \counter[23]~72\ : std_logic;
SIGNAL \counter[24]~73_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \clock_50~combout\ : std_logic;
SIGNAL \clock_50~clkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~25_combout\ : std_logic;
SIGNAL \counter[0]~26\ : std_logic;
SIGNAL \counter[1]~28\ : std_logic;
SIGNAL \counter[2]~30\ : std_logic;
SIGNAL \counter[3]~31_combout\ : std_logic;
SIGNAL \counter[3]~32\ : std_logic;
SIGNAL \counter[4]~34\ : std_logic;
SIGNAL \counter[5]~35_combout\ : std_logic;
SIGNAL \counter[5]~36\ : std_logic;
SIGNAL \counter[6]~38\ : std_logic;
SIGNAL \counter[7]~39_combout\ : std_logic;
SIGNAL \counter[7]~40\ : std_logic;
SIGNAL \counter[8]~42\ : std_logic;
SIGNAL \counter[9]~43_combout\ : std_logic;
SIGNAL \counter[9]~44\ : std_logic;
SIGNAL \counter[10]~45_combout\ : std_logic;
SIGNAL \counter[10]~46\ : std_logic;
SIGNAL \counter[11]~47_combout\ : std_logic;
SIGNAL \counter[11]~48\ : std_logic;
SIGNAL \counter[12]~49_combout\ : std_logic;
SIGNAL \counter[12]~50\ : std_logic;
SIGNAL \counter[13]~51_combout\ : std_logic;
SIGNAL \counter[13]~52\ : std_logic;
SIGNAL \counter[14]~53_combout\ : std_logic;
SIGNAL \counter[14]~54\ : std_logic;
SIGNAL \counter[15]~56\ : std_logic;
SIGNAL \counter[16]~57_combout\ : std_logic;
SIGNAL \counter[16]~58\ : std_logic;
SIGNAL \counter[17]~60\ : std_logic;
SIGNAL \counter[18]~62\ : std_logic;
SIGNAL \counter[19]~63_combout\ : std_logic;
SIGNAL \counter[19]~64\ : std_logic;
SIGNAL \counter[20]~66\ : std_logic;
SIGNAL \counter[21]~67_combout\ : std_logic;
SIGNAL \counter[21]~68\ : std_logic;
SIGNAL \counter[22]~70\ : std_logic;
SIGNAL \counter[23]~71_combout\ : std_logic;
SIGNAL \counter[17]~59_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \counter[20]~65_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \tick~regout\ : std_logic;
SIGNAL \led~0_combout\ : std_logic;
SIGNAL \led~regout\ : std_logic;
SIGNAL counter : std_logic_vector(24 DOWNTO 0);
SIGNAL \key_n~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_key_n~combout\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clock_50 <= clock_50;
ww_key_n <= key_n;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock_50~combout\);
\ALT_INV_key_n~combout\(0) <= NOT \key_n~combout\(0);

-- Location: LCFF_X64_Y26_N7
\counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[15]~55_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

-- Location: LCFF_X64_Y27_N21
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[6]~37_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCFF_X64_Y27_N25
\counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[8]~41_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

-- Location: LCFF_X64_Y26_N13
\counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[18]~61_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(18));

-- Location: LCFF_X64_Y26_N21
\counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[22]~69_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(22));

-- Location: LCFF_X64_Y26_N25
\counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[24]~73_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(24));

-- Location: LCFF_X64_Y27_N17
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[4]~33_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCFF_X64_Y27_N13
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[2]~29_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCFF_X64_Y27_N11
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[1]~27_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCCOMB_X64_Y27_N10
\counter[1]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1]~27_combout\ = (counter(1) & (!\counter[0]~26\)) # (!counter(1) & ((\counter[0]~26\) # (GND)))
-- \counter[1]~28\ = CARRY((!\counter[0]~26\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \counter[0]~26\,
	combout => \counter[1]~27_combout\,
	cout => \counter[1]~28\);

-- Location: LCCOMB_X64_Y27_N12
\counter[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[2]~29_combout\ = (counter(2) & (\counter[1]~28\ $ (GND))) # (!counter(2) & (!\counter[1]~28\ & VCC))
-- \counter[2]~30\ = CARRY((counter(2) & !\counter[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~28\,
	combout => \counter[2]~29_combout\,
	cout => \counter[2]~30\);

-- Location: LCCOMB_X64_Y27_N16
\counter[4]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~33_combout\ = (counter(4) & (\counter[3]~32\ $ (GND))) # (!counter(4) & (!\counter[3]~32\ & VCC))
-- \counter[4]~34\ = CARRY((counter(4) & !\counter[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \counter[3]~32\,
	combout => \counter[4]~33_combout\,
	cout => \counter[4]~34\);

-- Location: LCCOMB_X64_Y27_N20
\counter[6]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[6]~37_combout\ = (counter(6) & (\counter[5]~36\ $ (GND))) # (!counter(6) & (!\counter[5]~36\ & VCC))
-- \counter[6]~38\ = CARRY((counter(6) & !\counter[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \counter[5]~36\,
	combout => \counter[6]~37_combout\,
	cout => \counter[6]~38\);

-- Location: LCCOMB_X64_Y27_N24
\counter[8]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[8]~41_combout\ = (counter(8) & (\counter[7]~40\ $ (GND))) # (!counter(8) & (!\counter[7]~40\ & VCC))
-- \counter[8]~42\ = CARRY((counter(8) & !\counter[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datad => VCC,
	cin => \counter[7]~40\,
	combout => \counter[8]~41_combout\,
	cout => \counter[8]~42\);

-- Location: LCCOMB_X64_Y26_N6
\counter[15]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~55_combout\ = (counter(15) & (!\counter[14]~54\)) # (!counter(15) & ((\counter[14]~54\) # (GND)))
-- \counter[15]~56\ = CARRY((!\counter[14]~54\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \counter[14]~54\,
	combout => \counter[15]~55_combout\,
	cout => \counter[15]~56\);

-- Location: LCCOMB_X64_Y26_N12
\counter[18]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[18]~61_combout\ = (counter(18) & (\counter[17]~60\ $ (GND))) # (!counter(18) & (!\counter[17]~60\ & VCC))
-- \counter[18]~62\ = CARRY((counter(18) & !\counter[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \counter[17]~60\,
	combout => \counter[18]~61_combout\,
	cout => \counter[18]~62\);

-- Location: LCCOMB_X64_Y26_N20
\counter[22]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[22]~69_combout\ = (counter(22) & (\counter[21]~68\ $ (GND))) # (!counter(22) & (!\counter[21]~68\ & VCC))
-- \counter[22]~70\ = CARRY((counter(22) & !\counter[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datad => VCC,
	cin => \counter[21]~68\,
	combout => \counter[22]~69_combout\,
	cout => \counter[22]~70\);

-- Location: LCCOMB_X64_Y26_N22
\counter[23]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[23]~71_combout\ = (counter(23) & (!\counter[22]~70\)) # (!counter(23) & ((\counter[22]~70\) # (GND)))
-- \counter[23]~72\ = CARRY((!\counter[22]~70\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \counter[22]~70\,
	combout => \counter[23]~71_combout\,
	cout => \counter[23]~72\);

-- Location: LCCOMB_X64_Y26_N24
\counter[24]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[24]~73_combout\ = counter(24) $ (!\counter[23]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	cin => \counter[23]~72\,
	combout => \counter[24]~73_combout\);

-- Location: LCCOMB_X63_Y27_N30
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!counter(9) & (!counter(7) & (!counter(6) & !counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datab => counter(7),
	datac => counter(6),
	datad => counter(8),
	combout => \LessThan0~2_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_50~I\ : cycloneii_io
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
	padio => ww_clock_50,
	combout => \clock_50~combout\);

-- Location: CLKCTRL_G2
\clock_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50~clkctrl_outclk\);

-- Location: LCCOMB_X64_Y27_N8
\counter[0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~25_combout\ = counter(0) $ (VCC)
-- \counter[0]~26\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \counter[0]~25_combout\,
	cout => \counter[0]~26\);

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

-- Location: LCFF_X64_Y27_N9
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[0]~25_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCCOMB_X64_Y27_N14
\counter[3]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[3]~31_combout\ = (counter(3) & (!\counter[2]~30\)) # (!counter(3) & ((\counter[2]~30\) # (GND)))
-- \counter[3]~32\ = CARRY((!\counter[2]~30\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~30\,
	combout => \counter[3]~31_combout\,
	cout => \counter[3]~32\);

-- Location: LCFF_X64_Y27_N15
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[3]~31_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCCOMB_X64_Y27_N18
\counter[5]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[5]~35_combout\ = (counter(5) & (!\counter[4]~34\)) # (!counter(5) & ((\counter[4]~34\) # (GND)))
-- \counter[5]~36\ = CARRY((!\counter[4]~34\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~34\,
	combout => \counter[5]~35_combout\,
	cout => \counter[5]~36\);

-- Location: LCFF_X64_Y27_N19
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[5]~35_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LCCOMB_X64_Y27_N22
\counter[7]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[7]~39_combout\ = (counter(7) & (!\counter[6]~38\)) # (!counter(7) & ((\counter[6]~38\) # (GND)))
-- \counter[7]~40\ = CARRY((!\counter[6]~38\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~38\,
	combout => \counter[7]~39_combout\,
	cout => \counter[7]~40\);

-- Location: LCFF_X64_Y27_N23
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[7]~39_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCCOMB_X64_Y27_N26
\counter[9]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[9]~43_combout\ = (counter(9) & (!\counter[8]~42\)) # (!counter(9) & ((\counter[8]~42\) # (GND)))
-- \counter[9]~44\ = CARRY((!\counter[8]~42\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~42\,
	combout => \counter[9]~43_combout\,
	cout => \counter[9]~44\);

-- Location: LCFF_X64_Y27_N27
\counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[9]~43_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9));

-- Location: LCCOMB_X64_Y27_N28
\counter[10]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[10]~45_combout\ = (counter(10) & (\counter[9]~44\ $ (GND))) # (!counter(10) & (!\counter[9]~44\ & VCC))
-- \counter[10]~46\ = CARRY((counter(10) & !\counter[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~44\,
	combout => \counter[10]~45_combout\,
	cout => \counter[10]~46\);

-- Location: LCFF_X64_Y27_N29
\counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[10]~45_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: LCCOMB_X64_Y27_N30
\counter[11]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[11]~47_combout\ = (counter(11) & (!\counter[10]~46\)) # (!counter(11) & ((\counter[10]~46\) # (GND)))
-- \counter[11]~48\ = CARRY((!\counter[10]~46\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \counter[10]~46\,
	combout => \counter[11]~47_combout\,
	cout => \counter[11]~48\);

-- Location: LCFF_X64_Y27_N31
\counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[11]~47_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LCCOMB_X64_Y26_N0
\counter[12]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[12]~49_combout\ = (counter(12) & (\counter[11]~48\ $ (GND))) # (!counter(12) & (!\counter[11]~48\ & VCC))
-- \counter[12]~50\ = CARRY((counter(12) & !\counter[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~48\,
	combout => \counter[12]~49_combout\,
	cout => \counter[12]~50\);

-- Location: LCFF_X63_Y27_N17
\counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \counter[12]~49_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

-- Location: LCCOMB_X64_Y26_N2
\counter[13]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[13]~51_combout\ = (counter(13) & (!\counter[12]~50\)) # (!counter(13) & ((\counter[12]~50\) # (GND)))
-- \counter[13]~52\ = CARRY((!\counter[12]~50\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \counter[12]~50\,
	combout => \counter[13]~51_combout\,
	cout => \counter[13]~52\);

-- Location: LCFF_X63_Y27_N19
\counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \counter[13]~51_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LCCOMB_X64_Y26_N4
\counter[14]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[14]~53_combout\ = (counter(14) & (\counter[13]~52\ $ (GND))) # (!counter(14) & (!\counter[13]~52\ & VCC))
-- \counter[14]~54\ = CARRY((counter(14) & !\counter[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~52\,
	combout => \counter[14]~53_combout\,
	cout => \counter[14]~54\);

-- Location: LCFF_X64_Y26_N5
\counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[14]~53_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: LCCOMB_X64_Y26_N8
\counter[16]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[16]~57_combout\ = (counter(16) & (\counter[15]~56\ $ (GND))) # (!counter(16) & (!\counter[15]~56\ & VCC))
-- \counter[16]~58\ = CARRY((counter(16) & !\counter[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \counter[15]~56\,
	combout => \counter[16]~57_combout\,
	cout => \counter[16]~58\);

-- Location: LCFF_X64_Y26_N9
\counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[16]~57_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(16));

-- Location: LCCOMB_X64_Y26_N10
\counter[17]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[17]~59_combout\ = (counter(17) & (!\counter[16]~58\)) # (!counter(17) & ((\counter[16]~58\) # (GND)))
-- \counter[17]~60\ = CARRY((!\counter[16]~58\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datad => VCC,
	cin => \counter[16]~58\,
	combout => \counter[17]~59_combout\,
	cout => \counter[17]~60\);

-- Location: LCCOMB_X64_Y26_N14
\counter[19]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[19]~63_combout\ = (counter(19) & (!\counter[18]~62\)) # (!counter(19) & ((\counter[18]~62\) # (GND)))
-- \counter[19]~64\ = CARRY((!\counter[18]~62\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datad => VCC,
	cin => \counter[18]~62\,
	combout => \counter[19]~63_combout\,
	cout => \counter[19]~64\);

-- Location: LCFF_X64_Y26_N15
\counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[19]~63_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(19));

-- Location: LCCOMB_X64_Y26_N16
\counter[20]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[20]~65_combout\ = (counter(20) & (\counter[19]~64\ $ (GND))) # (!counter(20) & (!\counter[19]~64\ & VCC))
-- \counter[20]~66\ = CARRY((counter(20) & !\counter[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datad => VCC,
	cin => \counter[19]~64\,
	combout => \counter[20]~65_combout\,
	cout => \counter[20]~66\);

-- Location: LCCOMB_X64_Y26_N18
\counter[21]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[21]~67_combout\ = (counter(21) & (!\counter[20]~66\)) # (!counter(21) & ((\counter[20]~66\) # (GND)))
-- \counter[21]~68\ = CARRY((!\counter[20]~66\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \counter[20]~66\,
	combout => \counter[21]~67_combout\,
	cout => \counter[21]~68\);

-- Location: LCFF_X64_Y26_N19
\counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[21]~67_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(21));

-- Location: LCFF_X64_Y26_N23
\counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[23]~71_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(23));

-- Location: LCFF_X64_Y26_N11
\counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[17]~59_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(17));

-- Location: LCCOMB_X64_Y26_N30
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counter(15) & (!counter(23) & !counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datab => counter(23),
	datad => counter(17),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X64_Y27_N2
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!counter(14)) # (!counter(13))) # (!counter(11))) # (!counter(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(11),
	datac => counter(13),
	datad => counter(14),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X64_Y27_N4
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # ((\LessThan0~2_combout\ & !counter(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => counter(10),
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCFF_X64_Y26_N17
\counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \counter[20]~65_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(20));

-- Location: LCCOMB_X64_Y26_N28
\LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((!counter(16) & !counter(17))) # (!counter(19))) # (!counter(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(19),
	datac => counter(16),
	datad => counter(17),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X64_Y27_N6
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (((\LessThan0~4_combout\) # (!counter(20))) # (!counter(21))) # (!counter(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datab => counter(21),
	datac => counter(20),
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X64_Y27_N0
\LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (counter(24) & (!\LessThan0~3_combout\ & ((counter(23)) # (!\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datab => counter(23),
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCFF_X64_Y27_N1
tick : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \LessThan0~6_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tick~regout\);

-- Location: LCCOMB_X63_Y27_N20
\led~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led~0_combout\ = \tick~regout\ $ (\led~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tick~regout\,
	datac => \led~regout\,
	combout => \led~0_combout\);

-- Location: LCFF_X63_Y27_N21
led : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \led~0_combout\,
	aclr => \ALT_INV_key_n~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led~regout\);

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
	padio => ww_key_n(1));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
\ledr~I\ : cycloneii_io
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
	datain => \led~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr);
END structure;


