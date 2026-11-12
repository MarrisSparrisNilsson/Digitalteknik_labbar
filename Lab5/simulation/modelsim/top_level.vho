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

-- DATE "06/06/2023 11:44:33"

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
	uart_txd : OUT std_logic;
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	ledr : OUT std_logic_vector(1 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- uart_txd	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- uart_rxd	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_uart_txd : std_logic;
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(1 DOWNTO 0);
SIGNAL \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \serial_uart|tx_state.s_stop_bit~regout\ : std_logic;
SIGNAL \serial_uart|tx_bit_no[1]~0_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[1]~27_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[2]~29_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[4]~33_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[15]~55_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[22]~69_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[23]~72\ : std_logic;
SIGNAL \hearbeat_led|counter[24]~73_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[3]~19_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[8]~29_combout\ : std_logic;
SIGNAL \serial_uart|Selector29~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector29~1_combout\ : std_logic;
SIGNAL \serial_uart|Selector31~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector31~1_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_no~1_combout\ : std_logic;
SIGNAL \serial_uart|Selector33~0_combout\ : std_logic;
SIGNAL \serial_uart|Add1~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector32~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector12~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector22~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector21~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector20~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector19~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector18~0_combout\ : std_logic;
SIGNAL \serial_uart|tx_byte_saved[7]~1_combout\ : std_logic;
SIGNAL \serial_uart|tx_byte_saved[7]~2_combout\ : std_logic;
SIGNAL \clk_50~combout\ : std_logic;
SIGNAL \clk_50~clkctrl_outclk\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[0]~13_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[11]~36\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[12]~38_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[7]~27_combout\ : std_logic;
SIGNAL \serial_uart|LessThan1~0_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[4]~21_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[2]~17_combout\ : std_logic;
SIGNAL \serial_uart|LessThan1~1_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_half~0_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_half~1_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_half~2_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_half~regout\ : std_logic;
SIGNAL \serial_uart|Selector1~0_combout\ : std_logic;
SIGNAL \serial_uart|rx_state~10_combout\ : std_logic;
SIGNAL \serial_uart|rx_state.s_idle~regout\ : std_logic;
SIGNAL \uart_rxd~combout\ : std_logic;
SIGNAL \serial_uart|rx_r~feeder_combout\ : std_logic;
SIGNAL \serial_uart|rx_r~regout\ : std_logic;
SIGNAL \serial_uart|rx_2r~feeder_combout\ : std_logic;
SIGNAL \serial_uart|rx_2r~regout\ : std_logic;
SIGNAL \serial_uart|Selector0~0_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_en~regout\ : std_logic;
SIGNAL \serial_uart|LessThan0~0_combout\ : std_logic;
SIGNAL \serial_uart|LessThan0~2_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[5]~23_combout\ : std_logic;
SIGNAL \serial_uart|LessThan0~1_combout\ : std_logic;
SIGNAL \serial_uart|LessThan0~3_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[7]~37_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[0]~14\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[1]~15_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[1]~16\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[2]~18\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[3]~19_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[3]~20\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[4]~22\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[5]~24\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[6]~25_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[6]~26\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[7]~28\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[8]~29_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[8]~30\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[9]~31_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[9]~32\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[10]~33_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[10]~34\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[11]~35_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_wrap~1_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_wrap~regout\ : std_logic;
SIGNAL \serial_uart|Selector2~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector2~1_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \serial_uart|reset_r~feeder_combout\ : std_logic;
SIGNAL \serial_uart|reset_r~regout\ : std_logic;
SIGNAL \serial_uart|reset_2r~feeder_combout\ : std_logic;
SIGNAL \serial_uart|reset_2r~regout\ : std_logic;
SIGNAL \serial_uart|rx_state.s_rx_data~regout\ : std_logic;
SIGNAL \serial_uart|Selector4~3_combout\ : std_logic;
SIGNAL \serial_uart|rx_state.s_stop_bit~regout\ : std_logic;
SIGNAL \serial_uart|received_data_valid~0_combout\ : std_logic;
SIGNAL \serial_uart|received_data_valid~regout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[0]~13_combout\ : std_logic;
SIGNAL \serial_uart|tx_state~8_combout\ : std_logic;
SIGNAL \serial_uart|tx_state.s_idle~regout\ : std_logic;
SIGNAL \serial_uart|tx_state~7_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt_en~regout\ : std_logic;
SIGNAL \serial_uart|LessThan2~3_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[6]~25_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[5]~23_combout\ : std_logic;
SIGNAL \serial_uart|LessThan2~2_combout\ : std_logic;
SIGNAL \serial_uart|LessThan2~1_combout\ : std_logic;
SIGNAL \serial_uart|LessThan2~4_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[5]~35_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[0]~14\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[1]~15_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[1]~16\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[2]~17_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[2]~18\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[3]~20\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[4]~21_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[4]~22\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[5]~24\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[6]~26\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[7]~27_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[7]~28\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[8]~30\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[9]~31_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[9]~32\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[10]~34\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[11]~36_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[11]~37\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[12]~38_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[10]~33_combout\ : std_logic;
SIGNAL \serial_uart|LessThan2~0_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt_wrap~regout\ : std_logic;
SIGNAL \serial_uart|Selector27~0_combout\ : std_logic;
SIGNAL \serial_uart|tx_state.s_start_bit~regout\ : std_logic;
SIGNAL \serial_uart|Selector28~0_combout\ : std_logic;
SIGNAL \serial_uart|tx_state.s_tx_data~regout\ : std_logic;
SIGNAL \serial_uart|Selector4~2_combout\ : std_logic;
SIGNAL \serial_uart|Selector10~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector10~1_combout\ : std_logic;
SIGNAL \serial_uart|Selector11~0_combout\ : std_logic;
SIGNAL \serial_uart|received_data~2_combout\ : std_logic;
SIGNAL \serial_uart|Selector12~1_combout\ : std_logic;
SIGNAL \serial_uart|Selector13~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector13~1_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_no~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector14~0_combout\ : std_logic;
SIGNAL \serial_uart|Equal0~0_combout\ : std_logic;
SIGNAL \serial_uart|received_data[4]~10_combout\ : std_logic;
SIGNAL \serial_uart|received_data~3_combout\ : std_logic;
SIGNAL \serial_uart|Selector23~0_combout\ : std_logic;
SIGNAL \serial_uart|tx_byte_saved[6]~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector24~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector34~0_combout\ : std_logic;
SIGNAL \serial_uart|tx~regout\ : std_logic;
SIGNAL \serial_uart|Selector8~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector9~0_combout\ : std_logic;
SIGNAL \serial_uart|received_data~4_combout\ : std_logic;
SIGNAL \serial_uart|received_data~5_combout\ : std_logic;
SIGNAL \serial_uart|Selector5~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector6~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector7~0_combout\ : std_logic;
SIGNAL \serial_uart|received_data~6_combout\ : std_logic;
SIGNAL \serial_uart|received_data~7_combout\ : std_logic;
SIGNAL \serial_uart|received_data~8_combout\ : std_logic;
SIGNAL \serial_uart|received_data~9_combout\ : std_logic;
SIGNAL \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \hearbeat_led|counter[0]~25_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[0]~26\ : std_logic;
SIGNAL \hearbeat_led|counter[1]~28\ : std_logic;
SIGNAL \hearbeat_led|counter[2]~30\ : std_logic;
SIGNAL \hearbeat_led|counter[3]~31_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[3]~32\ : std_logic;
SIGNAL \hearbeat_led|counter[4]~34\ : std_logic;
SIGNAL \hearbeat_led|counter[5]~35_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[5]~36\ : std_logic;
SIGNAL \hearbeat_led|counter[6]~38\ : std_logic;
SIGNAL \hearbeat_led|counter[7]~39_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[7]~40\ : std_logic;
SIGNAL \hearbeat_led|counter[8]~42\ : std_logic;
SIGNAL \hearbeat_led|counter[9]~43_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[9]~44\ : std_logic;
SIGNAL \hearbeat_led|counter[10]~45_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[10]~46\ : std_logic;
SIGNAL \hearbeat_led|counter[11]~47_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[11]~48\ : std_logic;
SIGNAL \hearbeat_led|counter[12]~49_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[12]~50\ : std_logic;
SIGNAL \hearbeat_led|counter[13]~51_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[13]~52\ : std_logic;
SIGNAL \hearbeat_led|counter[14]~53_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[14]~54\ : std_logic;
SIGNAL \hearbeat_led|counter[15]~56\ : std_logic;
SIGNAL \hearbeat_led|counter[16]~58\ : std_logic;
SIGNAL \hearbeat_led|counter[17]~60\ : std_logic;
SIGNAL \hearbeat_led|counter[18]~61_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[18]~62\ : std_logic;
SIGNAL \hearbeat_led|counter[19]~64\ : std_logic;
SIGNAL \hearbeat_led|counter[20]~66\ : std_logic;
SIGNAL \hearbeat_led|counter[21]~67_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[21]~68\ : std_logic;
SIGNAL \hearbeat_led|counter[22]~70\ : std_logic;
SIGNAL \hearbeat_led|counter[23]~71_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[8]~41_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[6]~37_combout\ : std_logic;
SIGNAL \hearbeat_led|LessThan0~2_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[17]~59_combout\ : std_logic;
SIGNAL \hearbeat_led|LessThan0~0_combout\ : std_logic;
SIGNAL \hearbeat_led|LessThan0~1_combout\ : std_logic;
SIGNAL \hearbeat_led|LessThan0~3_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[20]~65_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[19]~63_combout\ : std_logic;
SIGNAL \hearbeat_led|counter[16]~57_combout\ : std_logic;
SIGNAL \hearbeat_led|LessThan0~4_combout\ : std_logic;
SIGNAL \hearbeat_led|LessThan0~5_combout\ : std_logic;
SIGNAL \hearbeat_led|LessThan0~6_combout\ : std_logic;
SIGNAL \hearbeat_led|tick~regout\ : std_logic;
SIGNAL \hearbeat_led|led~0_combout\ : std_logic;
SIGNAL \hearbeat_led|led~regout\ : std_logic;
SIGNAL \serial_uart|received_error~0_combout\ : std_logic;
SIGNAL \serial_uart|received_error~regout\ : std_logic;
SIGNAL \serial_uart|tx_byte_saved\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \serial_uart|tx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \serial_uart|tx_bit_cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \serial_uart|rx_byte_int\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \serial_uart|rx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \serial_uart|rx_bit_cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \serial_uart|received_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \hearbeat_led|counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \serial_uart|ALT_INV_tx_state.s_tx_data~regout\ : std_logic;
SIGNAL \ALT_INV_reset_n~combout\ : std_logic;
SIGNAL \serial_uart|ALT_INV_reset_2r~regout\ : std_logic;

BEGIN

ww_clk_50 <= clk_50;
ww_reset_n <= reset_n;
ww_uart_rxd <= uart_rxd;
uart_txd <= ww_uart_txd;
hex0 <= ww_hex0;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\serial_uart|received_data\(7) & \serial_uart|received_data\(6) & \serial_uart|received_data\(5) & \serial_uart|received_data\(4) & \serial_uart|received_data\(3) & 
\serial_uart|received_data\(2) & \serial_uart|received_data\(1) & \serial_uart|received_data\(0));

\display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a1\ <= \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a2\ <= \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a3\ <= \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a4\ <= \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a5\ <= \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a6\ <= \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);

\clk_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_50~combout\);
\serial_uart|ALT_INV_tx_state.s_tx_data~regout\ <= NOT \serial_uart|tx_state.s_tx_data~regout\;
\ALT_INV_reset_n~combout\ <= NOT \reset_n~combout\;
\serial_uart|ALT_INV_reset_2r~regout\ <= NOT \serial_uart|reset_2r~regout\;

-- Location: LCFF_X28_Y11_N21
\serial_uart|tx_state.s_stop_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector29~1_combout\,
	sclr => \serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_state.s_stop_bit~regout\);

-- Location: LCFF_X27_Y11_N29
\serial_uart|tx_bit_no[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_no[1]~0_combout\,
	sdata => \serial_uart|Selector32~0_combout\,
	sload => \serial_uart|ALT_INV_tx_state.s_tx_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_no\(1));

-- Location: LCFF_X60_Y11_N7
\hearbeat_led|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[15]~55_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(15));

-- Location: LCFF_X60_Y11_N21
\hearbeat_led|counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[22]~69_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(22));

-- Location: LCFF_X60_Y11_N25
\hearbeat_led|counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[24]~73_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(24));

-- Location: LCFF_X30_Y11_N17
\serial_uart|tx_bit_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[8]~29_combout\,
	sclr => \serial_uart|tx_bit_cnt[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(8));

-- Location: LCFF_X30_Y11_N7
\serial_uart|tx_bit_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[3]~19_combout\,
	sclr => \serial_uart|tx_bit_cnt[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(3));

-- Location: LCCOMB_X27_Y11_N28
\serial_uart|tx_bit_no[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_no[1]~0_combout\ = (\serial_uart|tx_bit_no~1_combout\ & ((\serial_uart|tx_bit_no\(1)))) # (!\serial_uart|tx_bit_no~1_combout\ & (\serial_uart|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|Add1~0_combout\,
	datac => \serial_uart|tx_bit_no\(1),
	datad => \serial_uart|tx_bit_no~1_combout\,
	combout => \serial_uart|tx_bit_no[1]~0_combout\);

-- Location: LCFF_X60_Y12_N17
\hearbeat_led|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[4]~33_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(4));

-- Location: LCFF_X60_Y12_N13
\hearbeat_led|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[2]~29_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(2));

