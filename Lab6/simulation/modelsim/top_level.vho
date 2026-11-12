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

-- DATE "06/06/2023 11:47:44"

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
	reset_n : IN std_logic;
	uart_rxd : IN std_logic;
	sw : IN std_logic;
	ledr : OUT std_logic_vector(11 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- ledr[0]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[1]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[3]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[4]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[5]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[6]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[7]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[8]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[9]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[10]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[11]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_50	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- uart_rxd	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_uart_rxd : std_logic;
SIGNAL ww_sw : std_logic;
SIGNAL ww_ledr : std_logic_vector(11 DOWNTO 0);
SIGNAL \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \clk_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \serial_uart|clk_cnt[2]~19_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[3]~15_combout\ : std_logic;
SIGNAL \serial_uart|is_first_bit~regout\ : std_logic;
SIGNAL \serial_uart|clk_cnt[0]~13_combout\ : std_logic;
SIGNAL \serial_uart|Selector12~0_combout\ : std_logic;
SIGNAL \serial_uart|is_first_bit~0_combout\ : std_logic;
SIGNAL \serial_uart|LessThan1~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector23~0_combout\ : std_logic;
SIGNAL \serial_uart|received_data~3_combout\ : std_logic;
SIGNAL \serial_uart|Selector20~1_combout\ : std_logic;
SIGNAL \serial_uart|Selector16~0_combout\ : std_logic;
SIGNAL \serial_uart|start_bit_cnt[3]~feeder_combout\ : std_logic;
SIGNAL \clk_50~combout\ : std_logic;
SIGNAL \clk_50~clkctrl_outclk\ : std_logic;
SIGNAL \sw~combout\ : std_logic;
SIGNAL \sw_r~feeder_combout\ : std_logic;
SIGNAL \sw_r~regout\ : std_logic;
SIGNAL \sw_2r~feeder_combout\ : std_logic;
SIGNAL \sw_2r~regout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \reset_r~regout\ : std_logic;
SIGNAL \reset_2r~regout\ : std_logic;
SIGNAL \serial_uart|reset_r~feeder_combout\ : std_logic;
SIGNAL \serial_uart|reset_r~regout\ : std_logic;
SIGNAL \serial_uart|reset_2r~feeder_combout\ : std_logic;
SIGNAL \serial_uart|reset_2r~regout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[0]~9_combout\ : std_logic;
SIGNAL \serial_uart|Selector23~1_combout\ : std_logic;
SIGNAL \serial_uart|Selector22~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector22~1_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_no~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector24~0_combout\ : std_logic;
SIGNAL \serial_uart|Equal0~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector14~3_combout\ : std_logic;
SIGNAL \serial_uart|rx_state.s_stop_bit~regout\ : std_logic;
SIGNAL \serial_uart|received_data_valid~0_combout\ : std_logic;
SIGNAL \serial_uart|rx_state~8_combout\ : std_logic;
SIGNAL \serial_uart|rx_state.s_idle~regout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[0]~10\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[1]~12\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[2]~13_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[2]~14\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[3]~16\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[4]~17_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[4]~18\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[5]~20\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[6]~21_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[5]~19_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[6]~22\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[7]~23_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_half~0_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[7]~24\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[8]~25_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_half~1_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_half~regout\ : std_logic;
SIGNAL \serial_uart|Selector10~0_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_en~regout\ : std_logic;
SIGNAL \serial_uart|LessThan1~2_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[0]~27_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[1]~11_combout\ : std_logic;
SIGNAL \serial_uart|LessThan1~1_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_wrap~1_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_wrap~regout\ : std_logic;
SIGNAL \serial_uart|Selector12~1_combout\ : std_logic;
SIGNAL \serial_uart|rx_state.s_rx_data~regout\ : std_logic;
SIGNAL \serial_uart|Selector14~2_combout\ : std_logic;
SIGNAL \serial_uart|Selector20~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector21~0_combout\ : std_logic;
SIGNAL \serial_uart|received_data~2_combout\ : std_logic;
SIGNAL \serial_uart|received_data[6]~10_combout\ : std_logic;
SIGNAL \serial_uart|received_data_valid~1_combout\ : std_logic;
SIGNAL \serial_uart|received_data_valid~regout\ : std_logic;
SIGNAL \bcd_decode_rom|rom_addr~0_combout\ : std_logic;
SIGNAL \bcd_decode_rom|rom_addr~1_combout\ : std_logic;
SIGNAL \serial_uart|Selector19~0_combout\ : std_logic;
SIGNAL \serial_uart|received_data~4_combout\ : std_logic;
SIGNAL \bcd_decode_rom|rom_addr~2_combout\ : std_logic;
SIGNAL \serial_uart|Selector18~0_combout\ : std_logic;
SIGNAL \serial_uart|received_data~5_combout\ : std_logic;
SIGNAL \bcd_decode_rom|rom_addr~3_combout\ : std_logic;
SIGNAL \serial_uart|Selector17~0_combout\ : std_logic;
SIGNAL \serial_uart|received_data~6_combout\ : std_logic;
SIGNAL \bcd_decode_rom|rom_addr~4_combout\ : std_logic;
SIGNAL \serial_uart|received_data~7_combout\ : std_logic;
SIGNAL \bcd_decode_rom|rom_addr~5_combout\ : std_logic;
SIGNAL \serial_uart|Selector15~0_combout\ : std_logic;
SIGNAL \serial_uart|received_data~8_combout\ : std_logic;
SIGNAL \bcd_decode_rom|rom_addr~6_combout\ : std_logic;
SIGNAL \uart_rxd~combout\ : std_logic;
SIGNAL \serial_uart|rx_r~feeder_combout\ : std_logic;
SIGNAL \serial_uart|rx_r~regout\ : std_logic;
SIGNAL \serial_uart|rx_2r~feeder_combout\ : std_logic;
SIGNAL \serial_uart|rx_2r~regout\ : std_logic;
SIGNAL \serial_uart|received_data~9_combout\ : std_logic;
SIGNAL \bcd_decode_rom|rom_addr~7_combout\ : std_logic;
SIGNAL \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \ledr~0_combout\ : std_logic;
SIGNAL \bcd_decode_rom|addr_valid~regout\ : std_logic;
SIGNAL \bcd_decode_rom|rom_data_valid~regout\ : std_logic;
SIGNAL \ledr[8]~1_combout\ : std_logic;
SIGNAL \ledr[0]~reg0_regout\ : std_logic;
SIGNAL \serial_uart|clk_cnt[0]~10_combout\ : std_logic;
SIGNAL \serial_uart|clk_cnt[1]~18\ : std_logic;
SIGNAL \serial_uart|clk_cnt[2]~20\ : std_logic;
SIGNAL \serial_uart|clk_cnt[3]~21_combout\ : std_logic;
SIGNAL \serial_uart|clk_cnt[3]~22\ : std_logic;
SIGNAL \serial_uart|clk_cnt[4]~24\ : std_logic;
SIGNAL \serial_uart|clk_cnt[5]~26\ : std_logic;
SIGNAL \serial_uart|clk_cnt[6]~27_combout\ : std_logic;
SIGNAL \serial_uart|clk_cnt[6]~28\ : std_logic;
SIGNAL \serial_uart|clk_cnt[7]~30\ : std_logic;
SIGNAL \serial_uart|clk_cnt[8]~31_combout\ : std_logic;
SIGNAL \serial_uart|clk_cnt[8]~32\ : std_logic;
SIGNAL \serial_uart|clk_cnt[9]~33_combout\ : std_logic;
SIGNAL \serial_uart|clk_cnt[0]~15_combout\ : std_logic;
SIGNAL \serial_uart|clk_cnt[4]~23_combout\ : std_logic;
SIGNAL \serial_uart|clk_cnt[0]~14_combout\ : std_logic;
SIGNAL \serial_uart|clk_cnt[0]~12_combout\ : std_logic;
SIGNAL \serial_uart|clk_cnt[0]~16_combout\ : std_logic;
SIGNAL \serial_uart|clk_cnt[0]~11\ : std_logic;
SIGNAL \serial_uart|clk_cnt[1]~17_combout\ : std_logic;
SIGNAL \serial_uart|start_bit_cnt[0]~0_combout\ : std_logic;
SIGNAL \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \ledr~2_combout\ : std_logic;
SIGNAL \ledr[1]~reg0_regout\ : std_logic;
SIGNAL \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \ledr~3_combout\ : std_logic;
SIGNAL \ledr[2]~reg0_regout\ : std_logic;
SIGNAL \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \ledr~4_combout\ : std_logic;
SIGNAL \ledr[3]~reg0_regout\ : std_logic;
SIGNAL \serial_uart|start_bit_cnt[4]~feeder_combout\ : std_logic;
SIGNAL \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \ledr~5_combout\ : std_logic;
SIGNAL \ledr[4]~reg0_regout\ : std_logic;
SIGNAL \serial_uart|clk_cnt[5]~25_combout\ : std_logic;
SIGNAL \serial_uart|start_bit_cnt[5]~feeder_combout\ : std_logic;
SIGNAL \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \ledr~6_combout\ : std_logic;
SIGNAL \ledr[5]~reg0_regout\ : std_logic;
SIGNAL \serial_uart|start_bit_cnt[6]~feeder_combout\ : std_logic;
SIGNAL \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \ledr~7_combout\ : std_logic;
SIGNAL \ledr[6]~reg0_regout\ : std_logic;
SIGNAL \serial_uart|clk_cnt[7]~29_combout\ : std_logic;
SIGNAL \serial_uart|start_bit_cnt[7]~feeder_combout\ : std_logic;
SIGNAL \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \ledr~8_combout\ : std_logic;
SIGNAL \ledr[7]~reg0_regout\ : std_logic;
SIGNAL \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \ledr~9_combout\ : std_logic;
SIGNAL \ledr[8]~reg0_regout\ : std_logic;
SIGNAL \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \ledr~10_combout\ : std_logic;
SIGNAL \ledr[9]~reg0_regout\ : std_logic;
SIGNAL \serial_uart|start_bit_cnt\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \serial_uart|rx_byte_int\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \serial_uart|rx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \serial_uart|rx_bit_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \serial_uart|received_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \serial_uart|clk_cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \bcd_decode_rom|rom_addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \serial_uart|ALT_INV_reset_2r~regout\ : std_logic;

BEGIN

ww_clk_50 <= clk_50;
ww_reset_n <= reset_n;
ww_uart_rxd <= uart_rxd;
ww_sw <= sw;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\bcd_decode_rom|rom_addr\(7) & \bcd_decode_rom|rom_addr\(6) & \bcd_decode_rom|rom_addr\(5) & \bcd_decode_rom|rom_addr\(4) & \bcd_decode_rom|rom_addr\(3) & 
\bcd_decode_rom|rom_addr\(2) & \bcd_decode_rom|rom_addr\(1) & \bcd_decode_rom|rom_addr\(0));

\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\ <= \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\ <= \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\ <= \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\ <= \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\ <= \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\ <= \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\ <= \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a8\ <= \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\ <= \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);

\clk_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_50~combout\);
\serial_uart|ALT_INV_reset_2r~regout\ <= NOT \serial_uart|reset_2r~regout\;

-- Location: LCFF_X23_Y30_N7
\serial_uart|clk_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|clk_cnt[2]~19_combout\,
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	sclr => \serial_uart|rx_2r~regout\,
	ena => \serial_uart|clk_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|clk_cnt\(2));

-- Location: LCCOMB_X23_Y30_N6
\serial_uart|clk_cnt[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|clk_cnt[2]~19_combout\ = (\serial_uart|clk_cnt\(2) & (\serial_uart|clk_cnt[1]~18\ $ (GND))) # (!\serial_uart|clk_cnt\(2) & (!\serial_uart|clk_cnt[1]~18\ & VCC))
-- \serial_uart|clk_cnt[2]~20\ = CARRY((\serial_uart|clk_cnt\(2) & !\serial_uart|clk_cnt[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|clk_cnt\(2),
	datad => VCC,
	cin => \serial_uart|clk_cnt[1]~18\,
	combout => \serial_uart|clk_cnt[2]~19_combout\,
	cout => \serial_uart|clk_cnt[2]~20\);

-- Location: LCFF_X22_Y30_N21
\serial_uart|rx_bit_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[3]~15_combout\,
	sclr => \serial_uart|rx_bit_cnt[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(3));

-- Location: LCCOMB_X22_Y30_N20
\serial_uart|rx_bit_cnt[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[3]~15_combout\ = (\serial_uart|rx_bit_cnt\(3) & (!\serial_uart|rx_bit_cnt[2]~14\)) # (!\serial_uart|rx_bit_cnt\(3) & ((\serial_uart|rx_bit_cnt[2]~14\) # (GND)))
-- \serial_uart|rx_bit_cnt[3]~16\ = CARRY((!\serial_uart|rx_bit_cnt[2]~14\) # (!\serial_uart|rx_bit_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(3),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[2]~14\,
	combout => \serial_uart|rx_bit_cnt[3]~15_combout\,
	cout => \serial_uart|rx_bit_cnt[3]~16\);

-- Location: LCFF_X24_Y30_N5
\serial_uart|start_bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => \serial_uart|clk_cnt\(0),
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	sload => VCC,
	ena => \serial_uart|start_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|start_bit_cnt\(0));

-- Location: LCFF_X24_Y30_N1
\serial_uart|start_bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => \serial_uart|clk_cnt\(2),
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	sload => VCC,
	ena => \serial_uart|start_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|start_bit_cnt\(2));

-- Location: LCFF_X24_Y30_N27
\serial_uart|start_bit_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|start_bit_cnt[3]~feeder_combout\,
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	ena => \serial_uart|start_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|start_bit_cnt\(3));

-- Location: LCFF_X24_Y30_N13
\serial_uart|is_first_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|is_first_bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|is_first_bit~regout\);

-- Location: LCCOMB_X24_Y30_N4
\serial_uart|clk_cnt[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|clk_cnt[0]~13_combout\ = (\serial_uart|clk_cnt\(2) & (\serial_uart|clk_cnt\(1) & (\serial_uart|clk_cnt\(0) & !\serial_uart|rx_2r~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|clk_cnt\(2),
	datab => \serial_uart|clk_cnt\(1),
	datac => \serial_uart|clk_cnt\(0),
	datad => \serial_uart|rx_2r~regout\,
	combout => \serial_uart|clk_cnt[0]~13_combout\);

-- Location: LCCOMB_X25_Y30_N12
\serial_uart|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector12~0_combout\ = (!\serial_uart|rx_state.s_idle~regout\ & \serial_uart|rx_bit_cnt_half~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_state.s_idle~regout\,
	datac => \serial_uart|rx_bit_cnt_half~regout\,
	combout => \serial_uart|Selector12~0_combout\);

-- Location: LCCOMB_X24_Y30_N12
\serial_uart|is_first_bit~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|is_first_bit~0_combout\ = (\serial_uart|is_first_bit~regout\) # ((\serial_uart|reset_2r~regout\ & (\serial_uart|rx_state.s_rx_data~regout\ & \serial_uart|rx_2r~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|reset_2r~regout\,
	datab => \serial_uart|rx_state.s_rx_data~regout\,
	datac => \serial_uart|is_first_bit~regout\,
	datad => \serial_uart|rx_2r~regout\,
	combout => \serial_uart|is_first_bit~0_combout\);

-- Location: LCFF_X24_Y31_N15
\serial_uart|received_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|received_data~3_combout\,
	ena => \serial_uart|received_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(1));

-- Location: LCCOMB_X22_Y30_N6
\serial_uart|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|LessThan1~0_combout\ = ((!\serial_uart|rx_bit_cnt\(6) & ((!\serial_uart|rx_bit_cnt\(5)) # (!\serial_uart|rx_bit_cnt\(4))))) # (!\serial_uart|rx_bit_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(4),
	datab => \serial_uart|rx_bit_cnt\(6),
	datac => \serial_uart|rx_bit_cnt\(5),
	datad => \serial_uart|rx_bit_cnt\(7),
	combout => \serial_uart|LessThan1~0_combout\);

-- Location: LCCOMB_X25_Y30_N20
\serial_uart|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector23~0_combout\ = (\serial_uart|rx_state.s_rx_data~regout\ & (\serial_uart|rx_bit_no\(1) $ (((\serial_uart|rx_bit_no\(0) & !\serial_uart|rx_bit_no~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_no\(0),
	datab => \serial_uart|rx_bit_no\(1),
	datac => \serial_uart|rx_bit_no~0_combout\,
	datad => \serial_uart|rx_state.s_rx_data~regout\,
	combout => \serial_uart|Selector23~0_combout\);

-- Location: LCFF_X24_Y31_N5
\serial_uart|rx_byte_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(1));

-- Location: LCCOMB_X24_Y31_N14
\serial_uart|received_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~3_combout\ = (\serial_uart|rx_byte_int\(1) & \serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_byte_int\(1),
	datac => \serial_uart|reset_2r~regout\,
	combout => \serial_uart|received_data~3_combout\);

-- Location: LCFF_X24_Y31_N17
\serial_uart|rx_byte_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(5));

-- Location: LCCOMB_X24_Y31_N4
\serial_uart|Selector20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector20~1_combout\ = (\serial_uart|rx_byte_int\(2) & ((\serial_uart|Selector14~2_combout\) # ((\serial_uart|Selector20~0_combout\ & \serial_uart|rx_byte_int\(1))))) # (!\serial_uart|rx_byte_int\(2) & (\serial_uart|Selector20~0_combout\ & 
-- (\serial_uart|rx_byte_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_byte_int\(2),
	datab => \serial_uart|Selector20~0_combout\,
	datac => \serial_uart|rx_byte_int\(1),
	datad => \serial_uart|Selector14~2_combout\,
	combout => \serial_uart|Selector20~1_combout\);

-- Location: LCCOMB_X24_Y31_N16
\serial_uart|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector16~0_combout\ = (\serial_uart|rx_byte_int\(6) & ((\serial_uart|Selector14~2_combout\) # ((\serial_uart|rx_byte_int\(5) & \serial_uart|Selector20~0_combout\)))) # (!\serial_uart|rx_byte_int\(6) & (((\serial_uart|rx_byte_int\(5) & 
-- \serial_uart|Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_byte_int\(6),
	datab => \serial_uart|Selector14~2_combout\,
	datac => \serial_uart|rx_byte_int\(5),
	datad => \serial_uart|Selector20~0_combout\,
	combout => \serial_uart|Selector16~0_combout\);

-- Location: LCCOMB_X24_Y30_N26
\serial_uart|start_bit_cnt[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|start_bit_cnt[3]~feeder_combout\ = \serial_uart|clk_cnt\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \serial_uart|clk_cnt\(3),
	combout => \serial_uart|start_bit_cnt[3]~feeder_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw~I\ : cycloneii_io
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
	padio => ww_sw,
	combout => \sw~combout\);

-- Location: LCCOMB_X25_Y32_N0
\sw_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sw_r~feeder_combout\ = \sw~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw~combout\,
	combout => \sw_r~feeder_combout\);

-- Location: LCFF_X25_Y32_N1
sw_r : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \sw_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sw_r~regout\);

-- Location: LCCOMB_X25_Y32_N28
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

-- Location: LCFF_X25_Y32_N29
sw_2r : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \sw_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sw_2r~regout\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_n~I\ : cycloneii_io
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
	padio => ww_reset_n,
	combout => \reset_n~combout\);

-- Location: LCFF_X24_Y30_N15
reset_r : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => \reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_r~regout\);

-- Location: LCFF_X24_Y30_N3
reset_2r : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => \reset_r~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_2r~regout\);

-- Location: LCCOMB_X24_Y30_N28
\serial_uart|reset_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|reset_r~feeder_combout\ = \reset_2r~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_2r~regout\,
	combout => \serial_uart|reset_r~feeder_combout\);

-- Location: LCFF_X24_Y30_N29
\serial_uart|reset_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|reset_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|reset_r~regout\);

-- Location: LCCOMB_X24_Y30_N16
\serial_uart|reset_2r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|reset_2r~feeder_combout\ = \serial_uart|reset_r~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \serial_uart|reset_r~regout\,
	combout => \serial_uart|reset_2r~feeder_combout\);