-- Location: LCFF_X60_Y12_N11
\hearbeat_led|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[1]~27_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(1));

-- Location: LCCOMB_X60_Y12_N10
\hearbeat_led|counter[1]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[1]~27_combout\ = (\hearbeat_led|counter\(1) & (!\hearbeat_led|counter[0]~26\)) # (!\hearbeat_led|counter\(1) & ((\hearbeat_led|counter[0]~26\) # (GND)))
-- \hearbeat_led|counter[1]~28\ = CARRY((!\hearbeat_led|counter[0]~26\) # (!\hearbeat_led|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hearbeat_led|counter\(1),
	datad => VCC,
	cin => \hearbeat_led|counter[0]~26\,
	combout => \hearbeat_led|counter[1]~27_combout\,
	cout => \hearbeat_led|counter[1]~28\);

-- Location: LCCOMB_X60_Y12_N12
\hearbeat_led|counter[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[2]~29_combout\ = (\hearbeat_led|counter\(2) & (\hearbeat_led|counter[1]~28\ $ (GND))) # (!\hearbeat_led|counter\(2) & (!\hearbeat_led|counter[1]~28\ & VCC))
-- \hearbeat_led|counter[2]~30\ = CARRY((\hearbeat_led|counter\(2) & !\hearbeat_led|counter[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hearbeat_led|counter\(2),
	datad => VCC,
	cin => \hearbeat_led|counter[1]~28\,
	combout => \hearbeat_led|counter[2]~29_combout\,
	cout => \hearbeat_led|counter[2]~30\);

-- Location: LCCOMB_X60_Y12_N16
\hearbeat_led|counter[4]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[4]~33_combout\ = (\hearbeat_led|counter\(4) & (\hearbeat_led|counter[3]~32\ $ (GND))) # (!\hearbeat_led|counter\(4) & (!\hearbeat_led|counter[3]~32\ & VCC))
-- \hearbeat_led|counter[4]~34\ = CARRY((\hearbeat_led|counter\(4) & !\hearbeat_led|counter[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hearbeat_led|counter\(4),
	datad => VCC,
	cin => \hearbeat_led|counter[3]~32\,
	combout => \hearbeat_led|counter[4]~33_combout\,
	cout => \hearbeat_led|counter[4]~34\);

-- Location: LCCOMB_X60_Y11_N6
\hearbeat_led|counter[15]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[15]~55_combout\ = (\hearbeat_led|counter\(15) & (!\hearbeat_led|counter[14]~54\)) # (!\hearbeat_led|counter\(15) & ((\hearbeat_led|counter[14]~54\) # (GND)))
-- \hearbeat_led|counter[15]~56\ = CARRY((!\hearbeat_led|counter[14]~54\) # (!\hearbeat_led|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hearbeat_led|counter\(15),
	datad => VCC,
	cin => \hearbeat_led|counter[14]~54\,
	combout => \hearbeat_led|counter[15]~55_combout\,
	cout => \hearbeat_led|counter[15]~56\);

-- Location: LCCOMB_X60_Y11_N20
\hearbeat_led|counter[22]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[22]~69_combout\ = (\hearbeat_led|counter\(22) & (\hearbeat_led|counter[21]~68\ $ (GND))) # (!\hearbeat_led|counter\(22) & (!\hearbeat_led|counter[21]~68\ & VCC))
-- \hearbeat_led|counter[22]~70\ = CARRY((\hearbeat_led|counter\(22) & !\hearbeat_led|counter[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hearbeat_led|counter\(22),
	datad => VCC,
	cin => \hearbeat_led|counter[21]~68\,
	combout => \hearbeat_led|counter[22]~69_combout\,
	cout => \hearbeat_led|counter[22]~70\);

-- Location: LCCOMB_X60_Y11_N22
\hearbeat_led|counter[23]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[23]~71_combout\ = (\hearbeat_led|counter\(23) & (!\hearbeat_led|counter[22]~70\)) # (!\hearbeat_led|counter\(23) & ((\hearbeat_led|counter[22]~70\) # (GND)))
-- \hearbeat_led|counter[23]~72\ = CARRY((!\hearbeat_led|counter[22]~70\) # (!\hearbeat_led|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hearbeat_led|counter\(23),
	datad => VCC,
	cin => \hearbeat_led|counter[22]~70\,
	combout => \hearbeat_led|counter[23]~71_combout\,
	cout => \hearbeat_led|counter[23]~72\);

-- Location: LCCOMB_X60_Y11_N24
\hearbeat_led|counter[24]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[24]~73_combout\ = \hearbeat_led|counter[23]~72\ $ (!\hearbeat_led|counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \hearbeat_led|counter\(24),
	cin => \hearbeat_led|counter[23]~72\,
	combout => \hearbeat_led|counter[24]~73_combout\);

-- Location: LCCOMB_X30_Y11_N6
\serial_uart|tx_bit_cnt[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[3]~19_combout\ = (\serial_uart|tx_bit_cnt\(3) & (!\serial_uart|tx_bit_cnt[2]~18\)) # (!\serial_uart|tx_bit_cnt\(3) & ((\serial_uart|tx_bit_cnt[2]~18\) # (GND)))
-- \serial_uart|tx_bit_cnt[3]~20\ = CARRY((!\serial_uart|tx_bit_cnt[2]~18\) # (!\serial_uart|tx_bit_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt\(3),
	datad => VCC,
	cin => \serial_uart|tx_bit_cnt[2]~18\,
	combout => \serial_uart|tx_bit_cnt[3]~19_combout\,
	cout => \serial_uart|tx_bit_cnt[3]~20\);

-- Location: LCCOMB_X30_Y11_N16
\serial_uart|tx_bit_cnt[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[8]~29_combout\ = (\serial_uart|tx_bit_cnt\(8) & (\serial_uart|tx_bit_cnt[7]~28\ $ (GND))) # (!\serial_uart|tx_bit_cnt\(8) & (!\serial_uart|tx_bit_cnt[7]~28\ & VCC))
-- \serial_uart|tx_bit_cnt[8]~30\ = CARRY((\serial_uart|tx_bit_cnt\(8) & !\serial_uart|tx_bit_cnt[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt\(8),
	datad => VCC,
	cin => \serial_uart|tx_bit_cnt[7]~28\,
	combout => \serial_uart|tx_bit_cnt[8]~29_combout\,
	cout => \serial_uart|tx_bit_cnt[8]~30\);

-- Location: LCFF_X28_Y11_N13
\serial_uart|tx_bit_no[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector31~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_no\(2));

-- Location: LCFF_X27_Y11_N1
\serial_uart|tx_bit_no[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_no\(0));

-- Location: LCCOMB_X28_Y11_N6
\serial_uart|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector29~0_combout\ = (\serial_uart|tx_bit_no\(2) & (\serial_uart|tx_bit_no\(1) & (\serial_uart|tx_bit_no\(0) & \serial_uart|tx_bit_cnt_wrap~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_no\(2),
	datab => \serial_uart|tx_bit_no\(1),
	datac => \serial_uart|tx_bit_no\(0),
	datad => \serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \serial_uart|Selector29~0_combout\);

-- Location: LCCOMB_X28_Y11_N20
\serial_uart|Selector29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector29~1_combout\ = (\serial_uart|Selector29~0_combout\ & ((\serial_uart|tx_state.s_tx_data~regout\) # ((\serial_uart|tx_state.s_stop_bit~regout\ & !\serial_uart|tx_bit_cnt_wrap~regout\)))) # (!\serial_uart|Selector29~0_combout\ & 
-- (((\serial_uart|tx_state.s_stop_bit~regout\ & !\serial_uart|tx_bit_cnt_wrap~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector29~0_combout\,
	datab => \serial_uart|tx_state.s_tx_data~regout\,
	datac => \serial_uart|tx_state.s_stop_bit~regout\,
	datad => \serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \serial_uart|Selector29~1_combout\);

-- Location: LCCOMB_X28_Y11_N10
\serial_uart|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector31~0_combout\ = (\serial_uart|tx_state.s_tx_data~regout\ & (\serial_uart|tx_bit_no\(1) & (\serial_uart|tx_bit_no\(0) & \serial_uart|tx_bit_cnt_wrap~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_state.s_tx_data~regout\,
	datab => \serial_uart|tx_bit_no\(1),
	datac => \serial_uart|tx_bit_no\(0),
	datad => \serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \serial_uart|Selector31~0_combout\);

-- Location: LCCOMB_X28_Y11_N12
\serial_uart|Selector31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector31~1_combout\ = (\serial_uart|Selector31~0_combout\) # ((\serial_uart|tx_bit_no\(2) & ((\serial_uart|tx_state.s_idle~regout\) # (\serial_uart|tx_state.s_tx_data~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector31~0_combout\,
	datab => \serial_uart|tx_state.s_idle~regout\,
	datac => \serial_uart|tx_bit_no\(2),
	datad => \serial_uart|tx_state.s_tx_data~regout\,
	combout => \serial_uart|Selector31~1_combout\);

-- Location: LCCOMB_X28_Y11_N28
\serial_uart|tx_bit_no~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_no~1_combout\ = ((\serial_uart|tx_bit_no\(2) & (\serial_uart|tx_bit_no\(1) & \serial_uart|tx_bit_no\(0)))) # (!\serial_uart|tx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_no\(2),
	datab => \serial_uart|tx_bit_no\(1),
	datac => \serial_uart|tx_bit_no\(0),
	datad => \serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \serial_uart|tx_bit_no~1_combout\);

-- Location: LCCOMB_X27_Y11_N0
\serial_uart|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector33~0_combout\ = (\serial_uart|tx_state.s_tx_data~regout\ & ((\serial_uart|tx_bit_no\(0) $ (!\serial_uart|tx_bit_no~1_combout\)))) # (!\serial_uart|tx_state.s_tx_data~regout\ & (\serial_uart|tx_state.s_idle~regout\ & 
-- (\serial_uart|tx_bit_no\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_state.s_idle~regout\,
	datab => \serial_uart|tx_state.s_tx_data~regout\,
	datac => \serial_uart|tx_bit_no\(0),
	datad => \serial_uart|tx_bit_no~1_combout\,
	combout => \serial_uart|Selector33~0_combout\);

-- Location: LCCOMB_X27_Y11_N4
\serial_uart|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Add1~0_combout\ = \serial_uart|tx_bit_no\(1) $ (\serial_uart|tx_bit_no\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_bit_no\(1),
	datad => \serial_uart|tx_bit_no\(0),
	combout => \serial_uart|Add1~0_combout\);

-- Location: LCCOMB_X27_Y11_N14
\serial_uart|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector32~0_combout\ = (\serial_uart|tx_state.s_idle~regout\ & \serial_uart|tx_bit_no\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_state.s_idle~regout\,
	datad => \serial_uart|tx_bit_no\(1),
	combout => \serial_uart|Selector32~0_combout\);

-- Location: LCFF_X27_Y11_N13
\serial_uart|tx_byte_saved[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector22~0_combout\,
	ena => \serial_uart|tx_byte_saved[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_byte_saved\(2));

-- Location: LCCOMB_X29_Y10_N20
\serial_uart|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector12~0_combout\ = (\serial_uart|rx_bit_no\(1) & (\serial_uart|rx_bit_no\(0) & (\serial_uart|rx_state.s_rx_data~regout\ & \serial_uart|rx_bit_cnt_wrap~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_no\(1),
	datab => \serial_uart|rx_bit_no\(0),
	datac => \serial_uart|rx_state.s_rx_data~regout\,
	datad => \serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \serial_uart|Selector12~0_combout\);

-- Location: LCFF_X27_Y11_N27
\serial_uart|tx_byte_saved[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector21~0_combout\,
	ena => \serial_uart|tx_byte_saved[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_byte_saved\(3));

-- Location: LCCOMB_X27_Y11_N12
\serial_uart|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector22~0_combout\ = (\serial_uart|tx_state.s_tx_data~regout\ & (\serial_uart|tx_byte_saved\(3))) # (!\serial_uart|tx_state.s_tx_data~regout\ & ((\serial_uart|received_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_byte_saved\(3),
	datac => \serial_uart|received_data\(2),
	datad => \serial_uart|tx_state.s_tx_data~regout\,
	combout => \serial_uart|Selector22~0_combout\);

-- Location: LCFF_X28_Y11_N15
\serial_uart|tx_byte_saved[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector20~0_combout\,
	ena => \serial_uart|tx_byte_saved[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_byte_saved\(4));

-- Location: LCCOMB_X27_Y11_N26
\serial_uart|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector21~0_combout\ = (\serial_uart|tx_state.s_tx_data~regout\ & (\serial_uart|tx_byte_saved\(4))) # (!\serial_uart|tx_state.s_tx_data~regout\ & ((\serial_uart|received_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_state.s_tx_data~regout\,
	datac => \serial_uart|tx_byte_saved\(4),
	datad => \serial_uart|received_data\(3),
	combout => \serial_uart|Selector21~0_combout\);

-- Location: LCFF_X28_Y11_N25
\serial_uart|tx_byte_saved[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector19~0_combout\,
	ena => \serial_uart|tx_byte_saved[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_byte_saved\(5));

-- Location: LCCOMB_X28_Y11_N14
\serial_uart|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector20~0_combout\ = (\serial_uart|tx_state.s_tx_data~regout\ & (\serial_uart|tx_byte_saved\(5))) # (!\serial_uart|tx_state.s_tx_data~regout\ & ((\serial_uart|received_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_state.s_tx_data~regout\,
	datac => \serial_uart|tx_byte_saved\(5),
	datad => \serial_uart|received_data\(4),
	combout => \serial_uart|Selector20~0_combout\);

-- Location: LCFF_X28_Y11_N27
\serial_uart|tx_byte_saved[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector18~0_combout\,
	ena => \serial_uart|tx_byte_saved[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_byte_saved\(6));

-- Location: LCCOMB_X28_Y11_N24
\serial_uart|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector19~0_combout\ = (\serial_uart|tx_state.s_tx_data~regout\ & ((\serial_uart|tx_byte_saved\(6)))) # (!\serial_uart|tx_state.s_tx_data~regout\ & (\serial_uart|received_data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_state.s_tx_data~regout\,
	datac => \serial_uart|received_data\(5),
	datad => \serial_uart|tx_byte_saved\(6),
	combout => \serial_uart|Selector19~0_combout\);

-- Location: LCFF_X28_Y11_N9
\serial_uart|tx_byte_saved[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|tx_byte_saved[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_byte_saved\(7));

-- Location: LCCOMB_X28_Y11_N26
\serial_uart|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector18~0_combout\ = (\serial_uart|tx_state.s_tx_data~regout\ & (\serial_uart|tx_byte_saved\(7))) # (!\serial_uart|tx_state.s_tx_data~regout\ & ((\serial_uart|received_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_state.s_tx_data~regout\,
	datac => \serial_uart|tx_byte_saved\(7),
	datad => \serial_uart|received_data\(6),
	combout => \serial_uart|Selector18~0_combout\);

-- Location: LCCOMB_X28_Y11_N22
\serial_uart|tx_byte_saved[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_byte_saved[7]~1_combout\ = (\serial_uart|tx_state.s_idle~regout\ & (((\serial_uart|tx_bit_cnt_wrap~regout\ & \serial_uart|tx_state.s_tx_data~regout\)))) # (!\serial_uart|tx_state.s_idle~regout\ & (\serial_uart|received_data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|received_data\(7),
	datab => \serial_uart|tx_bit_cnt_wrap~regout\,
	datac => \serial_uart|tx_state.s_idle~regout\,
	datad => \serial_uart|tx_state.s_tx_data~regout\,
	combout => \serial_uart|tx_byte_saved[7]~1_combout\);

-- Location: LCCOMB_X28_Y11_N8
\serial_uart|tx_byte_saved[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_byte_saved[7]~2_combout\ = (\serial_uart|tx_state.s_idle~regout\ & (((\serial_uart|tx_byte_saved\(7) & !\serial_uart|tx_byte_saved[7]~1_combout\)))) # (!\serial_uart|tx_state.s_idle~regout\ & ((\serial_uart|received_data_valid~regout\ & 
-- ((\serial_uart|tx_byte_saved[7]~1_combout\))) # (!\serial_uart|received_data_valid~regout\ & (\serial_uart|tx_byte_saved\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_state.s_idle~regout\,
	datab => \serial_uart|received_data_valid~regout\,
	datac => \serial_uart|tx_byte_saved\(7),
	datad => \serial_uart|tx_byte_saved[7]~1_combout\,
	combout => \serial_uart|tx_byte_saved[7]~2_combout\);

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

-- Location: LCCOMB_X27_Y10_N2
\serial_uart|rx_bit_cnt[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[0]~13_combout\ = \serial_uart|rx_bit_cnt\(0) $ (VCC)
-- \serial_uart|rx_bit_cnt[0]~14\ = CARRY(\serial_uart|rx_bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_cnt\(0),
	datad => VCC,
	combout => \serial_uart|rx_bit_cnt[0]~13_combout\,
	cout => \serial_uart|rx_bit_cnt[0]~14\);

-- Location: LCCOMB_X27_Y10_N24
\serial_uart|rx_bit_cnt[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[11]~35_combout\ = (\serial_uart|rx_bit_cnt\(11) & (!\serial_uart|rx_bit_cnt[10]~34\)) # (!\serial_uart|rx_bit_cnt\(11) & ((\serial_uart|rx_bit_cnt[10]~34\) # (GND)))
-- \serial_uart|rx_bit_cnt[11]~36\ = CARRY((!\serial_uart|rx_bit_cnt[10]~34\) # (!\serial_uart|rx_bit_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(11),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[10]~34\,
	combout => \serial_uart|rx_bit_cnt[11]~35_combout\,
	cout => \serial_uart|rx_bit_cnt[11]~36\);

-- Location: LCCOMB_X27_Y10_N26
\serial_uart|rx_bit_cnt[12]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[12]~38_combout\ = \serial_uart|rx_bit_cnt[11]~36\ $ (!\serial_uart|rx_bit_cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \serial_uart|rx_bit_cnt\(12),
	cin => \serial_uart|rx_bit_cnt[11]~36\,
	combout => \serial_uart|rx_bit_cnt[12]~38_combout\);

-- Location: LCFF_X27_Y10_N27
\serial_uart|rx_bit_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[12]~38_combout\,
	sclr => \serial_uart|rx_bit_cnt[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(12));

-- Location: LCCOMB_X27_Y10_N16
\serial_uart|rx_bit_cnt[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[7]~27_combout\ = (\serial_uart|rx_bit_cnt\(7) & (!\serial_uart|rx_bit_cnt[6]~26\)) # (!\serial_uart|rx_bit_cnt\(7) & ((\serial_uart|rx_bit_cnt[6]~26\) # (GND)))
-- \serial_uart|rx_bit_cnt[7]~28\ = CARRY((!\serial_uart|rx_bit_cnt[6]~26\) # (!\serial_uart|rx_bit_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(7),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[6]~26\,
	combout => \serial_uart|rx_bit_cnt[7]~27_combout\,
	cout => \serial_uart|rx_bit_cnt[7]~28\);

-- Location: LCFF_X27_Y10_N17
\serial_uart|rx_bit_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[7]~27_combout\,
	sclr => \serial_uart|rx_bit_cnt[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(7));

-- Location: LCCOMB_X28_Y10_N4
\serial_uart|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|LessThan1~0_combout\ = (!\serial_uart|rx_bit_cnt\(6) & (!\serial_uart|rx_bit_cnt\(8) & (!\serial_uart|rx_bit_cnt\(7) & !\serial_uart|rx_bit_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(6),
	datab => \serial_uart|rx_bit_cnt\(8),
	datac => \serial_uart|rx_bit_cnt\(7),
	datad => \serial_uart|rx_bit_cnt\(10),
	combout => \serial_uart|LessThan1~0_combout\);

-- Location: LCCOMB_X27_Y10_N10
\serial_uart|rx_bit_cnt[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[4]~21_combout\ = (\serial_uart|rx_bit_cnt\(4) & (\serial_uart|rx_bit_cnt[3]~20\ $ (GND))) # (!\serial_uart|rx_bit_cnt\(4) & (!\serial_uart|rx_bit_cnt[3]~20\ & VCC))
-- \serial_uart|rx_bit_cnt[4]~22\ = CARRY((\serial_uart|rx_bit_cnt\(4) & !\serial_uart|rx_bit_cnt[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(4),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[3]~20\,
	combout => \serial_uart|rx_bit_cnt[4]~21_combout\,
	cout => \serial_uart|rx_bit_cnt[4]~22\);

-- Location: LCFF_X27_Y10_N11
\serial_uart|rx_bit_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[4]~21_combout\,
	sclr => \serial_uart|rx_bit_cnt[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(4));

-- Location: LCCOMB_X27_Y10_N6
\serial_uart|rx_bit_cnt[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[2]~17_combout\ = (\serial_uart|rx_bit_cnt\(2) & (\serial_uart|rx_bit_cnt[1]~16\ $ (GND))) # (!\serial_uart|rx_bit_cnt\(2) & (!\serial_uart|rx_bit_cnt[1]~16\ & VCC))
-- \serial_uart|rx_bit_cnt[2]~18\ = CARRY((\serial_uart|rx_bit_cnt\(2) & !\serial_uart|rx_bit_cnt[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(2),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[1]~16\,
	combout => \serial_uart|rx_bit_cnt[2]~17_combout\,
	cout => \serial_uart|rx_bit_cnt[2]~18\);

-- Location: LCFF_X27_Y10_N7
\serial_uart|rx_bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[2]~17_combout\,
	sclr => \serial_uart|rx_bit_cnt[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(2));

-- Location: LCCOMB_X28_Y10_N18
\serial_uart|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|LessThan1~1_combout\ = (!\serial_uart|rx_bit_cnt\(4) & (!\serial_uart|rx_bit_cnt\(2) & ((!\serial_uart|rx_bit_cnt\(1)) # (!\serial_uart|rx_bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(0),
	datab => \serial_uart|rx_bit_cnt\(1),
	datac => \serial_uart|rx_bit_cnt\(4),
	datad => \serial_uart|rx_bit_cnt\(2),
	combout => \serial_uart|LessThan1~1_combout\);

-- Location: LCCOMB_X28_Y10_N28
\serial_uart|rx_bit_cnt_half~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt_half~0_combout\ = (\serial_uart|rx_bit_cnt\(5) & (!\serial_uart|LessThan1~1_combout\ & ((\serial_uart|rx_bit_cnt\(3)) # (\serial_uart|rx_bit_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(5),
	datab => \serial_uart|rx_bit_cnt\(3),
	datac => \serial_uart|rx_bit_cnt\(4),
	datad => \serial_uart|LessThan1~1_combout\,
	combout => \serial_uart|rx_bit_cnt_half~0_combout\);

-- Location: LCCOMB_X28_Y10_N6
\serial_uart|rx_bit_cnt_half~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt_half~1_combout\ = (\serial_uart|rx_bit_cnt\(9) & (((\serial_uart|rx_bit_cnt_half~0_combout\) # (!\serial_uart|LessThan1~0_combout\)))) # (!\serial_uart|rx_bit_cnt\(9) & (\serial_uart|rx_bit_cnt\(10) & 
-- ((\serial_uart|rx_bit_cnt_half~0_combout\) # (!\serial_uart|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(9),
	datab => \serial_uart|rx_bit_cnt\(10),
	datac => \serial_uart|LessThan1~0_combout\,
	datad => \serial_uart|rx_bit_cnt_half~0_combout\,
	combout => \serial_uart|rx_bit_cnt_half~1_combout\);

-- Location: LCCOMB_X28_Y10_N24
\serial_uart|rx_bit_cnt_half~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt_half~2_combout\ = (\serial_uart|rx_bit_cnt_en~regout\ & ((\serial_uart|rx_bit_cnt\(12)) # ((\serial_uart|rx_bit_cnt\(11) & \serial_uart|rx_bit_cnt_half~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt_en~regout\,
	datab => \serial_uart|rx_bit_cnt\(12),
	datac => \serial_uart|rx_bit_cnt\(11),
	datad => \serial_uart|rx_bit_cnt_half~1_combout\,
	combout => \serial_uart|rx_bit_cnt_half~2_combout\);

-- Location: LCFF_X28_Y10_N25
\serial_uart|rx_bit_cnt_half\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt_half~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt_half~regout\);

-- Location: LCCOMB_X28_Y10_N10
\serial_uart|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector1~0_combout\ = (\serial_uart|rx_bit_cnt_wrap~regout\ & \serial_uart|rx_state.s_stop_bit~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \serial_uart|rx_state.s_stop_bit~regout\,
	combout => \serial_uart|Selector1~0_combout\);

-- Location: LCCOMB_X28_Y10_N26
\serial_uart|rx_state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_state~10_combout\ = (\serial_uart|reset_2r~regout\ & (!\serial_uart|Selector1~0_combout\ & ((\serial_uart|rx_bit_cnt_half~regout\) # (\serial_uart|rx_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|reset_2r~regout\,
	datab => \serial_uart|rx_bit_cnt_half~regout\,
	datac => \serial_uart|rx_state.s_idle~regout\,
	datad => \serial_uart|Selector1~0_combout\,
	combout => \serial_uart|rx_state~10_combout\);

-- Location: LCFF_X28_Y10_N27
\serial_uart|rx_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_state.s_idle~regout\);

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X30_Y10_N28
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

-- Location: LCFF_X30_Y10_N29
\serial_uart|rx_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_r~regout\);

-- Location: LCCOMB_X29_Y10_N28
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

-- Location: LCFF_X29_Y10_N29
\serial_uart|rx_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_2r~regout\);

-- Location: LCCOMB_X28_Y10_N12
\serial_uart|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector0~0_combout\ = (!\serial_uart|Selector1~0_combout\ & ((\serial_uart|rx_state.s_idle~regout\) # ((!\serial_uart|rx_bit_cnt_half~regout\ & !\serial_uart|rx_2r~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector1~0_combout\,
	datab => \serial_uart|rx_state.s_idle~regout\,
	datac => \serial_uart|rx_bit_cnt_half~regout\,
	datad => \serial_uart|rx_2r~regout\,
	combout => \serial_uart|Selector0~0_combout\);

-- Location: LCFF_X28_Y10_N13
\serial_uart|rx_bit_cnt_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt_en~regout\);

-- Location: LCCOMB_X27_Y10_N28
\serial_uart|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|LessThan0~0_combout\ = (!\serial_uart|rx_bit_cnt\(7) & (!\serial_uart|rx_bit_cnt\(8) & (!\serial_uart|rx_bit_cnt\(11) & !\serial_uart|rx_bit_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(7),
	datab => \serial_uart|rx_bit_cnt\(8),
	datac => \serial_uart|rx_bit_cnt\(11),
	datad => \serial_uart|rx_bit_cnt\(9),
	combout => \serial_uart|LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y10_N8
\serial_uart|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|LessThan0~2_combout\ = (!\serial_uart|rx_bit_cnt\(3) & (((!\serial_uart|rx_bit_cnt\(0)) # (!\serial_uart|rx_bit_cnt\(1))) # (!\serial_uart|rx_bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(3),
	datab => \serial_uart|rx_bit_cnt\(2),
	datac => \serial_uart|rx_bit_cnt\(1),
	datad => \serial_uart|rx_bit_cnt\(0),
	combout => \serial_uart|LessThan0~2_combout\);

-- Location: LCCOMB_X27_Y10_N12
\serial_uart|rx_bit_cnt[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[5]~23_combout\ = (\serial_uart|rx_bit_cnt\(5) & (!\serial_uart|rx_bit_cnt[4]~22\)) # (!\serial_uart|rx_bit_cnt\(5) & ((\serial_uart|rx_bit_cnt[4]~22\) # (GND)))
-- \serial_uart|rx_bit_cnt[5]~24\ = CARRY((!\serial_uart|rx_bit_cnt[4]~22\) # (!\serial_uart|rx_bit_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(5),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[4]~22\,
	combout => \serial_uart|rx_bit_cnt[5]~23_combout\,
	cout => \serial_uart|rx_bit_cnt[5]~24\);

-- Location: LCFF_X27_Y10_N13
\serial_uart|rx_bit_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[5]~23_combout\,
	sclr => \serial_uart|rx_bit_cnt[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(5));

-- Location: LCCOMB_X28_Y10_N30
\serial_uart|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|LessThan0~1_combout\ = ((!\serial_uart|rx_bit_cnt\(5) & !\serial_uart|rx_bit_cnt\(4))) # (!\serial_uart|rx_bit_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(6),
	datac => \serial_uart|rx_bit_cnt\(5),
	datad => \serial_uart|rx_bit_cnt\(4),
	combout => \serial_uart|LessThan0~1_combout\);

-- Location: LCCOMB_X27_Y10_N0
\serial_uart|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|LessThan0~3_combout\ = (\serial_uart|LessThan0~0_combout\ & ((\serial_uart|LessThan0~1_combout\) # ((!\serial_uart|rx_bit_cnt\(5) & \serial_uart|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(5),
	datab => \serial_uart|LessThan0~0_combout\,
	datac => \serial_uart|LessThan0~2_combout\,
	datad => \serial_uart|LessThan0~1_combout\,
	combout => \serial_uart|LessThan0~3_combout\);

-- Location: LCCOMB_X27_Y10_N30
\serial_uart|rx_bit_cnt[7]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[7]~37_combout\ = ((\serial_uart|rx_bit_cnt\(12) & (!\serial_uart|rx_bit_cnt_wrap~0_combout\ & !\serial_uart|LessThan0~3_combout\))) # (!\serial_uart|rx_bit_cnt_en~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(12),
	datab => \serial_uart|rx_bit_cnt_en~regout\,
	datac => \serial_uart|rx_bit_cnt_wrap~0_combout\,
	datad => \serial_uart|LessThan0~3_combout\,
	combout => \serial_uart|rx_bit_cnt[7]~37_combout\);

-- Location: LCFF_X27_Y10_N3
\serial_uart|rx_bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[0]~13_combout\,
	sclr => \serial_uart|rx_bit_cnt[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(0));

-- Location: LCCOMB_X27_Y10_N4
\serial_uart|rx_bit_cnt[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[1]~15_combout\ = (\serial_uart|rx_bit_cnt\(1) & (!\serial_uart|rx_bit_cnt[0]~14\)) # (!\serial_uart|rx_bit_cnt\(1) & ((\serial_uart|rx_bit_cnt[0]~14\) # (GND)))
-- \serial_uart|rx_bit_cnt[1]~16\ = CARRY((!\serial_uart|rx_bit_cnt[0]~14\) # (!\serial_uart|rx_bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_cnt\(1),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[0]~14\,
	combout => \serial_uart|rx_bit_cnt[1]~15_combout\,
	cout => \serial_uart|rx_bit_cnt[1]~16\);

-- Location: LCFF_X27_Y10_N5
\serial_uart|rx_bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[1]~15_combout\,
	sclr => \serial_uart|rx_bit_cnt[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(1));

-- Location: LCCOMB_X27_Y10_N8
\serial_uart|rx_bit_cnt[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[3]~19_combout\ = (\serial_uart|rx_bit_cnt\(3) & (!\serial_uart|rx_bit_cnt[2]~18\)) # (!\serial_uart|rx_bit_cnt\(3) & ((\serial_uart|rx_bit_cnt[2]~18\) # (GND)))
-- \serial_uart|rx_bit_cnt[3]~20\ = CARRY((!\serial_uart|rx_bit_cnt[2]~18\) # (!\serial_uart|rx_bit_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_cnt\(3),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[2]~18\,
	combout => \serial_uart|rx_bit_cnt[3]~19_combout\,
	cout => \serial_uart|rx_bit_cnt[3]~20\);

-- Location: LCFF_X27_Y10_N9
\serial_uart|rx_bit_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[3]~19_combout\,
	sclr => \serial_uart|rx_bit_cnt[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(3));

-- Location: LCCOMB_X27_Y10_N14
\serial_uart|rx_bit_cnt[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[6]~25_combout\ = (\serial_uart|rx_bit_cnt\(6) & (\serial_uart|rx_bit_cnt[5]~24\ $ (GND))) # (!\serial_uart|rx_bit_cnt\(6) & (!\serial_uart|rx_bit_cnt[5]~24\ & VCC))
-- \serial_uart|rx_bit_cnt[6]~26\ = CARRY((\serial_uart|rx_bit_cnt\(6) & !\serial_uart|rx_bit_cnt[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_cnt\(6),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[5]~24\,
	combout => \serial_uart|rx_bit_cnt[6]~25_combout\,
	cout => \serial_uart|rx_bit_cnt[6]~26\);

-- Location: LCFF_X27_Y10_N15
\serial_uart|rx_bit_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[6]~25_combout\,
	sclr => \serial_uart|rx_bit_cnt[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(6));

-- Location: LCCOMB_X27_Y10_N18
\serial_uart|rx_bit_cnt[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[8]~29_combout\ = (\serial_uart|rx_bit_cnt\(8) & (\serial_uart|rx_bit_cnt[7]~28\ $ (GND))) # (!\serial_uart|rx_bit_cnt\(8) & (!\serial_uart|rx_bit_cnt[7]~28\ & VCC))
-- \serial_uart|rx_bit_cnt[8]~30\ = CARRY((\serial_uart|rx_bit_cnt\(8) & !\serial_uart|rx_bit_cnt[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_cnt\(8),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[7]~28\,
	combout => \serial_uart|rx_bit_cnt[8]~29_combout\,
	cout => \serial_uart|rx_bit_cnt[8]~30\);

-- Location: LCFF_X27_Y10_N19
\serial_uart|rx_bit_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[8]~29_combout\,
	sclr => \serial_uart|rx_bit_cnt[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(8));

-- Location: LCCOMB_X27_Y10_N20
\serial_uart|rx_bit_cnt[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[9]~31_combout\ = (\serial_uart|rx_bit_cnt\(9) & (!\serial_uart|rx_bit_cnt[8]~30\)) # (!\serial_uart|rx_bit_cnt\(9) & ((\serial_uart|rx_bit_cnt[8]~30\) # (GND)))
-- \serial_uart|rx_bit_cnt[9]~32\ = CARRY((!\serial_uart|rx_bit_cnt[8]~30\) # (!\serial_uart|rx_bit_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_cnt\(9),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[8]~30\,
	combout => \serial_uart|rx_bit_cnt[9]~31_combout\,
	cout => \serial_uart|rx_bit_cnt[9]~32\);

-- Location: LCFF_X27_Y10_N21
\serial_uart|rx_bit_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[9]~31_combout\,
	sclr => \serial_uart|rx_bit_cnt[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(9));

-- Location: LCCOMB_X27_Y10_N22
\serial_uart|rx_bit_cnt[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[10]~33_combout\ = (\serial_uart|rx_bit_cnt\(10) & (\serial_uart|rx_bit_cnt[9]~32\ $ (GND))) # (!\serial_uart|rx_bit_cnt\(10) & (!\serial_uart|rx_bit_cnt[9]~32\ & VCC))
-- \serial_uart|rx_bit_cnt[10]~34\ = CARRY((\serial_uart|rx_bit_cnt\(10) & !\serial_uart|rx_bit_cnt[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_cnt\(10),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[9]~32\,
	combout => \serial_uart|rx_bit_cnt[10]~33_combout\,
	cout => \serial_uart|rx_bit_cnt[10]~34\);

-- Location: LCFF_X27_Y10_N23
\serial_uart|rx_bit_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[10]~33_combout\,
	sclr => \serial_uart|rx_bit_cnt[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(10));

-- Location: LCFF_X27_Y10_N25
\serial_uart|rx_bit_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[11]~35_combout\,
	sclr => \serial_uart|rx_bit_cnt[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(11));

-- Location: LCCOMB_X28_Y10_N14
\serial_uart|rx_bit_cnt_wrap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt_wrap~0_combout\ = (!\serial_uart|rx_bit_cnt\(11) & !\serial_uart|rx_bit_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|rx_bit_cnt\(11),
	datad => \serial_uart|rx_bit_cnt\(10),
	combout => \serial_uart|rx_bit_cnt_wrap~0_combout\);

-- Location: LCCOMB_X28_Y10_N22
\serial_uart|rx_bit_cnt_wrap~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt_wrap~1_combout\ = (\serial_uart|rx_bit_cnt_en~regout\ & (!\serial_uart|rx_bit_cnt_wrap~0_combout\ & (!\serial_uart|LessThan0~3_combout\ & \serial_uart|rx_bit_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt_en~regout\,
	datab => \serial_uart|rx_bit_cnt_wrap~0_combout\,
	datac => \serial_uart|LessThan0~3_combout\,
	datad => \serial_uart|rx_bit_cnt\(12),
	combout => \serial_uart|rx_bit_cnt_wrap~1_combout\);

-- Location: LCFF_X28_Y10_N23
\serial_uart|rx_bit_cnt_wrap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt_wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt_wrap~regout\);

-- Location: LCCOMB_X28_Y10_N16
\serial_uart|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector2~0_combout\ = (\serial_uart|rx_bit_cnt_half~regout\ & !\serial_uart|rx_state.s_idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|rx_bit_cnt_half~regout\,
	datad => \serial_uart|rx_state.s_idle~regout\,
	combout => \serial_uart|Selector2~0_combout\);

-- Location: LCCOMB_X29_Y10_N8
\serial_uart|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector2~1_combout\ = (\serial_uart|Selector2~0_combout\) # ((\serial_uart|rx_state.s_rx_data~regout\ & ((!\serial_uart|rx_bit_cnt_wrap~regout\) # (!\serial_uart|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Equal0~0_combout\,
	datab => \serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \serial_uart|rx_state.s_rx_data~regout\,
	datad => \serial_uart|Selector2~0_combout\,
	combout => \serial_uart|Selector2~1_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X31_Y10_N24
\serial_uart|reset_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|reset_r~feeder_combout\ = \reset_n~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_n~combout\,
	combout => \serial_uart|reset_r~feeder_combout\);

-- Location: LCFF_X31_Y10_N25
\serial_uart|reset_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|reset_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|reset_r~regout\);

-- Location: LCCOMB_X30_Y10_N14
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

-- Location: LCFF_X30_Y10_N15
\serial_uart|reset_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|reset_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|reset_2r~regout\);

-- Location: LCFF_X29_Y10_N9
\serial_uart|rx_state.s_rx_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector2~1_combout\,
	sclr => \serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_state.s_rx_data~regout\);

-- Location: LCCOMB_X29_Y10_N30
\serial_uart|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector4~3_combout\ = (\serial_uart|rx_bit_cnt_wrap~regout\ & (\serial_uart|Equal0~0_combout\ & (\serial_uart|rx_state.s_rx_data~regout\))) # (!\serial_uart|rx_bit_cnt_wrap~regout\ & (((\serial_uart|rx_state.s_stop_bit~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Equal0~0_combout\,
	datab => \serial_uart|rx_state.s_rx_data~regout\,
	datac => \serial_uart|rx_state.s_stop_bit~regout\,
	datad => \serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \serial_uart|Selector4~3_combout\);

-- Location: LCFF_X29_Y10_N31
\serial_uart|rx_state.s_stop_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector4~3_combout\,
	sclr => \serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_state.s_stop_bit~regout\);

-- Location: LCCOMB_X28_Y10_N0
\serial_uart|received_data_valid~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data_valid~0_combout\ = (\serial_uart|rx_state.s_stop_bit~regout\ & (\serial_uart|rx_bit_cnt_wrap~regout\ & \serial_uart|rx_2r~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_state.s_stop_bit~regout\,
	datac => \serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \serial_uart|rx_2r~regout\,
	combout => \serial_uart|received_data_valid~0_combout\);

-- Location: LCFF_X28_Y10_N1
\serial_uart|received_data_valid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|received_data_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data_valid~regout\);

-- Location: LCCOMB_X30_Y11_N0
\serial_uart|tx_bit_cnt[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[0]~13_combout\ = \serial_uart|tx_bit_cnt\(0) $ (VCC)
-- \serial_uart|tx_bit_cnt[0]~14\ = CARRY(\serial_uart|tx_bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_bit_cnt\(0),
	datad => VCC,
	combout => \serial_uart|tx_bit_cnt[0]~13_combout\,
	cout => \serial_uart|tx_bit_cnt[0]~14\);

-- Location: LCCOMB_X27_Y11_N6
\serial_uart|tx_state~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_state~8_combout\ = (\serial_uart|reset_2r~regout\ & \serial_uart|tx_state~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|reset_2r~regout\,
	datad => \serial_uart|tx_state~7_combout\,
	combout => \serial_uart|tx_state~8_combout\);

-- Location: LCFF_X27_Y11_N7
\serial_uart|tx_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|tx_state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_state.s_idle~regout\);

-- Location: LCCOMB_X28_Y11_N2
\serial_uart|tx_state~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_state~7_combout\ = (\serial_uart|tx_state.s_stop_bit~regout\ & (!\serial_uart|tx_bit_cnt_wrap~regout\ & ((\serial_uart|received_data_valid~regout\) # (\serial_uart|tx_state.s_idle~regout\)))) # (!\serial_uart|tx_state.s_stop_bit~regout\ & 
-- ((\serial_uart|received_data_valid~regout\) # ((\serial_uart|tx_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_state.s_stop_bit~regout\,
	datab => \serial_uart|received_data_valid~regout\,
	datac => \serial_uart|tx_state.s_idle~regout\,
	datad => \serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \serial_uart|tx_state~7_combout\);

-- Location: LCFF_X28_Y11_N3
\serial_uart|tx_bit_cnt_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|tx_state~7_combout\,
	sclr => \serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt_en~regout\);

-- Location: LCCOMB_X30_Y11_N30
\serial_uart|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|LessThan2~3_combout\ = (!\serial_uart|tx_bit_cnt\(3) & (((!\serial_uart|tx_bit_cnt\(1)) # (!\serial_uart|tx_bit_cnt\(2))) # (!\serial_uart|tx_bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt\(3),
	datab => \serial_uart|tx_bit_cnt\(0),
	datac => \serial_uart|tx_bit_cnt\(2),
	datad => \serial_uart|tx_bit_cnt\(1),
	combout => \serial_uart|LessThan2~3_combout\);

-- Location: LCCOMB_X30_Y11_N12
\serial_uart|tx_bit_cnt[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[6]~25_combout\ = (\serial_uart|tx_bit_cnt\(6) & (\serial_uart|tx_bit_cnt[5]~24\ $ (GND))) # (!\serial_uart|tx_bit_cnt\(6) & (!\serial_uart|tx_bit_cnt[5]~24\ & VCC))
-- \serial_uart|tx_bit_cnt[6]~26\ = CARRY((\serial_uart|tx_bit_cnt\(6) & !\serial_uart|tx_bit_cnt[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt\(6),
	datad => VCC,
	cin => \serial_uart|tx_bit_cnt[5]~24\,
	combout => \serial_uart|tx_bit_cnt[6]~25_combout\,
	cout => \serial_uart|tx_bit_cnt[6]~26\);

-- Location: LCFF_X30_Y11_N13
\serial_uart|tx_bit_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[6]~25_combout\,
	sclr => \serial_uart|tx_bit_cnt[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(6));

-- Location: LCCOMB_X30_Y11_N10
\serial_uart|tx_bit_cnt[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[5]~23_combout\ = (\serial_uart|tx_bit_cnt\(5) & (!\serial_uart|tx_bit_cnt[4]~22\)) # (!\serial_uart|tx_bit_cnt\(5) & ((\serial_uart|tx_bit_cnt[4]~22\) # (GND)))
-- \serial_uart|tx_bit_cnt[5]~24\ = CARRY((!\serial_uart|tx_bit_cnt[4]~22\) # (!\serial_uart|tx_bit_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt\(5),
	datad => VCC,
	cin => \serial_uart|tx_bit_cnt[4]~22\,
	combout => \serial_uart|tx_bit_cnt[5]~23_combout\,
	cout => \serial_uart|tx_bit_cnt[5]~24\);

-- Location: LCFF_X30_Y11_N11
\serial_uart|tx_bit_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[5]~23_combout\,
	sclr => \serial_uart|tx_bit_cnt[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(5));

-- Location: LCCOMB_X29_Y11_N30
\serial_uart|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|LessThan2~2_combout\ = ((!\serial_uart|tx_bit_cnt\(4) & !\serial_uart|tx_bit_cnt\(5))) # (!\serial_uart|tx_bit_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_bit_cnt\(4),
	datac => \serial_uart|tx_bit_cnt\(6),
	datad => \serial_uart|tx_bit_cnt\(5),
	combout => \serial_uart|LessThan2~2_combout\);

-- Location: LCCOMB_X29_Y11_N16
\serial_uart|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|LessThan2~1_combout\ = (!\serial_uart|tx_bit_cnt\(8) & (!\serial_uart|tx_bit_cnt\(9) & (!\serial_uart|tx_bit_cnt\(7) & !\serial_uart|tx_bit_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt\(8),
	datab => \serial_uart|tx_bit_cnt\(9),
	datac => \serial_uart|tx_bit_cnt\(7),
	datad => \serial_uart|tx_bit_cnt\(11),
	combout => \serial_uart|LessThan2~1_combout\);

-- Location: LCCOMB_X30_Y11_N28
\serial_uart|LessThan2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|LessThan2~4_combout\ = (\serial_uart|LessThan2~1_combout\ & ((\serial_uart|LessThan2~2_combout\) # ((!\serial_uart|tx_bit_cnt\(5) & \serial_uart|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt\(5),
	datab => \serial_uart|LessThan2~3_combout\,
	datac => \serial_uart|LessThan2~2_combout\,
	datad => \serial_uart|LessThan2~1_combout\,
	combout => \serial_uart|LessThan2~4_combout\);

-- Location: LCCOMB_X30_Y11_N26
\serial_uart|tx_bit_cnt[5]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[5]~35_combout\ = ((!\serial_uart|LessThan2~0_combout\ & !\serial_uart|LessThan2~4_combout\)) # (!\serial_uart|tx_bit_cnt_en~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|LessThan2~0_combout\,
	datac => \serial_uart|tx_bit_cnt_en~regout\,
	datad => \serial_uart|LessThan2~4_combout\,
	combout => \serial_uart|tx_bit_cnt[5]~35_combout\);

-- Location: LCFF_X30_Y11_N1
\serial_uart|tx_bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[0]~13_combout\,
	sclr => \serial_uart|tx_bit_cnt[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(0));

-- Location: LCCOMB_X30_Y11_N2
\serial_uart|tx_bit_cnt[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[1]~15_combout\ = (\serial_uart|tx_bit_cnt\(1) & (!\serial_uart|tx_bit_cnt[0]~14\)) # (!\serial_uart|tx_bit_cnt\(1) & ((\serial_uart|tx_bit_cnt[0]~14\) # (GND)))
-- \serial_uart|tx_bit_cnt[1]~16\ = CARRY((!\serial_uart|tx_bit_cnt[0]~14\) # (!\serial_uart|tx_bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_bit_cnt\(1),
	datad => VCC,
	cin => \serial_uart|tx_bit_cnt[0]~14\,
	combout => \serial_uart|tx_bit_cnt[1]~15_combout\,
	cout => \serial_uart|tx_bit_cnt[1]~16\);

-- Location: LCFF_X30_Y11_N3
\serial_uart|tx_bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[1]~15_combout\,
	sclr => \serial_uart|tx_bit_cnt[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(1));

-- Location: LCCOMB_X30_Y11_N4
\serial_uart|tx_bit_cnt[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[2]~17_combout\ = (\serial_uart|tx_bit_cnt\(2) & (\serial_uart|tx_bit_cnt[1]~16\ $ (GND))) # (!\serial_uart|tx_bit_cnt\(2) & (!\serial_uart|tx_bit_cnt[1]~16\ & VCC))
-- \serial_uart|tx_bit_cnt[2]~18\ = CARRY((\serial_uart|tx_bit_cnt\(2) & !\serial_uart|tx_bit_cnt[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_bit_cnt\(2),
	datad => VCC,
	cin => \serial_uart|tx_bit_cnt[1]~16\,
	combout => \serial_uart|tx_bit_cnt[2]~17_combout\,
	cout => \serial_uart|tx_bit_cnt[2]~18\);

-- Location: LCFF_X30_Y11_N5
\serial_uart|tx_bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[2]~17_combout\,
	sclr => \serial_uart|tx_bit_cnt[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(2));

-- Location: LCCOMB_X30_Y11_N8
\serial_uart|tx_bit_cnt[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[4]~21_combout\ = (\serial_uart|tx_bit_cnt\(4) & (\serial_uart|tx_bit_cnt[3]~20\ $ (GND))) # (!\serial_uart|tx_bit_cnt\(4) & (!\serial_uart|tx_bit_cnt[3]~20\ & VCC))
-- \serial_uart|tx_bit_cnt[4]~22\ = CARRY((\serial_uart|tx_bit_cnt\(4) & !\serial_uart|tx_bit_cnt[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_bit_cnt\(4),
	datad => VCC,
	cin => \serial_uart|tx_bit_cnt[3]~20\,
	combout => \serial_uart|tx_bit_cnt[4]~21_combout\,
	cout => \serial_uart|tx_bit_cnt[4]~22\);

-- Location: LCFF_X30_Y11_N9
\serial_uart|tx_bit_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[4]~21_combout\,
	sclr => \serial_uart|tx_bit_cnt[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(4));

-- Location: LCCOMB_X30_Y11_N14
\serial_uart|tx_bit_cnt[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[7]~27_combout\ = (\serial_uart|tx_bit_cnt\(7) & (!\serial_uart|tx_bit_cnt[6]~26\)) # (!\serial_uart|tx_bit_cnt\(7) & ((\serial_uart|tx_bit_cnt[6]~26\) # (GND)))
-- \serial_uart|tx_bit_cnt[7]~28\ = CARRY((!\serial_uart|tx_bit_cnt[6]~26\) # (!\serial_uart|tx_bit_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_bit_cnt\(7),
	datad => VCC,
	cin => \serial_uart|tx_bit_cnt[6]~26\,
	combout => \serial_uart|tx_bit_cnt[7]~27_combout\,
	cout => \serial_uart|tx_bit_cnt[7]~28\);

-- Location: LCFF_X30_Y11_N15
\serial_uart|tx_bit_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[7]~27_combout\,
	sclr => \serial_uart|tx_bit_cnt[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(7));

-- Location: LCCOMB_X30_Y11_N18
\serial_uart|tx_bit_cnt[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[9]~31_combout\ = (\serial_uart|tx_bit_cnt\(9) & (!\serial_uart|tx_bit_cnt[8]~30\)) # (!\serial_uart|tx_bit_cnt\(9) & ((\serial_uart|tx_bit_cnt[8]~30\) # (GND)))
-- \serial_uart|tx_bit_cnt[9]~32\ = CARRY((!\serial_uart|tx_bit_cnt[8]~30\) # (!\serial_uart|tx_bit_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_bit_cnt\(9),
	datad => VCC,
	cin => \serial_uart|tx_bit_cnt[8]~30\,
	combout => \serial_uart|tx_bit_cnt[9]~31_combout\,
	cout => \serial_uart|tx_bit_cnt[9]~32\);

-- Location: LCFF_X30_Y11_N19
\serial_uart|tx_bit_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[9]~31_combout\,
	sclr => \serial_uart|tx_bit_cnt[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(9));

-- Location: LCCOMB_X30_Y11_N20
\serial_uart|tx_bit_cnt[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[10]~33_combout\ = (\serial_uart|tx_bit_cnt\(10) & (\serial_uart|tx_bit_cnt[9]~32\ $ (GND))) # (!\serial_uart|tx_bit_cnt\(10) & (!\serial_uart|tx_bit_cnt[9]~32\ & VCC))
-- \serial_uart|tx_bit_cnt[10]~34\ = CARRY((\serial_uart|tx_bit_cnt\(10) & !\serial_uart|tx_bit_cnt[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt\(10),
	datad => VCC,
	cin => \serial_uart|tx_bit_cnt[9]~32\,
	combout => \serial_uart|tx_bit_cnt[10]~33_combout\,
	cout => \serial_uart|tx_bit_cnt[10]~34\);

-- Location: LCCOMB_X30_Y11_N22
\serial_uart|tx_bit_cnt[11]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[11]~36_combout\ = (\serial_uart|tx_bit_cnt\(11) & (!\serial_uart|tx_bit_cnt[10]~34\)) # (!\serial_uart|tx_bit_cnt\(11) & ((\serial_uart|tx_bit_cnt[10]~34\) # (GND)))
-- \serial_uart|tx_bit_cnt[11]~37\ = CARRY((!\serial_uart|tx_bit_cnt[10]~34\) # (!\serial_uart|tx_bit_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_bit_cnt\(11),
	datad => VCC,
	cin => \serial_uart|tx_bit_cnt[10]~34\,
	combout => \serial_uart|tx_bit_cnt[11]~36_combout\,
	cout => \serial_uart|tx_bit_cnt[11]~37\);

-- Location: LCFF_X30_Y11_N23
\serial_uart|tx_bit_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[11]~36_combout\,
	sclr => \serial_uart|tx_bit_cnt[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(11));

-- Location: LCCOMB_X30_Y11_N24
\serial_uart|tx_bit_cnt[12]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[12]~38_combout\ = \serial_uart|tx_bit_cnt[11]~37\ $ (!\serial_uart|tx_bit_cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \serial_uart|tx_bit_cnt\(12),
	cin => \serial_uart|tx_bit_cnt[11]~37\,
	combout => \serial_uart|tx_bit_cnt[12]~38_combout\);

-- Location: LCFF_X30_Y11_N25
\serial_uart|tx_bit_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[12]~38_combout\,
	sclr => \serial_uart|tx_bit_cnt[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(12));

-- Location: LCFF_X30_Y11_N21
\serial_uart|tx_bit_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[10]~33_combout\,
	sclr => \serial_uart|tx_bit_cnt[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(10));

-- Location: LCCOMB_X29_Y11_N2
\serial_uart|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|LessThan2~0_combout\ = ((!\serial_uart|tx_bit_cnt\(10) & !\serial_uart|tx_bit_cnt\(11))) # (!\serial_uart|tx_bit_cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_bit_cnt\(12),
	datac => \serial_uart|tx_bit_cnt\(10),
	datad => \serial_uart|tx_bit_cnt\(11),
	combout => \serial_uart|LessThan2~0_combout\);

-- Location: LCCOMB_X29_Y11_N24
\serial_uart|tx_bit_cnt_wrap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt_wrap~0_combout\ = (\serial_uart|tx_bit_cnt_en~regout\ & (!\serial_uart|LessThan2~0_combout\ & !\serial_uart|LessThan2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt_en~regout\,
	datab => \serial_uart|LessThan2~0_combout\,
	datad => \serial_uart|LessThan2~4_combout\,
	combout => \serial_uart|tx_bit_cnt_wrap~0_combout\);

-- Location: LCFF_X29_Y11_N25
\serial_uart|tx_bit_cnt_wrap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt_wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt_wrap~regout\);

-- Location: LCCOMB_X28_Y11_N4
\serial_uart|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector27~0_combout\ = (\serial_uart|tx_state.s_idle~regout\ & (((\serial_uart|tx_state.s_start_bit~regout\ & !\serial_uart|tx_bit_cnt_wrap~regout\)))) # (!\serial_uart|tx_state.s_idle~regout\ & ((\serial_uart|received_data_valid~regout\) # 
-- ((\serial_uart|tx_state.s_start_bit~regout\ & !\serial_uart|tx_bit_cnt_wrap~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_state.s_idle~regout\,
	datab => \serial_uart|received_data_valid~regout\,
	datac => \serial_uart|tx_state.s_start_bit~regout\,
	datad => \serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \serial_uart|Selector27~0_combout\);

-- Location: LCFF_X28_Y11_N5
\serial_uart|tx_state.s_start_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector27~0_combout\,
	sclr => \serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_state.s_start_bit~regout\);

-- Location: LCCOMB_X28_Y11_N30
\serial_uart|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector28~0_combout\ = (\serial_uart|Selector29~0_combout\ & (\serial_uart|tx_state.s_start_bit~regout\ & ((\serial_uart|tx_bit_cnt_wrap~regout\)))) # (!\serial_uart|Selector29~0_combout\ & ((\serial_uart|tx_state.s_tx_data~regout\) # 
-- ((\serial_uart|tx_state.s_start_bit~regout\ & \serial_uart|tx_bit_cnt_wrap~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector29~0_combout\,
	datab => \serial_uart|tx_state.s_start_bit~regout\,
	datac => \serial_uart|tx_state.s_tx_data~regout\,
	datad => \serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \serial_uart|Selector28~0_combout\);

-- Location: LCFF_X28_Y11_N31
\serial_uart|tx_state.s_tx_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector28~0_combout\,
	sclr => \serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_state.s_tx_data~regout\);

-- Location: LCCOMB_X29_Y10_N26
\serial_uart|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector4~2_combout\ = (\serial_uart|rx_state.s_rx_data~regout\ & \serial_uart|rx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|rx_state.s_rx_data~regout\,
	datad => \serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \serial_uart|Selector4~2_combout\);

-- Location: LCCOMB_X29_Y10_N14
\serial_uart|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector10~0_combout\ = (\serial_uart|rx_state.s_stop_bit~regout\) # ((!\serial_uart|rx_bit_cnt_wrap~regout\ & \serial_uart|rx_state.s_rx_data~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \serial_uart|rx_state.s_rx_data~regout\,
	datad => \serial_uart|rx_state.s_stop_bit~regout\,
	combout => \serial_uart|Selector10~0_combout\);

-- Location: LCCOMB_X30_Y10_N30
\serial_uart|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector10~1_combout\ = (\serial_uart|rx_byte_int\(2) & ((\serial_uart|Selector4~2_combout\) # ((\serial_uart|rx_byte_int\(1) & \serial_uart|Selector10~0_combout\)))) # (!\serial_uart|rx_byte_int\(2) & (((\serial_uart|rx_byte_int\(1) & 
-- \serial_uart|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_byte_int\(2),
	datab => \serial_uart|Selector4~2_combout\,
	datac => \serial_uart|rx_byte_int\(1),
	datad => \serial_uart|Selector10~0_combout\,
	combout => \serial_uart|Selector10~1_combout\);

-- Location: LCFF_X30_Y10_N31
\serial_uart|rx_byte_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(1));

-- Location: LCCOMB_X30_Y10_N0
\serial_uart|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector11~0_combout\ = (\serial_uart|Selector10~0_combout\ & ((\serial_uart|rx_byte_int\(0)) # ((\serial_uart|Selector4~2_combout\ & \serial_uart|rx_byte_int\(1))))) # (!\serial_uart|Selector10~0_combout\ & (\serial_uart|Selector4~2_combout\ 
-- & ((\serial_uart|rx_byte_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector10~0_combout\,
	datab => \serial_uart|Selector4~2_combout\,
	datac => \serial_uart|rx_byte_int\(0),
	datad => \serial_uart|rx_byte_int\(1),
	combout => \serial_uart|Selector11~0_combout\);

-- Location: LCFF_X30_Y10_N1
\serial_uart|rx_byte_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(0));

-- Location: LCCOMB_X30_Y10_N24
\serial_uart|received_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~2_combout\ = (\serial_uart|reset_2r~regout\ & \serial_uart|rx_byte_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|reset_2r~regout\,
	datad => \serial_uart|rx_byte_int\(0),
	combout => \serial_uart|received_data~2_combout\);

-- Location: LCCOMB_X29_Y10_N0
\serial_uart|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector12~1_combout\ = (\serial_uart|Selector12~0_combout\) # ((\serial_uart|rx_bit_no\(2) & ((\serial_uart|rx_state.s_rx_data~regout\) # (\serial_uart|rx_state.s_stop_bit~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector12~0_combout\,
	datab => \serial_uart|rx_state.s_rx_data~regout\,
	datac => \serial_uart|rx_bit_no\(2),
	datad => \serial_uart|rx_state.s_stop_bit~regout\,
	combout => \serial_uart|Selector12~1_combout\);

-- Location: LCFF_X29_Y10_N1
\serial_uart|rx_bit_no[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_no\(2));

-- Location: LCCOMB_X29_Y10_N12
\serial_uart|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector13~0_combout\ = (\serial_uart|rx_state.s_rx_data~regout\ & (\serial_uart|rx_bit_no\(1) $ (((\serial_uart|rx_bit_no\(0) & !\serial_uart|rx_bit_no~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_no\(1),
	datab => \serial_uart|rx_bit_no\(0),
	datac => \serial_uart|rx_state.s_rx_data~regout\,
	datad => \serial_uart|rx_bit_no~0_combout\,
	combout => \serial_uart|Selector13~0_combout\);

-- Location: LCCOMB_X29_Y10_N24
\serial_uart|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector13~1_combout\ = (\serial_uart|Selector13~0_combout\) # ((\serial_uart|rx_state.s_stop_bit~regout\ & \serial_uart|rx_bit_no\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_state.s_stop_bit~regout\,
	datac => \serial_uart|rx_bit_no\(1),
	datad => \serial_uart|Selector13~0_combout\,
	combout => \serial_uart|Selector13~1_combout\);

-- Location: LCFF_X29_Y10_N25
\serial_uart|rx_bit_no[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_no\(1));

-- Location: LCCOMB_X29_Y10_N22
\serial_uart|rx_bit_no~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_no~0_combout\ = ((\serial_uart|rx_bit_no\(0) & (\serial_uart|rx_bit_no\(2) & \serial_uart|rx_bit_no\(1)))) # (!\serial_uart|rx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_no\(0),
	datab => \serial_uart|rx_bit_no\(2),
	datac => \serial_uart|rx_bit_no\(1),
	datad => \serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \serial_uart|rx_bit_no~0_combout\);

-- Location: LCCOMB_X29_Y10_N18
\serial_uart|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector14~0_combout\ = (\serial_uart|rx_bit_no\(0) & ((\serial_uart|rx_state.s_stop_bit~regout\) # ((\serial_uart|rx_state.s_rx_data~regout\ & \serial_uart|rx_bit_no~0_combout\)))) # (!\serial_uart|rx_bit_no\(0) & 
-- (\serial_uart|rx_state.s_rx_data~regout\ & (!\serial_uart|rx_bit_no~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_state.s_rx_data~regout\,
	datab => \serial_uart|rx_bit_no~0_combout\,
	datac => \serial_uart|rx_bit_no\(0),
	datad => \serial_uart|rx_state.s_stop_bit~regout\,
	combout => \serial_uart|Selector14~0_combout\);

-- Location: LCFF_X29_Y10_N19
\serial_uart|rx_bit_no[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_no\(0));

-- Location: LCCOMB_X29_Y10_N10
\serial_uart|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Equal0~0_combout\ = (\serial_uart|rx_bit_no\(0) & (\serial_uart|rx_bit_no\(1) & \serial_uart|rx_bit_no\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_no\(0),
	datac => \serial_uart|rx_bit_no\(1),
	datad => \serial_uart|rx_bit_no\(2),
	combout => \serial_uart|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y10_N10
\serial_uart|received_data[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data[4]~10_combout\ = ((\serial_uart|rx_state.s_rx_data~regout\ & (\serial_uart|rx_bit_cnt_wrap~regout\ & \serial_uart|Equal0~0_combout\))) # (!\serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_state.s_rx_data~regout\,
	datab => \serial_uart|reset_2r~regout\,
	datac => \serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \serial_uart|Equal0~0_combout\,
	combout => \serial_uart|received_data[4]~10_combout\);

-- Location: LCFF_X30_Y10_N25
\serial_uart|received_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|received_data~2_combout\,
	ena => \serial_uart|received_data[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(0));

-- Location: LCCOMB_X30_Y10_N26
\serial_uart|received_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~3_combout\ = (\serial_uart|reset_2r~regout\ & \serial_uart|rx_byte_int\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|reset_2r~regout\,
	datad => \serial_uart|rx_byte_int\(1),
	combout => \serial_uart|received_data~3_combout\);

-- Location: LCFF_X30_Y10_N27
\serial_uart|received_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|received_data~3_combout\,
	ena => \serial_uart|received_data[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(1));

-- Location: LCCOMB_X27_Y11_N22
\serial_uart|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector23~0_combout\ = (\serial_uart|tx_state.s_tx_data~regout\ & (\serial_uart|tx_byte_saved\(2))) # (!\serial_uart|tx_state.s_tx_data~regout\ & ((\serial_uart|received_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_byte_saved\(2),
	datab => \serial_uart|tx_state.s_tx_data~regout\,
	datad => \serial_uart|received_data\(1),
	combout => \serial_uart|Selector23~0_combout\);

-- Location: LCCOMB_X28_Y11_N16
\serial_uart|tx_byte_saved[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_byte_saved[6]~0_combout\ = (\serial_uart|tx_state.s_tx_data~regout\ & ((\serial_uart|tx_bit_cnt_wrap~regout\) # ((\serial_uart|received_data_valid~regout\ & !\serial_uart|tx_state.s_idle~regout\)))) # 
-- (!\serial_uart|tx_state.s_tx_data~regout\ & (\serial_uart|received_data_valid~regout\ & (!\serial_uart|tx_state.s_idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_state.s_tx_data~regout\,
	datab => \serial_uart|received_data_valid~regout\,
	datac => \serial_uart|tx_state.s_idle~regout\,
	datad => \serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \serial_uart|tx_byte_saved[6]~0_combout\);

-- Location: LCFF_X27_Y11_N23
\serial_uart|tx_byte_saved[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector23~0_combout\,
	ena => \serial_uart|tx_byte_saved[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_byte_saved\(1));

-- Location: LCCOMB_X28_Y11_N18
\serial_uart|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector24~0_combout\ = (\serial_uart|tx_state.s_tx_data~regout\ & ((\serial_uart|tx_byte_saved\(1)))) # (!\serial_uart|tx_state.s_tx_data~regout\ & (\serial_uart|received_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_state.s_tx_data~regout\,
	datac => \serial_uart|received_data\(0),
	datad => \serial_uart|tx_byte_saved\(1),
	combout => \serial_uart|Selector24~0_combout\);

-- Location: LCFF_X28_Y11_N19
\serial_uart|tx_byte_saved[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector24~0_combout\,
	ena => \serial_uart|tx_byte_saved[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_byte_saved\(0));

-- Location: LCCOMB_X28_Y11_N0
\serial_uart|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector34~0_combout\ = (\serial_uart|tx_state.s_stop_bit~regout\) # (((\serial_uart|tx_byte_saved\(0) & \serial_uart|tx_state.s_tx_data~regout\)) # (!\serial_uart|tx_state.s_idle~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_state.s_stop_bit~regout\,
	datab => \serial_uart|tx_byte_saved\(0),
	datac => \serial_uart|tx_state.s_idle~regout\,
	datad => \serial_uart|tx_state.s_tx_data~regout\,
	combout => \serial_uart|Selector34~0_combout\);

-- Location: LCFF_X28_Y11_N1
\serial_uart|tx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx~regout\);

-- Location: LCCOMB_X30_Y10_N2
\serial_uart|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector8~0_combout\ = (\serial_uart|rx_byte_int\(4) & ((\serial_uart|Selector4~2_combout\) # ((\serial_uart|rx_byte_int\(3) & \serial_uart|Selector10~0_combout\)))) # (!\serial_uart|rx_byte_int\(4) & (((\serial_uart|rx_byte_int\(3) & 
-- \serial_uart|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_byte_int\(4),
	datab => \serial_uart|Selector4~2_combout\,
	datac => \serial_uart|rx_byte_int\(3),
	datad => \serial_uart|Selector10~0_combout\,
	combout => \serial_uart|Selector8~0_combout\);

-- Location: LCFF_X30_Y10_N3
\serial_uart|rx_byte_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(3));

-- Location: LCCOMB_X30_Y10_N16
\serial_uart|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector9~0_combout\ = (\serial_uart|Selector10~0_combout\ & ((\serial_uart|rx_byte_int\(2)) # ((\serial_uart|Selector4~2_combout\ & \serial_uart|rx_byte_int\(3))))) # (!\serial_uart|Selector10~0_combout\ & (\serial_uart|Selector4~2_combout\ 
-- & ((\serial_uart|rx_byte_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector10~0_combout\,
	datab => \serial_uart|Selector4~2_combout\,
	datac => \serial_uart|rx_byte_int\(2),
	datad => \serial_uart|rx_byte_int\(3),
	combout => \serial_uart|Selector9~0_combout\);

-- Location: LCFF_X30_Y10_N17
\serial_uart|rx_byte_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(2));

-- Location: LCCOMB_X30_Y10_N12
\serial_uart|received_data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~4_combout\ = (\serial_uart|reset_2r~regout\ & \serial_uart|rx_byte_int\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|reset_2r~regout\,
	datac => \serial_uart|rx_byte_int\(2),
	combout => \serial_uart|received_data~4_combout\);

-- Location: LCFF_X30_Y10_N13
\serial_uart|received_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|received_data~4_combout\,
	ena => \serial_uart|received_data[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(2));

-- Location: LCCOMB_X30_Y10_N6
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

-- Location: LCFF_X30_Y10_N7
\serial_uart|received_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|received_data~5_combout\,
	ena => \serial_uart|received_data[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(3));

-- Location: LCCOMB_X29_Y10_N16
\serial_uart|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector5~0_combout\ = (\serial_uart|Selector4~2_combout\ & ((\serial_uart|rx_2r~regout\) # ((\serial_uart|Selector10~0_combout\ & \serial_uart|rx_byte_int\(6))))) # (!\serial_uart|Selector4~2_combout\ & (\serial_uart|Selector10~0_combout\ & 
-- (\serial_uart|rx_byte_int\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector4~2_combout\,
	datab => \serial_uart|Selector10~0_combout\,
	datac => \serial_uart|rx_byte_int\(6),
	datad => \serial_uart|rx_2r~regout\,
	combout => \serial_uart|Selector5~0_combout\);

-- Location: LCFF_X29_Y10_N17
\serial_uart|rx_byte_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(6));

-- Location: LCCOMB_X30_Y10_N22
\serial_uart|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector6~0_combout\ = (\serial_uart|Selector10~0_combout\ & ((\serial_uart|rx_byte_int\(5)) # ((\serial_uart|Selector4~2_combout\ & \serial_uart|rx_byte_int\(6))))) # (!\serial_uart|Selector10~0_combout\ & (\serial_uart|Selector4~2_combout\ 
-- & ((\serial_uart|rx_byte_int\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector10~0_combout\,
	datab => \serial_uart|Selector4~2_combout\,
	datac => \serial_uart|rx_byte_int\(5),
	datad => \serial_uart|rx_byte_int\(6),
	combout => \serial_uart|Selector6~0_combout\);

-- Location: LCFF_X30_Y10_N23
\serial_uart|rx_byte_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(5));

-- Location: LCCOMB_X30_Y10_N20
\serial_uart|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector7~0_combout\ = (\serial_uart|Selector10~0_combout\ & ((\serial_uart|rx_byte_int\(4)) # ((\serial_uart|Selector4~2_combout\ & \serial_uart|rx_byte_int\(5))))) # (!\serial_uart|Selector10~0_combout\ & (\serial_uart|Selector4~2_combout\ 
-- & ((\serial_uart|rx_byte_int\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector10~0_combout\,
	datab => \serial_uart|Selector4~2_combout\,
	datac => \serial_uart|rx_byte_int\(4),
	datad => \serial_uart|rx_byte_int\(5),
	combout => \serial_uart|Selector7~0_combout\);

-- Location: LCFF_X30_Y10_N21
\serial_uart|rx_byte_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(4));

-- Location: LCCOMB_X30_Y10_N4
\serial_uart|received_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~6_combout\ = (\serial_uart|reset_2r~regout\ & \serial_uart|rx_byte_int\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|reset_2r~regout\,
	datac => \serial_uart|rx_byte_int\(4),
	combout => \serial_uart|received_data~6_combout\);

-- Location: LCFF_X30_Y10_N5
\serial_uart|received_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|received_data~6_combout\,
	ena => \serial_uart|received_data[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(4));

-- Location: LCCOMB_X30_Y10_N18
\serial_uart|received_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~7_combout\ = (\serial_uart|rx_byte_int\(5) & \serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_byte_int\(5),
	datac => \serial_uart|reset_2r~regout\,
	combout => \serial_uart|received_data~7_combout\);

-- Location: LCFF_X30_Y10_N19
\serial_uart|received_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|received_data~7_combout\,
	ena => \serial_uart|received_data[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(5));

-- Location: LCCOMB_X30_Y10_N8
\serial_uart|received_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~8_combout\ = (\serial_uart|rx_byte_int\(6) & \serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_byte_int\(6),
	datac => \serial_uart|reset_2r~regout\,
	combout => \serial_uart|received_data~8_combout\);

-- Location: LCFF_X30_Y10_N9
\serial_uart|received_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|received_data~8_combout\,
	ena => \serial_uart|received_data[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(6));

-- Location: LCCOMB_X29_Y10_N2
\serial_uart|received_data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~9_combout\ = (\serial_uart|rx_2r~regout\ & \serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_2r~regout\,
	datad => \serial_uart|reset_2r~regout\,
	combout => \serial_uart|received_data~9_combout\);

-- Location: LCFF_X29_Y10_N3
\serial_uart|received_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|received_data~9_combout\,
	ena => \serial_uart|received_data[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(7));

-- Location: M4K_X26_Y10
\display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFC800F0089196093CC07EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "lab5.top_level0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_ascii_number:display_ascii_number|altsyncram:Mux6_rtl_0|altsyncram_1301:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 7,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 7,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 7,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk_50~clkctrl_outclk\,
	ena0 => \serial_uart|received_data_valid~regout\,
	portaaddr => \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X60_Y12_N8
\hearbeat_led|counter[0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[0]~25_combout\ = \hearbeat_led|counter\(0) $ (VCC)
-- \hearbeat_led|counter[0]~26\ = CARRY(\hearbeat_led|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hearbeat_led|counter\(0),
	datad => VCC,
	combout => \hearbeat_led|counter[0]~25_combout\,
	cout => \hearbeat_led|counter[0]~26\);

-- Location: LCFF_X60_Y12_N9
\hearbeat_led|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[0]~25_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(0));

-- Location: LCCOMB_X60_Y12_N14
\hearbeat_led|counter[3]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[3]~31_combout\ = (\hearbeat_led|counter\(3) & (!\hearbeat_led|counter[2]~30\)) # (!\hearbeat_led|counter\(3) & ((\hearbeat_led|counter[2]~30\) # (GND)))
-- \hearbeat_led|counter[3]~32\ = CARRY((!\hearbeat_led|counter[2]~30\) # (!\hearbeat_led|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hearbeat_led|counter\(3),
	datad => VCC,
	cin => \hearbeat_led|counter[2]~30\,
	combout => \hearbeat_led|counter[3]~31_combout\,
	cout => \hearbeat_led|counter[3]~32\);

-- Location: LCFF_X60_Y12_N15
\hearbeat_led|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[3]~31_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(3));

-- Location: LCCOMB_X60_Y12_N18
\hearbeat_led|counter[5]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[5]~35_combout\ = (\hearbeat_led|counter\(5) & (!\hearbeat_led|counter[4]~34\)) # (!\hearbeat_led|counter\(5) & ((\hearbeat_led|counter[4]~34\) # (GND)))
-- \hearbeat_led|counter[5]~36\ = CARRY((!\hearbeat_led|counter[4]~34\) # (!\hearbeat_led|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hearbeat_led|counter\(5),
	datad => VCC,
	cin => \hearbeat_led|counter[4]~34\,
	combout => \hearbeat_led|counter[5]~35_combout\,
	cout => \hearbeat_led|counter[5]~36\);

-- Location: LCFF_X60_Y12_N19
\hearbeat_led|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[5]~35_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(5));

-- Location: LCCOMB_X60_Y12_N20
\hearbeat_led|counter[6]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[6]~37_combout\ = (\hearbeat_led|counter\(6) & (\hearbeat_led|counter[5]~36\ $ (GND))) # (!\hearbeat_led|counter\(6) & (!\hearbeat_led|counter[5]~36\ & VCC))
-- \hearbeat_led|counter[6]~38\ = CARRY((\hearbeat_led|counter\(6) & !\hearbeat_led|counter[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hearbeat_led|counter\(6),
	datad => VCC,
	cin => \hearbeat_led|counter[5]~36\,
	combout => \hearbeat_led|counter[6]~37_combout\,
	cout => \hearbeat_led|counter[6]~38\);

-- Location: LCCOMB_X60_Y12_N22
\hearbeat_led|counter[7]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[7]~39_combout\ = (\hearbeat_led|counter\(7) & (!\hearbeat_led|counter[6]~38\)) # (!\hearbeat_led|counter\(7) & ((\hearbeat_led|counter[6]~38\) # (GND)))
-- \hearbeat_led|counter[7]~40\ = CARRY((!\hearbeat_led|counter[6]~38\) # (!\hearbeat_led|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hearbeat_led|counter\(7),
	datad => VCC,
	cin => \hearbeat_led|counter[6]~38\,
	combout => \hearbeat_led|counter[7]~39_combout\,
	cout => \hearbeat_led|counter[7]~40\);

-- Location: LCFF_X60_Y12_N23
\hearbeat_led|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[7]~39_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(7));

-- Location: LCCOMB_X60_Y12_N24
\hearbeat_led|counter[8]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[8]~41_combout\ = (\hearbeat_led|counter\(8) & (\hearbeat_led|counter[7]~40\ $ (GND))) # (!\hearbeat_led|counter\(8) & (!\hearbeat_led|counter[7]~40\ & VCC))
-- \hearbeat_led|counter[8]~42\ = CARRY((\hearbeat_led|counter\(8) & !\hearbeat_led|counter[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hearbeat_led|counter\(8),
	datad => VCC,
	cin => \hearbeat_led|counter[7]~40\,
	combout => \hearbeat_led|counter[8]~41_combout\,
	cout => \hearbeat_led|counter[8]~42\);

-- Location: LCCOMB_X60_Y12_N26
\hearbeat_led|counter[9]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[9]~43_combout\ = (\hearbeat_led|counter\(9) & (!\hearbeat_led|counter[8]~42\)) # (!\hearbeat_led|counter\(9) & ((\hearbeat_led|counter[8]~42\) # (GND)))
-- \hearbeat_led|counter[9]~44\ = CARRY((!\hearbeat_led|counter[8]~42\) # (!\hearbeat_led|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hearbeat_led|counter\(9),
	datad => VCC,
	cin => \hearbeat_led|counter[8]~42\,
	combout => \hearbeat_led|counter[9]~43_combout\,
	cout => \hearbeat_led|counter[9]~44\);

-- Location: LCFF_X60_Y12_N27
\hearbeat_led|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[9]~43_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(9));

-- Location: LCCOMB_X60_Y12_N28
\hearbeat_led|counter[10]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[10]~45_combout\ = (\hearbeat_led|counter\(10) & (\hearbeat_led|counter[9]~44\ $ (GND))) # (!\hearbeat_led|counter\(10) & (!\hearbeat_led|counter[9]~44\ & VCC))
-- \hearbeat_led|counter[10]~46\ = CARRY((\hearbeat_led|counter\(10) & !\hearbeat_led|counter[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hearbeat_led|counter\(10),
	datad => VCC,
	cin => \hearbeat_led|counter[9]~44\,
	combout => \hearbeat_led|counter[10]~45_combout\,
	cout => \hearbeat_led|counter[10]~46\);

-- Location: LCFF_X60_Y12_N29
\hearbeat_led|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[10]~45_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(10));

-- Location: LCCOMB_X60_Y12_N30
\hearbeat_led|counter[11]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[11]~47_combout\ = (\hearbeat_led|counter\(11) & (!\hearbeat_led|counter[10]~46\)) # (!\hearbeat_led|counter\(11) & ((\hearbeat_led|counter[10]~46\) # (GND)))
-- \hearbeat_led|counter[11]~48\ = CARRY((!\hearbeat_led|counter[10]~46\) # (!\hearbeat_led|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hearbeat_led|counter\(11),
	datad => VCC,
	cin => \hearbeat_led|counter[10]~46\,
	combout => \hearbeat_led|counter[11]~47_combout\,
	cout => \hearbeat_led|counter[11]~48\);

-- Location: LCFF_X60_Y12_N31
\hearbeat_led|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[11]~47_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(11));

-- Location: LCCOMB_X60_Y11_N0
\hearbeat_led|counter[12]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[12]~49_combout\ = (\hearbeat_led|counter\(12) & (\hearbeat_led|counter[11]~48\ $ (GND))) # (!\hearbeat_led|counter\(12) & (!\hearbeat_led|counter[11]~48\ & VCC))
-- \hearbeat_led|counter[12]~50\ = CARRY((\hearbeat_led|counter\(12) & !\hearbeat_led|counter[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hearbeat_led|counter\(12),
	datad => VCC,
	cin => \hearbeat_led|counter[11]~48\,
	combout => \hearbeat_led|counter[12]~49_combout\,
	cout => \hearbeat_led|counter[12]~50\);

-- Location: LCFF_X61_Y12_N17
\hearbeat_led|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => \hearbeat_led|counter[12]~49_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(12));

-- Location: LCCOMB_X60_Y11_N2
\hearbeat_led|counter[13]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[13]~51_combout\ = (\hearbeat_led|counter\(13) & (!\hearbeat_led|counter[12]~50\)) # (!\hearbeat_led|counter\(13) & ((\hearbeat_led|counter[12]~50\) # (GND)))
-- \hearbeat_led|counter[13]~52\ = CARRY((!\hearbeat_led|counter[12]~50\) # (!\hearbeat_led|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hearbeat_led|counter\(13),
	datad => VCC,
	cin => \hearbeat_led|counter[12]~50\,
	combout => \hearbeat_led|counter[13]~51_combout\,
	cout => \hearbeat_led|counter[13]~52\);

-- Location: LCFF_X61_Y12_N19
\hearbeat_led|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => \hearbeat_led|counter[13]~51_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(13));

-- Location: LCCOMB_X60_Y11_N4
\hearbeat_led|counter[14]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[14]~53_combout\ = (\hearbeat_led|counter\(14) & (\hearbeat_led|counter[13]~52\ $ (GND))) # (!\hearbeat_led|counter\(14) & (!\hearbeat_led|counter[13]~52\ & VCC))
-- \hearbeat_led|counter[14]~54\ = CARRY((\hearbeat_led|counter\(14) & !\hearbeat_led|counter[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hearbeat_led|counter\(14),
	datad => VCC,
	cin => \hearbeat_led|counter[13]~52\,
	combout => \hearbeat_led|counter[14]~53_combout\,
	cout => \hearbeat_led|counter[14]~54\);

-- Location: LCFF_X60_Y11_N5
\hearbeat_led|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[14]~53_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(14));

-- Location: LCCOMB_X60_Y11_N8
\hearbeat_led|counter[16]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[16]~57_combout\ = (\hearbeat_led|counter\(16) & (\hearbeat_led|counter[15]~56\ $ (GND))) # (!\hearbeat_led|counter\(16) & (!\hearbeat_led|counter[15]~56\ & VCC))
-- \hearbeat_led|counter[16]~58\ = CARRY((\hearbeat_led|counter\(16) & !\hearbeat_led|counter[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hearbeat_led|counter\(16),
	datad => VCC,
	cin => \hearbeat_led|counter[15]~56\,
	combout => \hearbeat_led|counter[16]~57_combout\,
	cout => \hearbeat_led|counter[16]~58\);

-- Location: LCCOMB_X60_Y11_N10
\hearbeat_led|counter[17]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[17]~59_combout\ = (\hearbeat_led|counter\(17) & (!\hearbeat_led|counter[16]~58\)) # (!\hearbeat_led|counter\(17) & ((\hearbeat_led|counter[16]~58\) # (GND)))
-- \hearbeat_led|counter[17]~60\ = CARRY((!\hearbeat_led|counter[16]~58\) # (!\hearbeat_led|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hearbeat_led|counter\(17),
	datad => VCC,
	cin => \hearbeat_led|counter[16]~58\,
	combout => \hearbeat_led|counter[17]~59_combout\,
	cout => \hearbeat_led|counter[17]~60\);

-- Location: LCCOMB_X60_Y11_N12
\hearbeat_led|counter[18]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[18]~61_combout\ = (\hearbeat_led|counter\(18) & (\hearbeat_led|counter[17]~60\ $ (GND))) # (!\hearbeat_led|counter\(18) & (!\hearbeat_led|counter[17]~60\ & VCC))
-- \hearbeat_led|counter[18]~62\ = CARRY((\hearbeat_led|counter\(18) & !\hearbeat_led|counter[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hearbeat_led|counter\(18),
	datad => VCC,
	cin => \hearbeat_led|counter[17]~60\,
	combout => \hearbeat_led|counter[18]~61_combout\,
	cout => \hearbeat_led|counter[18]~62\);

-- Location: LCFF_X60_Y11_N13
\hearbeat_led|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[18]~61_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(18));

-- Location: LCCOMB_X60_Y11_N14
\hearbeat_led|counter[19]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[19]~63_combout\ = (\hearbeat_led|counter\(19) & (!\hearbeat_led|counter[18]~62\)) # (!\hearbeat_led|counter\(19) & ((\hearbeat_led|counter[18]~62\) # (GND)))
-- \hearbeat_led|counter[19]~64\ = CARRY((!\hearbeat_led|counter[18]~62\) # (!\hearbeat_led|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hearbeat_led|counter\(19),
	datad => VCC,
	cin => \hearbeat_led|counter[18]~62\,
	combout => \hearbeat_led|counter[19]~63_combout\,
	cout => \hearbeat_led|counter[19]~64\);

-- Location: LCCOMB_X60_Y11_N16
\hearbeat_led|counter[20]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[20]~65_combout\ = (\hearbeat_led|counter\(20) & (\hearbeat_led|counter[19]~64\ $ (GND))) # (!\hearbeat_led|counter\(20) & (!\hearbeat_led|counter[19]~64\ & VCC))
-- \hearbeat_led|counter[20]~66\ = CARRY((\hearbeat_led|counter\(20) & !\hearbeat_led|counter[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hearbeat_led|counter\(20),
	datad => VCC,
	cin => \hearbeat_led|counter[19]~64\,
	combout => \hearbeat_led|counter[20]~65_combout\,
	cout => \hearbeat_led|counter[20]~66\);

-- Location: LCCOMB_X60_Y11_N18
\hearbeat_led|counter[21]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|counter[21]~67_combout\ = (\hearbeat_led|counter\(21) & (!\hearbeat_led|counter[20]~66\)) # (!\hearbeat_led|counter\(21) & ((\hearbeat_led|counter[20]~66\) # (GND)))
-- \hearbeat_led|counter[21]~68\ = CARRY((!\hearbeat_led|counter[20]~66\) # (!\hearbeat_led|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hearbeat_led|counter\(21),
	datad => VCC,
	cin => \hearbeat_led|counter[20]~66\,
	combout => \hearbeat_led|counter[21]~67_combout\,
	cout => \hearbeat_led|counter[21]~68\);

-- Location: LCFF_X60_Y11_N19
\hearbeat_led|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[21]~67_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(21));

-- Location: LCFF_X60_Y11_N23
\hearbeat_led|counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[23]~71_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(23));

-- Location: LCFF_X60_Y12_N25
\hearbeat_led|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[8]~41_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(8));

-- Location: LCFF_X60_Y12_N21
\hearbeat_led|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[6]~37_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(6));

-- Location: LCCOMB_X59_Y12_N28
\hearbeat_led|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|LessThan0~2_combout\ = (!\hearbeat_led|counter\(9) & (!\hearbeat_led|counter\(8) & (!\hearbeat_led|counter\(7) & !\hearbeat_led|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hearbeat_led|counter\(9),
	datab => \hearbeat_led|counter\(8),
	datac => \hearbeat_led|counter\(7),
	datad => \hearbeat_led|counter\(6),
	combout => \hearbeat_led|LessThan0~2_combout\);

-- Location: LCFF_X60_Y11_N11
\hearbeat_led|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[17]~59_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(17));

-- Location: LCCOMB_X60_Y11_N30
\hearbeat_led|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|LessThan0~0_combout\ = (!\hearbeat_led|counter\(15) & (!\hearbeat_led|counter\(23) & !\hearbeat_led|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hearbeat_led|counter\(15),
	datab => \hearbeat_led|counter\(23),
	datad => \hearbeat_led|counter\(17),
	combout => \hearbeat_led|LessThan0~0_combout\);

-- Location: LCCOMB_X60_Y12_N2
\hearbeat_led|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|LessThan0~1_combout\ = (((!\hearbeat_led|counter\(11)) # (!\hearbeat_led|counter\(14))) # (!\hearbeat_led|counter\(13))) # (!\hearbeat_led|counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hearbeat_led|counter\(12),
	datab => \hearbeat_led|counter\(13),
	datac => \hearbeat_led|counter\(14),
	datad => \hearbeat_led|counter\(11),
	combout => \hearbeat_led|LessThan0~1_combout\);

-- Location: LCCOMB_X60_Y12_N4
\hearbeat_led|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|LessThan0~3_combout\ = (\hearbeat_led|LessThan0~0_combout\ & ((\hearbeat_led|LessThan0~1_combout\) # ((!\hearbeat_led|counter\(10) & \hearbeat_led|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hearbeat_led|counter\(10),
	datab => \hearbeat_led|LessThan0~2_combout\,
	datac => \hearbeat_led|LessThan0~0_combout\,
	datad => \hearbeat_led|LessThan0~1_combout\,
	combout => \hearbeat_led|LessThan0~3_combout\);

-- Location: LCFF_X60_Y11_N17
\hearbeat_led|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[20]~65_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(20));

-- Location: LCFF_X60_Y11_N15
\hearbeat_led|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[19]~63_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(19));

-- Location: LCFF_X60_Y11_N9
\hearbeat_led|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|counter[16]~57_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \hearbeat_led|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|counter\(16));

-- Location: LCCOMB_X60_Y11_N28
\hearbeat_led|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|LessThan0~4_combout\ = (((!\hearbeat_led|counter\(17) & !\hearbeat_led|counter\(16))) # (!\hearbeat_led|counter\(18))) # (!\hearbeat_led|counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hearbeat_led|counter\(17),
	datab => \hearbeat_led|counter\(19),
	datac => \hearbeat_led|counter\(16),
	datad => \hearbeat_led|counter\(18),
	combout => \hearbeat_led|LessThan0~4_combout\);

-- Location: LCCOMB_X60_Y12_N6
\hearbeat_led|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|LessThan0~5_combout\ = (((\hearbeat_led|LessThan0~4_combout\) # (!\hearbeat_led|counter\(21))) # (!\hearbeat_led|counter\(20))) # (!\hearbeat_led|counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hearbeat_led|counter\(22),
	datab => \hearbeat_led|counter\(20),
	datac => \hearbeat_led|counter\(21),
	datad => \hearbeat_led|LessThan0~4_combout\,
	combout => \hearbeat_led|LessThan0~5_combout\);

-- Location: LCCOMB_X60_Y12_N0
\hearbeat_led|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|LessThan0~6_combout\ = (\hearbeat_led|counter\(24) & (!\hearbeat_led|LessThan0~3_combout\ & ((\hearbeat_led|counter\(23)) # (!\hearbeat_led|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hearbeat_led|counter\(24),
	datab => \hearbeat_led|counter\(23),
	datac => \hearbeat_led|LessThan0~3_combout\,
	datad => \hearbeat_led|LessThan0~5_combout\,
	combout => \hearbeat_led|LessThan0~6_combout\);

-- Location: LCFF_X60_Y12_N1
\hearbeat_led|tick\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|LessThan0~6_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|tick~regout\);

-- Location: LCCOMB_X61_Y12_N4
\hearbeat_led|led~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hearbeat_led|led~0_combout\ = \hearbeat_led|led~regout\ $ (\hearbeat_led|tick~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hearbeat_led|led~regout\,
	datad => \hearbeat_led|tick~regout\,
	combout => \hearbeat_led|led~0_combout\);

-- Location: LCFF_X61_Y12_N5
\hearbeat_led|led\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \hearbeat_led|led~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hearbeat_led|led~regout\);

-- Location: LCCOMB_X29_Y10_N4
\serial_uart|received_error~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_error~0_combout\ = (\serial_uart|rx_state.s_stop_bit~regout\ & ((\serial_uart|rx_bit_cnt_wrap~regout\ & ((!\serial_uart|rx_2r~regout\))) # (!\serial_uart|rx_bit_cnt_wrap~regout\ & (\serial_uart|received_error~regout\)))) # 
-- (!\serial_uart|rx_state.s_stop_bit~regout\ & (((\serial_uart|received_error~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_state.s_stop_bit~regout\,
	datab => \serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \serial_uart|received_error~regout\,
	datad => \serial_uart|rx_2r~regout\,
	combout => \serial_uart|received_error~0_combout\);

-- Location: LCFF_X29_Y10_N5
\serial_uart|received_error\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \serial_uart|received_error~0_combout\,
	sclr => \serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_error~regout\);

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\uart_txd~I\ : cycloneii_io
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
	datain => \serial_uart|tx~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_uart_txd);

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
	datain => \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\,
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
	datain => \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a1\,
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
	datain => \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a2\,
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
	datain => \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a3\,
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
	datain => \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a4\,
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
	datain => \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a5\,
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
	datain => \display_ascii_number|Mux6_rtl_0|auto_generated|ram_block1a6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(6));

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
	datain => \hearbeat_led|led~regout\,
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
	datain => \serial_uart|received_error~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(1));
END structure;