-- Location: LCFF_X24_Y30_N17
\serial_uart|reset_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|reset_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|reset_2r~regout\);

-- Location: LCCOMB_X22_Y30_N14
\serial_uart|rx_bit_cnt[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[0]~9_combout\ = \serial_uart|rx_bit_cnt\(0) $ (VCC)
-- \serial_uart|rx_bit_cnt[0]~10\ = CARRY(\serial_uart|rx_bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_cnt\(0),
	datad => VCC,
	combout => \serial_uart|rx_bit_cnt[0]~9_combout\,
	cout => \serial_uart|rx_bit_cnt[0]~10\);

-- Location: LCCOMB_X25_Y30_N18
\serial_uart|Selector23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector23~1_combout\ = (\serial_uart|Selector23~0_combout\) # ((\serial_uart|rx_bit_no\(1) & \serial_uart|rx_state.s_stop_bit~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector23~0_combout\,
	datac => \serial_uart|rx_bit_no\(1),
	datad => \serial_uart|rx_state.s_stop_bit~regout\,
	combout => \serial_uart|Selector23~1_combout\);

-- Location: LCFF_X25_Y30_N19
\serial_uart|rx_bit_no[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_no\(1));

-- Location: LCCOMB_X25_Y30_N4
\serial_uart|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector22~0_combout\ = (\serial_uart|rx_bit_no\(0) & (\serial_uart|rx_bit_no\(1) & (\serial_uart|rx_bit_cnt_wrap~regout\ & \serial_uart|rx_state.s_rx_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_no\(0),
	datab => \serial_uart|rx_bit_no\(1),
	datac => \serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \serial_uart|rx_state.s_rx_data~regout\,
	combout => \serial_uart|Selector22~0_combout\);

-- Location: LCCOMB_X25_Y30_N6
\serial_uart|Selector22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector22~1_combout\ = (\serial_uart|Selector22~0_combout\) # ((\serial_uart|rx_bit_no\(2) & ((\serial_uart|rx_state.s_stop_bit~regout\) # (\serial_uart|rx_state.s_rx_data~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_state.s_stop_bit~regout\,
	datab => \serial_uart|Selector22~0_combout\,
	datac => \serial_uart|rx_bit_no\(2),
	datad => \serial_uart|rx_state.s_rx_data~regout\,
	combout => \serial_uart|Selector22~1_combout\);

-- Location: LCFF_X25_Y30_N7
\serial_uart|rx_bit_no[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_no\(2));

-- Location: LCCOMB_X25_Y30_N14
\serial_uart|rx_bit_no~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_no~0_combout\ = ((\serial_uart|rx_bit_no\(0) & (\serial_uart|rx_bit_no\(1) & \serial_uart|rx_bit_no\(2)))) # (!\serial_uart|rx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_no\(0),
	datab => \serial_uart|rx_bit_no\(1),
	datac => \serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \serial_uart|rx_bit_no\(2),
	combout => \serial_uart|rx_bit_no~0_combout\);

-- Location: LCCOMB_X25_Y30_N16
\serial_uart|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector24~0_combout\ = (\serial_uart|rx_bit_no\(0) & ((\serial_uart|rx_state.s_stop_bit~regout\) # ((\serial_uart|rx_bit_no~0_combout\ & \serial_uart|rx_state.s_rx_data~regout\)))) # (!\serial_uart|rx_bit_no\(0) & 
-- (((!\serial_uart|rx_bit_no~0_combout\ & \serial_uart|rx_state.s_rx_data~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_state.s_stop_bit~regout\,
	datab => \serial_uart|rx_bit_no~0_combout\,
	datac => \serial_uart|rx_bit_no\(0),
	datad => \serial_uart|rx_state.s_rx_data~regout\,
	combout => \serial_uart|Selector24~0_combout\);

-- Location: LCFF_X25_Y30_N17
\serial_uart|rx_bit_no[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_no\(0));

-- Location: LCCOMB_X25_Y30_N28
\serial_uart|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Equal0~0_combout\ = (\serial_uart|rx_bit_no\(1) & (\serial_uart|rx_bit_no\(0) & \serial_uart|rx_bit_no\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_no\(1),
	datac => \serial_uart|rx_bit_no\(0),
	datad => \serial_uart|rx_bit_no\(2),
	combout => \serial_uart|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y30_N10
\serial_uart|Selector14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector14~3_combout\ = (\serial_uart|rx_bit_cnt_wrap~regout\ & (\serial_uart|rx_state.s_rx_data~regout\ & ((\serial_uart|Equal0~0_combout\)))) # (!\serial_uart|rx_bit_cnt_wrap~regout\ & (((\serial_uart|rx_state.s_stop_bit~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_state.s_rx_data~regout\,
	datab => \serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \serial_uart|rx_state.s_stop_bit~regout\,
	datad => \serial_uart|Equal0~0_combout\,
	combout => \serial_uart|Selector14~3_combout\);

-- Location: LCFF_X25_Y30_N11
\serial_uart|rx_state.s_stop_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector14~3_combout\,
	sclr => \serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_state.s_stop_bit~regout\);

-- Location: LCCOMB_X25_Y30_N8
\serial_uart|received_data_valid~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data_valid~0_combout\ = (\serial_uart|rx_bit_cnt_wrap~regout\ & \serial_uart|rx_state.s_stop_bit~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \serial_uart|rx_state.s_stop_bit~regout\,
	combout => \serial_uart|received_data_valid~0_combout\);

-- Location: LCCOMB_X25_Y30_N24
\serial_uart|rx_state~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_state~8_combout\ = (!\serial_uart|received_data_valid~0_combout\ & (\serial_uart|reset_2r~regout\ & ((\serial_uart|rx_bit_cnt_half~regout\) # (\serial_uart|rx_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt_half~regout\,
	datab => \serial_uart|received_data_valid~0_combout\,
	datac => \serial_uart|rx_state.s_idle~regout\,
	datad => \serial_uart|reset_2r~regout\,
	combout => \serial_uart|rx_state~8_combout\);

-- Location: LCFF_X25_Y30_N25
\serial_uart|rx_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_state.s_idle~regout\);

-- Location: LCCOMB_X22_Y30_N16
\serial_uart|rx_bit_cnt[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[1]~11_combout\ = (\serial_uart|rx_bit_cnt\(1) & (!\serial_uart|rx_bit_cnt[0]~10\)) # (!\serial_uart|rx_bit_cnt\(1) & ((\serial_uart|rx_bit_cnt[0]~10\) # (GND)))
-- \serial_uart|rx_bit_cnt[1]~12\ = CARRY((!\serial_uart|rx_bit_cnt[0]~10\) # (!\serial_uart|rx_bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(1),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[0]~10\,
	combout => \serial_uart|rx_bit_cnt[1]~11_combout\,
	cout => \serial_uart|rx_bit_cnt[1]~12\);

-- Location: LCCOMB_X22_Y30_N18
\serial_uart|rx_bit_cnt[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[2]~13_combout\ = (\serial_uart|rx_bit_cnt\(2) & (\serial_uart|rx_bit_cnt[1]~12\ $ (GND))) # (!\serial_uart|rx_bit_cnt\(2) & (!\serial_uart|rx_bit_cnt[1]~12\ & VCC))
-- \serial_uart|rx_bit_cnt[2]~14\ = CARRY((\serial_uart|rx_bit_cnt\(2) & !\serial_uart|rx_bit_cnt[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_cnt\(2),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[1]~12\,
	combout => \serial_uart|rx_bit_cnt[2]~13_combout\,
	cout => \serial_uart|rx_bit_cnt[2]~14\);

-- Location: LCFF_X22_Y30_N19
\serial_uart|rx_bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[2]~13_combout\,
	sclr => \serial_uart|rx_bit_cnt[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(2));

-- Location: LCCOMB_X22_Y30_N22
\serial_uart|rx_bit_cnt[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[4]~17_combout\ = (\serial_uart|rx_bit_cnt\(4) & (\serial_uart|rx_bit_cnt[3]~16\ $ (GND))) # (!\serial_uart|rx_bit_cnt\(4) & (!\serial_uart|rx_bit_cnt[3]~16\ & VCC))
-- \serial_uart|rx_bit_cnt[4]~18\ = CARRY((\serial_uart|rx_bit_cnt\(4) & !\serial_uart|rx_bit_cnt[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_cnt\(4),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[3]~16\,
	combout => \serial_uart|rx_bit_cnt[4]~17_combout\,
	cout => \serial_uart|rx_bit_cnt[4]~18\);

-- Location: LCFF_X22_Y30_N23
\serial_uart|rx_bit_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[4]~17_combout\,
	sclr => \serial_uart|rx_bit_cnt[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(4));

-- Location: LCCOMB_X22_Y30_N24
\serial_uart|rx_bit_cnt[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[5]~19_combout\ = (\serial_uart|rx_bit_cnt\(5) & (!\serial_uart|rx_bit_cnt[4]~18\)) # (!\serial_uart|rx_bit_cnt\(5) & ((\serial_uart|rx_bit_cnt[4]~18\) # (GND)))
-- \serial_uart|rx_bit_cnt[5]~20\ = CARRY((!\serial_uart|rx_bit_cnt[4]~18\) # (!\serial_uart|rx_bit_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(5),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[4]~18\,
	combout => \serial_uart|rx_bit_cnt[5]~19_combout\,
	cout => \serial_uart|rx_bit_cnt[5]~20\);

-- Location: LCCOMB_X22_Y30_N26
\serial_uart|rx_bit_cnt[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[6]~21_combout\ = (\serial_uart|rx_bit_cnt\(6) & (\serial_uart|rx_bit_cnt[5]~20\ $ (GND))) # (!\serial_uart|rx_bit_cnt\(6) & (!\serial_uart|rx_bit_cnt[5]~20\ & VCC))
-- \serial_uart|rx_bit_cnt[6]~22\ = CARRY((\serial_uart|rx_bit_cnt\(6) & !\serial_uart|rx_bit_cnt[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_cnt\(6),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[5]~20\,
	combout => \serial_uart|rx_bit_cnt[6]~21_combout\,
	cout => \serial_uart|rx_bit_cnt[6]~22\);

-- Location: LCFF_X22_Y30_N27
\serial_uart|rx_bit_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[6]~21_combout\,
	sclr => \serial_uart|rx_bit_cnt[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(6));

-- Location: LCFF_X22_Y30_N25
\serial_uart|rx_bit_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[5]~19_combout\,
	sclr => \serial_uart|rx_bit_cnt[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(5));

-- Location: LCCOMB_X22_Y30_N28
\serial_uart|rx_bit_cnt[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[7]~23_combout\ = (\serial_uart|rx_bit_cnt\(7) & (!\serial_uart|rx_bit_cnt[6]~22\)) # (!\serial_uart|rx_bit_cnt\(7) & ((\serial_uart|rx_bit_cnt[6]~22\) # (GND)))
-- \serial_uart|rx_bit_cnt[7]~24\ = CARRY((!\serial_uart|rx_bit_cnt[6]~22\) # (!\serial_uart|rx_bit_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_cnt\(7),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[6]~22\,
	combout => \serial_uart|rx_bit_cnt[7]~23_combout\,
	cout => \serial_uart|rx_bit_cnt[7]~24\);

-- Location: LCFF_X22_Y30_N29
\serial_uart|rx_bit_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[7]~23_combout\,
	sclr => \serial_uart|rx_bit_cnt[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(7));

-- Location: LCCOMB_X22_Y30_N4
\serial_uart|rx_bit_cnt_half~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt_half~0_combout\ = (\serial_uart|rx_bit_cnt\(7) & ((\serial_uart|rx_bit_cnt\(5)) # ((\serial_uart|rx_bit_cnt\(3) & \serial_uart|rx_bit_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(3),
	datab => \serial_uart|rx_bit_cnt\(4),
	datac => \serial_uart|rx_bit_cnt\(5),
	datad => \serial_uart|rx_bit_cnt\(7),
	combout => \serial_uart|rx_bit_cnt_half~0_combout\);

-- Location: LCCOMB_X22_Y30_N30
\serial_uart|rx_bit_cnt[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[8]~25_combout\ = \serial_uart|rx_bit_cnt[7]~24\ $ (!\serial_uart|rx_bit_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \serial_uart|rx_bit_cnt\(8),
	cin => \serial_uart|rx_bit_cnt[7]~24\,
	combout => \serial_uart|rx_bit_cnt[8]~25_combout\);

-- Location: LCFF_X22_Y30_N31
\serial_uart|rx_bit_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[8]~25_combout\,
	sclr => \serial_uart|rx_bit_cnt[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(8));

-- Location: LCCOMB_X22_Y30_N12
\serial_uart|rx_bit_cnt_half~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt_half~1_combout\ = (\serial_uart|rx_bit_cnt_en~regout\ & ((\serial_uart|rx_bit_cnt\(8)) # ((\serial_uart|rx_bit_cnt\(6) & \serial_uart|rx_bit_cnt_half~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt_en~regout\,
	datab => \serial_uart|rx_bit_cnt\(6),
	datac => \serial_uart|rx_bit_cnt_half~0_combout\,
	datad => \serial_uart|rx_bit_cnt\(8),
	combout => \serial_uart|rx_bit_cnt_half~1_combout\);

-- Location: LCFF_X22_Y30_N13
\serial_uart|rx_bit_cnt_half\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt_half~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt_half~regout\);

-- Location: LCCOMB_X25_Y30_N22
\serial_uart|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector10~0_combout\ = (!\serial_uart|received_data_valid~0_combout\ & ((\serial_uart|rx_state.s_idle~regout\) # ((!\serial_uart|rx_2r~regout\ & !\serial_uart|rx_bit_cnt_half~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_2r~regout\,
	datab => \serial_uart|received_data_valid~0_combout\,
	datac => \serial_uart|rx_state.s_idle~regout\,
	datad => \serial_uart|rx_bit_cnt_half~regout\,
	combout => \serial_uart|Selector10~0_combout\);

-- Location: LCFF_X25_Y30_N23
\serial_uart|rx_bit_cnt_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt_en~regout\);

-- Location: LCCOMB_X22_Y30_N10
\serial_uart|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|LessThan1~2_combout\ = (\serial_uart|LessThan1~0_combout\) # (((!\serial_uart|rx_bit_cnt\(6) & \serial_uart|LessThan1~1_combout\)) # (!\serial_uart|rx_bit_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|LessThan1~0_combout\,
	datab => \serial_uart|rx_bit_cnt\(6),
	datac => \serial_uart|rx_bit_cnt\(8),
	datad => \serial_uart|LessThan1~1_combout\,
	combout => \serial_uart|LessThan1~2_combout\);

-- Location: LCCOMB_X22_Y30_N8
\serial_uart|rx_bit_cnt[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[0]~27_combout\ = (!\serial_uart|LessThan1~2_combout\) # (!\serial_uart|rx_bit_cnt_en~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|rx_bit_cnt_en~regout\,
	datad => \serial_uart|LessThan1~2_combout\,
	combout => \serial_uart|rx_bit_cnt[0]~27_combout\);

-- Location: LCFF_X22_Y30_N15
\serial_uart|rx_bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[0]~9_combout\,
	sclr => \serial_uart|rx_bit_cnt[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(0));

-- Location: LCFF_X22_Y30_N17
\serial_uart|rx_bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[1]~11_combout\,
	sclr => \serial_uart|rx_bit_cnt[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(1));

-- Location: LCCOMB_X22_Y30_N0
\serial_uart|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|LessThan1~1_combout\ = (!\serial_uart|rx_bit_cnt\(3) & (!\serial_uart|rx_bit_cnt\(0) & (!\serial_uart|rx_bit_cnt\(1) & !\serial_uart|rx_bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(3),
	datab => \serial_uart|rx_bit_cnt\(0),
	datac => \serial_uart|rx_bit_cnt\(1),
	datad => \serial_uart|rx_bit_cnt\(2),
	combout => \serial_uart|LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y30_N26
\serial_uart|rx_bit_cnt_wrap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt_wrap~0_combout\ = (!\serial_uart|rx_bit_cnt_en~regout\) # (!\serial_uart|rx_bit_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|rx_bit_cnt\(8),
	datad => \serial_uart|rx_bit_cnt_en~regout\,
	combout => \serial_uart|rx_bit_cnt_wrap~0_combout\);

-- Location: LCCOMB_X22_Y30_N2
\serial_uart|rx_bit_cnt_wrap~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt_wrap~1_combout\ = (!\serial_uart|LessThan1~0_combout\ & (!\serial_uart|rx_bit_cnt_wrap~0_combout\ & ((\serial_uart|rx_bit_cnt\(6)) # (!\serial_uart|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|LessThan1~0_combout\,
	datab => \serial_uart|LessThan1~1_combout\,
	datac => \serial_uart|rx_bit_cnt_wrap~0_combout\,
	datad => \serial_uart|rx_bit_cnt\(6),
	combout => \serial_uart|rx_bit_cnt_wrap~1_combout\);

-- Location: LCFF_X22_Y30_N3
\serial_uart|rx_bit_cnt_wrap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt_wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt_wrap~regout\);

-- Location: LCCOMB_X25_Y30_N0
\serial_uart|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector12~1_combout\ = (\serial_uart|Selector12~0_combout\) # ((\serial_uart|rx_state.s_rx_data~regout\ & ((!\serial_uart|Equal0~0_combout\) # (!\serial_uart|rx_bit_cnt_wrap~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector12~0_combout\,
	datab => \serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \serial_uart|rx_state.s_rx_data~regout\,
	datad => \serial_uart|Equal0~0_combout\,
	combout => \serial_uart|Selector12~1_combout\);

-- Location: LCFF_X25_Y30_N1
\serial_uart|rx_state.s_rx_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector12~1_combout\,
	sclr => \serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_state.s_rx_data~regout\);

-- Location: LCCOMB_X24_Y31_N26
\serial_uart|Selector14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector14~2_combout\ = (\serial_uart|rx_state.s_rx_data~regout\ & \serial_uart|rx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_state.s_rx_data~regout\,
	datac => \serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \serial_uart|Selector14~2_combout\);

-- Location: LCCOMB_X24_Y31_N28
\serial_uart|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector20~0_combout\ = (\serial_uart|rx_state.s_stop_bit~regout\) # ((!\serial_uart|rx_bit_cnt_wrap~regout\ & \serial_uart|rx_state.s_rx_data~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \serial_uart|rx_state.s_stop_bit~regout\,
	datad => \serial_uart|rx_state.s_rx_data~regout\,
	combout => \serial_uart|Selector20~0_combout\);

-- Location: LCCOMB_X24_Y31_N12
\serial_uart|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector21~0_combout\ = (\serial_uart|rx_byte_int\(1) & ((\serial_uart|Selector14~2_combout\) # ((\serial_uart|rx_byte_int\(0) & \serial_uart|Selector20~0_combout\)))) # (!\serial_uart|rx_byte_int\(1) & (((\serial_uart|rx_byte_int\(0) & 
-- \serial_uart|Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_byte_int\(1),
	datab => \serial_uart|Selector14~2_combout\,
	datac => \serial_uart|rx_byte_int\(0),
	datad => \serial_uart|Selector20~0_combout\,
	combout => \serial_uart|Selector21~0_combout\);

-- Location: LCFF_X24_Y31_N13
\serial_uart|rx_byte_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(0));

-- Location: LCCOMB_X24_Y31_N24
\serial_uart|received_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~2_combout\ = (\serial_uart|reset_2r~regout\ & \serial_uart|rx_byte_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|reset_2r~regout\,
	datad => \serial_uart|rx_byte_int\(0),
	combout => \serial_uart|received_data~2_combout\);

-- Location: LCCOMB_X24_Y31_N30
\serial_uart|received_data[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data[6]~10_combout\ = ((\serial_uart|rx_bit_cnt_wrap~regout\ & (\serial_uart|rx_state.s_rx_data~regout\ & \serial_uart|Equal0~0_combout\))) # (!\serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt_wrap~regout\,
	datab => \serial_uart|rx_state.s_rx_data~regout\,
	datac => \serial_uart|reset_2r~regout\,
	datad => \serial_uart|Equal0~0_combout\,
	combout => \serial_uart|received_data[6]~10_combout\);

-- Location: LCFF_X24_Y31_N25
\serial_uart|received_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|received_data~2_combout\,
	ena => \serial_uart|received_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(0));

-- Location: LCCOMB_X25_Y30_N26
\serial_uart|received_data_valid~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data_valid~1_combout\ = (\serial_uart|rx_2r~regout\ & (\serial_uart|rx_bit_cnt_wrap~regout\ & \serial_uart|rx_state.s_stop_bit~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_2r~regout\,
	datac => \serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \serial_uart|rx_state.s_stop_bit~regout\,
	combout => \serial_uart|received_data_valid~1_combout\);

-- Location: LCFF_X25_Y30_N27
\serial_uart|received_data_valid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|received_data_valid~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data_valid~regout\);

-- Location: LCCOMB_X25_Y31_N0
\bcd_decode_rom|rom_addr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd_decode_rom|rom_addr~0_combout\ = (\serial_uart|received_data\(0) & \serial_uart|received_data_valid~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|received_data\(0),
	datac => \serial_uart|received_data_valid~regout\,
	combout => \bcd_decode_rom|rom_addr~0_combout\);

-- Location: LCFF_X25_Y31_N1
\bcd_decode_rom|rom_addr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \bcd_decode_rom|rom_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd_decode_rom|rom_addr\(0));

-- Location: LCCOMB_X25_Y31_N2
\bcd_decode_rom|rom_addr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd_decode_rom|rom_addr~1_combout\ = (\serial_uart|received_data\(1) & \serial_uart|received_data_valid~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|received_data\(1),
	datac => \serial_uart|received_data_valid~regout\,
	combout => \bcd_decode_rom|rom_addr~1_combout\);

-- Location: LCFF_X25_Y31_N3
\bcd_decode_rom|rom_addr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \bcd_decode_rom|rom_addr~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd_decode_rom|rom_addr\(1));

-- Location: LCCOMB_X24_Y31_N2
\serial_uart|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector19~0_combout\ = (\serial_uart|rx_byte_int\(3) & ((\serial_uart|Selector14~2_combout\) # ((\serial_uart|rx_byte_int\(2) & \serial_uart|Selector20~0_combout\)))) # (!\serial_uart|rx_byte_int\(3) & (((\serial_uart|rx_byte_int\(2) & 
-- \serial_uart|Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_byte_int\(3),
	datab => \serial_uart|Selector14~2_combout\,
	datac => \serial_uart|rx_byte_int\(2),
	datad => \serial_uart|Selector20~0_combout\,
	combout => \serial_uart|Selector19~0_combout\);

-- Location: LCFF_X24_Y31_N3
\serial_uart|rx_byte_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(2));

-- Location: LCCOMB_X24_Y31_N0
\serial_uart|received_data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~4_combout\ = (\serial_uart|reset_2r~regout\ & \serial_uart|rx_byte_int\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|reset_2r~regout\,
	datad => \serial_uart|rx_byte_int\(2),
	combout => \serial_uart|received_data~4_combout\);

-- Location: LCFF_X24_Y31_N1
\serial_uart|received_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|received_data~4_combout\,
	ena => \serial_uart|received_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(2));

-- Location: LCCOMB_X25_Y31_N8
\bcd_decode_rom|rom_addr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd_decode_rom|rom_addr~2_combout\ = (\serial_uart|received_data_valid~regout\ & \serial_uart|received_data\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|received_data_valid~regout\,
	datac => \serial_uart|received_data\(2),
	combout => \bcd_decode_rom|rom_addr~2_combout\);

-- Location: LCFF_X25_Y31_N9
\bcd_decode_rom|rom_addr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \bcd_decode_rom|rom_addr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd_decode_rom|rom_addr\(2));

-- Location: LCCOMB_X24_Y31_N8
\serial_uart|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector18~0_combout\ = (\serial_uart|rx_byte_int\(4) & ((\serial_uart|Selector14~2_combout\) # ((\serial_uart|rx_byte_int\(3) & \serial_uart|Selector20~0_combout\)))) # (!\serial_uart|rx_byte_int\(4) & (((\serial_uart|rx_byte_int\(3) & 
-- \serial_uart|Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_byte_int\(4),
	datab => \serial_uart|Selector14~2_combout\,
	datac => \serial_uart|rx_byte_int\(3),
	datad => \serial_uart|Selector20~0_combout\,
	combout => \serial_uart|Selector18~0_combout\);

-- Location: LCFF_X24_Y31_N9
\serial_uart|rx_byte_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(3));

-- Location: LCCOMB_X24_Y31_N6
\serial_uart|received_data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~5_combout\ = (\serial_uart|rx_byte_int\(3) & \serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_byte_int\(3),
	datac => \serial_uart|reset_2r~regout\,
	combout => \serial_uart|received_data~5_combout\);

-- Location: LCFF_X24_Y31_N7
\serial_uart|received_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|received_data~5_combout\,
	ena => \serial_uart|received_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(3));

-- Location: LCCOMB_X25_Y31_N26
\bcd_decode_rom|rom_addr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd_decode_rom|rom_addr~3_combout\ = (\serial_uart|received_data_valid~regout\ & \serial_uart|received_data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|received_data_valid~regout\,
	datac => \serial_uart|received_data\(3),
	combout => \bcd_decode_rom|rom_addr~3_combout\);

-- Location: LCFF_X25_Y31_N27
\bcd_decode_rom|rom_addr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \bcd_decode_rom|rom_addr~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd_decode_rom|rom_addr\(3));

-- Location: LCCOMB_X24_Y31_N22
\serial_uart|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector17~0_combout\ = (\serial_uart|rx_byte_int\(5) & ((\serial_uart|Selector14~2_combout\) # ((\serial_uart|rx_byte_int\(4) & \serial_uart|Selector20~0_combout\)))) # (!\serial_uart|rx_byte_int\(5) & (((\serial_uart|rx_byte_int\(4) & 
-- \serial_uart|Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_byte_int\(5),
	datab => \serial_uart|Selector14~2_combout\,
	datac => \serial_uart|rx_byte_int\(4),
	datad => \serial_uart|Selector20~0_combout\,
	combout => \serial_uart|Selector17~0_combout\);

-- Location: LCFF_X24_Y31_N23
\serial_uart|rx_byte_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(4));

-- Location: LCCOMB_X24_Y31_N20
\serial_uart|received_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~6_combout\ = (\serial_uart|reset_2r~regout\ & \serial_uart|rx_byte_int\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|reset_2r~regout\,
	datad => \serial_uart|rx_byte_int\(4),
	combout => \serial_uart|received_data~6_combout\);

-- Location: LCFF_X24_Y31_N21
\serial_uart|received_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|received_data~6_combout\,
	ena => \serial_uart|received_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(4));

-- Location: LCCOMB_X25_Y31_N24
\bcd_decode_rom|rom_addr~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd_decode_rom|rom_addr~4_combout\ = (\serial_uart|received_data_valid~regout\ & \serial_uart|received_data\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|received_data_valid~regout\,
	datac => \serial_uart|received_data\(4),
	combout => \bcd_decode_rom|rom_addr~4_combout\);

-- Location: LCFF_X25_Y31_N25
\bcd_decode_rom|rom_addr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \bcd_decode_rom|rom_addr~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd_decode_rom|rom_addr\(4));

-- Location: LCCOMB_X24_Y31_N18
\serial_uart|received_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~7_combout\ = (\serial_uart|rx_byte_int\(5) & \serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_byte_int\(5),
	datac => \serial_uart|reset_2r~regout\,
	combout => \serial_uart|received_data~7_combout\);

-- Location: LCFF_X24_Y31_N19
\serial_uart|received_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|received_data~7_combout\,
	ena => \serial_uart|received_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(5));

-- Location: LCCOMB_X25_Y31_N10
\bcd_decode_rom|rom_addr~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd_decode_rom|rom_addr~5_combout\ = (\serial_uart|received_data\(5) & \serial_uart|received_data_valid~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|received_data\(5),
	datac => \serial_uart|received_data_valid~regout\,
	combout => \bcd_decode_rom|rom_addr~5_combout\);

-- Location: LCFF_X25_Y31_N11
\bcd_decode_rom|rom_addr[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \bcd_decode_rom|rom_addr~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd_decode_rom|rom_addr\(5));

-- Location: LCCOMB_X24_Y31_N10
\serial_uart|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector15~0_combout\ = (\serial_uart|rx_2r~regout\ & ((\serial_uart|Selector14~2_combout\) # ((\serial_uart|rx_byte_int\(6) & \serial_uart|Selector20~0_combout\)))) # (!\serial_uart|rx_2r~regout\ & (((\serial_uart|rx_byte_int\(6) & 
-- \serial_uart|Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_2r~regout\,
	datab => \serial_uart|Selector14~2_combout\,
	datac => \serial_uart|rx_byte_int\(6),
	datad => \serial_uart|Selector20~0_combout\,
	combout => \serial_uart|Selector15~0_combout\);

-- Location: LCFF_X24_Y31_N11
\serial_uart|rx_byte_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(6));

-- Location: LCCOMB_X25_Y31_N12
\serial_uart|received_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~8_combout\ = (\serial_uart|reset_2r~regout\ & \serial_uart|rx_byte_int\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|reset_2r~regout\,
	datad => \serial_uart|rx_byte_int\(6),
	combout => \serial_uart|received_data~8_combout\);

-- Location: LCFF_X25_Y31_N13
\serial_uart|received_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|received_data~8_combout\,
	ena => \serial_uart|received_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(6));

-- Location: LCCOMB_X25_Y31_N20
\bcd_decode_rom|rom_addr~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd_decode_rom|rom_addr~6_combout\ = (\serial_uart|received_data_valid~regout\ & \serial_uart|received_data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|received_data_valid~regout\,
	datad => \serial_uart|received_data\(6),
	combout => \bcd_decode_rom|rom_addr~6_combout\);

-- Location: LCFF_X25_Y31_N21
\bcd_decode_rom|rom_addr[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \bcd_decode_rom|rom_addr~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd_decode_rom|rom_addr\(6));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\uart_rxd~I\ : cycloneii_io
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
	padio => ww_uart_rxd,
	combout => \uart_rxd~combout\);

-- Location: LCCOMB_X25_Y30_N30
\serial_uart|rx_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_r~feeder_combout\ = \uart_rxd~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rxd~combout\,
	combout => \serial_uart|rx_r~feeder_combout\);

-- Location: LCFF_X25_Y30_N31
\serial_uart|rx_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_r~regout\);

-- Location: LCCOMB_X24_Y30_N10
\serial_uart|rx_2r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_2r~feeder_combout\ = \serial_uart|rx_r~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \serial_uart|rx_r~regout\,
	combout => \serial_uart|rx_2r~feeder_combout\);

-- Location: LCFF_X24_Y30_N11
\serial_uart|rx_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_2r~regout\);

-- Location: LCCOMB_X25_Y31_N22
\serial_uart|received_data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~9_combout\ = (\serial_uart|reset_2r~regout\ & \serial_uart|rx_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|reset_2r~regout\,
	datad => \serial_uart|rx_2r~regout\,
	combout => \serial_uart|received_data~9_combout\);

-- Location: LCFF_X25_Y31_N23
\serial_uart|received_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|received_data~9_combout\,
	ena => \serial_uart|received_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(7));

-- Location: LCCOMB_X25_Y31_N18
\bcd_decode_rom|rom_addr~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd_decode_rom|rom_addr~7_combout\ = (\serial_uart|received_data_valid~regout\ & \serial_uart|received_data\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|received_data_valid~regout\,
	datad => \serial_uart|received_data\(7),
	combout => \bcd_decode_rom|rom_addr~7_combout\);

-- Location: LCFF_X25_Y31_N19
\bcd_decode_rom|rom_addr[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \bcd_decode_rom|rom_addr~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd_decode_rom|rom_addr\(7));

-- Location: M4K_X26_Y32
\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"9565494E52946509264891E469164490E42906408E6388DE368D6348CE328C6308A62889E268962488E22886208661885E168561484E12846108260881E06816",
	mem_init0 => X"0480E02806006659865D966559464D92645906258861D866158460D82605805E5785DD765D5745CD725C5705A56859D665956458D62585605655855D565555454D52545505254851D465154450D42505404E5384DD364D5344CD324C5304A52849D264952448122485204651845D164551444D12445104250841D064150440D02405002649825C962549424C92244902248821C862148420C82204801E4781DC761D4741CC721C4701A46819C661946418C62184601645815C561545414C52144501244811C461144410C42104400E4380DC360D4340CC320C4300A42809C260942408C22084200641805C160541404C12044100240801C060140400C0200400",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Lab6.ram0_bcd_decode_rom_eb028e2c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "bcd_decode_rom:bcd_decode_rom|altsyncram:bcd_rom_rtl_0|altsyncram_m571:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 10,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 10,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk_50~clkctrl_outclk\,
	portaaddr => \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y32_N24
\ledr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ledr~0_combout\ = (\sw_2r~regout\ & (\serial_uart|start_bit_cnt\(0))) # (!\sw_2r~regout\ & ((\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|start_bit_cnt\(0),
	datab => \sw_2r~regout\,
	datad => \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \ledr~0_combout\);

-- Location: LCFF_X25_Y32_N15
\bcd_decode_rom|addr_valid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => \serial_uart|received_data_valid~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd_decode_rom|addr_valid~regout\);

-- Location: LCFF_X25_Y32_N31
\bcd_decode_rom|rom_data_valid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => \bcd_decode_rom|addr_valid~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd_decode_rom|rom_data_valid~regout\);

-- Location: LCCOMB_X25_Y32_N30
\ledr[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ledr[8]~1_combout\ = (\bcd_decode_rom|rom_data_valid~regout\) # (\sw_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_decode_rom|rom_data_valid~regout\,
	datad => \sw_2r~regout\,
	combout => \ledr[8]~1_combout\);

-- Location: LCFF_X25_Y32_N25
\ledr[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \ledr~0_combout\,
	ena => \ledr[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ledr[0]~reg0_regout\);

-- Location: LCCOMB_X23_Y30_N2
\serial_uart|clk_cnt[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|clk_cnt[0]~10_combout\ = \serial_uart|clk_cnt\(0) $ (VCC)
-- \serial_uart|clk_cnt[0]~11\ = CARRY(\serial_uart|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|clk_cnt\(0),
	datad => VCC,
	combout => \serial_uart|clk_cnt[0]~10_combout\,
	cout => \serial_uart|clk_cnt[0]~11\);

-- Location: LCCOMB_X23_Y30_N4
\serial_uart|clk_cnt[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|clk_cnt[1]~17_combout\ = (\serial_uart|clk_cnt\(1) & (!\serial_uart|clk_cnt[0]~11\)) # (!\serial_uart|clk_cnt\(1) & ((\serial_uart|clk_cnt[0]~11\) # (GND)))
-- \serial_uart|clk_cnt[1]~18\ = CARRY((!\serial_uart|clk_cnt[0]~11\) # (!\serial_uart|clk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|clk_cnt\(1),
	datad => VCC,
	cin => \serial_uart|clk_cnt[0]~11\,
	combout => \serial_uart|clk_cnt[1]~17_combout\,
	cout => \serial_uart|clk_cnt[1]~18\);

-- Location: LCCOMB_X23_Y30_N8
\serial_uart|clk_cnt[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|clk_cnt[3]~21_combout\ = (\serial_uart|clk_cnt\(3) & (!\serial_uart|clk_cnt[2]~20\)) # (!\serial_uart|clk_cnt\(3) & ((\serial_uart|clk_cnt[2]~20\) # (GND)))
-- \serial_uart|clk_cnt[3]~22\ = CARRY((!\serial_uart|clk_cnt[2]~20\) # (!\serial_uart|clk_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|clk_cnt\(3),
	datad => VCC,
	cin => \serial_uart|clk_cnt[2]~20\,
	combout => \serial_uart|clk_cnt[3]~21_combout\,
	cout => \serial_uart|clk_cnt[3]~22\);

-- Location: LCFF_X23_Y30_N9
\serial_uart|clk_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|clk_cnt[3]~21_combout\,
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	sclr => \serial_uart|rx_2r~regout\,
	ena => \serial_uart|clk_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|clk_cnt\(3));

-- Location: LCCOMB_X23_Y30_N10
\serial_uart|clk_cnt[4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|clk_cnt[4]~23_combout\ = (\serial_uart|clk_cnt\(4) & (\serial_uart|clk_cnt[3]~22\ $ (GND))) # (!\serial_uart|clk_cnt\(4) & (!\serial_uart|clk_cnt[3]~22\ & VCC))
-- \serial_uart|clk_cnt[4]~24\ = CARRY((\serial_uart|clk_cnt\(4) & !\serial_uart|clk_cnt[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|clk_cnt\(4),
	datad => VCC,
	cin => \serial_uart|clk_cnt[3]~22\,
	combout => \serial_uart|clk_cnt[4]~23_combout\,
	cout => \serial_uart|clk_cnt[4]~24\);

-- Location: LCCOMB_X23_Y30_N12
\serial_uart|clk_cnt[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|clk_cnt[5]~25_combout\ = (\serial_uart|clk_cnt\(5) & (!\serial_uart|clk_cnt[4]~24\)) # (!\serial_uart|clk_cnt\(5) & ((\serial_uart|clk_cnt[4]~24\) # (GND)))
-- \serial_uart|clk_cnt[5]~26\ = CARRY((!\serial_uart|clk_cnt[4]~24\) # (!\serial_uart|clk_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|clk_cnt\(5),
	datad => VCC,
	cin => \serial_uart|clk_cnt[4]~24\,
	combout => \serial_uart|clk_cnt[5]~25_combout\,
	cout => \serial_uart|clk_cnt[5]~26\);

-- Location: LCCOMB_X23_Y30_N14
\serial_uart|clk_cnt[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|clk_cnt[6]~27_combout\ = (\serial_uart|clk_cnt\(6) & (\serial_uart|clk_cnt[5]~26\ $ (GND))) # (!\serial_uart|clk_cnt\(6) & (!\serial_uart|clk_cnt[5]~26\ & VCC))
-- \serial_uart|clk_cnt[6]~28\ = CARRY((\serial_uart|clk_cnt\(6) & !\serial_uart|clk_cnt[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|clk_cnt\(6),
	datad => VCC,
	cin => \serial_uart|clk_cnt[5]~26\,
	combout => \serial_uart|clk_cnt[6]~27_combout\,
	cout => \serial_uart|clk_cnt[6]~28\);

-- Location: LCFF_X23_Y30_N15
\serial_uart|clk_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|clk_cnt[6]~27_combout\,
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	sclr => \serial_uart|rx_2r~regout\,
	ena => \serial_uart|clk_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|clk_cnt\(6));

-- Location: LCCOMB_X23_Y30_N16
\serial_uart|clk_cnt[7]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|clk_cnt[7]~29_combout\ = (\serial_uart|clk_cnt\(7) & (!\serial_uart|clk_cnt[6]~28\)) # (!\serial_uart|clk_cnt\(7) & ((\serial_uart|clk_cnt[6]~28\) # (GND)))
-- \serial_uart|clk_cnt[7]~30\ = CARRY((!\serial_uart|clk_cnt[6]~28\) # (!\serial_uart|clk_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|clk_cnt\(7),
	datad => VCC,
	cin => \serial_uart|clk_cnt[6]~28\,
	combout => \serial_uart|clk_cnt[7]~29_combout\,
	cout => \serial_uart|clk_cnt[7]~30\);

-- Location: LCCOMB_X23_Y30_N18
\serial_uart|clk_cnt[8]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|clk_cnt[8]~31_combout\ = (\serial_uart|clk_cnt\(8) & (\serial_uart|clk_cnt[7]~30\ $ (GND))) # (!\serial_uart|clk_cnt\(8) & (!\serial_uart|clk_cnt[7]~30\ & VCC))
-- \serial_uart|clk_cnt[8]~32\ = CARRY((\serial_uart|clk_cnt\(8) & !\serial_uart|clk_cnt[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|clk_cnt\(8),
	datad => VCC,
	cin => \serial_uart|clk_cnt[7]~30\,
	combout => \serial_uart|clk_cnt[8]~31_combout\,
	cout => \serial_uart|clk_cnt[8]~32\);

-- Location: LCFF_X23_Y30_N19
\serial_uart|clk_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|clk_cnt[8]~31_combout\,
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	sclr => \serial_uart|rx_2r~regout\,
	ena => \serial_uart|clk_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|clk_cnt\(8));

-- Location: LCCOMB_X23_Y30_N20
\serial_uart|clk_cnt[9]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|clk_cnt[9]~33_combout\ = \serial_uart|clk_cnt\(9) $ (\serial_uart|clk_cnt[8]~32\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|clk_cnt\(9),
	cin => \serial_uart|clk_cnt[8]~32\,
	combout => \serial_uart|clk_cnt[9]~33_combout\);

-- Location: LCFF_X23_Y30_N21
\serial_uart|clk_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|clk_cnt[9]~33_combout\,
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	sclr => \serial_uart|rx_2r~regout\,
	ena => \serial_uart|clk_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|clk_cnt\(9));

-- Location: LCCOMB_X23_Y30_N30
\serial_uart|clk_cnt[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|clk_cnt[0]~15_combout\ = (\serial_uart|clk_cnt\(7) & (\serial_uart|clk_cnt\(9) & \serial_uart|clk_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|clk_cnt\(7),
	datac => \serial_uart|clk_cnt\(9),
	datad => \serial_uart|clk_cnt\(8),
	combout => \serial_uart|clk_cnt[0]~15_combout\);

-- Location: LCFF_X23_Y30_N11
\serial_uart|clk_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|clk_cnt[4]~23_combout\,
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	sclr => \serial_uart|rx_2r~regout\,
	ena => \serial_uart|clk_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|clk_cnt\(4));

-- Location: LCCOMB_X23_Y30_N24
\serial_uart|clk_cnt[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|clk_cnt[0]~14_combout\ = (\serial_uart|clk_cnt\(5) & (\serial_uart|clk_cnt\(6) & (\serial_uart|clk_cnt\(3) & \serial_uart|clk_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|clk_cnt\(5),
	datab => \serial_uart|clk_cnt\(6),
	datac => \serial_uart|clk_cnt\(3),
	datad => \serial_uart|clk_cnt\(4),
	combout => \serial_uart|clk_cnt[0]~14_combout\);

-- Location: LCCOMB_X24_Y30_N20
\serial_uart|clk_cnt[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|clk_cnt[0]~12_combout\ = (\serial_uart|is_first_bit~regout\) # ((!\serial_uart|rx_state.s_rx_data~regout\ & \serial_uart|rx_state.s_idle~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|is_first_bit~regout\,
	datab => \serial_uart|rx_state.s_rx_data~regout\,
	datad => \serial_uart|rx_state.s_idle~regout\,
	combout => \serial_uart|clk_cnt[0]~12_combout\);

-- Location: LCCOMB_X23_Y30_N0
\serial_uart|clk_cnt[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|clk_cnt[0]~16_combout\ = (!\serial_uart|clk_cnt[0]~12_combout\ & (((!\serial_uart|clk_cnt[0]~14_combout\) # (!\serial_uart|clk_cnt[0]~15_combout\)) # (!\serial_uart|clk_cnt[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|clk_cnt[0]~13_combout\,
	datab => \serial_uart|clk_cnt[0]~15_combout\,
	datac => \serial_uart|clk_cnt[0]~14_combout\,
	datad => \serial_uart|clk_cnt[0]~12_combout\,
	combout => \serial_uart|clk_cnt[0]~16_combout\);

-- Location: LCFF_X23_Y30_N3
\serial_uart|clk_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|clk_cnt[0]~10_combout\,
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	sclr => \serial_uart|rx_2r~regout\,
	ena => \serial_uart|clk_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|clk_cnt\(0));

-- Location: LCFF_X23_Y30_N5
\serial_uart|clk_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|clk_cnt[1]~17_combout\,
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	sclr => \serial_uart|rx_2r~regout\,
	ena => \serial_uart|clk_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|clk_cnt\(1));

-- Location: LCCOMB_X24_Y30_N14
\serial_uart|start_bit_cnt[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|start_bit_cnt[0]~0_combout\ = (!\serial_uart|is_first_bit~regout\ & (\serial_uart|rx_state.s_rx_data~regout\ & \serial_uart|rx_2r~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|is_first_bit~regout\,
	datab => \serial_uart|rx_state.s_rx_data~regout\,
	datad => \serial_uart|rx_2r~regout\,
	combout => \serial_uart|start_bit_cnt[0]~0_combout\);

-- Location: LCFF_X24_Y30_N23
\serial_uart|start_bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => \serial_uart|clk_cnt\(1),
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	sload => VCC,
	ena => \serial_uart|start_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|start_bit_cnt\(1));

-- Location: LCCOMB_X25_Y32_N22
\ledr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ledr~2_combout\ = (\sw_2r~regout\ & (\serial_uart|start_bit_cnt\(1))) # (!\sw_2r~regout\ & ((\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw_2r~regout\,
	datac => \serial_uart|start_bit_cnt\(1),
	datad => \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\,
	combout => \ledr~2_combout\);

-- Location: LCFF_X25_Y32_N23
\ledr[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \ledr~2_combout\,
	ena => \ledr[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ledr[1]~reg0_regout\);

-- Location: LCCOMB_X25_Y32_N12
\ledr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ledr~3_combout\ = (\sw_2r~regout\ & (\serial_uart|start_bit_cnt\(2))) # (!\sw_2r~regout\ & ((\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|start_bit_cnt\(2),
	datac => \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\,
	datad => \sw_2r~regout\,
	combout => \ledr~3_combout\);

-- Location: LCFF_X25_Y32_N13
\ledr[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \ledr~3_combout\,
	ena => \ledr[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ledr[2]~reg0_regout\);

-- Location: LCCOMB_X25_Y32_N26
\ledr~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ledr~4_combout\ = (\sw_2r~regout\ & (\serial_uart|start_bit_cnt\(3))) # (!\sw_2r~regout\ & ((\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|start_bit_cnt\(3),
	datab => \sw_2r~regout\,
	datad => \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\,
	combout => \ledr~4_combout\);

-- Location: LCFF_X25_Y32_N27
\ledr[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \ledr~4_combout\,
	ena => \ledr[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ledr[3]~reg0_regout\);

-- Location: LCCOMB_X24_Y30_N8
\serial_uart|start_bit_cnt[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|start_bit_cnt[4]~feeder_combout\ = \serial_uart|clk_cnt\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \serial_uart|clk_cnt\(4),
	combout => \serial_uart|start_bit_cnt[4]~feeder_combout\);

-- Location: LCFF_X24_Y30_N9
\serial_uart|start_bit_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|start_bit_cnt[4]~feeder_combout\,
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	ena => \serial_uart|start_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|start_bit_cnt\(4));

-- Location: LCCOMB_X25_Y32_N4
\ledr~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ledr~5_combout\ = (\sw_2r~regout\ & (\serial_uart|start_bit_cnt\(4))) # (!\sw_2r~regout\ & ((\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw_2r~regout\,
	datac => \serial_uart|start_bit_cnt\(4),
	datad => \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\,
	combout => \ledr~5_combout\);

-- Location: LCFF_X25_Y32_N5
\ledr[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \ledr~5_combout\,
	ena => \ledr[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ledr[4]~reg0_regout\);

-- Location: LCFF_X23_Y30_N13
\serial_uart|clk_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|clk_cnt[5]~25_combout\,
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	sclr => \serial_uart|rx_2r~regout\,
	ena => \serial_uart|clk_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|clk_cnt\(5));

-- Location: LCCOMB_X24_Y30_N18
\serial_uart|start_bit_cnt[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|start_bit_cnt[5]~feeder_combout\ = \serial_uart|clk_cnt\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \serial_uart|clk_cnt\(5),
	combout => \serial_uart|start_bit_cnt[5]~feeder_combout\);

-- Location: LCFF_X24_Y30_N19
\serial_uart|start_bit_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|start_bit_cnt[5]~feeder_combout\,
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	ena => \serial_uart|start_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|start_bit_cnt\(5));

-- Location: LCCOMB_X25_Y32_N10
\ledr~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ledr~6_combout\ = (\sw_2r~regout\ & (\serial_uart|start_bit_cnt\(5))) # (!\sw_2r~regout\ & ((\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw_2r~regout\,
	datac => \serial_uart|start_bit_cnt\(5),
	datad => \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\,
	combout => \ledr~6_combout\);

-- Location: LCFF_X25_Y32_N11
\ledr[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \ledr~6_combout\,
	ena => \ledr[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ledr[5]~reg0_regout\);

-- Location: LCCOMB_X24_Y30_N24
\serial_uart|start_bit_cnt[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|start_bit_cnt[6]~feeder_combout\ = \serial_uart|clk_cnt\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \serial_uart|clk_cnt\(6),
	combout => \serial_uart|start_bit_cnt[6]~feeder_combout\);

-- Location: LCFF_X24_Y30_N25
\serial_uart|start_bit_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|start_bit_cnt[6]~feeder_combout\,
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	ena => \serial_uart|start_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|start_bit_cnt\(6));

-- Location: LCCOMB_X25_Y32_N20
\ledr~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ledr~7_combout\ = (\sw_2r~regout\ & (\serial_uart|start_bit_cnt\(6))) # (!\sw_2r~regout\ & ((\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|start_bit_cnt\(6),
	datac => \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\,
	datad => \sw_2r~regout\,
	combout => \ledr~7_combout\);

-- Location: LCFF_X25_Y32_N21
\ledr[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \ledr~7_combout\,
	ena => \ledr[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ledr[6]~reg0_regout\);

-- Location: LCFF_X23_Y30_N17
\serial_uart|clk_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|clk_cnt[7]~29_combout\,
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	sclr => \serial_uart|rx_2r~regout\,
	ena => \serial_uart|clk_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|clk_cnt\(7));

-- Location: LCCOMB_X24_Y30_N6
\serial_uart|start_bit_cnt[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|start_bit_cnt[7]~feeder_combout\ = \serial_uart|clk_cnt\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \serial_uart|clk_cnt\(7),
	combout => \serial_uart|start_bit_cnt[7]~feeder_combout\);

-- Location: LCFF_X24_Y30_N7
\serial_uart|start_bit_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|start_bit_cnt[7]~feeder_combout\,
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	ena => \serial_uart|start_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|start_bit_cnt\(7));

-- Location: LCCOMB_X25_Y32_N6
\ledr~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ledr~8_combout\ = (\sw_2r~regout\ & (\serial_uart|start_bit_cnt\(7))) # (!\sw_2r~regout\ & ((\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|start_bit_cnt\(7),
	datac => \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\,
	datad => \sw_2r~regout\,
	combout => \ledr~8_combout\);

-- Location: LCFF_X25_Y32_N7
\ledr[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \ledr~8_combout\,
	ena => \ledr[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ledr[7]~reg0_regout\);

-- Location: LCFF_X24_Y30_N21
\serial_uart|start_bit_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => \serial_uart|clk_cnt\(8),
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	sload => VCC,
	ena => \serial_uart|start_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|start_bit_cnt\(8));

-- Location: LCCOMB_X25_Y32_N8
\ledr~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ledr~9_combout\ = (\sw_2r~regout\ & (\serial_uart|start_bit_cnt\(8))) # (!\sw_2r~regout\ & ((\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw_2r~regout\,
	datac => \serial_uart|start_bit_cnt\(8),
	datad => \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a8\,
	combout => \ledr~9_combout\);

-- Location: LCFF_X25_Y32_N9
\ledr[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \ledr~9_combout\,
	ena => \ledr[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ledr[8]~reg0_regout\);

-- Location: LCFF_X24_Y30_N31
\serial_uart|start_bit_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => \serial_uart|clk_cnt\(9),
	aclr => \serial_uart|ALT_INV_reset_2r~regout\,
	sload => VCC,
	ena => \serial_uart|start_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|start_bit_cnt\(9));

-- Location: LCCOMB_X25_Y32_N18
\ledr~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ledr~10_combout\ = (\sw_2r~regout\ & (\serial_uart|start_bit_cnt\(9))) # (!\sw_2r~regout\ & ((\bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw_2r~regout\,
	datac => \serial_uart|start_bit_cnt\(9),
	datad => \bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\,
	combout => \ledr~10_combout\);

-- Location: LCFF_X25_Y32_N19
\ledr[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \ledr~10_combout\,
	ena => \ledr[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ledr[9]~reg0_regout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ledr[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(0));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ledr[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(1));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ledr[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(2));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ledr[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(3));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ledr[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(4));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ledr[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(5));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ledr[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(6));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ledr[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(7));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ledr[8]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(8));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ledr[9]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(9));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
END structure;


