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

-- DATE "09/03/2023 21:40:34"

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

ENTITY 	pwm_module IS
    PORT (
	clock_50 : IN std_logic;
	key_n : IN std_logic_vector(3 DOWNTO 0);
	fpga_in_rx : IN std_logic;
	fpga_out_tx : OUT std_logic;
	hex0_n : OUT std_logic_vector(6 DOWNTO 0);
	hex1_n : OUT std_logic_vector(6 DOWNTO 0);
	hex2_n : OUT std_logic_vector(6 DOWNTO 0);
	ledg : OUT std_logic_vector(7 DOWNTO 0);
	ledr : OUT std_logic_vector(9 DOWNTO 0)
	);
END pwm_module;

-- Design Ports Information
-- fpga_out_tx	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- clock_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fpga_in_rx	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF pwm_module IS
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
SIGNAL ww_fpga_in_rx : std_logic;
SIGNAL ww_fpga_out_tx : std_logic;
SIGNAL ww_hex0_n : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1_n : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2_n : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ledg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(9 DOWNTO 0);
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|_clk0\ : std_logic;
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|_clk2\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \pwm_ctrl|counter[3]~22_combout\ : std_logic;
SIGNAL \pwm_ctrl|counter[8]~32_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~4_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~11\ : std_logic;
SIGNAL \pwm_ctrl|Add1~13\ : std_logic;
SIGNAL \pwm_ctrl|Add1~12_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~15\ : std_logic;
SIGNAL \pwm_ctrl|Add1~14_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~16_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[2]~9_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[1]~12_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[4]~18_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[3]~16_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[5]~20_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[7]~25\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[8]~26_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[1]~21_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[3]~25_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[5]~29_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[12]~44_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[17]~54_combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|romout[1][11]~0_combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|romout[1][10]~combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|romout[1][9]~combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|romout[0][12]~1_combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|romout[0][11]~2_combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|romout[1][6]~3_combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|romout[0][10]~4_combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|romout[1][5]~combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|romout[0][9]~5_combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|romout[1][4]~combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|romout[0][6]~7_combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|romout[0][5]~combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|romout[0][4]~8_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|LessThan0~0_combout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan0~0_combout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan0~1_combout\ : std_logic;
SIGNAL \serial_ctrl|serial_up~regout\ : std_logic;
SIGNAL \pwm_ctrl|dc_count[5]~1_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~26_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~31_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_en~regout\ : std_logic;
SIGNAL \serial_uart|Selector4~2_combout\ : std_logic;
SIGNAL \serial_uart|Add1~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux50~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Selector5~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux44~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Selector5~1_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Selector5~2_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[0]~6_combout\ : std_logic;
SIGNAL \key_ctrl|p_key_ctrl~1_combout\ : std_logic;
SIGNAL \serial_ctrl|serial_up~2_combout\ : std_logic;
SIGNAL \serial_uart|rx_state.s_idle~regout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_half~regout\ : std_logic;
SIGNAL \serial_uart|Selector1~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector0~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector2~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_stack1_2~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|update~regout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_stack1_0~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_stack1_0~1_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_stack1_1~2_combout\ : std_logic;
SIGNAL \serial_uart|received_data~4_combout\ : std_logic;
SIGNAL \serial_uart|rx_state~10_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_half~0_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_half~1_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Selector3~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Selector3~1_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Selector3~2_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|update~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|update~1_combout\ : std_logic;
SIGNAL \serial_uart|Selector20~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector19~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux46~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Selector1~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Selector1~1_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Selector1~2_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~35_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Selector0~15_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Selector0~3_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_stack2_0[2]~feeder_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_stack2_0[0]~feeder_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_stack2_1[0]~feeder_combout\ : std_logic;
SIGNAL \clock_50~combout\ : std_logic;
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|_clk1\ : std_logic;
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\ : std_logic;
SIGNAL \dc_disp_ctrl|transmission_started~1_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[1]~7_combout\ : std_logic;
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|_locked\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[1]~8\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[2]~10\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[3]~11_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[3]~12\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[4]~14\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[5]~15_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[4]~13_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[5]~16\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[6]~17_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_out~0_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_out~regout\ : std_logic;
SIGNAL \dc_disp_ctrl|current_transmit_state~17_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Selector7~0_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[0]~9_combout\ : std_logic;
SIGNAL \serial_uart|reset_r~0_combout\ : std_logic;
SIGNAL \serial_uart|reset_r~regout\ : std_logic;
SIGNAL \serial_uart|reset_2r~regout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt_en~regout\ : std_logic;
SIGNAL \serial_uart|LessThan2~0_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[6]~22_combout\ : std_logic;
SIGNAL \serial_uart|LessThan2~1_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[8]~11_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[0]~10\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[1]~12_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[1]~13\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[2]~14_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[2]~15\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[3]~17\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[4]~18_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[4]~19\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[5]~21\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[6]~23\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt[7]~24_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_cnt_wrap~regout\ : std_logic;
SIGNAL \serial_uart|tx_byte_saved[1]~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector27~0_combout\ : std_logic;
SIGNAL \serial_uart|tx_state.s_start_bit~regout\ : std_logic;
SIGNAL \serial_uart|Selector33~0_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_no~1_combout\ : std_logic;
SIGNAL \serial_uart|tx_bit_no[1]~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector32~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector28~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector28~1_combout\ : std_logic;
SIGNAL \serial_uart|tx_state.s_tx_data~regout\ : std_logic;
SIGNAL \serial_uart|Selector31~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector29~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector29~1_combout\ : std_logic;
SIGNAL \serial_uart|tx_state.s_stop_bit~regout\ : std_logic;
SIGNAL \serial_uart|Selector26~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector30~0_combout\ : std_logic;
SIGNAL \serial_uart|tx_state~7_combout\ : std_logic;
SIGNAL \serial_uart|tx_state.s_idle~regout\ : std_logic;
SIGNAL \serial_uart|Selector25~0_combout\ : std_logic;
SIGNAL \serial_uart|transmit_ready_int~regout\ : std_logic;
SIGNAL \dc_disp_ctrl|p_dc_disp_ctrl~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|current_transmit_state.s_first_byte~regout\ : std_logic;
SIGNAL \dc_disp_ctrl|current_transmit_state~16_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|current_transmit_state.s_second_byte~regout\ : std_logic;
SIGNAL \dc_disp_ctrl|current_transmit_state.s_third_byte~regout\ : std_logic;
SIGNAL \dc_disp_ctrl|current_transmit_state.s_fourth_byte~regout\ : std_logic;
SIGNAL \dc_disp_ctrl|current_transmit_state.s_fifth_byte~regout\ : std_logic;
SIGNAL \dc_disp_ctrl|Selector6~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|current_transmit_state.s_idle~regout\ : std_logic;
SIGNAL \dc_disp_ctrl|transmission_finished~regout\ : std_logic;
SIGNAL \dc_disp_ctrl|transmission_started~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|transmission_started~regout\ : std_logic;
SIGNAL \dc_disp_ctrl|valid_transmit~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|valid_transmit~regout\ : std_logic;
SIGNAL \dc_disp_ctrl|reset_transmission_active~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|reset_transmission_active~regout\ : std_logic;
SIGNAL \dc_disp_ctrl|stack~0_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[0]~9_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[0]~10\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[1]~13\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[2]~15\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[3]~16_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[3]~17\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[4]~19\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[5]~20_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[5]~21\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[6]~23\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[7]~24_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[7]~25\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[8]~26_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[2]~11_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[2]~14_combout\ : std_logic;
SIGNAL \serial_uart|LessThan0~0_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt[6]~22_combout\ : std_logic;
SIGNAL \serial_uart|LessThan0~1_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_cnt_wrap~regout\ : std_logic;
SIGNAL \serial_uart|Selector13~3_combout\ : std_logic;
SIGNAL \serial_uart|Selector13~2_combout\ : std_logic;
SIGNAL \serial_uart|Selector12~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector12~1_combout\ : std_logic;
SIGNAL \serial_uart|rx_bit_no~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector14~0_combout\ : std_logic;
SIGNAL \serial_uart|Equal0~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector2~1_combout\ : std_logic;
SIGNAL \serial_uart|rx_state.s_rx_data~regout\ : std_logic;
SIGNAL \serial_uart|Selector4~3_combout\ : std_logic;
SIGNAL \serial_uart|rx_state.s_stop_bit~regout\ : std_logic;
SIGNAL \fpga_in_rx~combout\ : std_logic;
SIGNAL \serial_uart|rx_r~feeder_combout\ : std_logic;
SIGNAL \serial_uart|rx_r~regout\ : std_logic;
SIGNAL \serial_uart|rx_2r~feeder_combout\ : std_logic;
SIGNAL \serial_uart|rx_2r~regout\ : std_logic;
SIGNAL \serial_uart|received_data_valid~0_combout\ : std_logic;
SIGNAL \serial_uart|received_data_valid~regout\ : std_logic;
SIGNAL \serial_uart|Selector10~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector5~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector6~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector7~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector8~0_combout\ : std_logic;
SIGNAL \serial_uart|received_data~3_combout\ : std_logic;
SIGNAL \serial_uart|received_data[1]~10_combout\ : std_logic;
SIGNAL \serial_uart|Selector9~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector10~1_combout\ : std_logic;
SIGNAL \serial_uart|received_data~2_combout\ : std_logic;
SIGNAL \serial_ctrl|serial_up~0_combout\ : std_logic;
SIGNAL \serial_uart|received_data~7_combout\ : std_logic;
SIGNAL \serial_uart|received_data~5_combout\ : std_logic;
SIGNAL \serial_uart|received_data~6_combout\ : std_logic;
SIGNAL \serial_ctrl|serial_off~0_combout\ : std_logic;
SIGNAL \serial_ctrl|serial_on~0_combout\ : std_logic;
SIGNAL \serial_ctrl|serial_on~regout\ : std_logic;
SIGNAL \key_ctrl|key_r[1]~feeder_combout\ : std_logic;
SIGNAL \key_ctrl|key_r[2]~feeder_combout\ : std_logic;
SIGNAL \key_ctrl|on_key~1_combout\ : std_logic;
SIGNAL \key_ctrl|key_r[0]~feeder_combout\ : std_logic;
SIGNAL \key_ctrl|key_2r[0]~feeder_combout\ : std_logic;
SIGNAL \key_ctrl|on_key~2_combout\ : std_logic;
SIGNAL \key_ctrl|on_key~regout\ : std_logic;
SIGNAL \pwm_ctrl|p_pwm_ctrl~3_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[0]~19_combout\ : std_logic;
SIGNAL \key_ctrl|p_key_ctrl~0_combout\ : std_logic;
SIGNAL \key_ctrl|is_held_down~regout\ : std_logic;
SIGNAL \key_ctrl|p_key_ctrl~2_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[14]~48_combout\ : std_logic;
SIGNAL \key_ctrl|p_key_ctrl~3_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[15]~31_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[0]~20\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[1]~22\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[2]~23_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[2]~24\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[3]~26\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[4]~27_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[4]~28\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[5]~30\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[6]~32_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[6]~33\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[7]~34_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[7]~35\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[8]~36_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[8]~37\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[9]~38_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[9]~39\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[10]~40_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[10]~41\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[11]~42_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[11]~43\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[12]~45\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[13]~46_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[13]~47\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[14]~49\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[15]~51\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[16]~52_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[16]~53\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[17]~55\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[18]~56_combout\ : std_logic;
SIGNAL \key_ctrl|pulse_counter[15]~50_combout\ : std_logic;
SIGNAL \key_ctrl|p_key_ctrl~4_combout\ : std_logic;
SIGNAL \key_ctrl|on_key~0_combout\ : std_logic;
SIGNAL \key_ctrl|down_key~2_combout\ : std_logic;
SIGNAL \key_ctrl|down_key~regout\ : std_logic;
SIGNAL \serial_uart|Selector11~0_combout\ : std_logic;
SIGNAL \serial_uart|received_data~9_combout\ : std_logic;
SIGNAL \serial_uart|received_data~8_combout\ : std_logic;
SIGNAL \serial_ctrl|serial_up~1_combout\ : std_logic;
SIGNAL \serial_ctrl|serial_down~0_combout\ : std_logic;
SIGNAL \serial_ctrl|serial_down~regout\ : std_logic;
SIGNAL \pwm_ctrl|p_pwm_ctrl~2_combout\ : std_logic;
SIGNAL \serial_ctrl|serial_off~1_combout\ : std_logic;
SIGNAL \serial_ctrl|serial_off~regout\ : std_logic;
SIGNAL \key_ctrl|off_key~2_combout\ : std_logic;
SIGNAL \key_ctrl|off_key~regout\ : std_logic;
SIGNAL \pwm_ctrl|p_pwm_ctrl~1_combout\ : std_logic;
SIGNAL \pwm_ctrl|p_pwm_ctrl~4_combout\ : std_logic;
SIGNAL \pwm_ctrl|current_dc_update~regout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|addr_valid~feeder_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|addr_valid~regout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\ : std_logic;
SIGNAL \dc_disp_ctrl|stack~regout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add2~0_combout\ : std_logic;
SIGNAL \key_ctrl|up_key~2_combout\ : std_logic;
SIGNAL \key_ctrl|up_key~regout\ : std_logic;
SIGNAL \pwm_ctrl|current_dc_state~0_combout\ : std_logic;
SIGNAL \pwm_ctrl|current_dc_state~1_combout\ : std_logic;
SIGNAL \pwm_ctrl|current_dc_state~regout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~32_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~33_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add2~1\ : std_logic;
SIGNAL \pwm_ctrl|Add2~2_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~5\ : std_logic;
SIGNAL \pwm_ctrl|Add1~6_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~29_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~30_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add2~3\ : std_logic;
SIGNAL \pwm_ctrl|Add2~4_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~7\ : std_logic;
SIGNAL \pwm_ctrl|Add1~8_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~27_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~28_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add2~5\ : std_logic;
SIGNAL \pwm_ctrl|Add2~6_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~9\ : std_logic;
SIGNAL \pwm_ctrl|Add1~10_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~24_combout\ : std_logic;
SIGNAL \pwm_ctrl|prev_dc[6]~2_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add2~7\ : std_logic;
SIGNAL \pwm_ctrl|Add2~8_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~20_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~21_combout\ : std_logic;
SIGNAL \pwm_ctrl|prev_dc[5]~5_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add2~9\ : std_logic;
SIGNAL \pwm_ctrl|Add2~10_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~22_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~23_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add2~11\ : std_logic;
SIGNAL \pwm_ctrl|Add2~12_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~18_combout\ : std_logic;
SIGNAL \pwm_ctrl|prev_dc[6]~4_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~19_combout\ : std_logic;
SIGNAL \pwm_ctrl|dc_count[5]~0_combout\ : std_logic;
SIGNAL \pwm_ctrl|prev_dc[6]~3_combout\ : std_logic;
SIGNAL \pwm_ctrl|prev_dc[2]~6_combout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan3~0_combout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan3~1_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~34_combout\ : std_logic;
SIGNAL \pwm_ctrl|Add1~25_combout\ : std_logic;
SIGNAL \pwm_ctrl|dc_count[5]~4_combout\ : std_logic;
SIGNAL \pwm_ctrl|dc_count[5]~5_combout\ : std_logic;
SIGNAL \pwm_ctrl|dc_count[5]~2_combout\ : std_logic;
SIGNAL \pwm_ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \pwm_ctrl|dc_count[5]~3_combout\ : std_logic;
SIGNAL \pwm_ctrl|dc_count[5]~6_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|rom_addr~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|rom_addr~1_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|rom_addr~2_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|rom_addr~3_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|rom_addr~4_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|rom_addr~5_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|rom_addr~6_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_stack2_0[3]~feeder_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_stack2_2[0]~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_stack1_0~3_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_stack1_1[2]~1_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_stack2_1[3]~feeder_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_stack1_1~5_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Selector4~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Selector4~1_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_stack2_2[1]~feeder_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_stack1_2~1_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Selector4~2_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_stack1_1~4_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_stack1_1~3_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Selector2~1_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_stack1_0~2_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Selector2~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Selector2~2_combout\ : std_logic;
SIGNAL \serial_uart|Selector21~0_combout\ : std_logic;
SIGNAL \serial_uart|tx_byte_saved[1]~1_combout\ : std_logic;
SIGNAL \serial_uart|Selector22~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector23~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector24~0_combout\ : std_logic;
SIGNAL \serial_uart|Selector34~0_combout\ : std_logic;
SIGNAL \serial_uart|tx~regout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux11~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux10~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux9~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux8~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux7~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux6~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux5~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux23~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux22~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux21~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux20~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux19~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux18~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux17~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux30~0_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux30~1_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|hex2[3]~feeder_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|Mux30~2_combout\ : std_logic;
SIGNAL \dc_disp_ctrl|hex2[6]~feeder_combout\ : std_logic;
SIGNAL \pwm_ctrl|counter[0]~16_combout\ : std_logic;
SIGNAL \pwm_ctrl|counter[12]~40_combout\ : std_logic;
SIGNAL \pwm_ctrl|counter[10]~36_combout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan0~2_combout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan0~3_combout\ : std_logic;
SIGNAL \pwm_ctrl|counter[0]~17\ : std_logic;
SIGNAL \pwm_ctrl|counter[1]~18_combout\ : std_logic;
SIGNAL \pwm_ctrl|counter[1]~19\ : std_logic;
SIGNAL \pwm_ctrl|counter[2]~20_combout\ : std_logic;
SIGNAL \pwm_ctrl|counter[2]~21\ : std_logic;
SIGNAL \pwm_ctrl|counter[3]~23\ : std_logic;
SIGNAL \pwm_ctrl|counter[4]~24_combout\ : std_logic;
SIGNAL \pwm_ctrl|counter[4]~25\ : std_logic;
SIGNAL \pwm_ctrl|counter[5]~27\ : std_logic;
SIGNAL \pwm_ctrl|counter[6]~29\ : std_logic;
SIGNAL \pwm_ctrl|counter[7]~30_combout\ : std_logic;
SIGNAL \pwm_ctrl|counter[7]~31\ : std_logic;
SIGNAL \pwm_ctrl|counter[8]~33\ : std_logic;
SIGNAL \pwm_ctrl|counter[9]~34_combout\ : std_logic;
SIGNAL \pwm_ctrl|counter[9]~35\ : std_logic;
SIGNAL \pwm_ctrl|counter[10]~37\ : std_logic;
SIGNAL \pwm_ctrl|counter[11]~38_combout\ : std_logic;
SIGNAL \pwm_ctrl|counter[11]~39\ : std_logic;
SIGNAL \pwm_ctrl|counter[12]~41\ : std_logic;
SIGNAL \pwm_ctrl|counter[13]~42_combout\ : std_logic;
SIGNAL \pwm_ctrl|counter[13]~43\ : std_logic;
SIGNAL \pwm_ctrl|counter[14]~44_combout\ : std_logic;
SIGNAL \pwm_ctrl|counter[14]~45\ : std_logic;
SIGNAL \pwm_ctrl|counter[15]~46_combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|romout[0][7]~6_combout\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \pwm_ctrl|counter[6]~28_combout\ : std_logic;
SIGNAL \pwm_ctrl|counter[5]~26_combout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan1~1_cout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan1~3_cout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan1~5_cout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan1~7_cout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan1~9_cout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan1~11_cout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan1~13_cout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan1~15_cout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan1~17_cout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan1~19_cout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan1~21_cout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan1~23_cout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan1~25_cout\ : std_logic;
SIGNAL \pwm_ctrl|LessThan1~26_combout\ : std_logic;
SIGNAL \pwm_ctrl|Equal0~1_combout\ : std_logic;
SIGNAL \pwm_ctrl|p_pwm_ctrl~0_combout\ : std_logic;
SIGNAL \pwm_ctrl|ledg~regout\ : std_logic;
SIGNAL \serial_uart|received_error~0_combout\ : std_logic;
SIGNAL \serial_uart|received_error~regout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \key_n~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \serial_uart|rx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dc_disp_ctrl|bcd_stack1_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_ctrl|dc_count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dc_disp_ctrl|bcd_stack2_0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \serial_uart|rx_bit_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \serial_uart|tx_byte_saved\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \serial_uart|tx_bit_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dc_disp_ctrl|bcd_stack1_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_ctrl|prev_dc\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dc_disp_ctrl|hex0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dc_disp_ctrl|bcd_stack1_0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_ctrl|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \serial_uart|received_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dc_disp_ctrl|bcd_stack2_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dc_disp_ctrl|hex2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \key_ctrl|key_2r\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key_ctrl|key_r\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dc_disp_ctrl|hex1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \key_ctrl|pulse_counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \dc_disp_ctrl|bcd_stack2_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dc_disp_ctrl|data_transmit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \serial_uart|rx_byte_int\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dc_disp_ctrl|bcd_decode_rom|rom_addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \serial_uart|tx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dc_disp_ctrl|ALT_INV_current_transmit_state.s_idle~regout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\ : std_logic;
SIGNAL \dc_disp_ctrl|ALT_INV_hex2\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \dc_disp_ctrl|ALT_INV_hex1\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \dc_disp_ctrl|ALT_INV_hex0\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\ : std_logic;
SIGNAL \serial_uart|ALT_INV_tx_state.s_tx_data~regout\ : std_logic;

BEGIN

ww_clock_50 <= clock_50;
ww_key_n <= key_n;
ww_fpga_in_rx <= fpga_in_rx;
fpga_out_tx <= ww_fpga_out_tx;
hex0_n <= ww_hex0_n;
hex1_n <= ww_hex1_n;
hex2_n <= ww_hex2_n;
ledg <= ww_ledg;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\b_gen_pll:i_altera_pll|altpll_component|pll_INCLK_bus\ <= (gnd & \clock_50~combout\);

\b_gen_pll:i_altera_pll|altpll_component|_clk0\ <= \b_gen_pll:i_altera_pll|altpll_component|pll_CLK_bus\(0);
\b_gen_pll:i_altera_pll|altpll_component|_clk1\ <= \b_gen_pll:i_altera_pll|altpll_component|pll_CLK_bus\(1);
\b_gen_pll:i_altera_pll|altpll_component|_clk2\ <= \b_gen_pll:i_altera_pll|altpll_component|pll_CLK_bus\(2);

\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\dc_disp_ctrl|bcd_decode_rom|rom_addr\(6) & \dc_disp_ctrl|bcd_decode_rom|rom_addr\(5) & \dc_disp_ctrl|bcd_decode_rom|rom_addr\(4) & 
\dc_disp_ctrl|bcd_decode_rom|rom_addr\(3) & \dc_disp_ctrl|bcd_decode_rom|rom_addr\(2) & \dc_disp_ctrl|bcd_decode_rom|rom_addr\(1) & \dc_disp_ctrl|bcd_decode_rom|rom_addr\(0));

\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\ <= \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\ <= \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\ <= \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\ <= \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\ <= \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\ <= \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\ <= \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a8\ <= \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\ <= \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);

\b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \b_gen_pll:i_altera_pll|altpll_component|_clk1\);
\dc_disp_ctrl|ALT_INV_current_transmit_state.s_idle~regout\ <= NOT \dc_disp_ctrl|current_transmit_state.s_idle~regout\;
\b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\ <= NOT \b_gen_pll:i_reset_ctrl|reset_out~regout\;
\dc_disp_ctrl|ALT_INV_hex2\(6) <= NOT \dc_disp_ctrl|hex2\(6);
\dc_disp_ctrl|ALT_INV_hex1\(6) <= NOT \dc_disp_ctrl|hex1\(6);
\dc_disp_ctrl|ALT_INV_hex0\(6) <= NOT \dc_disp_ctrl|hex0\(6);
\b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\ <= NOT \b_gen_pll:i_altera_pll|altpll_component|_locked\;
\serial_uart|ALT_INV_tx_state.s_tx_data~regout\ <= NOT \serial_uart|tx_state.s_tx_data~regout\;

-- Location: LCCOMB_X43_Y21_N12
\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\pwm_ctrl|Mult0|mult_core|romout[0][6]~7_combout\ & (\pwm_ctrl|dc_count\(4) $ (VCC))) # (!\pwm_ctrl|Mult0|mult_core|romout[0][6]~7_combout\ & (\pwm_ctrl|dc_count\(4) & VCC))
-- \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\pwm_ctrl|Mult0|mult_core|romout[0][6]~7_combout\ & \pwm_ctrl|dc_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Mult0|mult_core|romout[0][6]~7_combout\,
	datab => \pwm_ctrl|dc_count\(4),
	datad => VCC,
	combout => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X43_Y21_N14
\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\pwm_ctrl|dc_count\(5) & ((\pwm_ctrl|Mult0|mult_core|romout[0][7]~6_combout\ & (\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\pwm_ctrl|Mult0|mult_core|romout[0][7]~6_combout\ & (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\pwm_ctrl|dc_count\(5) & ((\pwm_ctrl|Mult0|mult_core|romout[0][7]~6_combout\ & 
-- (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\pwm_ctrl|Mult0|mult_core|romout[0][7]~6_combout\ & ((\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\pwm_ctrl|dc_count\(5) & (!\pwm_ctrl|Mult0|mult_core|romout[0][7]~6_combout\ & !\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\pwm_ctrl|dc_count\(5) & 
-- ((!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\pwm_ctrl|Mult0|mult_core|romout[0][7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(5),
	datab => \pwm_ctrl|Mult0|mult_core|romout[0][7]~6_combout\,
	datad => VCC,
	cin => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X43_Y21_N16
\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\pwm_ctrl|Mult0|mult_core|romout[1][4]~combout\ $ (\pwm_ctrl|prev_dc[6]~2_combout\ $ (\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\pwm_ctrl|Mult0|mult_core|romout[1][4]~combout\ & ((!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\) # (!\pwm_ctrl|prev_dc[6]~2_combout\))) # 
-- (!\pwm_ctrl|Mult0|mult_core|romout[1][4]~combout\ & (!\pwm_ctrl|prev_dc[6]~2_combout\ & !\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Mult0|mult_core|romout[1][4]~combout\,
	datab => \pwm_ctrl|prev_dc[6]~2_combout\,
	datad => VCC,
	cin => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X43_Y21_N18
\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\pwm_ctrl|Mult0|mult_core|romout[1][5]~combout\ & ((\pwm_ctrl|Mult0|mult_core|romout[0][9]~5_combout\ & (\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\pwm_ctrl|Mult0|mult_core|romout[0][9]~5_combout\ & (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\pwm_ctrl|Mult0|mult_core|romout[1][5]~combout\ & ((\pwm_ctrl|Mult0|mult_core|romout[0][9]~5_combout\ & 
-- (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\pwm_ctrl|Mult0|mult_core|romout[0][9]~5_combout\ & ((\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\pwm_ctrl|Mult0|mult_core|romout[1][5]~combout\ & (!\pwm_ctrl|Mult0|mult_core|romout[0][9]~5_combout\ & !\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\pwm_ctrl|Mult0|mult_core|romout[1][5]~combout\ & ((!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\pwm_ctrl|Mult0|mult_core|romout[0][9]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Mult0|mult_core|romout[1][5]~combout\,
	datab => \pwm_ctrl|Mult0|mult_core|romout[0][9]~5_combout\,
	datad => VCC,
	cin => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X43_Y21_N20
\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\pwm_ctrl|Mult0|mult_core|romout[0][10]~4_combout\ $ (\pwm_ctrl|Mult0|mult_core|romout[1][6]~3_combout\ $ (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # 
-- (GND)
-- \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\pwm_ctrl|Mult0|mult_core|romout[0][10]~4_combout\ & ((\pwm_ctrl|Mult0|mult_core|romout[1][6]~3_combout\) # (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # 
-- (!\pwm_ctrl|Mult0|mult_core|romout[0][10]~4_combout\ & (\pwm_ctrl|Mult0|mult_core|romout[1][6]~3_combout\ & !\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Mult0|mult_core|romout[0][10]~4_combout\,
	datab => \pwm_ctrl|Mult0|mult_core|romout[1][6]~3_combout\,
	datad => VCC,
	cin => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X43_Y21_N22
\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\pwm_ctrl|dc_count[5]~0_combout\ & ((\pwm_ctrl|Mult0|mult_core|romout[0][11]~2_combout\ & (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\pwm_ctrl|Mult0|mult_core|romout[0][11]~2_combout\ & ((\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND))))) # (!\pwm_ctrl|dc_count[5]~0_combout\ & ((\pwm_ctrl|Mult0|mult_core|romout[0][11]~2_combout\ & 
-- (\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # (!\pwm_ctrl|Mult0|mult_core|romout[0][11]~2_combout\ & (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\))))
-- \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\pwm_ctrl|dc_count[5]~0_combout\ & ((!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\pwm_ctrl|Mult0|mult_core|romout[0][11]~2_combout\))) # 
-- (!\pwm_ctrl|dc_count[5]~0_combout\ & (!\pwm_ctrl|Mult0|mult_core|romout[0][11]~2_combout\ & !\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count[5]~0_combout\,
	datab => \pwm_ctrl|Mult0|mult_core|romout[0][11]~2_combout\,
	datad => VCC,
	cin => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X43_Y21_N24
\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = ((\pwm_ctrl|dc_count[5]~0_combout\ $ (\pwm_ctrl|Mult0|mult_core|romout[0][12]~1_combout\ $ (\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\pwm_ctrl|dc_count[5]~0_combout\ & (\pwm_ctrl|Mult0|mult_core|romout[0][12]~1_combout\ & !\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)) # 
-- (!\pwm_ctrl|dc_count[5]~0_combout\ & ((\pwm_ctrl|Mult0|mult_core|romout[0][12]~1_combout\) # (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count[5]~0_combout\,
	datab => \pwm_ctrl|Mult0|mult_core|romout[0][12]~1_combout\,
	datad => VCC,
	cin => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X43_Y21_N26
\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\pwm_ctrl|Mult0|mult_core|romout[1][9]~combout\ & (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\pwm_ctrl|Mult0|mult_core|romout[1][9]~combout\ & 
-- ((\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))
-- \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\pwm_ctrl|Mult0|mult_core|romout[1][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|Mult0|mult_core|romout[1][9]~combout\,
	datad => VCC,
	cin => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X43_Y21_N28
\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = (\pwm_ctrl|Mult0|mult_core|romout[1][10]~combout\ & (\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ $ (GND))) # 
-- (!\pwm_ctrl|Mult0|mult_core|romout[1][10]~combout\ & (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ & VCC))
-- \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\pwm_ctrl|Mult0|mult_core|romout[1][10]~combout\ & !\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|Mult0|mult_core|romout[1][10]~combout\,
	datad => VCC,
	cin => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X43_Y21_N30
\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ = \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ $ (\pwm_ctrl|Mult0|mult_core|romout[1][11]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pwm_ctrl|Mult0|mult_core|romout[1][11]~0_combout\,
	cin => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\,
	combout => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\);

-- Location: LCFF_X45_Y21_N17
\pwm_ctrl|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|counter[8]~32_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \pwm_ctrl|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|counter\(8));

-- Location: LCFF_X45_Y21_N7
\pwm_ctrl|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|counter[3]~22_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \pwm_ctrl|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|counter\(3));

-- Location: LCFF_X28_Y16_N21
\b_gen_pll:i_reset_ctrl|reset_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[2]~9_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(2));

-- Location: LCCOMB_X45_Y21_N6
\pwm_ctrl|counter[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|counter[3]~22_combout\ = (\pwm_ctrl|counter\(3) & (!\pwm_ctrl|counter[2]~21\)) # (!\pwm_ctrl|counter\(3) & ((\pwm_ctrl|counter[2]~21\) # (GND)))
-- \pwm_ctrl|counter[3]~23\ = CARRY((!\pwm_ctrl|counter[2]~21\) # (!\pwm_ctrl|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|counter\(3),
	datad => VCC,
	cin => \pwm_ctrl|counter[2]~21\,
	combout => \pwm_ctrl|counter[3]~22_combout\,
	cout => \pwm_ctrl|counter[3]~23\);

-- Location: LCCOMB_X45_Y21_N16
\pwm_ctrl|counter[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|counter[8]~32_combout\ = (\pwm_ctrl|counter\(8) & (\pwm_ctrl|counter[7]~31\ $ (GND))) # (!\pwm_ctrl|counter\(8) & (!\pwm_ctrl|counter[7]~31\ & VCC))
-- \pwm_ctrl|counter[8]~33\ = CARRY((\pwm_ctrl|counter\(8) & !\pwm_ctrl|counter[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|counter\(8),
	datad => VCC,
	cin => \pwm_ctrl|counter[7]~31\,
	combout => \pwm_ctrl|counter[8]~32_combout\,
	cout => \pwm_ctrl|counter[8]~33\);

-- Location: LCCOMB_X40_Y21_N2
\pwm_ctrl|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~4_combout\ = \pwm_ctrl|dc_count\(0) $ (VCC)
-- \pwm_ctrl|Add1~5\ = CARRY(\pwm_ctrl|dc_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|dc_count\(0),
	datad => VCC,
	combout => \pwm_ctrl|Add1~4_combout\,
	cout => \pwm_ctrl|Add1~5\);

-- Location: LCCOMB_X40_Y21_N8
\pwm_ctrl|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~10_combout\ = (\pwm_ctrl|dc_count\(3) & (\pwm_ctrl|Add1~9\ & VCC)) # (!\pwm_ctrl|dc_count\(3) & (!\pwm_ctrl|Add1~9\))
-- \pwm_ctrl|Add1~11\ = CARRY((!\pwm_ctrl|dc_count\(3) & !\pwm_ctrl|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(3),
	datad => VCC,
	cin => \pwm_ctrl|Add1~9\,
	combout => \pwm_ctrl|Add1~10_combout\,
	cout => \pwm_ctrl|Add1~11\);

-- Location: LCCOMB_X40_Y21_N10
\pwm_ctrl|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~12_combout\ = (\pwm_ctrl|dc_count\(4) & ((GND) # (!\pwm_ctrl|Add1~11\))) # (!\pwm_ctrl|dc_count\(4) & (\pwm_ctrl|Add1~11\ $ (GND)))
-- \pwm_ctrl|Add1~13\ = CARRY((\pwm_ctrl|dc_count\(4)) # (!\pwm_ctrl|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|dc_count\(4),
	datad => VCC,
	cin => \pwm_ctrl|Add1~11\,
	combout => \pwm_ctrl|Add1~12_combout\,
	cout => \pwm_ctrl|Add1~13\);

-- Location: LCCOMB_X40_Y21_N12
\pwm_ctrl|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~14_combout\ = (\pwm_ctrl|dc_count\(5) & (\pwm_ctrl|Add1~13\ & VCC)) # (!\pwm_ctrl|dc_count\(5) & (!\pwm_ctrl|Add1~13\))
-- \pwm_ctrl|Add1~15\ = CARRY((!\pwm_ctrl|dc_count\(5) & !\pwm_ctrl|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(5),
	datad => VCC,
	cin => \pwm_ctrl|Add1~13\,
	combout => \pwm_ctrl|Add1~14_combout\,
	cout => \pwm_ctrl|Add1~15\);

-- Location: LCCOMB_X40_Y21_N14
\pwm_ctrl|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~16_combout\ = \pwm_ctrl|Add1~15\ $ (\pwm_ctrl|dc_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pwm_ctrl|dc_count\(6),
	cin => \pwm_ctrl|Add1~15\,
	combout => \pwm_ctrl|Add1~16_combout\);

-- Location: LCFF_X34_Y21_N11
\serial_uart|rx_bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[1]~12_combout\,
	sclr => \serial_uart|rx_bit_cnt[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(1));

-- Location: LCFF_X34_Y21_N17
\serial_uart|rx_bit_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[4]~18_combout\,
	sclr => \serial_uart|rx_bit_cnt[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(4));

-- Location: LCFF_X27_Y21_N7
\serial_uart|tx_bit_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[3]~16_combout\,
	sclr => \serial_uart|tx_bit_cnt[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(3));

-- Location: LCFF_X27_Y21_N11
\serial_uart|tx_bit_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[5]~20_combout\,
	sclr => \serial_uart|tx_bit_cnt[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(5));

-- Location: LCFF_X27_Y21_N17
\serial_uart|tx_bit_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[8]~26_combout\,
	sclr => \serial_uart|tx_bit_cnt[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(8));

-- Location: LCCOMB_X28_Y16_N20
\b_gen_pll:i_reset_ctrl|reset_cnt[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|reset_cnt[2]~9_combout\ = (\b_gen_pll:i_reset_ctrl|reset_cnt\(2) & (!\b_gen_pll:i_reset_ctrl|reset_cnt[1]~8\)) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(2) & ((\b_gen_pll:i_reset_ctrl|reset_cnt[1]~8\) # (GND)))
-- \b_gen_pll:i_reset_ctrl|reset_cnt[2]~10\ = CARRY((!\b_gen_pll:i_reset_ctrl|reset_cnt[1]~8\) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_gen_pll:i_reset_ctrl|reset_cnt\(2),
	datad => VCC,
	cin => \b_gen_pll:i_reset_ctrl|reset_cnt[1]~8\,
	combout => \b_gen_pll:i_reset_ctrl|reset_cnt[2]~9_combout\,
	cout => \b_gen_pll:i_reset_ctrl|reset_cnt[2]~10\);

-- Location: LCFF_X42_Y20_N25
\key_ctrl|pulse_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|pulse_counter[5]~29_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \key_ctrl|pulse_counter[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|pulse_counter\(5));

-- Location: LCFF_X42_Y19_N7
\key_ctrl|pulse_counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|pulse_counter[12]~44_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \key_ctrl|pulse_counter[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|pulse_counter\(12));

-- Location: LCFF_X42_Y19_N17
\key_ctrl|pulse_counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|pulse_counter[17]~54_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \key_ctrl|pulse_counter[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|pulse_counter\(17));

-- Location: LCCOMB_X34_Y21_N10
\serial_uart|rx_bit_cnt[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[1]~12_combout\ = (\serial_uart|rx_bit_cnt\(1) & (!\serial_uart|rx_bit_cnt[0]~10\)) # (!\serial_uart|rx_bit_cnt\(1) & ((\serial_uart|rx_bit_cnt[0]~10\) # (GND)))
-- \serial_uart|rx_bit_cnt[1]~13\ = CARRY((!\serial_uart|rx_bit_cnt[0]~10\) # (!\serial_uart|rx_bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(1),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[0]~10\,
	combout => \serial_uart|rx_bit_cnt[1]~12_combout\,
	cout => \serial_uart|rx_bit_cnt[1]~13\);

-- Location: LCCOMB_X34_Y21_N16
\serial_uart|rx_bit_cnt[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[4]~18_combout\ = (\serial_uart|rx_bit_cnt\(4) & (\serial_uart|rx_bit_cnt[3]~17\ $ (GND))) # (!\serial_uart|rx_bit_cnt\(4) & (!\serial_uart|rx_bit_cnt[3]~17\ & VCC))
-- \serial_uart|rx_bit_cnt[4]~19\ = CARRY((\serial_uart|rx_bit_cnt\(4) & !\serial_uart|rx_bit_cnt[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(4),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[3]~17\,
	combout => \serial_uart|rx_bit_cnt[4]~18_combout\,
	cout => \serial_uart|rx_bit_cnt[4]~19\);

-- Location: LCCOMB_X27_Y21_N6
\serial_uart|tx_bit_cnt[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[3]~16_combout\ = (\serial_uart|tx_bit_cnt\(3) & (!\serial_uart|tx_bit_cnt[2]~15\)) # (!\serial_uart|tx_bit_cnt\(3) & ((\serial_uart|tx_bit_cnt[2]~15\) # (GND)))
-- \serial_uart|tx_bit_cnt[3]~17\ = CARRY((!\serial_uart|tx_bit_cnt[2]~15\) # (!\serial_uart|tx_bit_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt\(3),
	datad => VCC,
	cin => \serial_uart|tx_bit_cnt[2]~15\,
	combout => \serial_uart|tx_bit_cnt[3]~16_combout\,
	cout => \serial_uart|tx_bit_cnt[3]~17\);

-- Location: LCCOMB_X27_Y21_N10
\serial_uart|tx_bit_cnt[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[5]~20_combout\ = (\serial_uart|tx_bit_cnt\(5) & (!\serial_uart|tx_bit_cnt[4]~19\)) # (!\serial_uart|tx_bit_cnt\(5) & ((\serial_uart|tx_bit_cnt[4]~19\) # (GND)))
-- \serial_uart|tx_bit_cnt[5]~21\ = CARRY((!\serial_uart|tx_bit_cnt[4]~19\) # (!\serial_uart|tx_bit_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt\(5),
	datad => VCC,
	cin => \serial_uart|tx_bit_cnt[4]~19\,
	combout => \serial_uart|tx_bit_cnt[5]~20_combout\,
	cout => \serial_uart|tx_bit_cnt[5]~21\);

-- Location: LCCOMB_X27_Y21_N14
\serial_uart|tx_bit_cnt[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[7]~24_combout\ = (\serial_uart|tx_bit_cnt\(7) & (!\serial_uart|tx_bit_cnt[6]~23\)) # (!\serial_uart|tx_bit_cnt\(7) & ((\serial_uart|tx_bit_cnt[6]~23\) # (GND)))
-- \serial_uart|tx_bit_cnt[7]~25\ = CARRY((!\serial_uart|tx_bit_cnt[6]~23\) # (!\serial_uart|tx_bit_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_bit_cnt\(7),
	datad => VCC,
	cin => \serial_uart|tx_bit_cnt[6]~23\,
	combout => \serial_uart|tx_bit_cnt[7]~24_combout\,
	cout => \serial_uart|tx_bit_cnt[7]~25\);

-- Location: LCCOMB_X27_Y21_N16
\serial_uart|tx_bit_cnt[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[8]~26_combout\ = \serial_uart|tx_bit_cnt\(8) $ (!\serial_uart|tx_bit_cnt[7]~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt\(8),
	cin => \serial_uart|tx_bit_cnt[7]~25\,
	combout => \serial_uart|tx_bit_cnt[8]~26_combout\);

-- Location: LCFF_X42_Y20_N21
\key_ctrl|pulse_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|pulse_counter[3]~25_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \key_ctrl|pulse_counter[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|pulse_counter\(3));

-- Location: LCFF_X42_Y20_N17
\key_ctrl|pulse_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|pulse_counter[1]~21_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \key_ctrl|pulse_counter[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|pulse_counter\(1));

-- Location: LCCOMB_X42_Y20_N16
\key_ctrl|pulse_counter[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[1]~21_combout\ = (\key_ctrl|pulse_counter\(1) & (!\key_ctrl|pulse_counter[0]~20\)) # (!\key_ctrl|pulse_counter\(1) & ((\key_ctrl|pulse_counter[0]~20\) # (GND)))
-- \key_ctrl|pulse_counter[1]~22\ = CARRY((!\key_ctrl|pulse_counter[0]~20\) # (!\key_ctrl|pulse_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|pulse_counter\(1),
	datad => VCC,
	cin => \key_ctrl|pulse_counter[0]~20\,
	combout => \key_ctrl|pulse_counter[1]~21_combout\,
	cout => \key_ctrl|pulse_counter[1]~22\);

-- Location: LCCOMB_X42_Y20_N20
\key_ctrl|pulse_counter[3]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[3]~25_combout\ = (\key_ctrl|pulse_counter\(3) & (!\key_ctrl|pulse_counter[2]~24\)) # (!\key_ctrl|pulse_counter\(3) & ((\key_ctrl|pulse_counter[2]~24\) # (GND)))
-- \key_ctrl|pulse_counter[3]~26\ = CARRY((!\key_ctrl|pulse_counter[2]~24\) # (!\key_ctrl|pulse_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|pulse_counter\(3),
	datad => VCC,
	cin => \key_ctrl|pulse_counter[2]~24\,
	combout => \key_ctrl|pulse_counter[3]~25_combout\,
	cout => \key_ctrl|pulse_counter[3]~26\);

-- Location: LCCOMB_X42_Y20_N24
\key_ctrl|pulse_counter[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[5]~29_combout\ = (\key_ctrl|pulse_counter\(5) & (!\key_ctrl|pulse_counter[4]~28\)) # (!\key_ctrl|pulse_counter\(5) & ((\key_ctrl|pulse_counter[4]~28\) # (GND)))
-- \key_ctrl|pulse_counter[5]~30\ = CARRY((!\key_ctrl|pulse_counter[4]~28\) # (!\key_ctrl|pulse_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|pulse_counter\(5),
	datad => VCC,
	cin => \key_ctrl|pulse_counter[4]~28\,
	combout => \key_ctrl|pulse_counter[5]~29_combout\,
	cout => \key_ctrl|pulse_counter[5]~30\);

-- Location: LCCOMB_X42_Y19_N6
\key_ctrl|pulse_counter[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[12]~44_combout\ = (\key_ctrl|pulse_counter\(12) & (\key_ctrl|pulse_counter[11]~43\ $ (GND))) # (!\key_ctrl|pulse_counter\(12) & (!\key_ctrl|pulse_counter[11]~43\ & VCC))
-- \key_ctrl|pulse_counter[12]~45\ = CARRY((\key_ctrl|pulse_counter\(12) & !\key_ctrl|pulse_counter[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|pulse_counter\(12),
	datad => VCC,
	cin => \key_ctrl|pulse_counter[11]~43\,
	combout => \key_ctrl|pulse_counter[12]~44_combout\,
	cout => \key_ctrl|pulse_counter[12]~45\);

-- Location: LCCOMB_X42_Y19_N16
\key_ctrl|pulse_counter[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[17]~54_combout\ = (\key_ctrl|pulse_counter\(17) & (!\key_ctrl|pulse_counter[16]~53\)) # (!\key_ctrl|pulse_counter\(17) & ((\key_ctrl|pulse_counter[16]~53\) # (GND)))
-- \key_ctrl|pulse_counter[17]~55\ = CARRY((!\key_ctrl|pulse_counter[16]~53\) # (!\key_ctrl|pulse_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|pulse_counter\(17),
	datad => VCC,
	cin => \key_ctrl|pulse_counter[16]~53\,
	combout => \key_ctrl|pulse_counter[17]~54_combout\,
	cout => \key_ctrl|pulse_counter[17]~55\);

-- Location: LCCOMB_X43_Y21_N0
\pwm_ctrl|Mult0|mult_core|romout[1][11]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|romout[1][11]~0_combout\ = (\pwm_ctrl|dc_count\(6) & ((\pwm_ctrl|dc_count\(4)) # (\pwm_ctrl|dc_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|dc_count\(4),
	datac => \pwm_ctrl|dc_count\(5),
	datad => \pwm_ctrl|dc_count\(6),
	combout => \pwm_ctrl|Mult0|mult_core|romout[1][11]~0_combout\);

-- Location: LCCOMB_X43_Y21_N2
\pwm_ctrl|Mult0|mult_core|romout[1][10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|romout[1][10]~combout\ = (\pwm_ctrl|dc_count\(4) & (\pwm_ctrl|dc_count\(5))) # (!\pwm_ctrl|dc_count\(4) & (!\pwm_ctrl|dc_count\(5) & \pwm_ctrl|dc_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|dc_count\(4),
	datac => \pwm_ctrl|dc_count\(5),
	datad => \pwm_ctrl|dc_count\(6),
	combout => \pwm_ctrl|Mult0|mult_core|romout[1][10]~combout\);

-- Location: LCCOMB_X43_Y21_N4
\pwm_ctrl|Mult0|mult_core|romout[1][9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|romout[1][9]~combout\ = (!\pwm_ctrl|dc_count\(4) & ((\pwm_ctrl|dc_count\(5)) # (\pwm_ctrl|dc_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|dc_count\(4),
	datac => \pwm_ctrl|dc_count\(5),
	datad => \pwm_ctrl|dc_count\(6),
	combout => \pwm_ctrl|Mult0|mult_core|romout[1][9]~combout\);

-- Location: LCCOMB_X42_Y21_N18
\pwm_ctrl|Mult0|mult_core|romout[0][12]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|romout[0][12]~1_combout\ = (\pwm_ctrl|dc_count\(3) & ((\pwm_ctrl|dc_count\(2)) # ((\pwm_ctrl|dc_count\(1)) # (\pwm_ctrl|dc_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(2),
	datab => \pwm_ctrl|dc_count\(1),
	datac => \pwm_ctrl|dc_count\(0),
	datad => \pwm_ctrl|dc_count\(3),
	combout => \pwm_ctrl|Mult0|mult_core|romout[0][12]~1_combout\);

-- Location: LCCOMB_X42_Y21_N28
\pwm_ctrl|Mult0|mult_core|romout[0][11]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|romout[0][11]~2_combout\ = (\pwm_ctrl|dc_count\(2) & ((\pwm_ctrl|dc_count\(1)) # ((\pwm_ctrl|dc_count\(0))))) # (!\pwm_ctrl|dc_count\(2) & (!\pwm_ctrl|dc_count\(1) & (!\pwm_ctrl|dc_count\(0) & \pwm_ctrl|dc_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(2),
	datab => \pwm_ctrl|dc_count\(1),
	datac => \pwm_ctrl|dc_count\(0),
	datad => \pwm_ctrl|dc_count\(3),
	combout => \pwm_ctrl|Mult0|mult_core|romout[0][11]~2_combout\);

-- Location: LCCOMB_X43_Y21_N8
\pwm_ctrl|Mult0|mult_core|romout[1][6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|romout[1][6]~3_combout\ = (\pwm_ctrl|dc_count\(5) & ((!\pwm_ctrl|dc_count\(6)))) # (!\pwm_ctrl|dc_count\(5) & ((\pwm_ctrl|dc_count\(4)) # (\pwm_ctrl|dc_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|dc_count\(4),
	datac => \pwm_ctrl|dc_count\(5),
	datad => \pwm_ctrl|dc_count\(6),
	combout => \pwm_ctrl|Mult0|mult_core|romout[1][6]~3_combout\);

-- Location: LCCOMB_X42_Y21_N14
\pwm_ctrl|Mult0|mult_core|romout[0][10]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|romout[0][10]~4_combout\ = (\pwm_ctrl|dc_count\(1) & (((\pwm_ctrl|dc_count\(0))))) # (!\pwm_ctrl|dc_count\(1) & (!\pwm_ctrl|dc_count\(0) & ((\pwm_ctrl|dc_count\(2)) # (\pwm_ctrl|dc_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(2),
	datab => \pwm_ctrl|dc_count\(1),
	datac => \pwm_ctrl|dc_count\(0),
	datad => \pwm_ctrl|dc_count\(3),
	combout => \pwm_ctrl|Mult0|mult_core|romout[0][10]~4_combout\);

-- Location: LCCOMB_X43_Y21_N10
\pwm_ctrl|Mult0|mult_core|romout[1][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|romout[1][5]~combout\ = \pwm_ctrl|dc_count\(5) $ (((\pwm_ctrl|dc_count\(4) & !\pwm_ctrl|dc_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|dc_count\(4),
	datac => \pwm_ctrl|dc_count\(5),
	datad => \pwm_ctrl|dc_count\(6),
	combout => \pwm_ctrl|Mult0|mult_core|romout[1][5]~combout\);

-- Location: LCCOMB_X42_Y21_N16
\pwm_ctrl|Mult0|mult_core|romout[0][9]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|romout[0][9]~5_combout\ = (!\pwm_ctrl|dc_count\(0) & ((\pwm_ctrl|dc_count\(2)) # ((\pwm_ctrl|dc_count\(1)) # (\pwm_ctrl|dc_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(2),
	datab => \pwm_ctrl|dc_count\(1),
	datac => \pwm_ctrl|dc_count\(0),
	datad => \pwm_ctrl|dc_count\(3),
	combout => \pwm_ctrl|Mult0|mult_core|romout[0][9]~5_combout\);

-- Location: LCCOMB_X41_Y21_N6
\pwm_ctrl|Mult0|mult_core|romout[1][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|romout[1][4]~combout\ = \pwm_ctrl|dc_count\(4) $ (\pwm_ctrl|dc_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(4),
	datac => \pwm_ctrl|dc_count\(6),
	combout => \pwm_ctrl|Mult0|mult_core|romout[1][4]~combout\);

-- Location: LCCOMB_X42_Y21_N30
\pwm_ctrl|Mult0|mult_core|romout[0][6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|romout[0][6]~7_combout\ = (\pwm_ctrl|dc_count\(2) & (((\pwm_ctrl|dc_count\(3))) # (!\pwm_ctrl|dc_count\(1)))) # (!\pwm_ctrl|dc_count\(2) & ((\pwm_ctrl|dc_count\(1) & ((\pwm_ctrl|dc_count\(0)) # (!\pwm_ctrl|dc_count\(3)))) # 
-- (!\pwm_ctrl|dc_count\(1) & (\pwm_ctrl|dc_count\(0) & !\pwm_ctrl|dc_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(2),
	datab => \pwm_ctrl|dc_count\(1),
	datac => \pwm_ctrl|dc_count\(0),
	datad => \pwm_ctrl|dc_count\(3),
	combout => \pwm_ctrl|Mult0|mult_core|romout[0][6]~7_combout\);

-- Location: LCCOMB_X42_Y21_N0
\pwm_ctrl|Mult0|mult_core|romout[0][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|romout[0][5]~combout\ = \pwm_ctrl|dc_count\(1) $ (\pwm_ctrl|dc_count\(3) $ (((!\pwm_ctrl|dc_count\(2) & \pwm_ctrl|dc_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(2),
	datab => \pwm_ctrl|dc_count\(1),
	datac => \pwm_ctrl|dc_count\(0),
	datad => \pwm_ctrl|dc_count\(3),
	combout => \pwm_ctrl|Mult0|mult_core|romout[0][5]~combout\);

-- Location: LCCOMB_X42_Y21_N2
\pwm_ctrl|Mult0|mult_core|romout[0][4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|romout[0][4]~8_combout\ = \pwm_ctrl|dc_count\(0) $ (\pwm_ctrl|dc_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|dc_count\(0),
	datac => \pwm_ctrl|dc_count\(2),
	combout => \pwm_ctrl|Mult0|mult_core|romout[0][4]~8_combout\);

-- Location: LCFF_X27_Y20_N19
\dc_disp_ctrl|data_transmit[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Selector5~2_combout\,
	ena => \dc_disp_ctrl|p_dc_disp_ctrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|data_transmit\(0));

-- Location: LCFF_X28_Y16_N11
\b_gen_pll:i_reset_ctrl|reset_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[0]~6_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(0));

-- Location: LCCOMB_X28_Y16_N12
\b_gen_pll:i_reset_ctrl|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|LessThan0~0_combout\ = (((!\b_gen_pll:i_reset_ctrl|reset_cnt\(1)) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(2))) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(3))) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_gen_pll:i_reset_ctrl|reset_cnt\(0),
	datab => \b_gen_pll:i_reset_ctrl|reset_cnt\(3),
	datac => \b_gen_pll:i_reset_ctrl|reset_cnt\(2),
	datad => \b_gen_pll:i_reset_ctrl|reset_cnt\(1),
	combout => \b_gen_pll:i_reset_ctrl|LessThan0~0_combout\);

-- Location: LCCOMB_X44_Y21_N0
\pwm_ctrl|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan0~0_combout\ = (!\pwm_ctrl|counter\(7) & (((!\pwm_ctrl|counter\(5) & !\pwm_ctrl|counter\(4))) # (!\pwm_ctrl|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|counter\(7),
	datab => \pwm_ctrl|counter\(6),
	datac => \pwm_ctrl|counter\(5),
	datad => \pwm_ctrl|counter\(4),
	combout => \pwm_ctrl|LessThan0~0_combout\);

-- Location: LCCOMB_X44_Y21_N2
\pwm_ctrl|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan0~1_combout\ = (\pwm_ctrl|LessThan0~0_combout\) # ((!\pwm_ctrl|counter\(9)) # (!\pwm_ctrl|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|LessThan0~0_combout\,
	datac => \pwm_ctrl|counter\(8),
	datad => \pwm_ctrl|counter\(9),
	combout => \pwm_ctrl|LessThan0~1_combout\);

-- Location: LCFF_X37_Y21_N21
\serial_ctrl|serial_up\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_ctrl|serial_up~2_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_ctrl|serial_up~regout\);

-- Location: LCCOMB_X37_Y21_N22
\pwm_ctrl|dc_count[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|dc_count[5]~1_combout\ = (!\key_ctrl|up_key~regout\ & !\serial_ctrl|serial_up~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|up_key~regout\,
	datac => \serial_ctrl|serial_up~regout\,
	combout => \pwm_ctrl|dc_count[5]~1_combout\);

-- Location: LCFF_X38_Y21_N11
\pwm_ctrl|prev_dc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \pwm_ctrl|dc_count\(1),
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	ena => \pwm_ctrl|prev_dc[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|prev_dc\(1));

-- Location: LCCOMB_X38_Y21_N20
\pwm_ctrl|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~26_combout\ = (!\pwm_ctrl|prev_dc\(2) & (!\pwm_ctrl|LessThan3~1_combout\ & ((\key_ctrl|on_key~regout\) # (\serial_ctrl|serial_on~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|on_key~regout\,
	datab => \serial_ctrl|serial_on~regout\,
	datac => \pwm_ctrl|prev_dc\(2),
	datad => \pwm_ctrl|LessThan3~1_combout\,
	combout => \pwm_ctrl|Add1~26_combout\);

-- Location: LCFF_X38_Y21_N15
\pwm_ctrl|prev_dc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \pwm_ctrl|dc_count\(0),
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	ena => \pwm_ctrl|prev_dc[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|prev_dc\(0));

-- Location: LCCOMB_X38_Y21_N14
\pwm_ctrl|Add1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~31_combout\ = (\pwm_ctrl|prev_dc\(0) & (!\pwm_ctrl|LessThan3~1_combout\ & ((\key_ctrl|on_key~regout\) # (\serial_ctrl|serial_on~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|on_key~regout\,
	datab => \serial_ctrl|serial_on~regout\,
	datac => \pwm_ctrl|prev_dc\(0),
	datad => \pwm_ctrl|LessThan3~1_combout\,
	combout => \pwm_ctrl|Add1~31_combout\);

-- Location: LCFF_X36_Y21_N25
\serial_uart|rx_bit_cnt_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt_en~regout\);

-- Location: LCCOMB_X35_Y21_N18
\serial_uart|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector4~2_combout\ = (\serial_uart|rx_bit_cnt_wrap~regout\ & \serial_uart|rx_state.s_rx_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \serial_uart|rx_state.s_rx_data~regout\,
	combout => \serial_uart|Selector4~2_combout\);

-- Location: LCCOMB_X29_Y21_N12
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

-- Location: LCFF_X29_Y20_N27
\dc_disp_ctrl|bcd_stack1_2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_stack1_2~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_stack1_1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack1_2\(0));

-- Location: LCFF_X29_Y20_N5
\dc_disp_ctrl|bcd_stack1_0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_stack1_0~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_stack1_1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack1_0\(0));

-- Location: LCFF_X29_Y20_N7
\dc_disp_ctrl|bcd_stack1_0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_stack1_0~1_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_stack1_1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack1_0\(1));

-- Location: LCCOMB_X29_Y20_N20
\dc_disp_ctrl|Mux50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux50~0_combout\ = (\dc_disp_ctrl|bcd_stack1_0\(0) & (((!\dc_disp_ctrl|bcd_stack1_0\(1) & !\dc_disp_ctrl|bcd_stack1_0\(2))) # (!\dc_disp_ctrl|bcd_stack1_0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_stack1_0\(1),
	datab => \dc_disp_ctrl|bcd_stack1_0\(2),
	datac => \dc_disp_ctrl|bcd_stack1_0\(0),
	datad => \dc_disp_ctrl|bcd_stack1_0\(3),
	combout => \dc_disp_ctrl|Mux50~0_combout\);

-- Location: LCCOMB_X29_Y20_N30
\dc_disp_ctrl|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Selector5~0_combout\ = (\dc_disp_ctrl|current_transmit_state.s_first_byte~regout\ & ((\dc_disp_ctrl|bcd_stack1_2\(0)) # ((\dc_disp_ctrl|current_transmit_state.s_third_byte~regout\ & \dc_disp_ctrl|Mux50~0_combout\)))) # 
-- (!\dc_disp_ctrl|current_transmit_state.s_first_byte~regout\ & (\dc_disp_ctrl|current_transmit_state.s_third_byte~regout\ & (\dc_disp_ctrl|Mux50~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|current_transmit_state.s_first_byte~regout\,
	datab => \dc_disp_ctrl|current_transmit_state.s_third_byte~regout\,
	datac => \dc_disp_ctrl|Mux50~0_combout\,
	datad => \dc_disp_ctrl|bcd_stack1_2\(0),
	combout => \dc_disp_ctrl|Selector5~0_combout\);

-- Location: LCFF_X29_Y20_N25
\dc_disp_ctrl|bcd_stack1_1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_stack1_1~2_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_stack1_1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack1_1\(0));

-- Location: LCCOMB_X28_Y20_N0
\dc_disp_ctrl|Mux44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux44~0_combout\ = (\dc_disp_ctrl|bcd_stack1_1\(0) & (((!\dc_disp_ctrl|bcd_stack1_1\(2) & !\dc_disp_ctrl|bcd_stack1_1\(1))) # (!\dc_disp_ctrl|bcd_stack1_1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_stack1_1\(3),
	datab => \dc_disp_ctrl|bcd_stack1_1\(2),
	datac => \dc_disp_ctrl|bcd_stack1_1\(0),
	datad => \dc_disp_ctrl|bcd_stack1_1\(1),
	combout => \dc_disp_ctrl|Mux44~0_combout\);

-- Location: LCCOMB_X28_Y20_N10
\dc_disp_ctrl|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Selector5~1_combout\ = (\dc_disp_ctrl|reset_transmission_active~regout\ & ((\dc_disp_ctrl|Selector5~0_combout\) # ((\dc_disp_ctrl|current_transmit_state.s_second_byte~regout\ & \dc_disp_ctrl|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|current_transmit_state.s_second_byte~regout\,
	datab => \dc_disp_ctrl|reset_transmission_active~regout\,
	datac => \dc_disp_ctrl|Selector5~0_combout\,
	datad => \dc_disp_ctrl|Mux44~0_combout\,
	combout => \dc_disp_ctrl|Selector5~1_combout\);

-- Location: LCCOMB_X27_Y20_N18
\dc_disp_ctrl|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Selector5~2_combout\ = (\dc_disp_ctrl|current_transmit_state.s_fifth_byte~regout\) # ((\dc_disp_ctrl|Selector5~1_combout\) # (\dc_disp_ctrl|current_transmit_state.s_fourth_byte~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc_disp_ctrl|current_transmit_state.s_fifth_byte~regout\,
	datac => \dc_disp_ctrl|Selector5~1_combout\,
	datad => \dc_disp_ctrl|current_transmit_state.s_fourth_byte~regout\,
	combout => \dc_disp_ctrl|Selector5~2_combout\);

-- Location: LCCOMB_X28_Y16_N10
\b_gen_pll:i_reset_ctrl|reset_cnt[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|reset_cnt[0]~6_combout\ = \b_gen_pll:i_reset_ctrl|reset_cnt\(0) $ (\b_gen_pll:i_reset_ctrl|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b_gen_pll:i_reset_ctrl|reset_cnt\(0),
	datad => \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\,
	combout => \b_gen_pll:i_reset_ctrl|reset_cnt[0]~6_combout\);

-- Location: LCFF_X36_Y21_N11
\serial_uart|received_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|received_data~4_combout\,
	ena => \serial_uart|received_data[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(7));

-- Location: LCCOMB_X42_Y20_N0
\key_ctrl|p_key_ctrl~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|p_key_ctrl~1_combout\ = ((!\key_ctrl|pulse_counter\(7) & (!\key_ctrl|pulse_counter\(5) & !\key_ctrl|pulse_counter\(6)))) # (!\key_ctrl|pulse_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|pulse_counter\(8),
	datab => \key_ctrl|pulse_counter\(7),
	datac => \key_ctrl|pulse_counter\(5),
	datad => \key_ctrl|pulse_counter\(6),
	combout => \key_ctrl|p_key_ctrl~1_combout\);

-- Location: LCCOMB_X37_Y21_N20
\serial_ctrl|serial_up~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_ctrl|serial_up~2_combout\ = (\serial_uart|received_data\(4) & (\serial_uart|received_data\(0) & \serial_ctrl|serial_up~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|received_data\(4),
	datac => \serial_uart|received_data\(0),
	datad => \serial_ctrl|serial_up~1_combout\,
	combout => \serial_ctrl|serial_up~2_combout\);

-- Location: LCFF_X36_Y21_N1
\serial_uart|rx_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|rx_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_state.s_idle~regout\);

-- Location: LCFF_X34_Y21_N3
\serial_uart|rx_bit_cnt_half\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt_half~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt_half~regout\);

-- Location: LCCOMB_X36_Y21_N2
\serial_uart|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector1~0_combout\ = (\serial_uart|rx_bit_cnt_wrap~regout\ & \serial_uart|rx_state.s_stop_bit~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \serial_uart|rx_state.s_stop_bit~regout\,
	combout => \serial_uart|Selector1~0_combout\);

-- Location: LCCOMB_X36_Y21_N24
\serial_uart|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector0~0_combout\ = (!\serial_uart|Selector1~0_combout\ & ((\serial_uart|rx_state.s_idle~regout\) # ((!\serial_uart|rx_bit_cnt_half~regout\ & !\serial_uart|rx_2r~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt_half~regout\,
	datab => \serial_uart|Selector1~0_combout\,
	datac => \serial_uart|rx_2r~regout\,
	datad => \serial_uart|rx_state.s_idle~regout\,
	combout => \serial_uart|Selector0~0_combout\);

-- Location: LCCOMB_X36_Y21_N20
\serial_uart|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector2~0_combout\ = (\serial_uart|rx_bit_cnt_half~regout\ & !\serial_uart|rx_state.s_idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt_half~regout\,
	datad => \serial_uart|rx_state.s_idle~regout\,
	combout => \serial_uart|Selector2~0_combout\);

-- Location: LCFF_X27_Y20_N27
\dc_disp_ctrl|data_transmit[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Selector3~2_combout\,
	ena => \dc_disp_ctrl|p_dc_disp_ctrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|data_transmit\(2));

-- Location: LCFF_X29_Y16_N1
\dc_disp_ctrl|bcd_stack2_2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a8\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	ena => \dc_disp_ctrl|bcd_stack2_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack2_2\(0));

-- Location: LCCOMB_X29_Y20_N26
\dc_disp_ctrl|bcd_stack1_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_stack1_2~0_combout\ = (\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a8\))) # (!\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & (\dc_disp_ctrl|bcd_stack2_2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_stack2_2\(0),
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a8\,
	datad => \dc_disp_ctrl|bcd_stack1_1[2]~0_combout\,
	combout => \dc_disp_ctrl|bcd_stack1_2~0_combout\);

-- Location: LCFF_X27_Y20_N13
\dc_disp_ctrl|update\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|update~1_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|update~regout\);

-- Location: LCFF_X29_Y16_N11
\dc_disp_ctrl|bcd_stack2_0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_stack2_0[0]~feeder_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_stack2_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack2_0\(0));

-- Location: LCCOMB_X29_Y20_N4
\dc_disp_ctrl|bcd_stack1_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_stack1_0~0_combout\ = (\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (!\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & ((\dc_disp_ctrl|bcd_stack2_0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \dc_disp_ctrl|bcd_stack2_0\(0),
	datad => \dc_disp_ctrl|bcd_stack1_1[2]~0_combout\,
	combout => \dc_disp_ctrl|bcd_stack1_0~0_combout\);

-- Location: LCFF_X29_Y16_N13
\dc_disp_ctrl|bcd_stack2_0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	ena => \dc_disp_ctrl|bcd_stack2_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack2_0\(1));

-- Location: LCCOMB_X29_Y20_N6
\dc_disp_ctrl|bcd_stack1_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_stack1_0~1_combout\ = (\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\)) # (!\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & ((\dc_disp_ctrl|bcd_stack2_0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc_disp_ctrl|bcd_stack1_1[2]~0_combout\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\,
	datad => \dc_disp_ctrl|bcd_stack2_0\(1),
	combout => \dc_disp_ctrl|bcd_stack1_0~1_combout\);

-- Location: LCFF_X29_Y16_N31
\dc_disp_ctrl|bcd_stack2_0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_stack2_0[2]~feeder_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_stack2_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack2_0\(2));

-- Location: LCFF_X30_Y20_N19
\dc_disp_ctrl|bcd_stack2_1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_stack2_1[0]~feeder_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_stack2_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack2_1\(0));

-- Location: LCCOMB_X29_Y20_N24
\dc_disp_ctrl|bcd_stack1_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_stack1_1~2_combout\ = (\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\)) # (!\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & ((\dc_disp_ctrl|bcd_stack2_1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc_disp_ctrl|bcd_stack1_1[2]~0_combout\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\,
	datad => \dc_disp_ctrl|bcd_stack2_1\(0),
	combout => \dc_disp_ctrl|bcd_stack1_1~2_combout\);

-- Location: LCCOMB_X36_Y21_N10
\serial_uart|received_data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~4_combout\ = (\serial_uart|rx_2r~regout\ & !\serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|rx_2r~regout\,
	datad => \serial_uart|reset_2r~regout\,
	combout => \serial_uart|received_data~4_combout\);

-- Location: LCCOMB_X36_Y21_N0
\serial_uart|rx_state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_state~10_combout\ = (!\serial_uart|reset_2r~regout\ & (!\serial_uart|Selector1~0_combout\ & ((\serial_uart|rx_bit_cnt_half~regout\) # (\serial_uart|rx_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt_half~regout\,
	datab => \serial_uart|reset_2r~regout\,
	datac => \serial_uart|rx_state.s_idle~regout\,
	datad => \serial_uart|Selector1~0_combout\,
	combout => \serial_uart|rx_state~10_combout\);

-- Location: LCCOMB_X34_Y21_N28
\serial_uart|rx_bit_cnt_half~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt_half~0_combout\ = (\serial_uart|rx_bit_cnt\(6) & ((\serial_uart|rx_bit_cnt\(5)) # ((\serial_uart|rx_bit_cnt\(4) & \serial_uart|rx_bit_cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(4),
	datab => \serial_uart|rx_bit_cnt\(3),
	datac => \serial_uart|rx_bit_cnt\(6),
	datad => \serial_uart|rx_bit_cnt\(5),
	combout => \serial_uart|rx_bit_cnt_half~0_combout\);

-- Location: LCCOMB_X34_Y21_N2
\serial_uart|rx_bit_cnt_half~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt_half~1_combout\ = (\serial_uart|rx_bit_cnt_en~regout\ & ((\serial_uart|rx_bit_cnt\(8)) # ((\serial_uart|rx_bit_cnt\(7) & \serial_uart|rx_bit_cnt_half~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt_en~regout\,
	datab => \serial_uart|rx_bit_cnt\(7),
	datac => \serial_uart|rx_bit_cnt\(8),
	datad => \serial_uart|rx_bit_cnt_half~0_combout\,
	combout => \serial_uart|rx_bit_cnt_half~1_combout\);

-- Location: LCFF_X28_Y21_N13
\serial_uart|tx_byte_saved[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector20~0_combout\,
	ena => \serial_uart|tx_byte_saved[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_byte_saved\(4));

-- Location: LCCOMB_X28_Y20_N16
\dc_disp_ctrl|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Selector3~0_combout\ = (\dc_disp_ctrl|bcd_stack1_0\(2) & (\dc_disp_ctrl|current_transmit_state.s_third_byte~regout\ & !\dc_disp_ctrl|bcd_stack1_0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc_disp_ctrl|bcd_stack1_0\(2),
	datac => \dc_disp_ctrl|current_transmit_state.s_third_byte~regout\,
	datad => \dc_disp_ctrl|bcd_stack1_0\(3),
	combout => \dc_disp_ctrl|Selector3~0_combout\);

-- Location: LCCOMB_X28_Y20_N12
\dc_disp_ctrl|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Selector3~1_combout\ = (\dc_disp_ctrl|Selector3~0_combout\) # ((!\dc_disp_ctrl|bcd_stack1_1\(3) & (\dc_disp_ctrl|current_transmit_state.s_second_byte~regout\ & \dc_disp_ctrl|bcd_stack1_1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_stack1_1\(3),
	datab => \dc_disp_ctrl|current_transmit_state.s_second_byte~regout\,
	datac => \dc_disp_ctrl|Selector3~0_combout\,
	datad => \dc_disp_ctrl|bcd_stack1_1\(2),
	combout => \dc_disp_ctrl|Selector3~1_combout\);

-- Location: LCCOMB_X27_Y20_N26
\dc_disp_ctrl|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Selector3~2_combout\ = (\dc_disp_ctrl|current_transmit_state.s_fifth_byte~regout\) # ((\dc_disp_ctrl|current_transmit_state.s_fourth_byte~regout\) # ((\dc_disp_ctrl|reset_transmission_active~regout\ & \dc_disp_ctrl|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|reset_transmission_active~regout\,
	datab => \dc_disp_ctrl|current_transmit_state.s_fifth_byte~regout\,
	datac => \dc_disp_ctrl|Selector3~1_combout\,
	datad => \dc_disp_ctrl|current_transmit_state.s_fourth_byte~regout\,
	combout => \dc_disp_ctrl|Selector3~2_combout\);

-- Location: LCCOMB_X28_Y20_N22
\dc_disp_ctrl|update~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|update~0_combout\ = (!\dc_disp_ctrl|valid_transmit~regout\ & (\dc_disp_ctrl|current_transmit_state.s_fifth_byte~regout\ & \serial_uart|transmit_ready_int~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc_disp_ctrl|valid_transmit~regout\,
	datac => \dc_disp_ctrl|current_transmit_state.s_fifth_byte~regout\,
	datad => \serial_uart|transmit_ready_int~regout\,
	combout => \dc_disp_ctrl|update~0_combout\);

-- Location: LCCOMB_X27_Y20_N12
\dc_disp_ctrl|update~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|update~1_combout\ = (\dc_disp_ctrl|update~0_combout\ & (\dc_disp_ctrl|stack~regout\)) # (!\dc_disp_ctrl|update~0_combout\ & (((\dc_disp_ctrl|update~regout\) # (\dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|stack~regout\,
	datab => \dc_disp_ctrl|update~0_combout\,
	datac => \dc_disp_ctrl|update~regout\,
	datad => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	combout => \dc_disp_ctrl|update~1_combout\);

-- Location: LCFF_X28_Y21_N23
\serial_uart|tx_byte_saved[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector19~0_combout\,
	ena => \serial_uart|tx_byte_saved[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_byte_saved\(5));

-- Location: LCFF_X27_Y20_N3
\dc_disp_ctrl|data_transmit[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Selector1~2_combout\,
	ena => \dc_disp_ctrl|p_dc_disp_ctrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|data_transmit\(4));

-- Location: LCCOMB_X28_Y21_N12
\serial_uart|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector20~0_combout\ = (\serial_uart|tx_state.s_tx_data~regout\ & (\serial_uart|tx_byte_saved\(5))) # (!\serial_uart|tx_state.s_tx_data~regout\ & ((\dc_disp_ctrl|data_transmit\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_byte_saved\(5),
	datac => \dc_disp_ctrl|data_transmit\(4),
	datad => \serial_uart|tx_state.s_tx_data~regout\,
	combout => \serial_uart|Selector20~0_combout\);

-- Location: LCFF_X27_Y20_N29
\dc_disp_ctrl|data_transmit[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Selector0~15_combout\,
	ena => \dc_disp_ctrl|p_dc_disp_ctrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|data_transmit\(5));

-- Location: LCCOMB_X28_Y21_N22
\serial_uart|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector19~0_combout\ = (\dc_disp_ctrl|data_transmit\(5) & !\serial_uart|tx_state.s_tx_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|data_transmit\(5),
	datad => \serial_uart|tx_state.s_tx_data~regout\,
	combout => \serial_uart|Selector19~0_combout\);

-- Location: LCCOMB_X29_Y20_N10
\dc_disp_ctrl|Mux46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux46~0_combout\ = (\dc_disp_ctrl|reset_transmission_active~regout\ & (\dc_disp_ctrl|bcd_stack1_0\(3) & ((\dc_disp_ctrl|bcd_stack1_0\(1)) # (\dc_disp_ctrl|bcd_stack1_0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_stack1_0\(1),
	datab => \dc_disp_ctrl|bcd_stack1_0\(2),
	datac => \dc_disp_ctrl|reset_transmission_active~regout\,
	datad => \dc_disp_ctrl|bcd_stack1_0\(3),
	combout => \dc_disp_ctrl|Mux46~0_combout\);

-- Location: LCCOMB_X29_Y20_N28
\dc_disp_ctrl|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Selector1~0_combout\ = (\dc_disp_ctrl|current_transmit_state.s_third_byte~regout\ & !\dc_disp_ctrl|Mux46~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc_disp_ctrl|current_transmit_state.s_third_byte~regout\,
	datad => \dc_disp_ctrl|Mux46~0_combout\,
	combout => \dc_disp_ctrl|Selector1~0_combout\);

-- Location: LCCOMB_X28_Y20_N24
\dc_disp_ctrl|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Selector1~1_combout\ = (\dc_disp_ctrl|current_transmit_state.s_second_byte~regout\ & (((!\dc_disp_ctrl|bcd_stack1_1\(2) & !\dc_disp_ctrl|bcd_stack1_1\(1))) # (!\dc_disp_ctrl|bcd_stack1_1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_stack1_1\(3),
	datab => \dc_disp_ctrl|current_transmit_state.s_second_byte~regout\,
	datac => \dc_disp_ctrl|bcd_stack1_1\(2),
	datad => \dc_disp_ctrl|bcd_stack1_1\(1),
	combout => \dc_disp_ctrl|Selector1~1_combout\);

-- Location: LCCOMB_X27_Y20_N2
\dc_disp_ctrl|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Selector1~2_combout\ = (\dc_disp_ctrl|Selector1~0_combout\) # ((\dc_disp_ctrl|reset_transmission_active~regout\ & ((\dc_disp_ctrl|current_transmit_state.s_first_byte~regout\) # (\dc_disp_ctrl|Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|current_transmit_state.s_first_byte~regout\,
	datab => \dc_disp_ctrl|Selector1~1_combout\,
	datac => \dc_disp_ctrl|reset_transmission_active~regout\,
	datad => \dc_disp_ctrl|Selector1~0_combout\,
	combout => \dc_disp_ctrl|Selector1~2_combout\);

-- Location: LCCOMB_X38_Y21_N10
\pwm_ctrl|Add1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~35_combout\ = (\key_ctrl|on_key~regout\ & (((\pwm_ctrl|prev_dc\(1)) # (\pwm_ctrl|LessThan3~1_combout\)))) # (!\key_ctrl|on_key~regout\ & (\serial_ctrl|serial_on~regout\ & ((\pwm_ctrl|prev_dc\(1)) # (\pwm_ctrl|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|on_key~regout\,
	datab => \serial_ctrl|serial_on~regout\,
	datac => \pwm_ctrl|prev_dc\(1),
	datad => \pwm_ctrl|LessThan3~1_combout\,
	combout => \pwm_ctrl|Add1~35_combout\);

-- Location: LCCOMB_X27_Y20_N28
\dc_disp_ctrl|Selector0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Selector0~15_combout\ = (!\dc_disp_ctrl|current_transmit_state.s_fifth_byte~regout\ & (\dc_disp_ctrl|current_transmit_state.s_idle~regout\ & ((\dc_disp_ctrl|Selector0~3_combout\) # 
-- (!\dc_disp_ctrl|current_transmit_state.s_third_byte~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|current_transmit_state.s_third_byte~regout\,
	datab => \dc_disp_ctrl|current_transmit_state.s_fifth_byte~regout\,
	datac => \dc_disp_ctrl|current_transmit_state.s_idle~regout\,
	datad => \dc_disp_ctrl|Selector0~3_combout\,
	combout => \dc_disp_ctrl|Selector0~15_combout\);

-- Location: LCCOMB_X29_Y20_N22
\dc_disp_ctrl|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Selector0~3_combout\ = (((!\dc_disp_ctrl|bcd_stack1_0\(1) & !\dc_disp_ctrl|bcd_stack1_0\(2))) # (!\dc_disp_ctrl|bcd_stack1_0\(3))) # (!\dc_disp_ctrl|reset_transmission_active~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_stack1_0\(1),
	datab => \dc_disp_ctrl|bcd_stack1_0\(2),
	datac => \dc_disp_ctrl|reset_transmission_active~regout\,
	datad => \dc_disp_ctrl|bcd_stack1_0\(3),
	combout => \dc_disp_ctrl|Selector0~3_combout\);

-- Location: LCCOMB_X29_Y16_N30
\dc_disp_ctrl|bcd_stack2_0[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_stack2_0[2]~feeder_combout\ = \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\,
	combout => \dc_disp_ctrl|bcd_stack2_0[2]~feeder_combout\);

-- Location: LCCOMB_X29_Y16_N10
\dc_disp_ctrl|bcd_stack2_0[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_stack2_0[0]~feeder_combout\ = \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \dc_disp_ctrl|bcd_stack2_0[0]~feeder_combout\);

-- Location: LCCOMB_X30_Y20_N18
\dc_disp_ctrl|bcd_stack2_1[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_stack2_1[0]~feeder_combout\ = \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\,
	combout => \dc_disp_ctrl|bcd_stack2_1[0]~feeder_combout\);

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

-- Location: PLL_1
\b_gen_pll:i_altera_pll|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 8,
	c0_initial => 1,
	c0_low => 8,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_duty_cycle => 50,
	clk0_phase_shift => "0",
	clk1_counter => "c0",
	clk1_divide_by => 1,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 1,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk1",
	gate_lock_counter => 1000,
	gate_lock_signal => "yes",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 20000,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 16,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 5370,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	areset => GND,
	inclk => \b_gen_pll:i_altera_pll|altpll_component|pll_INCLK_bus\,
	locked => \b_gen_pll:i_altera_pll|altpll_component|_locked\,
	clk => \b_gen_pll:i_altera_pll|altpll_component|pll_CLK_bus\);

-- Location: CLKCTRL_G3
\b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y19_N0
\dc_disp_ctrl|transmission_started~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|transmission_started~1_combout\ = (!\dc_disp_ctrl|transmission_finished~regout\ & \dc_disp_ctrl|transmission_started~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dc_disp_ctrl|transmission_finished~regout\,
	datad => \dc_disp_ctrl|transmission_started~regout\,
	combout => \dc_disp_ctrl|transmission_started~1_combout\);

-- Location: LCCOMB_X28_Y16_N18
\b_gen_pll:i_reset_ctrl|reset_cnt[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|reset_cnt[1]~7_combout\ = (\b_gen_pll:i_reset_ctrl|reset_cnt\(0) & (\b_gen_pll:i_reset_ctrl|reset_cnt\(1) $ (VCC))) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(0) & (\b_gen_pll:i_reset_ctrl|reset_cnt\(1) & VCC))
-- \b_gen_pll:i_reset_ctrl|reset_cnt[1]~8\ = CARRY((\b_gen_pll:i_reset_ctrl|reset_cnt\(0) & \b_gen_pll:i_reset_ctrl|reset_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_gen_pll:i_reset_ctrl|reset_cnt\(0),
	datab => \b_gen_pll:i_reset_ctrl|reset_cnt\(1),
	datad => VCC,
	combout => \b_gen_pll:i_reset_ctrl|reset_cnt[1]~7_combout\,
	cout => \b_gen_pll:i_reset_ctrl|reset_cnt[1]~8\);

-- Location: LCFF_X28_Y16_N19
\b_gen_pll:i_reset_ctrl|reset_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[1]~7_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(1));

-- Location: LCCOMB_X28_Y16_N22
\b_gen_pll:i_reset_ctrl|reset_cnt[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|reset_cnt[3]~11_combout\ = (\b_gen_pll:i_reset_ctrl|reset_cnt\(3) & (\b_gen_pll:i_reset_ctrl|reset_cnt[2]~10\ $ (GND))) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(3) & (!\b_gen_pll:i_reset_ctrl|reset_cnt[2]~10\ & VCC))
-- \b_gen_pll:i_reset_ctrl|reset_cnt[3]~12\ = CARRY((\b_gen_pll:i_reset_ctrl|reset_cnt\(3) & !\b_gen_pll:i_reset_ctrl|reset_cnt[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b_gen_pll:i_reset_ctrl|reset_cnt\(3),
	datad => VCC,
	cin => \b_gen_pll:i_reset_ctrl|reset_cnt[2]~10\,
	combout => \b_gen_pll:i_reset_ctrl|reset_cnt[3]~11_combout\,
	cout => \b_gen_pll:i_reset_ctrl|reset_cnt[3]~12\);

-- Location: LCFF_X28_Y16_N23
\b_gen_pll:i_reset_ctrl|reset_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[3]~11_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(3));

-- Location: LCCOMB_X28_Y16_N24
\b_gen_pll:i_reset_ctrl|reset_cnt[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|reset_cnt[4]~13_combout\ = (\b_gen_pll:i_reset_ctrl|reset_cnt\(4) & (!\b_gen_pll:i_reset_ctrl|reset_cnt[3]~12\)) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(4) & ((\b_gen_pll:i_reset_ctrl|reset_cnt[3]~12\) # (GND)))
-- \b_gen_pll:i_reset_ctrl|reset_cnt[4]~14\ = CARRY((!\b_gen_pll:i_reset_ctrl|reset_cnt[3]~12\) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_gen_pll:i_reset_ctrl|reset_cnt\(4),
	datad => VCC,
	cin => \b_gen_pll:i_reset_ctrl|reset_cnt[3]~12\,
	combout => \b_gen_pll:i_reset_ctrl|reset_cnt[4]~13_combout\,
	cout => \b_gen_pll:i_reset_ctrl|reset_cnt[4]~14\);

-- Location: LCCOMB_X28_Y16_N26
\b_gen_pll:i_reset_ctrl|reset_cnt[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|reset_cnt[5]~15_combout\ = (\b_gen_pll:i_reset_ctrl|reset_cnt\(5) & (\b_gen_pll:i_reset_ctrl|reset_cnt[4]~14\ $ (GND))) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(5) & (!\b_gen_pll:i_reset_ctrl|reset_cnt[4]~14\ & VCC))
-- \b_gen_pll:i_reset_ctrl|reset_cnt[5]~16\ = CARRY((\b_gen_pll:i_reset_ctrl|reset_cnt\(5) & !\b_gen_pll:i_reset_ctrl|reset_cnt[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b_gen_pll:i_reset_ctrl|reset_cnt\(5),
	datad => VCC,
	cin => \b_gen_pll:i_reset_ctrl|reset_cnt[4]~14\,
	combout => \b_gen_pll:i_reset_ctrl|reset_cnt[5]~15_combout\,
	cout => \b_gen_pll:i_reset_ctrl|reset_cnt[5]~16\);

-- Location: LCFF_X28_Y16_N27
\b_gen_pll:i_reset_ctrl|reset_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[5]~15_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(5));

-- Location: LCFF_X28_Y16_N25
\b_gen_pll:i_reset_ctrl|reset_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[4]~13_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(4));

-- Location: LCCOMB_X28_Y16_N28
\b_gen_pll:i_reset_ctrl|reset_cnt[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|reset_cnt[6]~17_combout\ = \b_gen_pll:i_reset_ctrl|reset_cnt[5]~16\ $ (\b_gen_pll:i_reset_ctrl|reset_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b_gen_pll:i_reset_ctrl|reset_cnt\(6),
	cin => \b_gen_pll:i_reset_ctrl|reset_cnt[5]~16\,
	combout => \b_gen_pll:i_reset_ctrl|reset_cnt[6]~17_combout\);

-- Location: LCFF_X28_Y16_N29
\b_gen_pll:i_reset_ctrl|reset_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[6]~17_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(6));

-- Location: LCCOMB_X28_Y16_N6
\b_gen_pll:i_reset_ctrl|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\ = (\b_gen_pll:i_reset_ctrl|LessThan0~0_combout\) # (((!\b_gen_pll:i_reset_ctrl|reset_cnt\(6)) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(4))) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_gen_pll:i_reset_ctrl|LessThan0~0_combout\,
	datab => \b_gen_pll:i_reset_ctrl|reset_cnt\(5),
	datac => \b_gen_pll:i_reset_ctrl|reset_cnt\(4),
	datad => \b_gen_pll:i_reset_ctrl|reset_cnt\(6),
	combout => \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y16_N0
\b_gen_pll:i_reset_ctrl|reset_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|reset_out~0_combout\ = !\b_gen_pll:i_reset_ctrl|LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\,
	combout => \b_gen_pll:i_reset_ctrl|reset_out~0_combout\);

-- Location: LCFF_X28_Y16_N1
\b_gen_pll:i_reset_ctrl|reset_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_out~0_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_out~regout\);

-- Location: LCCOMB_X27_Y20_N30
\dc_disp_ctrl|current_transmit_state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|current_transmit_state~17_combout\ = (!\dc_disp_ctrl|update~regout\ & \dc_disp_ctrl|reset_transmission_active~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|update~regout\,
	datac => \dc_disp_ctrl|reset_transmission_active~regout\,
	combout => \dc_disp_ctrl|current_transmit_state~17_combout\);

-- Location: LCCOMB_X27_Y20_N10
\dc_disp_ctrl|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Selector7~0_combout\ = (\dc_disp_ctrl|current_transmit_state.s_idle~regout\ & (!\dc_disp_ctrl|transmission_finished~regout\ & (\dc_disp_ctrl|current_transmit_state.s_first_byte~regout\))) # 
-- (!\dc_disp_ctrl|current_transmit_state.s_idle~regout\ & (((!\dc_disp_ctrl|current_transmit_state~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|current_transmit_state.s_idle~regout\,
	datab => \dc_disp_ctrl|transmission_finished~regout\,
	datac => \dc_disp_ctrl|current_transmit_state.s_first_byte~regout\,
	datad => \dc_disp_ctrl|current_transmit_state~17_combout\,
	combout => \dc_disp_ctrl|Selector7~0_combout\);

-- Location: LCCOMB_X27_Y21_N0
\serial_uart|tx_bit_cnt[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[0]~9_combout\ = \serial_uart|tx_bit_cnt\(0) $ (VCC)
-- \serial_uart|tx_bit_cnt[0]~10\ = CARRY(\serial_uart|tx_bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_bit_cnt\(0),
	datad => VCC,
	combout => \serial_uart|tx_bit_cnt[0]~9_combout\,
	cout => \serial_uart|tx_bit_cnt[0]~10\);

-- Location: LCCOMB_X35_Y21_N20
\serial_uart|reset_r~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|reset_r~0_combout\ = !\b_gen_pll:i_reset_ctrl|reset_out~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	combout => \serial_uart|reset_r~0_combout\);

-- Location: LCFF_X35_Y21_N21
\serial_uart|reset_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|reset_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|reset_r~regout\);

-- Location: LCFF_X35_Y21_N25
\serial_uart|reset_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \serial_uart|reset_r~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|reset_2r~regout\);

-- Location: LCFF_X28_Y21_N1
\serial_uart|tx_bit_cnt_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector30~0_combout\,
	sclr => \serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt_en~regout\);

-- Location: LCCOMB_X27_Y21_N28
\serial_uart|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|LessThan2~0_combout\ = (!\serial_uart|tx_bit_cnt\(3) & (!\serial_uart|tx_bit_cnt\(1) & (!\serial_uart|tx_bit_cnt\(2) & !\serial_uart|tx_bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt\(3),
	datab => \serial_uart|tx_bit_cnt\(1),
	datac => \serial_uart|tx_bit_cnt\(2),
	datad => \serial_uart|tx_bit_cnt\(0),
	combout => \serial_uart|LessThan2~0_combout\);

-- Location: LCCOMB_X27_Y21_N12
\serial_uart|tx_bit_cnt[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[6]~22_combout\ = (\serial_uart|tx_bit_cnt\(6) & (\serial_uart|tx_bit_cnt[5]~21\ $ (GND))) # (!\serial_uart|tx_bit_cnt\(6) & (!\serial_uart|tx_bit_cnt[5]~21\ & VCC))
-- \serial_uart|tx_bit_cnt[6]~23\ = CARRY((\serial_uart|tx_bit_cnt\(6) & !\serial_uart|tx_bit_cnt[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt\(6),
	datad => VCC,
	cin => \serial_uart|tx_bit_cnt[5]~21\,
	combout => \serial_uart|tx_bit_cnt[6]~22_combout\,
	cout => \serial_uart|tx_bit_cnt[6]~23\);

-- Location: LCFF_X27_Y21_N13
\serial_uart|tx_bit_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[6]~22_combout\,
	sclr => \serial_uart|tx_bit_cnt[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(6));

-- Location: LCCOMB_X27_Y21_N22
\serial_uart|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|LessThan2~1_combout\ = (!\serial_uart|tx_bit_cnt\(6) & (((\serial_uart|LessThan2~0_combout\) # (!\serial_uart|tx_bit_cnt\(4))) # (!\serial_uart|tx_bit_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt\(5),
	datab => \serial_uart|LessThan2~0_combout\,
	datac => \serial_uart|tx_bit_cnt\(4),
	datad => \serial_uart|tx_bit_cnt\(6),
	combout => \serial_uart|LessThan2~1_combout\);

-- Location: LCCOMB_X27_Y21_N24
\serial_uart|tx_bit_cnt[8]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[8]~11_combout\ = ((\serial_uart|tx_bit_cnt\(8) & (\serial_uart|tx_bit_cnt\(7) & !\serial_uart|LessThan2~1_combout\))) # (!\serial_uart|tx_bit_cnt_en~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt\(8),
	datab => \serial_uart|tx_bit_cnt\(7),
	datac => \serial_uart|tx_bit_cnt_en~regout\,
	datad => \serial_uart|LessThan2~1_combout\,
	combout => \serial_uart|tx_bit_cnt[8]~11_combout\);

-- Location: LCFF_X27_Y21_N1
\serial_uart|tx_bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[0]~9_combout\,
	sclr => \serial_uart|tx_bit_cnt[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(0));

-- Location: LCCOMB_X27_Y21_N2
\serial_uart|tx_bit_cnt[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[1]~12_combout\ = (\serial_uart|tx_bit_cnt\(1) & (!\serial_uart|tx_bit_cnt[0]~10\)) # (!\serial_uart|tx_bit_cnt\(1) & ((\serial_uart|tx_bit_cnt[0]~10\) # (GND)))
-- \serial_uart|tx_bit_cnt[1]~13\ = CARRY((!\serial_uart|tx_bit_cnt[0]~10\) # (!\serial_uart|tx_bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_bit_cnt\(1),
	datad => VCC,
	cin => \serial_uart|tx_bit_cnt[0]~10\,
	combout => \serial_uart|tx_bit_cnt[1]~12_combout\,
	cout => \serial_uart|tx_bit_cnt[1]~13\);

-- Location: LCFF_X27_Y21_N3
\serial_uart|tx_bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[1]~12_combout\,
	sclr => \serial_uart|tx_bit_cnt[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(1));

-- Location: LCCOMB_X27_Y21_N4
\serial_uart|tx_bit_cnt[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[2]~14_combout\ = (\serial_uart|tx_bit_cnt\(2) & (\serial_uart|tx_bit_cnt[1]~13\ $ (GND))) # (!\serial_uart|tx_bit_cnt\(2) & (!\serial_uart|tx_bit_cnt[1]~13\ & VCC))
-- \serial_uart|tx_bit_cnt[2]~15\ = CARRY((\serial_uart|tx_bit_cnt\(2) & !\serial_uart|tx_bit_cnt[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_bit_cnt\(2),
	datad => VCC,
	cin => \serial_uart|tx_bit_cnt[1]~13\,
	combout => \serial_uart|tx_bit_cnt[2]~14_combout\,
	cout => \serial_uart|tx_bit_cnt[2]~15\);

-- Location: LCFF_X27_Y21_N5
\serial_uart|tx_bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[2]~14_combout\,
	sclr => \serial_uart|tx_bit_cnt[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(2));

-- Location: LCCOMB_X27_Y21_N8
\serial_uart|tx_bit_cnt[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt[4]~18_combout\ = (\serial_uart|tx_bit_cnt\(4) & (\serial_uart|tx_bit_cnt[3]~17\ $ (GND))) # (!\serial_uart|tx_bit_cnt\(4) & (!\serial_uart|tx_bit_cnt[3]~17\ & VCC))
-- \serial_uart|tx_bit_cnt[4]~19\ = CARRY((\serial_uart|tx_bit_cnt\(4) & !\serial_uart|tx_bit_cnt[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_bit_cnt\(4),
	datad => VCC,
	cin => \serial_uart|tx_bit_cnt[3]~17\,
	combout => \serial_uart|tx_bit_cnt[4]~18_combout\,
	cout => \serial_uart|tx_bit_cnt[4]~19\);

-- Location: LCFF_X27_Y21_N9
\serial_uart|tx_bit_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[4]~18_combout\,
	sclr => \serial_uart|tx_bit_cnt[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(4));

-- Location: LCFF_X27_Y21_N15
\serial_uart|tx_bit_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt[7]~24_combout\,
	sclr => \serial_uart|tx_bit_cnt[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt\(7));

-- Location: LCCOMB_X27_Y21_N18
\serial_uart|tx_bit_cnt_wrap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_cnt_wrap~0_combout\ = (\serial_uart|tx_bit_cnt\(8) & (\serial_uart|tx_bit_cnt\(7) & (\serial_uart|tx_bit_cnt_en~regout\ & !\serial_uart|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt\(8),
	datab => \serial_uart|tx_bit_cnt\(7),
	datac => \serial_uart|tx_bit_cnt_en~regout\,
	datad => \serial_uart|LessThan2~1_combout\,
	combout => \serial_uart|tx_bit_cnt_wrap~0_combout\);

-- Location: LCFF_X27_Y21_N19
\serial_uart|tx_bit_cnt_wrap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_cnt_wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_cnt_wrap~regout\);

-- Location: LCCOMB_X28_Y21_N10
\serial_uart|tx_byte_saved[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_byte_saved[1]~0_combout\ = ((\serial_uart|tx_state.s_idle~regout\) # (!\dc_disp_ctrl|valid_transmit~regout\)) # (!\serial_uart|transmit_ready_int~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|transmit_ready_int~regout\,
	datac => \dc_disp_ctrl|valid_transmit~regout\,
	datad => \serial_uart|tx_state.s_idle~regout\,
	combout => \serial_uart|tx_byte_saved[1]~0_combout\);

-- Location: LCCOMB_X28_Y21_N30
\serial_uart|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector27~0_combout\ = ((!\serial_uart|tx_bit_cnt_wrap~regout\ & \serial_uart|tx_state.s_start_bit~regout\)) # (!\serial_uart|tx_byte_saved[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_bit_cnt_wrap~regout\,
	datac => \serial_uart|tx_state.s_start_bit~regout\,
	datad => \serial_uart|tx_byte_saved[1]~0_combout\,
	combout => \serial_uart|Selector27~0_combout\);

-- Location: LCFF_X28_Y21_N31
\serial_uart|tx_state.s_start_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector27~0_combout\,
	sclr => \serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_state.s_start_bit~regout\);

-- Location: LCCOMB_X29_Y21_N28
\serial_uart|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector33~0_combout\ = (\serial_uart|tx_state.s_tx_data~regout\ & (\serial_uart|tx_bit_no~1_combout\ $ (((!\serial_uart|tx_bit_no\(0)))))) # (!\serial_uart|tx_state.s_tx_data~regout\ & (((\serial_uart|tx_state.s_idle~regout\ & 
-- \serial_uart|tx_bit_no\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_no~1_combout\,
	datab => \serial_uart|tx_state.s_idle~regout\,
	datac => \serial_uart|tx_bit_no\(0),
	datad => \serial_uart|tx_state.s_tx_data~regout\,
	combout => \serial_uart|Selector33~0_combout\);

-- Location: LCFF_X29_Y21_N29
\serial_uart|tx_bit_no[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_no\(0));

-- Location: LCCOMB_X29_Y21_N2
\serial_uart|tx_bit_no~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_no~1_combout\ = ((\serial_uart|tx_bit_no\(1) & (\serial_uart|tx_bit_no\(0) & \serial_uart|tx_bit_no\(2)))) # (!\serial_uart|tx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt_wrap~regout\,
	datab => \serial_uart|tx_bit_no\(1),
	datac => \serial_uart|tx_bit_no\(0),
	datad => \serial_uart|tx_bit_no\(2),
	combout => \serial_uart|tx_bit_no~1_combout\);

-- Location: LCCOMB_X29_Y21_N0
\serial_uart|tx_bit_no[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_bit_no[1]~0_combout\ = (\serial_uart|tx_bit_no~1_combout\ & ((\serial_uart|tx_bit_no\(1)))) # (!\serial_uart|tx_bit_no~1_combout\ & (\serial_uart|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Add1~0_combout\,
	datac => \serial_uart|tx_bit_no\(1),
	datad => \serial_uart|tx_bit_no~1_combout\,
	combout => \serial_uart|tx_bit_no[1]~0_combout\);

-- Location: LCCOMB_X29_Y21_N14
\serial_uart|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector32~0_combout\ = (\serial_uart|tx_state.s_idle~regout\ & \serial_uart|tx_bit_no\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|tx_state.s_idle~regout\,
	datad => \serial_uart|tx_bit_no\(1),
	combout => \serial_uart|Selector32~0_combout\);

-- Location: LCFF_X29_Y21_N1
\serial_uart|tx_bit_no[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|tx_bit_no[1]~0_combout\,
	sdata => \serial_uart|Selector32~0_combout\,
	sload => \serial_uart|ALT_INV_tx_state.s_tx_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_no\(1));

-- Location: LCCOMB_X29_Y21_N24
\serial_uart|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector28~0_combout\ = (\serial_uart|tx_bit_cnt_wrap~regout\ & (\serial_uart|tx_bit_no\(1) & (\serial_uart|tx_bit_no\(0) & \serial_uart|tx_bit_no\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt_wrap~regout\,
	datab => \serial_uart|tx_bit_no\(1),
	datac => \serial_uart|tx_bit_no\(0),
	datad => \serial_uart|tx_bit_no\(2),
	combout => \serial_uart|Selector28~0_combout\);

-- Location: LCCOMB_X28_Y21_N18
\serial_uart|Selector28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector28~1_combout\ = (\serial_uart|tx_bit_cnt_wrap~regout\ & ((\serial_uart|tx_state.s_start_bit~regout\) # ((\serial_uart|tx_state.s_tx_data~regout\ & !\serial_uart|Selector28~0_combout\)))) # (!\serial_uart|tx_bit_cnt_wrap~regout\ & 
-- (((\serial_uart|tx_state.s_tx_data~regout\ & !\serial_uart|Selector28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt_wrap~regout\,
	datab => \serial_uart|tx_state.s_start_bit~regout\,
	datac => \serial_uart|tx_state.s_tx_data~regout\,
	datad => \serial_uart|Selector28~0_combout\,
	combout => \serial_uart|Selector28~1_combout\);

-- Location: LCFF_X28_Y21_N19
\serial_uart|tx_state.s_tx_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector28~1_combout\,
	sclr => \serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_state.s_tx_data~regout\);

-- Location: LCCOMB_X29_Y21_N18
\serial_uart|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector31~0_combout\ = (\serial_uart|Selector29~0_combout\) # ((\serial_uart|tx_bit_no\(2) & ((\serial_uart|tx_state.s_idle~regout\) # (\serial_uart|tx_state.s_tx_data~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector29~0_combout\,
	datab => \serial_uart|tx_state.s_idle~regout\,
	datac => \serial_uart|tx_bit_no\(2),
	datad => \serial_uart|tx_state.s_tx_data~regout\,
	combout => \serial_uart|Selector31~0_combout\);

-- Location: LCFF_X29_Y21_N19
\serial_uart|tx_bit_no[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_bit_no\(2));

-- Location: LCCOMB_X29_Y21_N30
\serial_uart|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector29~0_combout\ = (\serial_uart|tx_state.s_tx_data~regout\ & (\serial_uart|tx_bit_no\(1) & (\serial_uart|tx_bit_cnt_wrap~regout\ & \serial_uart|tx_bit_no\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_state.s_tx_data~regout\,
	datab => \serial_uart|tx_bit_no\(1),
	datac => \serial_uart|tx_bit_cnt_wrap~regout\,
	datad => \serial_uart|tx_bit_no\(0),
	combout => \serial_uart|Selector29~0_combout\);

-- Location: LCCOMB_X28_Y21_N8
\serial_uart|Selector29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector29~1_combout\ = (\serial_uart|tx_bit_cnt_wrap~regout\ & (\serial_uart|tx_bit_no\(2) & ((\serial_uart|Selector29~0_combout\)))) # (!\serial_uart|tx_bit_cnt_wrap~regout\ & ((\serial_uart|tx_state.s_stop_bit~regout\) # 
-- ((\serial_uart|tx_bit_no\(2) & \serial_uart|Selector29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_bit_cnt_wrap~regout\,
	datab => \serial_uart|tx_bit_no\(2),
	datac => \serial_uart|tx_state.s_stop_bit~regout\,
	datad => \serial_uart|Selector29~0_combout\,
	combout => \serial_uart|Selector29~1_combout\);

-- Location: LCFF_X28_Y21_N9
\serial_uart|tx_state.s_stop_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector29~1_combout\,
	sclr => \serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_state.s_stop_bit~regout\);

-- Location: LCCOMB_X28_Y21_N14
\serial_uart|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector26~0_combout\ = (\serial_uart|tx_bit_cnt_wrap~regout\ & \serial_uart|tx_state.s_stop_bit~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|tx_bit_cnt_wrap~regout\,
	datac => \serial_uart|tx_state.s_stop_bit~regout\,
	combout => \serial_uart|Selector26~0_combout\);

-- Location: LCCOMB_X28_Y21_N0
\serial_uart|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector30~0_combout\ = (!\serial_uart|Selector26~0_combout\ & ((\serial_uart|tx_state.s_idle~regout\) # ((\dc_disp_ctrl|valid_transmit~regout\ & \serial_uart|transmit_ready_int~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_state.s_idle~regout\,
	datab => \serial_uart|Selector26~0_combout\,
	datac => \dc_disp_ctrl|valid_transmit~regout\,
	datad => \serial_uart|transmit_ready_int~regout\,
	combout => \serial_uart|Selector30~0_combout\);

-- Location: LCCOMB_X28_Y21_N6
\serial_uart|tx_state~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_state~7_combout\ = (\serial_uart|Selector30~0_combout\ & !\serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|Selector30~0_combout\,
	datac => \serial_uart|reset_2r~regout\,
	combout => \serial_uart|tx_state~7_combout\);

-- Location: LCFF_X28_Y21_N7
\serial_uart|tx_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|tx_state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_state.s_idle~regout\);

-- Location: LCCOMB_X28_Y21_N28
\serial_uart|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector25~0_combout\ = (\serial_uart|transmit_ready_int~regout\ & (((\serial_uart|tx_state.s_idle~regout\) # (!\dc_disp_ctrl|valid_transmit~regout\)))) # (!\serial_uart|transmit_ready_int~regout\ & ((\serial_uart|Selector26~0_combout\) # 
-- ((!\serial_uart|tx_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector26~0_combout\,
	datab => \dc_disp_ctrl|valid_transmit~regout\,
	datac => \serial_uart|transmit_ready_int~regout\,
	datad => \serial_uart|tx_state.s_idle~regout\,
	combout => \serial_uart|Selector25~0_combout\);

-- Location: LCFF_X28_Y21_N29
\serial_uart|transmit_ready_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector25~0_combout\,
	sclr => \serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|transmit_ready_int~regout\);

-- Location: LCCOMB_X27_Y20_N20
\dc_disp_ctrl|p_dc_disp_ctrl~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|p_dc_disp_ctrl~0_combout\ = (!\dc_disp_ctrl|valid_transmit~regout\ & \serial_uart|transmit_ready_int~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dc_disp_ctrl|valid_transmit~regout\,
	datad => \serial_uart|transmit_ready_int~regout\,
	combout => \dc_disp_ctrl|p_dc_disp_ctrl~0_combout\);

-- Location: LCFF_X27_Y20_N11
\dc_disp_ctrl|current_transmit_state.s_first_byte\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Selector7~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|p_dc_disp_ctrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|current_transmit_state.s_first_byte~regout\);

-- Location: LCCOMB_X28_Y20_N8
\dc_disp_ctrl|current_transmit_state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|current_transmit_state~16_combout\ = (\dc_disp_ctrl|transmission_finished~regout\ & (!\dc_disp_ctrl|valid_transmit~regout\ & \serial_uart|transmit_ready_int~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc_disp_ctrl|transmission_finished~regout\,
	datac => \dc_disp_ctrl|valid_transmit~regout\,
	datad => \serial_uart|transmit_ready_int~regout\,
	combout => \dc_disp_ctrl|current_transmit_state~16_combout\);

-- Location: LCFF_X28_Y20_N27
\dc_disp_ctrl|current_transmit_state.s_second_byte\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \dc_disp_ctrl|current_transmit_state.s_first_byte~regout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	ena => \dc_disp_ctrl|current_transmit_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|current_transmit_state.s_second_byte~regout\);

-- Location: LCFF_X28_Y20_N17
\dc_disp_ctrl|current_transmit_state.s_third_byte\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \dc_disp_ctrl|current_transmit_state.s_second_byte~regout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	ena => \dc_disp_ctrl|current_transmit_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|current_transmit_state.s_third_byte~regout\);

-- Location: LCFF_X28_Y20_N29
\dc_disp_ctrl|current_transmit_state.s_fourth_byte\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \dc_disp_ctrl|current_transmit_state.s_third_byte~regout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	ena => \dc_disp_ctrl|current_transmit_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|current_transmit_state.s_fourth_byte~regout\);

-- Location: LCFF_X28_Y20_N23
\dc_disp_ctrl|current_transmit_state.s_fifth_byte\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \dc_disp_ctrl|current_transmit_state.s_fourth_byte~regout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	ena => \dc_disp_ctrl|current_transmit_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|current_transmit_state.s_fifth_byte~regout\);

-- Location: LCCOMB_X27_Y20_N0
\dc_disp_ctrl|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Selector6~0_combout\ = (\dc_disp_ctrl|transmission_finished~regout\ & (!\dc_disp_ctrl|current_transmit_state.s_fifth_byte~regout\ & ((\dc_disp_ctrl|current_transmit_state.s_idle~regout\) # 
-- (!\dc_disp_ctrl|current_transmit_state~17_combout\)))) # (!\dc_disp_ctrl|transmission_finished~regout\ & (((\dc_disp_ctrl|current_transmit_state.s_idle~regout\)) # (!\dc_disp_ctrl|current_transmit_state~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|transmission_finished~regout\,
	datab => \dc_disp_ctrl|current_transmit_state~17_combout\,
	datac => \dc_disp_ctrl|current_transmit_state.s_idle~regout\,
	datad => \dc_disp_ctrl|current_transmit_state.s_fifth_byte~regout\,
	combout => \dc_disp_ctrl|Selector6~0_combout\);

-- Location: LCFF_X27_Y20_N1
\dc_disp_ctrl|current_transmit_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Selector6~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|p_dc_disp_ctrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|current_transmit_state.s_idle~regout\);

-- Location: LCFF_X27_Y19_N1
\dc_disp_ctrl|transmission_finished\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|transmission_started~1_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \dc_disp_ctrl|ALT_INV_current_transmit_state.s_idle~regout\,
	ena => \dc_disp_ctrl|p_dc_disp_ctrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|transmission_finished~regout\);

-- Location: LCCOMB_X27_Y20_N22
\dc_disp_ctrl|transmission_started~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|transmission_started~0_combout\ = ((!\dc_disp_ctrl|transmission_finished~regout\ & (\dc_disp_ctrl|transmission_started~regout\ & \dc_disp_ctrl|current_transmit_state.s_idle~regout\))) # (!\dc_disp_ctrl|p_dc_disp_ctrl~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|p_dc_disp_ctrl~0_combout\,
	datab => \dc_disp_ctrl|transmission_finished~regout\,
	datac => \dc_disp_ctrl|transmission_started~regout\,
	datad => \dc_disp_ctrl|current_transmit_state.s_idle~regout\,
	combout => \dc_disp_ctrl|transmission_started~0_combout\);

-- Location: LCFF_X27_Y20_N23
\dc_disp_ctrl|transmission_started\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|transmission_started~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|transmission_started~regout\);

-- Location: LCCOMB_X27_Y20_N4
\dc_disp_ctrl|valid_transmit~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|valid_transmit~0_combout\ = (\dc_disp_ctrl|current_transmit_state.s_idle~regout\ & (!\dc_disp_ctrl|transmission_started~regout\ & (!\dc_disp_ctrl|valid_transmit~regout\ & \serial_uart|transmit_ready_int~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|current_transmit_state.s_idle~regout\,
	datab => \dc_disp_ctrl|transmission_started~regout\,
	datac => \dc_disp_ctrl|valid_transmit~regout\,
	datad => \serial_uart|transmit_ready_int~regout\,
	combout => \dc_disp_ctrl|valid_transmit~0_combout\);

-- Location: LCFF_X27_Y20_N5
\dc_disp_ctrl|valid_transmit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|valid_transmit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|valid_transmit~regout\);

-- Location: LCCOMB_X27_Y20_N24
\dc_disp_ctrl|reset_transmission_active~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|reset_transmission_active~0_combout\ = (\dc_disp_ctrl|reset_transmission_active~regout\) # ((\serial_uart|transmit_ready_int~regout\ & (!\dc_disp_ctrl|valid_transmit~regout\ & \dc_disp_ctrl|current_transmit_state.s_fifth_byte~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|transmit_ready_int~regout\,
	datab => \dc_disp_ctrl|valid_transmit~regout\,
	datac => \dc_disp_ctrl|reset_transmission_active~regout\,
	datad => \dc_disp_ctrl|current_transmit_state.s_fifth_byte~regout\,
	combout => \dc_disp_ctrl|reset_transmission_active~0_combout\);

-- Location: LCFF_X27_Y20_N25
\dc_disp_ctrl|reset_transmission_active\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|reset_transmission_active~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|reset_transmission_active~regout\);

-- Location: LCCOMB_X27_Y20_N16
\dc_disp_ctrl|stack~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|stack~0_combout\ = (\dc_disp_ctrl|stack~regout\ & (((\dc_disp_ctrl|current_transmit_state.s_idle~regout\) # (!\dc_disp_ctrl|reset_transmission_active~regout\)) # (!\dc_disp_ctrl|p_dc_disp_ctrl~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|p_dc_disp_ctrl~0_combout\,
	datab => \dc_disp_ctrl|current_transmit_state.s_idle~regout\,
	datac => \dc_disp_ctrl|stack~regout\,
	datad => \dc_disp_ctrl|reset_transmission_active~regout\,
	combout => \dc_disp_ctrl|stack~0_combout\);

-- Location: LCCOMB_X34_Y21_N8
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

-- Location: LCCOMB_X34_Y21_N12
\serial_uart|rx_bit_cnt[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[2]~14_combout\ = (\serial_uart|rx_bit_cnt\(2) & (\serial_uart|rx_bit_cnt[1]~13\ $ (GND))) # (!\serial_uart|rx_bit_cnt\(2) & (!\serial_uart|rx_bit_cnt[1]~13\ & VCC))
-- \serial_uart|rx_bit_cnt[2]~15\ = CARRY((\serial_uart|rx_bit_cnt\(2) & !\serial_uart|rx_bit_cnt[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(2),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[1]~13\,
	combout => \serial_uart|rx_bit_cnt[2]~14_combout\,
	cout => \serial_uart|rx_bit_cnt[2]~15\);

-- Location: LCCOMB_X34_Y21_N14
\serial_uart|rx_bit_cnt[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[3]~16_combout\ = (\serial_uart|rx_bit_cnt\(3) & (!\serial_uart|rx_bit_cnt[2]~15\)) # (!\serial_uart|rx_bit_cnt\(3) & ((\serial_uart|rx_bit_cnt[2]~15\) # (GND)))
-- \serial_uart|rx_bit_cnt[3]~17\ = CARRY((!\serial_uart|rx_bit_cnt[2]~15\) # (!\serial_uart|rx_bit_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_cnt\(3),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[2]~15\,
	combout => \serial_uart|rx_bit_cnt[3]~16_combout\,
	cout => \serial_uart|rx_bit_cnt[3]~17\);

-- Location: LCFF_X34_Y21_N15
\serial_uart|rx_bit_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[3]~16_combout\,
	sclr => \serial_uart|rx_bit_cnt[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(3));

-- Location: LCCOMB_X34_Y21_N18
\serial_uart|rx_bit_cnt[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[5]~20_combout\ = (\serial_uart|rx_bit_cnt\(5) & (!\serial_uart|rx_bit_cnt[4]~19\)) # (!\serial_uart|rx_bit_cnt\(5) & ((\serial_uart|rx_bit_cnt[4]~19\) # (GND)))
-- \serial_uart|rx_bit_cnt[5]~21\ = CARRY((!\serial_uart|rx_bit_cnt[4]~19\) # (!\serial_uart|rx_bit_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_cnt\(5),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[4]~19\,
	combout => \serial_uart|rx_bit_cnt[5]~20_combout\,
	cout => \serial_uart|rx_bit_cnt[5]~21\);

-- Location: LCFF_X34_Y21_N19
\serial_uart|rx_bit_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[5]~20_combout\,
	sclr => \serial_uart|rx_bit_cnt[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(5));

-- Location: LCCOMB_X34_Y21_N20
\serial_uart|rx_bit_cnt[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[6]~22_combout\ = (\serial_uart|rx_bit_cnt\(6) & (\serial_uart|rx_bit_cnt[5]~21\ $ (GND))) # (!\serial_uart|rx_bit_cnt\(6) & (!\serial_uart|rx_bit_cnt[5]~21\ & VCC))
-- \serial_uart|rx_bit_cnt[6]~23\ = CARRY((\serial_uart|rx_bit_cnt\(6) & !\serial_uart|rx_bit_cnt[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(6),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[5]~21\,
	combout => \serial_uart|rx_bit_cnt[6]~22_combout\,
	cout => \serial_uart|rx_bit_cnt[6]~23\);

-- Location: LCCOMB_X34_Y21_N22
\serial_uart|rx_bit_cnt[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[7]~24_combout\ = (\serial_uart|rx_bit_cnt\(7) & (!\serial_uart|rx_bit_cnt[6]~23\)) # (!\serial_uart|rx_bit_cnt\(7) & ((\serial_uart|rx_bit_cnt[6]~23\) # (GND)))
-- \serial_uart|rx_bit_cnt[7]~25\ = CARRY((!\serial_uart|rx_bit_cnt[6]~23\) # (!\serial_uart|rx_bit_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_cnt\(7),
	datad => VCC,
	cin => \serial_uart|rx_bit_cnt[6]~23\,
	combout => \serial_uart|rx_bit_cnt[7]~24_combout\,
	cout => \serial_uart|rx_bit_cnt[7]~25\);

-- Location: LCFF_X34_Y21_N23
\serial_uart|rx_bit_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[7]~24_combout\,
	sclr => \serial_uart|rx_bit_cnt[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(7));

-- Location: LCCOMB_X34_Y21_N24
\serial_uart|rx_bit_cnt[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[8]~26_combout\ = \serial_uart|rx_bit_cnt\(8) $ (!\serial_uart|rx_bit_cnt[7]~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(8),
	cin => \serial_uart|rx_bit_cnt[7]~25\,
	combout => \serial_uart|rx_bit_cnt[8]~26_combout\);

-- Location: LCFF_X34_Y21_N25
\serial_uart|rx_bit_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[8]~26_combout\,
	sclr => \serial_uart|rx_bit_cnt[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(8));

-- Location: LCCOMB_X34_Y21_N6
\serial_uart|rx_bit_cnt[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt[2]~11_combout\ = ((!\serial_uart|LessThan0~1_combout\ & (\serial_uart|rx_bit_cnt\(8) & \serial_uart|rx_bit_cnt\(7)))) # (!\serial_uart|rx_bit_cnt_en~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt_en~regout\,
	datab => \serial_uart|LessThan0~1_combout\,
	datac => \serial_uart|rx_bit_cnt\(8),
	datad => \serial_uart|rx_bit_cnt\(7),
	combout => \serial_uart|rx_bit_cnt[2]~11_combout\);

-- Location: LCFF_X34_Y21_N9
\serial_uart|rx_bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[0]~9_combout\,
	sclr => \serial_uart|rx_bit_cnt[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(0));

-- Location: LCFF_X34_Y21_N13
\serial_uart|rx_bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[2]~14_combout\,
	sclr => \serial_uart|rx_bit_cnt[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(2));

-- Location: LCCOMB_X34_Y21_N26
\serial_uart|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|LessThan0~0_combout\ = (!\serial_uart|rx_bit_cnt\(1) & (!\serial_uart|rx_bit_cnt\(0) & (!\serial_uart|rx_bit_cnt\(3) & !\serial_uart|rx_bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(1),
	datab => \serial_uart|rx_bit_cnt\(0),
	datac => \serial_uart|rx_bit_cnt\(3),
	datad => \serial_uart|rx_bit_cnt\(2),
	combout => \serial_uart|LessThan0~0_combout\);

-- Location: LCFF_X34_Y21_N21
\serial_uart|rx_bit_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt[6]~22_combout\,
	sclr => \serial_uart|rx_bit_cnt[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt\(6));

-- Location: LCCOMB_X34_Y21_N4
\serial_uart|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|LessThan0~1_combout\ = (!\serial_uart|rx_bit_cnt\(6) & (((\serial_uart|LessThan0~0_combout\) # (!\serial_uart|rx_bit_cnt\(5))) # (!\serial_uart|rx_bit_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt\(4),
	datab => \serial_uart|LessThan0~0_combout\,
	datac => \serial_uart|rx_bit_cnt\(6),
	datad => \serial_uart|rx_bit_cnt\(5),
	combout => \serial_uart|LessThan0~1_combout\);

-- Location: LCCOMB_X34_Y21_N0
\serial_uart|rx_bit_cnt_wrap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_cnt_wrap~0_combout\ = (\serial_uart|rx_bit_cnt_en~regout\ & (!\serial_uart|LessThan0~1_combout\ & (\serial_uart|rx_bit_cnt\(8) & \serial_uart|rx_bit_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt_en~regout\,
	datab => \serial_uart|LessThan0~1_combout\,
	datac => \serial_uart|rx_bit_cnt\(8),
	datad => \serial_uart|rx_bit_cnt\(7),
	combout => \serial_uart|rx_bit_cnt_wrap~0_combout\);

-- Location: LCFF_X34_Y21_N1
\serial_uart|rx_bit_cnt_wrap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|rx_bit_cnt_wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_cnt_wrap~regout\);

-- Location: LCCOMB_X35_Y21_N26
\serial_uart|Selector13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector13~3_combout\ = (\serial_uart|rx_bit_no\(0) & (\serial_uart|rx_bit_cnt_wrap~regout\ & ((!\serial_uart|rx_bit_no\(2)) # (!\serial_uart|rx_bit_no\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_no\(0),
	datab => \serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \serial_uart|rx_bit_no\(1),
	datad => \serial_uart|rx_bit_no\(2),
	combout => \serial_uart|Selector13~3_combout\);

-- Location: LCCOMB_X35_Y21_N16
\serial_uart|Selector13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector13~2_combout\ = (\serial_uart|rx_bit_no\(1) & ((\serial_uart|rx_state.s_stop_bit~regout\) # ((\serial_uart|rx_state.s_rx_data~regout\ & !\serial_uart|Selector13~3_combout\)))) # (!\serial_uart|rx_bit_no\(1) & 
-- (\serial_uart|rx_state.s_rx_data~regout\ & (\serial_uart|Selector13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_state.s_rx_data~regout\,
	datab => \serial_uart|Selector13~3_combout\,
	datac => \serial_uart|rx_bit_no\(1),
	datad => \serial_uart|rx_state.s_stop_bit~regout\,
	combout => \serial_uart|Selector13~2_combout\);

-- Location: LCFF_X35_Y21_N17
\serial_uart|rx_bit_no[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_no\(1));

-- Location: LCCOMB_X35_Y21_N30
\serial_uart|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector12~0_combout\ = (\serial_uart|rx_bit_no\(0) & (\serial_uart|rx_bit_cnt_wrap~regout\ & (\serial_uart|rx_bit_no\(1) & \serial_uart|rx_state.s_rx_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_no\(0),
	datab => \serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \serial_uart|rx_bit_no\(1),
	datad => \serial_uart|rx_state.s_rx_data~regout\,
	combout => \serial_uart|Selector12~0_combout\);

-- Location: LCCOMB_X35_Y21_N28
\serial_uart|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector12~1_combout\ = (\serial_uart|Selector12~0_combout\) # ((\serial_uart|rx_bit_no\(2) & ((\serial_uart|rx_state.s_rx_data~regout\) # (\serial_uart|rx_state.s_stop_bit~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_state.s_rx_data~regout\,
	datab => \serial_uart|Selector12~0_combout\,
	datac => \serial_uart|rx_bit_no\(2),
	datad => \serial_uart|rx_state.s_stop_bit~regout\,
	combout => \serial_uart|Selector12~1_combout\);

-- Location: LCFF_X35_Y21_N29
\serial_uart|rx_bit_no[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_no\(2));

-- Location: LCCOMB_X35_Y21_N0
\serial_uart|rx_bit_no~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_bit_no~0_combout\ = (\serial_uart|rx_bit_no\(0) & (\serial_uart|rx_bit_cnt_wrap~regout\ & ((!\serial_uart|rx_bit_no\(2)) # (!\serial_uart|rx_bit_no\(1))))) # (!\serial_uart|rx_bit_no\(0) & (!\serial_uart|rx_bit_cnt_wrap~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_no\(0),
	datab => \serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \serial_uart|rx_bit_no\(1),
	datad => \serial_uart|rx_bit_no\(2),
	combout => \serial_uart|rx_bit_no~0_combout\);

-- Location: LCCOMB_X35_Y21_N22
\serial_uart|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector14~0_combout\ = (\serial_uart|rx_state.s_rx_data~regout\ & (((\serial_uart|rx_bit_no\(0) & \serial_uart|rx_state.s_stop_bit~regout\)) # (!\serial_uart|rx_bit_no~0_combout\))) # (!\serial_uart|rx_state.s_rx_data~regout\ & 
-- (((\serial_uart|rx_bit_no\(0) & \serial_uart|rx_state.s_stop_bit~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_state.s_rx_data~regout\,
	datab => \serial_uart|rx_bit_no~0_combout\,
	datac => \serial_uart|rx_bit_no\(0),
	datad => \serial_uart|rx_state.s_stop_bit~regout\,
	combout => \serial_uart|Selector14~0_combout\);

-- Location: LCFF_X35_Y21_N23
\serial_uart|rx_bit_no[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_bit_no\(0));

-- Location: LCCOMB_X35_Y21_N10
\serial_uart|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Equal0~0_combout\ = (\serial_uart|rx_bit_no\(2) & (\serial_uart|rx_bit_no\(1) & \serial_uart|rx_bit_no\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_bit_no\(2),
	datac => \serial_uart|rx_bit_no\(1),
	datad => \serial_uart|rx_bit_no\(0),
	combout => \serial_uart|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y21_N4
\serial_uart|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector2~1_combout\ = (\serial_uart|Selector2~0_combout\) # ((\serial_uart|rx_state.s_rx_data~regout\ & ((!\serial_uart|Equal0~0_combout\) # (!\serial_uart|rx_bit_cnt_wrap~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector2~0_combout\,
	datab => \serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \serial_uart|rx_state.s_rx_data~regout\,
	datad => \serial_uart|Equal0~0_combout\,
	combout => \serial_uart|Selector2~1_combout\);

-- Location: LCFF_X36_Y21_N5
\serial_uart|rx_state.s_rx_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector2~1_combout\,
	sclr => \serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_state.s_rx_data~regout\);

-- Location: LCCOMB_X36_Y21_N18
\serial_uart|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector4~3_combout\ = (\serial_uart|rx_bit_cnt_wrap~regout\ & (\serial_uart|rx_state.s_rx_data~regout\ & ((\serial_uart|Equal0~0_combout\)))) # (!\serial_uart|rx_bit_cnt_wrap~regout\ & (((\serial_uart|rx_state.s_stop_bit~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt_wrap~regout\,
	datab => \serial_uart|rx_state.s_rx_data~regout\,
	datac => \serial_uart|rx_state.s_stop_bit~regout\,
	datad => \serial_uart|Equal0~0_combout\,
	combout => \serial_uart|Selector4~3_combout\);

-- Location: LCFF_X36_Y21_N19
\serial_uart|rx_state.s_stop_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector4~3_combout\,
	sclr => \serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_state.s_stop_bit~regout\);

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fpga_in_rx~I\ : cycloneii_io
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
	padio => ww_fpga_in_rx,
	combout => \fpga_in_rx~combout\);

-- Location: LCCOMB_X36_Y21_N26
\serial_uart|rx_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|rx_r~feeder_combout\ = \fpga_in_rx~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fpga_in_rx~combout\,
	combout => \serial_uart|rx_r~feeder_combout\);

-- Location: LCFF_X36_Y21_N27
\serial_uart|rx_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|rx_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_r~regout\);

-- Location: LCCOMB_X36_Y21_N14
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

-- Location: LCFF_X36_Y21_N15
\serial_uart|rx_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|rx_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_2r~regout\);

-- Location: LCCOMB_X36_Y21_N28
\serial_uart|received_data_valid~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data_valid~0_combout\ = (\serial_uart|rx_bit_cnt_wrap~regout\ & (\serial_uart|rx_state.s_stop_bit~regout\ & \serial_uart|rx_2r~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt_wrap~regout\,
	datab => \serial_uart|rx_state.s_stop_bit~regout\,
	datac => \serial_uart|rx_2r~regout\,
	combout => \serial_uart|received_data_valid~0_combout\);

-- Location: LCFF_X36_Y21_N29
\serial_uart|received_data_valid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|received_data_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data_valid~regout\);

-- Location: LCCOMB_X36_Y21_N6
\serial_uart|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector10~0_combout\ = (\serial_uart|rx_state.s_stop_bit~regout\) # ((\serial_uart|rx_state.s_rx_data~regout\ & !\serial_uart|rx_bit_cnt_wrap~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|rx_state.s_rx_data~regout\,
	datac => \serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \serial_uart|rx_state.s_stop_bit~regout\,
	combout => \serial_uart|Selector10~0_combout\);

-- Location: LCCOMB_X37_Y21_N28
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

-- Location: LCFF_X37_Y21_N29
\serial_uart|rx_byte_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(6));

-- Location: LCCOMB_X37_Y21_N24
\serial_uart|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector6~0_combout\ = (\serial_uart|Selector4~2_combout\ & ((\serial_uart|rx_byte_int\(6)) # ((\serial_uart|Selector10~0_combout\ & \serial_uart|rx_byte_int\(5))))) # (!\serial_uart|Selector4~2_combout\ & (\serial_uart|Selector10~0_combout\ 
-- & (\serial_uart|rx_byte_int\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector4~2_combout\,
	datab => \serial_uart|Selector10~0_combout\,
	datac => \serial_uart|rx_byte_int\(5),
	datad => \serial_uart|rx_byte_int\(6),
	combout => \serial_uart|Selector6~0_combout\);

-- Location: LCFF_X37_Y21_N25
\serial_uart|rx_byte_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(5));

-- Location: LCCOMB_X37_Y21_N30
\serial_uart|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector7~0_combout\ = (\serial_uart|Selector4~2_combout\ & ((\serial_uart|rx_byte_int\(5)) # ((\serial_uart|Selector10~0_combout\ & \serial_uart|rx_byte_int\(4))))) # (!\serial_uart|Selector4~2_combout\ & (\serial_uart|Selector10~0_combout\ 
-- & (\serial_uart|rx_byte_int\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector4~2_combout\,
	datab => \serial_uart|Selector10~0_combout\,
	datac => \serial_uart|rx_byte_int\(4),
	datad => \serial_uart|rx_byte_int\(5),
	combout => \serial_uart|Selector7~0_combout\);

-- Location: LCFF_X37_Y21_N31
\serial_uart|rx_byte_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(4));

-- Location: LCCOMB_X37_Y21_N4
\serial_uart|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector8~0_combout\ = (\serial_uart|Selector4~2_combout\ & ((\serial_uart|rx_byte_int\(4)) # ((\serial_uart|Selector10~0_combout\ & \serial_uart|rx_byte_int\(3))))) # (!\serial_uart|Selector4~2_combout\ & (\serial_uart|Selector10~0_combout\ 
-- & (\serial_uart|rx_byte_int\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector4~2_combout\,
	datab => \serial_uart|Selector10~0_combout\,
	datac => \serial_uart|rx_byte_int\(3),
	datad => \serial_uart|rx_byte_int\(4),
	combout => \serial_uart|Selector8~0_combout\);

-- Location: LCFF_X37_Y21_N5
\serial_uart|rx_byte_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(3));

-- Location: LCCOMB_X36_Y21_N8
\serial_uart|received_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~3_combout\ = (!\serial_uart|reset_2r~regout\ & \serial_uart|rx_byte_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|reset_2r~regout\,
	datad => \serial_uart|rx_byte_int\(3),
	combout => \serial_uart|received_data~3_combout\);

-- Location: LCCOMB_X35_Y21_N24
\serial_uart|received_data[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data[1]~10_combout\ = (\serial_uart|reset_2r~regout\) # ((\serial_uart|rx_bit_cnt_wrap~regout\ & (\serial_uart|Equal0~0_combout\ & \serial_uart|rx_state.s_rx_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt_wrap~regout\,
	datab => \serial_uart|Equal0~0_combout\,
	datac => \serial_uart|reset_2r~regout\,
	datad => \serial_uart|rx_state.s_rx_data~regout\,
	combout => \serial_uart|received_data[1]~10_combout\);

-- Location: LCFF_X36_Y21_N9
\serial_uart|received_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|received_data~3_combout\,
	ena => \serial_uart|received_data[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(3));

-- Location: LCCOMB_X37_Y21_N10
\serial_uart|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector9~0_combout\ = (\serial_uart|Selector4~2_combout\ & ((\serial_uart|rx_byte_int\(3)) # ((\serial_uart|Selector10~0_combout\ & \serial_uart|rx_byte_int\(2))))) # (!\serial_uart|Selector4~2_combout\ & (\serial_uart|Selector10~0_combout\ 
-- & (\serial_uart|rx_byte_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector4~2_combout\,
	datab => \serial_uart|Selector10~0_combout\,
	datac => \serial_uart|rx_byte_int\(2),
	datad => \serial_uart|rx_byte_int\(3),
	combout => \serial_uart|Selector9~0_combout\);

-- Location: LCFF_X37_Y21_N11
\serial_uart|rx_byte_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(2));

-- Location: LCCOMB_X37_Y21_N18
\serial_uart|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector10~1_combout\ = (\serial_uart|Selector4~2_combout\ & ((\serial_uart|rx_byte_int\(2)) # ((\serial_uart|Selector10~0_combout\ & \serial_uart|rx_byte_int\(1))))) # (!\serial_uart|Selector4~2_combout\ & (\serial_uart|Selector10~0_combout\ 
-- & (\serial_uart|rx_byte_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector4~2_combout\,
	datab => \serial_uart|Selector10~0_combout\,
	datac => \serial_uart|rx_byte_int\(1),
	datad => \serial_uart|rx_byte_int\(2),
	combout => \serial_uart|Selector10~1_combout\);

-- Location: LCFF_X37_Y21_N19
\serial_uart|rx_byte_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(1));

-- Location: LCCOMB_X36_Y21_N30
\serial_uart|received_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~2_combout\ = (!\serial_uart|reset_2r~regout\ & \serial_uart|rx_byte_int\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|reset_2r~regout\,
	datad => \serial_uart|rx_byte_int\(1),
	combout => \serial_uart|received_data~2_combout\);

-- Location: LCFF_X36_Y21_N31
\serial_uart|received_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|received_data~2_combout\,
	ena => \serial_uart|received_data[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(1));

-- Location: LCCOMB_X36_Y21_N12
\serial_ctrl|serial_up~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_ctrl|serial_up~0_combout\ = (!\serial_uart|received_data\(7) & (\serial_uart|received_data_valid~regout\ & (!\serial_uart|received_data\(3) & !\serial_uart|received_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|received_data\(7),
	datab => \serial_uart|received_data_valid~regout\,
	datac => \serial_uart|received_data\(3),
	datad => \serial_uart|received_data\(1),
	combout => \serial_ctrl|serial_up~0_combout\);

-- Location: LCCOMB_X37_Y21_N26
\serial_uart|received_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~7_combout\ = (!\serial_uart|reset_2r~regout\ & \serial_uart|rx_byte_int\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|reset_2r~regout\,
	datad => \serial_uart|rx_byte_int\(2),
	combout => \serial_uart|received_data~7_combout\);

-- Location: LCFF_X37_Y21_N27
\serial_uart|received_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|received_data~7_combout\,
	ena => \serial_uart|received_data[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(2));

-- Location: LCCOMB_X37_Y21_N0
\serial_uart|received_data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~5_combout\ = (!\serial_uart|reset_2r~regout\ & \serial_uart|rx_byte_int\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|reset_2r~regout\,
	datad => \serial_uart|rx_byte_int\(4),
	combout => \serial_uart|received_data~5_combout\);

-- Location: LCFF_X37_Y21_N1
\serial_uart|received_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|received_data~5_combout\,
	ena => \serial_uart|received_data[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(4));

-- Location: LCCOMB_X36_Y21_N22
\serial_uart|received_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~6_combout\ = (!\serial_uart|reset_2r~regout\ & \serial_uart|rx_byte_int\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|reset_2r~regout\,
	datad => \serial_uart|rx_byte_int\(5),
	combout => \serial_uart|received_data~6_combout\);

-- Location: LCFF_X36_Y21_N23
\serial_uart|received_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|received_data~6_combout\,
	ena => \serial_uart|received_data[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(5));

-- Location: LCCOMB_X38_Y21_N16
\serial_ctrl|serial_off~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_ctrl|serial_off~0_combout\ = (!\serial_uart|received_data\(6) & (!\serial_uart|received_data\(2) & (\serial_uart|received_data\(4) & \serial_uart|received_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|received_data\(6),
	datab => \serial_uart|received_data\(2),
	datac => \serial_uart|received_data\(4),
	datad => \serial_uart|received_data\(5),
	combout => \serial_ctrl|serial_off~0_combout\);

-- Location: LCCOMB_X38_Y21_N28
\serial_ctrl|serial_on~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_ctrl|serial_on~0_combout\ = (\serial_uart|received_data\(0) & (\serial_ctrl|serial_up~0_combout\ & \serial_ctrl|serial_off~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|received_data\(0),
	datab => \serial_ctrl|serial_up~0_combout\,
	datac => \serial_ctrl|serial_off~0_combout\,
	combout => \serial_ctrl|serial_on~0_combout\);

-- Location: LCFF_X38_Y21_N29
\serial_ctrl|serial_on\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_ctrl|serial_on~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_ctrl|serial_on~regout\);

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

-- Location: LCCOMB_X41_Y19_N4
\key_ctrl|key_r[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|key_r[1]~feeder_combout\ = \key_n~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_n~combout\(1),
	combout => \key_ctrl|key_r[1]~feeder_combout\);

-- Location: LCFF_X41_Y19_N5
\key_ctrl|key_r[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|key_r[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|key_r\(1));

-- Location: LCFF_X41_Y19_N25
\key_ctrl|key_2r[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \key_ctrl|key_r\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|key_2r\(1));

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
	padio => ww_key_n(2),
	combout => \key_n~combout\(2));

-- Location: LCCOMB_X41_Y19_N14
\key_ctrl|key_r[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|key_r[2]~feeder_combout\ = \key_n~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_n~combout\(2),
	combout => \key_ctrl|key_r[2]~feeder_combout\);

-- Location: LCFF_X41_Y19_N15
\key_ctrl|key_r[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|key_r[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|key_r\(2));

-- Location: LCFF_X41_Y19_N27
\key_ctrl|key_2r[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \key_ctrl|key_r\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|key_2r\(2));

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
	padio => ww_key_n(3),
	combout => \key_n~combout\(3));

-- Location: LCFF_X41_Y19_N9
\key_ctrl|key_r[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \key_n~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|key_r\(3));

-- Location: LCFF_X41_Y19_N29
\key_ctrl|key_2r[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \key_ctrl|key_r\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|key_2r\(3));

-- Location: LCCOMB_X41_Y19_N26
\key_ctrl|on_key~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|on_key~1_combout\ = (\key_ctrl|key_2r\(2)) # (\key_ctrl|key_2r\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_ctrl|key_2r\(2),
	datad => \key_ctrl|key_2r\(3),
	combout => \key_ctrl|on_key~1_combout\);

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

-- Location: LCCOMB_X41_Y19_N2
\key_ctrl|key_r[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|key_r[0]~feeder_combout\ = \key_n~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_n~combout\(0),
	combout => \key_ctrl|key_r[0]~feeder_combout\);

-- Location: LCFF_X41_Y19_N3
\key_ctrl|key_r[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|key_r[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|key_r\(0));

-- Location: LCCOMB_X41_Y19_N6
\key_ctrl|key_2r[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|key_2r[0]~feeder_combout\ = \key_ctrl|key_r\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_ctrl|key_r\(0),
	combout => \key_ctrl|key_2r[0]~feeder_combout\);

-- Location: LCFF_X41_Y19_N7
\key_ctrl|key_2r[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|key_2r[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|key_2r\(0));

-- Location: LCCOMB_X41_Y19_N12
\key_ctrl|on_key~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|on_key~2_combout\ = (\key_ctrl|on_key~0_combout\ & (\key_ctrl|key_2r\(0) & ((!\key_ctrl|on_key~1_combout\) # (!\key_ctrl|key_2r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|on_key~0_combout\,
	datab => \key_ctrl|key_2r\(1),
	datac => \key_ctrl|on_key~1_combout\,
	datad => \key_ctrl|key_2r\(0),
	combout => \key_ctrl|on_key~2_combout\);

-- Location: LCFF_X41_Y19_N13
\key_ctrl|on_key\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|on_key~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|on_key~regout\);

-- Location: LCCOMB_X38_Y21_N6
\pwm_ctrl|p_pwm_ctrl~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|p_pwm_ctrl~3_combout\ = (!\serial_ctrl|serial_on~regout\ & !\key_ctrl|on_key~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_ctrl|serial_on~regout\,
	datad => \key_ctrl|on_key~regout\,
	combout => \pwm_ctrl|p_pwm_ctrl~3_combout\);

-- Location: LCCOMB_X42_Y20_N14
\key_ctrl|pulse_counter[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[0]~19_combout\ = \key_ctrl|pulse_counter\(0) $ (VCC)
-- \key_ctrl|pulse_counter[0]~20\ = CARRY(\key_ctrl|pulse_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|pulse_counter\(0),
	datad => VCC,
	combout => \key_ctrl|pulse_counter[0]~19_combout\,
	cout => \key_ctrl|pulse_counter[0]~20\);

-- Location: LCCOMB_X41_Y19_N16
\key_ctrl|p_key_ctrl~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|p_key_ctrl~0_combout\ = (((!\key_ctrl|key_2r\(1)) # (!\key_ctrl|key_2r\(2))) # (!\key_ctrl|key_2r\(3))) # (!\key_ctrl|key_2r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|key_2r\(0),
	datab => \key_ctrl|key_2r\(3),
	datac => \key_ctrl|key_2r\(2),
	datad => \key_ctrl|key_2r\(1),
	combout => \key_ctrl|p_key_ctrl~0_combout\);

-- Location: LCFF_X41_Y19_N17
\key_ctrl|is_held_down\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|p_key_ctrl~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|is_held_down~regout\);

-- Location: LCCOMB_X42_Y19_N28
\key_ctrl|p_key_ctrl~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|p_key_ctrl~2_combout\ = (!\key_ctrl|pulse_counter\(12) & (!\key_ctrl|pulse_counter\(10) & (!\key_ctrl|pulse_counter\(11) & !\key_ctrl|pulse_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|pulse_counter\(12),
	datab => \key_ctrl|pulse_counter\(10),
	datac => \key_ctrl|pulse_counter\(11),
	datad => \key_ctrl|pulse_counter\(9),
	combout => \key_ctrl|p_key_ctrl~2_combout\);

-- Location: LCCOMB_X42_Y19_N10
\key_ctrl|pulse_counter[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[14]~48_combout\ = (\key_ctrl|pulse_counter\(14) & (\key_ctrl|pulse_counter[13]~47\ $ (GND))) # (!\key_ctrl|pulse_counter\(14) & (!\key_ctrl|pulse_counter[13]~47\ & VCC))
-- \key_ctrl|pulse_counter[14]~49\ = CARRY((\key_ctrl|pulse_counter\(14) & !\key_ctrl|pulse_counter[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|pulse_counter\(14),
	datad => VCC,
	cin => \key_ctrl|pulse_counter[13]~47\,
	combout => \key_ctrl|pulse_counter[14]~48_combout\,
	cout => \key_ctrl|pulse_counter[14]~49\);

-- Location: LCFF_X42_Y19_N11
\key_ctrl|pulse_counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|pulse_counter[14]~48_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \key_ctrl|pulse_counter[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|pulse_counter\(14));

-- Location: LCCOMB_X42_Y19_N30
\key_ctrl|p_key_ctrl~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|p_key_ctrl~3_combout\ = (!\key_ctrl|pulse_counter\(14) & (((\key_ctrl|p_key_ctrl~1_combout\ & \key_ctrl|p_key_ctrl~2_combout\)) # (!\key_ctrl|pulse_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|p_key_ctrl~1_combout\,
	datab => \key_ctrl|p_key_ctrl~2_combout\,
	datac => \key_ctrl|pulse_counter\(13),
	datad => \key_ctrl|pulse_counter\(14),
	combout => \key_ctrl|p_key_ctrl~3_combout\);

-- Location: LCCOMB_X41_Y19_N20
\key_ctrl|pulse_counter[15]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[15]~31_combout\ = (((!\key_ctrl|p_key_ctrl~4_combout\ & !\key_ctrl|p_key_ctrl~3_combout\)) # (!\key_ctrl|is_held_down~regout\)) # (!\key_ctrl|p_key_ctrl~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|p_key_ctrl~0_combout\,
	datab => \key_ctrl|p_key_ctrl~4_combout\,
	datac => \key_ctrl|is_held_down~regout\,
	datad => \key_ctrl|p_key_ctrl~3_combout\,
	combout => \key_ctrl|pulse_counter[15]~31_combout\);

-- Location: LCFF_X42_Y20_N15
\key_ctrl|pulse_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|pulse_counter[0]~19_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \key_ctrl|pulse_counter[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|pulse_counter\(0));

-- Location: LCCOMB_X42_Y20_N18
\key_ctrl|pulse_counter[2]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[2]~23_combout\ = (\key_ctrl|pulse_counter\(2) & (\key_ctrl|pulse_counter[1]~22\ $ (GND))) # (!\key_ctrl|pulse_counter\(2) & (!\key_ctrl|pulse_counter[1]~22\ & VCC))
-- \key_ctrl|pulse_counter[2]~24\ = CARRY((\key_ctrl|pulse_counter\(2) & !\key_ctrl|pulse_counter[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|pulse_counter\(2),
	datad => VCC,
	cin => \key_ctrl|pulse_counter[1]~22\,
	combout => \key_ctrl|pulse_counter[2]~23_combout\,
	cout => \key_ctrl|pulse_counter[2]~24\);

-- Location: LCFF_X42_Y20_N19
\key_ctrl|pulse_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|pulse_counter[2]~23_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \key_ctrl|pulse_counter[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|pulse_counter\(2));

-- Location: LCCOMB_X42_Y20_N22
\key_ctrl|pulse_counter[4]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[4]~27_combout\ = (\key_ctrl|pulse_counter\(4) & (\key_ctrl|pulse_counter[3]~26\ $ (GND))) # (!\key_ctrl|pulse_counter\(4) & (!\key_ctrl|pulse_counter[3]~26\ & VCC))
-- \key_ctrl|pulse_counter[4]~28\ = CARRY((\key_ctrl|pulse_counter\(4) & !\key_ctrl|pulse_counter[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|pulse_counter\(4),
	datad => VCC,
	cin => \key_ctrl|pulse_counter[3]~26\,
	combout => \key_ctrl|pulse_counter[4]~27_combout\,
	cout => \key_ctrl|pulse_counter[4]~28\);

-- Location: LCFF_X42_Y20_N23
\key_ctrl|pulse_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|pulse_counter[4]~27_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \key_ctrl|pulse_counter[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|pulse_counter\(4));

-- Location: LCCOMB_X42_Y20_N26
\key_ctrl|pulse_counter[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[6]~32_combout\ = (\key_ctrl|pulse_counter\(6) & (\key_ctrl|pulse_counter[5]~30\ $ (GND))) # (!\key_ctrl|pulse_counter\(6) & (!\key_ctrl|pulse_counter[5]~30\ & VCC))
-- \key_ctrl|pulse_counter[6]~33\ = CARRY((\key_ctrl|pulse_counter\(6) & !\key_ctrl|pulse_counter[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|pulse_counter\(6),
	datad => VCC,
	cin => \key_ctrl|pulse_counter[5]~30\,
	combout => \key_ctrl|pulse_counter[6]~32_combout\,
	cout => \key_ctrl|pulse_counter[6]~33\);

-- Location: LCFF_X42_Y20_N27
\key_ctrl|pulse_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|pulse_counter[6]~32_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \key_ctrl|pulse_counter[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|pulse_counter\(6));

-- Location: LCCOMB_X42_Y20_N28
\key_ctrl|pulse_counter[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[7]~34_combout\ = (\key_ctrl|pulse_counter\(7) & (!\key_ctrl|pulse_counter[6]~33\)) # (!\key_ctrl|pulse_counter\(7) & ((\key_ctrl|pulse_counter[6]~33\) # (GND)))
-- \key_ctrl|pulse_counter[7]~35\ = CARRY((!\key_ctrl|pulse_counter[6]~33\) # (!\key_ctrl|pulse_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|pulse_counter\(7),
	datad => VCC,
	cin => \key_ctrl|pulse_counter[6]~33\,
	combout => \key_ctrl|pulse_counter[7]~34_combout\,
	cout => \key_ctrl|pulse_counter[7]~35\);

-- Location: LCFF_X42_Y20_N29
\key_ctrl|pulse_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|pulse_counter[7]~34_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \key_ctrl|pulse_counter[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|pulse_counter\(7));

-- Location: LCCOMB_X42_Y20_N30
\key_ctrl|pulse_counter[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[8]~36_combout\ = (\key_ctrl|pulse_counter\(8) & (\key_ctrl|pulse_counter[7]~35\ $ (GND))) # (!\key_ctrl|pulse_counter\(8) & (!\key_ctrl|pulse_counter[7]~35\ & VCC))
-- \key_ctrl|pulse_counter[8]~37\ = CARRY((\key_ctrl|pulse_counter\(8) & !\key_ctrl|pulse_counter[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|pulse_counter\(8),
	datad => VCC,
	cin => \key_ctrl|pulse_counter[7]~35\,
	combout => \key_ctrl|pulse_counter[8]~36_combout\,
	cout => \key_ctrl|pulse_counter[8]~37\);

-- Location: LCFF_X42_Y20_N31
\key_ctrl|pulse_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|pulse_counter[8]~36_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \key_ctrl|pulse_counter[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|pulse_counter\(8));

-- Location: LCCOMB_X42_Y19_N0
\key_ctrl|pulse_counter[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[9]~38_combout\ = (\key_ctrl|pulse_counter\(9) & (!\key_ctrl|pulse_counter[8]~37\)) # (!\key_ctrl|pulse_counter\(9) & ((\key_ctrl|pulse_counter[8]~37\) # (GND)))
-- \key_ctrl|pulse_counter[9]~39\ = CARRY((!\key_ctrl|pulse_counter[8]~37\) # (!\key_ctrl|pulse_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|pulse_counter\(9),
	datad => VCC,
	cin => \key_ctrl|pulse_counter[8]~37\,
	combout => \key_ctrl|pulse_counter[9]~38_combout\,
	cout => \key_ctrl|pulse_counter[9]~39\);

-- Location: LCFF_X42_Y19_N1
\key_ctrl|pulse_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|pulse_counter[9]~38_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \key_ctrl|pulse_counter[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|pulse_counter\(9));

-- Location: LCCOMB_X42_Y19_N2
\key_ctrl|pulse_counter[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[10]~40_combout\ = (\key_ctrl|pulse_counter\(10) & (\key_ctrl|pulse_counter[9]~39\ $ (GND))) # (!\key_ctrl|pulse_counter\(10) & (!\key_ctrl|pulse_counter[9]~39\ & VCC))
-- \key_ctrl|pulse_counter[10]~41\ = CARRY((\key_ctrl|pulse_counter\(10) & !\key_ctrl|pulse_counter[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|pulse_counter\(10),
	datad => VCC,
	cin => \key_ctrl|pulse_counter[9]~39\,
	combout => \key_ctrl|pulse_counter[10]~40_combout\,
	cout => \key_ctrl|pulse_counter[10]~41\);

-- Location: LCFF_X42_Y19_N3
\key_ctrl|pulse_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|pulse_counter[10]~40_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \key_ctrl|pulse_counter[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|pulse_counter\(10));

-- Location: LCCOMB_X42_Y19_N4
\key_ctrl|pulse_counter[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[11]~42_combout\ = (\key_ctrl|pulse_counter\(11) & (!\key_ctrl|pulse_counter[10]~41\)) # (!\key_ctrl|pulse_counter\(11) & ((\key_ctrl|pulse_counter[10]~41\) # (GND)))
-- \key_ctrl|pulse_counter[11]~43\ = CARRY((!\key_ctrl|pulse_counter[10]~41\) # (!\key_ctrl|pulse_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|pulse_counter\(11),
	datad => VCC,
	cin => \key_ctrl|pulse_counter[10]~41\,
	combout => \key_ctrl|pulse_counter[11]~42_combout\,
	cout => \key_ctrl|pulse_counter[11]~43\);

-- Location: LCFF_X42_Y19_N5
\key_ctrl|pulse_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|pulse_counter[11]~42_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \key_ctrl|pulse_counter[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|pulse_counter\(11));

-- Location: LCCOMB_X42_Y19_N8
\key_ctrl|pulse_counter[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[13]~46_combout\ = (\key_ctrl|pulse_counter\(13) & (!\key_ctrl|pulse_counter[12]~45\)) # (!\key_ctrl|pulse_counter\(13) & ((\key_ctrl|pulse_counter[12]~45\) # (GND)))
-- \key_ctrl|pulse_counter[13]~47\ = CARRY((!\key_ctrl|pulse_counter[12]~45\) # (!\key_ctrl|pulse_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|pulse_counter\(13),
	datad => VCC,
	cin => \key_ctrl|pulse_counter[12]~45\,
	combout => \key_ctrl|pulse_counter[13]~46_combout\,
	cout => \key_ctrl|pulse_counter[13]~47\);

-- Location: LCFF_X42_Y19_N9
\key_ctrl|pulse_counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|pulse_counter[13]~46_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \key_ctrl|pulse_counter[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|pulse_counter\(13));

-- Location: LCCOMB_X42_Y19_N12
\key_ctrl|pulse_counter[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[15]~50_combout\ = (\key_ctrl|pulse_counter\(15) & (!\key_ctrl|pulse_counter[14]~49\)) # (!\key_ctrl|pulse_counter\(15) & ((\key_ctrl|pulse_counter[14]~49\) # (GND)))
-- \key_ctrl|pulse_counter[15]~51\ = CARRY((!\key_ctrl|pulse_counter[14]~49\) # (!\key_ctrl|pulse_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|pulse_counter\(15),
	datad => VCC,
	cin => \key_ctrl|pulse_counter[14]~49\,
	combout => \key_ctrl|pulse_counter[15]~50_combout\,
	cout => \key_ctrl|pulse_counter[15]~51\);

-- Location: LCCOMB_X42_Y19_N14
\key_ctrl|pulse_counter[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[16]~52_combout\ = (\key_ctrl|pulse_counter\(16) & (\key_ctrl|pulse_counter[15]~51\ $ (GND))) # (!\key_ctrl|pulse_counter\(16) & (!\key_ctrl|pulse_counter[15]~51\ & VCC))
-- \key_ctrl|pulse_counter[16]~53\ = CARRY((\key_ctrl|pulse_counter\(16) & !\key_ctrl|pulse_counter[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|pulse_counter\(16),
	datad => VCC,
	cin => \key_ctrl|pulse_counter[15]~51\,
	combout => \key_ctrl|pulse_counter[16]~52_combout\,
	cout => \key_ctrl|pulse_counter[16]~53\);

-- Location: LCFF_X42_Y19_N15
\key_ctrl|pulse_counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|pulse_counter[16]~52_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \key_ctrl|pulse_counter[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|pulse_counter\(16));

-- Location: LCCOMB_X42_Y19_N18
\key_ctrl|pulse_counter[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|pulse_counter[18]~56_combout\ = \key_ctrl|pulse_counter[17]~55\ $ (!\key_ctrl|pulse_counter\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \key_ctrl|pulse_counter\(18),
	cin => \key_ctrl|pulse_counter[17]~55\,
	combout => \key_ctrl|pulse_counter[18]~56_combout\);

-- Location: LCFF_X42_Y19_N19
\key_ctrl|pulse_counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|pulse_counter[18]~56_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \key_ctrl|pulse_counter[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|pulse_counter\(18));

-- Location: LCFF_X42_Y19_N13
\key_ctrl|pulse_counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|pulse_counter[15]~50_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \key_ctrl|pulse_counter[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|pulse_counter\(15));

-- Location: LCCOMB_X42_Y19_N24
\key_ctrl|p_key_ctrl~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|p_key_ctrl~4_combout\ = (((!\key_ctrl|pulse_counter\(15)) # (!\key_ctrl|pulse_counter\(16))) # (!\key_ctrl|pulse_counter\(18))) # (!\key_ctrl|pulse_counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|pulse_counter\(17),
	datab => \key_ctrl|pulse_counter\(18),
	datac => \key_ctrl|pulse_counter\(16),
	datad => \key_ctrl|pulse_counter\(15),
	combout => \key_ctrl|p_key_ctrl~4_combout\);

-- Location: LCCOMB_X41_Y19_N10
\key_ctrl|on_key~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|on_key~0_combout\ = (\key_ctrl|p_key_ctrl~0_combout\ & (((!\key_ctrl|p_key_ctrl~4_combout\ & !\key_ctrl|p_key_ctrl~3_combout\)) # (!\key_ctrl|is_held_down~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|p_key_ctrl~0_combout\,
	datab => \key_ctrl|p_key_ctrl~4_combout\,
	datac => \key_ctrl|is_held_down~regout\,
	datad => \key_ctrl|p_key_ctrl~3_combout\,
	combout => \key_ctrl|on_key~0_combout\);

-- Location: LCCOMB_X41_Y19_N18
\key_ctrl|down_key~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|down_key~2_combout\ = (\key_ctrl|key_2r\(0) & (\key_ctrl|key_2r\(3) & (!\key_ctrl|key_2r\(2) & \key_ctrl|on_key~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|key_2r\(0),
	datab => \key_ctrl|key_2r\(3),
	datac => \key_ctrl|key_2r\(2),
	datad => \key_ctrl|on_key~0_combout\,
	combout => \key_ctrl|down_key~2_combout\);

-- Location: LCFF_X41_Y19_N19
\key_ctrl|down_key\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|down_key~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|down_key~regout\);

-- Location: LCCOMB_X37_Y21_N6
\serial_uart|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector11~0_combout\ = (\serial_uart|Selector4~2_combout\ & ((\serial_uart|rx_byte_int\(1)) # ((\serial_uart|Selector10~0_combout\ & \serial_uart|rx_byte_int\(0))))) # (!\serial_uart|Selector4~2_combout\ & (\serial_uart|Selector10~0_combout\ 
-- & (\serial_uart|rx_byte_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|Selector4~2_combout\,
	datab => \serial_uart|Selector10~0_combout\,
	datac => \serial_uart|rx_byte_int\(0),
	datad => \serial_uart|rx_byte_int\(1),
	combout => \serial_uart|Selector11~0_combout\);

-- Location: LCFF_X37_Y21_N7
\serial_uart|rx_byte_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|rx_byte_int\(0));

-- Location: LCCOMB_X37_Y21_N14
\serial_uart|received_data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~9_combout\ = (!\serial_uart|reset_2r~regout\ & \serial_uart|rx_byte_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|reset_2r~regout\,
	datad => \serial_uart|rx_byte_int\(0),
	combout => \serial_uart|received_data~9_combout\);

-- Location: LCFF_X37_Y21_N15
\serial_uart|received_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|received_data~9_combout\,
	ena => \serial_uart|received_data[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(0));

-- Location: LCCOMB_X37_Y21_N12
\serial_uart|received_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_data~8_combout\ = (!\serial_uart|reset_2r~regout\ & \serial_uart|rx_byte_int\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_uart|reset_2r~regout\,
	datad => \serial_uart|rx_byte_int\(6),
	combout => \serial_uart|received_data~8_combout\);

-- Location: LCFF_X37_Y21_N13
\serial_uart|received_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|received_data~8_combout\,
	ena => \serial_uart|received_data[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_data\(6));

-- Location: LCCOMB_X38_Y21_N18
\serial_ctrl|serial_up~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_ctrl|serial_up~1_combout\ = (\serial_uart|received_data\(2) & (\serial_ctrl|serial_up~0_combout\ & \serial_uart|received_data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|received_data\(2),
	datac => \serial_ctrl|serial_up~0_combout\,
	datad => \serial_uart|received_data\(6),
	combout => \serial_ctrl|serial_up~1_combout\);

-- Location: LCCOMB_X37_Y21_N8
\serial_ctrl|serial_down~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_ctrl|serial_down~0_combout\ = (!\serial_uart|received_data\(4) & (!\serial_uart|received_data\(0) & \serial_ctrl|serial_up~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_uart|received_data\(4),
	datac => \serial_uart|received_data\(0),
	datad => \serial_ctrl|serial_up~1_combout\,
	combout => \serial_ctrl|serial_down~0_combout\);

-- Location: LCFF_X37_Y21_N9
\serial_ctrl|serial_down\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_ctrl|serial_down~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_ctrl|serial_down~regout\);

-- Location: LCCOMB_X37_Y21_N2
\pwm_ctrl|p_pwm_ctrl~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|p_pwm_ctrl~2_combout\ = (!\key_ctrl|down_key~regout\ & !\serial_ctrl|serial_down~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|down_key~regout\,
	datac => \serial_ctrl|serial_down~regout\,
	combout => \pwm_ctrl|p_pwm_ctrl~2_combout\);

-- Location: LCCOMB_X38_Y21_N24
\serial_ctrl|serial_off~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_ctrl|serial_off~1_combout\ = (!\serial_uart|received_data\(0) & (\serial_ctrl|serial_up~0_combout\ & \serial_ctrl|serial_off~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|received_data\(0),
	datab => \serial_ctrl|serial_up~0_combout\,
	datac => \serial_ctrl|serial_off~0_combout\,
	combout => \serial_ctrl|serial_off~1_combout\);

-- Location: LCFF_X38_Y21_N25
\serial_ctrl|serial_off\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_ctrl|serial_off~1_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_ctrl|serial_off~regout\);

-- Location: LCCOMB_X41_Y19_N0
\key_ctrl|off_key~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|off_key~2_combout\ = (\key_ctrl|on_key~0_combout\ & (((!\key_ctrl|key_2r\(3) & !\key_ctrl|key_2r\(2))) # (!\key_ctrl|key_2r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|key_2r\(0),
	datab => \key_ctrl|key_2r\(3),
	datac => \key_ctrl|key_2r\(2),
	datad => \key_ctrl|on_key~0_combout\,
	combout => \key_ctrl|off_key~2_combout\);

-- Location: LCFF_X41_Y19_N1
\key_ctrl|off_key\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|off_key~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|off_key~regout\);

-- Location: LCCOMB_X38_Y21_N2
\pwm_ctrl|p_pwm_ctrl~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|p_pwm_ctrl~1_combout\ = (!\serial_ctrl|serial_off~regout\ & !\key_ctrl|off_key~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_ctrl|serial_off~regout\,
	datad => \key_ctrl|off_key~regout\,
	combout => \pwm_ctrl|p_pwm_ctrl~1_combout\);

-- Location: LCCOMB_X41_Y21_N22
\pwm_ctrl|p_pwm_ctrl~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|p_pwm_ctrl~4_combout\ = (((!\pwm_ctrl|p_pwm_ctrl~1_combout\) # (!\pwm_ctrl|p_pwm_ctrl~2_combout\)) # (!\pwm_ctrl|p_pwm_ctrl~3_combout\)) # (!\pwm_ctrl|dc_count[5]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count[5]~1_combout\,
	datab => \pwm_ctrl|p_pwm_ctrl~3_combout\,
	datac => \pwm_ctrl|p_pwm_ctrl~2_combout\,
	datad => \pwm_ctrl|p_pwm_ctrl~1_combout\,
	combout => \pwm_ctrl|p_pwm_ctrl~4_combout\);

-- Location: LCFF_X41_Y21_N23
\pwm_ctrl|current_dc_update\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|p_pwm_ctrl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|current_dc_update~regout\);

-- Location: LCCOMB_X38_Y20_N22
\dc_disp_ctrl|bcd_decode_rom|addr_valid~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_decode_rom|addr_valid~feeder_combout\ = \pwm_ctrl|current_dc_update~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pwm_ctrl|current_dc_update~regout\,
	combout => \dc_disp_ctrl|bcd_decode_rom|addr_valid~feeder_combout\);

-- Location: LCFF_X38_Y20_N23
\dc_disp_ctrl|bcd_decode_rom|addr_valid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_decode_rom|addr_valid~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_decode_rom|addr_valid~regout\);

-- Location: LCFF_X29_Y20_N9
\dc_disp_ctrl|bcd_decode_rom|rom_data_valid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \dc_disp_ctrl|bcd_decode_rom|addr_valid~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\);

-- Location: LCFF_X27_Y20_N17
\dc_disp_ctrl|stack\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|stack~0_combout\,
	sdata => \dc_disp_ctrl|current_transmit_state.s_idle~regout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|stack~regout\);

-- Location: LCCOMB_X28_Y20_N18
\dc_disp_ctrl|bcd_stack1_1[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ = (((\dc_disp_ctrl|valid_transmit~regout\) # (!\dc_disp_ctrl|stack~regout\)) # (!\dc_disp_ctrl|reset_transmission_active~regout\)) # (!\serial_uart|transmit_ready_int~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|transmit_ready_int~regout\,
	datab => \dc_disp_ctrl|reset_transmission_active~regout\,
	datac => \dc_disp_ctrl|valid_transmit~regout\,
	datad => \dc_disp_ctrl|stack~regout\,
	combout => \dc_disp_ctrl|bcd_stack1_1[2]~0_combout\);

-- Location: LCCOMB_X40_Y21_N16
\pwm_ctrl|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add2~0_combout\ = \pwm_ctrl|dc_count\(0) $ (VCC)
-- \pwm_ctrl|Add2~1\ = CARRY(\pwm_ctrl|dc_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|dc_count\(0),
	datad => VCC,
	combout => \pwm_ctrl|Add2~0_combout\,
	cout => \pwm_ctrl|Add2~1\);

-- Location: LCCOMB_X41_Y19_N22
\key_ctrl|up_key~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_ctrl|up_key~2_combout\ = (\key_ctrl|key_2r\(0) & (!\key_ctrl|key_2r\(3) & (\key_ctrl|key_2r\(2) & \key_ctrl|on_key~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|key_2r\(0),
	datab => \key_ctrl|key_2r\(3),
	datac => \key_ctrl|key_2r\(2),
	datad => \key_ctrl|on_key~0_combout\,
	combout => \key_ctrl|up_key~2_combout\);

-- Location: LCFF_X41_Y19_N23
\key_ctrl|up_key\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \key_ctrl|up_key~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_ctrl|up_key~regout\);

-- Location: LCCOMB_X37_Y21_N16
\pwm_ctrl|current_dc_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|current_dc_state~0_combout\ = (\key_ctrl|down_key~regout\) # ((\serial_ctrl|serial_down~regout\) # ((!\serial_ctrl|serial_up~regout\ & !\key_ctrl|up_key~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_ctrl|serial_up~regout\,
	datab => \key_ctrl|down_key~regout\,
	datac => \key_ctrl|up_key~regout\,
	datad => \serial_ctrl|serial_down~regout\,
	combout => \pwm_ctrl|current_dc_state~0_combout\);

-- Location: LCCOMB_X41_Y21_N18
\pwm_ctrl|current_dc_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|current_dc_state~1_combout\ = (\pwm_ctrl|p_pwm_ctrl~1_combout\ & (((\pwm_ctrl|current_dc_state~regout\) # (!\pwm_ctrl|current_dc_state~0_combout\)) # (!\pwm_ctrl|p_pwm_ctrl~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|p_pwm_ctrl~3_combout\,
	datab => \pwm_ctrl|current_dc_state~0_combout\,
	datac => \pwm_ctrl|current_dc_state~regout\,
	datad => \pwm_ctrl|p_pwm_ctrl~1_combout\,
	combout => \pwm_ctrl|current_dc_state~1_combout\);

-- Location: LCFF_X41_Y21_N19
\pwm_ctrl|current_dc_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|current_dc_state~1_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|current_dc_state~regout\);

-- Location: LCCOMB_X41_Y21_N12
\pwm_ctrl|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~32_combout\ = (\pwm_ctrl|p_pwm_ctrl~2_combout\ & (((\pwm_ctrl|Add2~0_combout\ & \pwm_ctrl|current_dc_state~regout\)))) # (!\pwm_ctrl|p_pwm_ctrl~2_combout\ & (\pwm_ctrl|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Add1~4_combout\,
	datab => \pwm_ctrl|Add2~0_combout\,
	datac => \pwm_ctrl|p_pwm_ctrl~2_combout\,
	datad => \pwm_ctrl|current_dc_state~regout\,
	combout => \pwm_ctrl|Add1~32_combout\);

-- Location: LCCOMB_X42_Y21_N8
\pwm_ctrl|Add1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~33_combout\ = (\pwm_ctrl|p_pwm_ctrl~1_combout\ & ((\pwm_ctrl|Add1~31_combout\) # ((\pwm_ctrl|p_pwm_ctrl~3_combout\ & \pwm_ctrl|Add1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Add1~31_combout\,
	datab => \pwm_ctrl|p_pwm_ctrl~1_combout\,
	datac => \pwm_ctrl|p_pwm_ctrl~3_combout\,
	datad => \pwm_ctrl|Add1~32_combout\,
	combout => \pwm_ctrl|Add1~33_combout\);

-- Location: LCCOMB_X40_Y21_N18
\pwm_ctrl|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add2~2_combout\ = (\pwm_ctrl|dc_count\(1) & (!\pwm_ctrl|Add2~1\)) # (!\pwm_ctrl|dc_count\(1) & ((\pwm_ctrl|Add2~1\) # (GND)))
-- \pwm_ctrl|Add2~3\ = CARRY((!\pwm_ctrl|Add2~1\) # (!\pwm_ctrl|dc_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(1),
	datad => VCC,
	cin => \pwm_ctrl|Add2~1\,
	combout => \pwm_ctrl|Add2~2_combout\,
	cout => \pwm_ctrl|Add2~3\);

-- Location: LCCOMB_X40_Y21_N4
\pwm_ctrl|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~6_combout\ = (\pwm_ctrl|dc_count\(1) & (\pwm_ctrl|Add1~5\ & VCC)) # (!\pwm_ctrl|dc_count\(1) & (!\pwm_ctrl|Add1~5\))
-- \pwm_ctrl|Add1~7\ = CARRY((!\pwm_ctrl|dc_count\(1) & !\pwm_ctrl|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(1),
	datad => VCC,
	cin => \pwm_ctrl|Add1~5\,
	combout => \pwm_ctrl|Add1~6_combout\,
	cout => \pwm_ctrl|Add1~7\);

-- Location: LCCOMB_X41_Y21_N2
\pwm_ctrl|Add1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~29_combout\ = (\pwm_ctrl|p_pwm_ctrl~2_combout\ & ((\pwm_ctrl|Add2~2_combout\) # ((!\pwm_ctrl|current_dc_state~regout\)))) # (!\pwm_ctrl|p_pwm_ctrl~2_combout\ & (((\pwm_ctrl|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|p_pwm_ctrl~2_combout\,
	datab => \pwm_ctrl|Add2~2_combout\,
	datac => \pwm_ctrl|Add1~6_combout\,
	datad => \pwm_ctrl|current_dc_state~regout\,
	combout => \pwm_ctrl|Add1~29_combout\);

-- Location: LCCOMB_X42_Y21_N22
\pwm_ctrl|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~30_combout\ = (\pwm_ctrl|p_pwm_ctrl~1_combout\ & ((\pwm_ctrl|Add1~35_combout\) # ((\pwm_ctrl|p_pwm_ctrl~3_combout\ & \pwm_ctrl|Add1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Add1~35_combout\,
	datab => \pwm_ctrl|p_pwm_ctrl~1_combout\,
	datac => \pwm_ctrl|p_pwm_ctrl~3_combout\,
	datad => \pwm_ctrl|Add1~29_combout\,
	combout => \pwm_ctrl|Add1~30_combout\);

-- Location: LCFF_X42_Y21_N23
\pwm_ctrl|dc_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|Add1~30_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \pwm_ctrl|dc_count[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|dc_count\(1));

-- Location: LCCOMB_X40_Y21_N20
\pwm_ctrl|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add2~4_combout\ = (\pwm_ctrl|dc_count\(2) & (\pwm_ctrl|Add2~3\ $ (GND))) # (!\pwm_ctrl|dc_count\(2) & (!\pwm_ctrl|Add2~3\ & VCC))
-- \pwm_ctrl|Add2~5\ = CARRY((\pwm_ctrl|dc_count\(2) & !\pwm_ctrl|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(2),
	datad => VCC,
	cin => \pwm_ctrl|Add2~3\,
	combout => \pwm_ctrl|Add2~4_combout\,
	cout => \pwm_ctrl|Add2~5\);

-- Location: LCCOMB_X40_Y21_N6
\pwm_ctrl|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~8_combout\ = (\pwm_ctrl|dc_count\(2) & ((GND) # (!\pwm_ctrl|Add1~7\))) # (!\pwm_ctrl|dc_count\(2) & (\pwm_ctrl|Add1~7\ $ (GND)))
-- \pwm_ctrl|Add1~9\ = CARRY((\pwm_ctrl|dc_count\(2)) # (!\pwm_ctrl|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(2),
	datad => VCC,
	cin => \pwm_ctrl|Add1~7\,
	combout => \pwm_ctrl|Add1~8_combout\,
	cout => \pwm_ctrl|Add1~9\);

-- Location: LCCOMB_X40_Y21_N30
\pwm_ctrl|Add1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~27_combout\ = (\pwm_ctrl|p_pwm_ctrl~2_combout\ & (\pwm_ctrl|current_dc_state~regout\ & (\pwm_ctrl|Add2~4_combout\))) # (!\pwm_ctrl|p_pwm_ctrl~2_combout\ & (((\pwm_ctrl|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|p_pwm_ctrl~2_combout\,
	datab => \pwm_ctrl|current_dc_state~regout\,
	datac => \pwm_ctrl|Add2~4_combout\,
	datad => \pwm_ctrl|Add1~8_combout\,
	combout => \pwm_ctrl|Add1~27_combout\);

-- Location: LCCOMB_X42_Y21_N20
\pwm_ctrl|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~28_combout\ = (\pwm_ctrl|p_pwm_ctrl~1_combout\ & ((\pwm_ctrl|Add1~26_combout\) # ((\pwm_ctrl|p_pwm_ctrl~3_combout\ & \pwm_ctrl|Add1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Add1~26_combout\,
	datab => \pwm_ctrl|p_pwm_ctrl~1_combout\,
	datac => \pwm_ctrl|p_pwm_ctrl~3_combout\,
	datad => \pwm_ctrl|Add1~27_combout\,
	combout => \pwm_ctrl|Add1~28_combout\);

-- Location: LCFF_X42_Y21_N21
\pwm_ctrl|dc_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|Add1~28_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \pwm_ctrl|dc_count[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|dc_count\(2));

-- Location: LCCOMB_X40_Y21_N22
\pwm_ctrl|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add2~6_combout\ = (\pwm_ctrl|dc_count\(3) & (!\pwm_ctrl|Add2~5\)) # (!\pwm_ctrl|dc_count\(3) & ((\pwm_ctrl|Add2~5\) # (GND)))
-- \pwm_ctrl|Add2~7\ = CARRY((!\pwm_ctrl|Add2~5\) # (!\pwm_ctrl|dc_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(3),
	datad => VCC,
	cin => \pwm_ctrl|Add2~5\,
	combout => \pwm_ctrl|Add2~6_combout\,
	cout => \pwm_ctrl|Add2~7\);

-- Location: LCCOMB_X40_Y21_N0
\pwm_ctrl|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~24_combout\ = (\pwm_ctrl|p_pwm_ctrl~2_combout\ & ((\pwm_ctrl|Add2~6_combout\) # ((!\pwm_ctrl|current_dc_state~regout\)))) # (!\pwm_ctrl|p_pwm_ctrl~2_combout\ & (((\pwm_ctrl|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|p_pwm_ctrl~2_combout\,
	datab => \pwm_ctrl|Add2~6_combout\,
	datac => \pwm_ctrl|Add1~10_combout\,
	datad => \pwm_ctrl|current_dc_state~regout\,
	combout => \pwm_ctrl|Add1~24_combout\);

-- Location: LCCOMB_X42_Y21_N26
\pwm_ctrl|prev_dc[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|prev_dc[6]~2_combout\ = (!\pwm_ctrl|dc_count\(2) & (!\pwm_ctrl|dc_count\(1) & (!\pwm_ctrl|dc_count\(0) & !\pwm_ctrl|dc_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(2),
	datab => \pwm_ctrl|dc_count\(1),
	datac => \pwm_ctrl|dc_count\(0),
	datad => \pwm_ctrl|dc_count\(3),
	combout => \pwm_ctrl|prev_dc[6]~2_combout\);

-- Location: LCFF_X38_Y21_N27
\pwm_ctrl|prev_dc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \pwm_ctrl|dc_count\(4),
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	ena => \pwm_ctrl|prev_dc[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|prev_dc\(4));

-- Location: LCCOMB_X40_Y21_N24
\pwm_ctrl|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add2~8_combout\ = (\pwm_ctrl|dc_count\(4) & (\pwm_ctrl|Add2~7\ $ (GND))) # (!\pwm_ctrl|dc_count\(4) & (!\pwm_ctrl|Add2~7\ & VCC))
-- \pwm_ctrl|Add2~9\ = CARRY((\pwm_ctrl|dc_count\(4) & !\pwm_ctrl|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|dc_count\(4),
	datad => VCC,
	cin => \pwm_ctrl|Add2~7\,
	combout => \pwm_ctrl|Add2~8_combout\,
	cout => \pwm_ctrl|Add2~9\);

-- Location: LCCOMB_X41_Y21_N30
\pwm_ctrl|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~20_combout\ = (\pwm_ctrl|p_pwm_ctrl~2_combout\ & (((\pwm_ctrl|Add2~8_combout\ & \pwm_ctrl|current_dc_state~regout\)))) # (!\pwm_ctrl|p_pwm_ctrl~2_combout\ & (\pwm_ctrl|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Add1~12_combout\,
	datab => \pwm_ctrl|Add2~8_combout\,
	datac => \pwm_ctrl|p_pwm_ctrl~2_combout\,
	datad => \pwm_ctrl|current_dc_state~regout\,
	combout => \pwm_ctrl|Add1~20_combout\);

-- Location: LCCOMB_X41_Y21_N10
\pwm_ctrl|Add1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~21_combout\ = (\pwm_ctrl|p_pwm_ctrl~1_combout\ & ((\pwm_ctrl|p_pwm_ctrl~3_combout\ & ((\pwm_ctrl|Add1~20_combout\))) # (!\pwm_ctrl|p_pwm_ctrl~3_combout\ & (\pwm_ctrl|prev_dc\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|p_pwm_ctrl~1_combout\,
	datab => \pwm_ctrl|prev_dc\(4),
	datac => \pwm_ctrl|p_pwm_ctrl~3_combout\,
	datad => \pwm_ctrl|Add1~20_combout\,
	combout => \pwm_ctrl|Add1~21_combout\);

-- Location: LCFF_X41_Y21_N11
\pwm_ctrl|dc_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|Add1~21_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \pwm_ctrl|dc_count[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|dc_count\(4));

-- Location: LCCOMB_X38_Y21_N12
\pwm_ctrl|prev_dc[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|prev_dc[5]~5_combout\ = !\pwm_ctrl|dc_count\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pwm_ctrl|dc_count\(5),
	combout => \pwm_ctrl|prev_dc[5]~5_combout\);

-- Location: LCFF_X38_Y21_N13
\pwm_ctrl|prev_dc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|prev_dc[5]~5_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \pwm_ctrl|prev_dc[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|prev_dc\(5));

-- Location: LCCOMB_X40_Y21_N26
\pwm_ctrl|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add2~10_combout\ = (\pwm_ctrl|dc_count\(5) & (!\pwm_ctrl|Add2~9\)) # (!\pwm_ctrl|dc_count\(5) & ((\pwm_ctrl|Add2~9\) # (GND)))
-- \pwm_ctrl|Add2~11\ = CARRY((!\pwm_ctrl|Add2~9\) # (!\pwm_ctrl|dc_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(5),
	datad => VCC,
	cin => \pwm_ctrl|Add2~9\,
	combout => \pwm_ctrl|Add2~10_combout\,
	cout => \pwm_ctrl|Add2~11\);

-- Location: LCCOMB_X41_Y21_N16
\pwm_ctrl|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~22_combout\ = (\pwm_ctrl|p_pwm_ctrl~2_combout\ & (((\pwm_ctrl|Add2~10_combout\ & \pwm_ctrl|current_dc_state~regout\)))) # (!\pwm_ctrl|p_pwm_ctrl~2_combout\ & (\pwm_ctrl|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Add1~14_combout\,
	datab => \pwm_ctrl|Add2~10_combout\,
	datac => \pwm_ctrl|p_pwm_ctrl~2_combout\,
	datad => \pwm_ctrl|current_dc_state~regout\,
	combout => \pwm_ctrl|Add1~22_combout\);

-- Location: LCCOMB_X41_Y21_N20
\pwm_ctrl|Add1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~23_combout\ = (\pwm_ctrl|p_pwm_ctrl~1_combout\ & ((\pwm_ctrl|p_pwm_ctrl~3_combout\ & ((\pwm_ctrl|Add1~22_combout\))) # (!\pwm_ctrl|p_pwm_ctrl~3_combout\ & (!\pwm_ctrl|prev_dc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|p_pwm_ctrl~1_combout\,
	datab => \pwm_ctrl|prev_dc\(5),
	datac => \pwm_ctrl|Add1~22_combout\,
	datad => \pwm_ctrl|p_pwm_ctrl~3_combout\,
	combout => \pwm_ctrl|Add1~23_combout\);

-- Location: LCFF_X41_Y21_N21
\pwm_ctrl|dc_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|Add1~23_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \pwm_ctrl|dc_count[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|dc_count\(5));

-- Location: LCCOMB_X40_Y21_N28
\pwm_ctrl|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add2~12_combout\ = \pwm_ctrl|Add2~11\ $ (!\pwm_ctrl|dc_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pwm_ctrl|dc_count\(6),
	cin => \pwm_ctrl|Add2~11\,
	combout => \pwm_ctrl|Add2~12_combout\);

-- Location: LCCOMB_X41_Y21_N28
\pwm_ctrl|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~18_combout\ = (\pwm_ctrl|p_pwm_ctrl~2_combout\ & (((\pwm_ctrl|Add2~12_combout\ & \pwm_ctrl|current_dc_state~regout\)))) # (!\pwm_ctrl|p_pwm_ctrl~2_combout\ & (\pwm_ctrl|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Add1~16_combout\,
	datab => \pwm_ctrl|Add2~12_combout\,
	datac => \pwm_ctrl|p_pwm_ctrl~2_combout\,
	datad => \pwm_ctrl|current_dc_state~regout\,
	combout => \pwm_ctrl|Add1~18_combout\);

-- Location: LCCOMB_X38_Y21_N0
\pwm_ctrl|prev_dc[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|prev_dc[6]~4_combout\ = !\pwm_ctrl|dc_count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pwm_ctrl|dc_count\(6),
	combout => \pwm_ctrl|prev_dc[6]~4_combout\);

-- Location: LCFF_X38_Y21_N1
\pwm_ctrl|prev_dc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|prev_dc[6]~4_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \pwm_ctrl|prev_dc[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|prev_dc\(6));

-- Location: LCCOMB_X41_Y21_N24
\pwm_ctrl|Add1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~19_combout\ = (\pwm_ctrl|p_pwm_ctrl~1_combout\ & ((\pwm_ctrl|p_pwm_ctrl~3_combout\ & (\pwm_ctrl|Add1~18_combout\)) # (!\pwm_ctrl|p_pwm_ctrl~3_combout\ & ((!\pwm_ctrl|prev_dc\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|p_pwm_ctrl~1_combout\,
	datab => \pwm_ctrl|Add1~18_combout\,
	datac => \pwm_ctrl|prev_dc\(6),
	datad => \pwm_ctrl|p_pwm_ctrl~3_combout\,
	combout => \pwm_ctrl|Add1~19_combout\);

-- Location: LCFF_X41_Y21_N25
\pwm_ctrl|dc_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|Add1~19_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \pwm_ctrl|dc_count[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|dc_count\(6));

-- Location: LCCOMB_X43_Y21_N6
\pwm_ctrl|dc_count[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|dc_count[5]~0_combout\ = (!\pwm_ctrl|dc_count\(4) & (!\pwm_ctrl|dc_count\(5) & !\pwm_ctrl|dc_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|dc_count\(4),
	datac => \pwm_ctrl|dc_count\(5),
	datad => \pwm_ctrl|dc_count\(6),
	combout => \pwm_ctrl|dc_count[5]~0_combout\);

-- Location: LCCOMB_X38_Y21_N22
\pwm_ctrl|prev_dc[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|prev_dc[6]~3_combout\ = (\serial_ctrl|serial_off~regout\ & (((!\pwm_ctrl|dc_count[5]~0_combout\)) # (!\pwm_ctrl|prev_dc[6]~2_combout\))) # (!\serial_ctrl|serial_off~regout\ & (\key_ctrl|off_key~regout\ & ((!\pwm_ctrl|dc_count[5]~0_combout\) # 
-- (!\pwm_ctrl|prev_dc[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_ctrl|serial_off~regout\,
	datab => \pwm_ctrl|prev_dc[6]~2_combout\,
	datac => \pwm_ctrl|dc_count[5]~0_combout\,
	datad => \key_ctrl|off_key~regout\,
	combout => \pwm_ctrl|prev_dc[6]~3_combout\);

-- Location: LCFF_X38_Y21_N31
\pwm_ctrl|prev_dc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \pwm_ctrl|dc_count\(3),
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	ena => \pwm_ctrl|prev_dc[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|prev_dc\(3));

-- Location: LCCOMB_X38_Y21_N8
\pwm_ctrl|prev_dc[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|prev_dc[2]~6_combout\ = !\pwm_ctrl|dc_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pwm_ctrl|dc_count\(2),
	combout => \pwm_ctrl|prev_dc[2]~6_combout\);

-- Location: LCFF_X38_Y21_N9
\pwm_ctrl|prev_dc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|prev_dc[2]~6_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \pwm_ctrl|prev_dc[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|prev_dc\(2));

-- Location: LCCOMB_X38_Y21_N30
\pwm_ctrl|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan3~0_combout\ = (\pwm_ctrl|prev_dc\(6) & (((!\pwm_ctrl|prev_dc\(1) & \pwm_ctrl|prev_dc\(2))) # (!\pwm_ctrl|prev_dc\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|prev_dc\(1),
	datab => \pwm_ctrl|prev_dc\(2),
	datac => \pwm_ctrl|prev_dc\(3),
	datad => \pwm_ctrl|prev_dc\(6),
	combout => \pwm_ctrl|LessThan3~0_combout\);

-- Location: LCCOMB_X38_Y21_N26
\pwm_ctrl|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan3~1_combout\ = (\pwm_ctrl|LessThan3~0_combout\ & (!\pwm_ctrl|prev_dc\(4) & \pwm_ctrl|prev_dc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|LessThan3~0_combout\,
	datac => \pwm_ctrl|prev_dc\(4),
	datad => \pwm_ctrl|prev_dc\(5),
	combout => \pwm_ctrl|LessThan3~1_combout\);

-- Location: LCCOMB_X38_Y21_N4
\pwm_ctrl|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~34_combout\ = (\key_ctrl|on_key~regout\ & (((\pwm_ctrl|prev_dc\(3)) # (\pwm_ctrl|LessThan3~1_combout\)))) # (!\key_ctrl|on_key~regout\ & (\serial_ctrl|serial_on~regout\ & ((\pwm_ctrl|prev_dc\(3)) # (\pwm_ctrl|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|on_key~regout\,
	datab => \serial_ctrl|serial_on~regout\,
	datac => \pwm_ctrl|prev_dc\(3),
	datad => \pwm_ctrl|LessThan3~1_combout\,
	combout => \pwm_ctrl|Add1~34_combout\);

-- Location: LCCOMB_X42_Y21_N10
\pwm_ctrl|Add1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Add1~25_combout\ = (\pwm_ctrl|p_pwm_ctrl~1_combout\ & ((\pwm_ctrl|Add1~34_combout\) # ((\pwm_ctrl|p_pwm_ctrl~3_combout\ & \pwm_ctrl|Add1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|p_pwm_ctrl~3_combout\,
	datab => \pwm_ctrl|Add1~24_combout\,
	datac => \pwm_ctrl|p_pwm_ctrl~1_combout\,
	datad => \pwm_ctrl|Add1~34_combout\,
	combout => \pwm_ctrl|Add1~25_combout\);

-- Location: LCFF_X42_Y21_N11
\pwm_ctrl|dc_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|Add1~25_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \pwm_ctrl|dc_count[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|dc_count\(3));

-- Location: LCCOMB_X42_Y21_N6
\pwm_ctrl|dc_count[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|dc_count[5]~4_combout\ = ((!\pwm_ctrl|dc_count\(2) & ((!\pwm_ctrl|dc_count\(1)) # (!\pwm_ctrl|dc_count\(0))))) # (!\pwm_ctrl|dc_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(0),
	datab => \pwm_ctrl|dc_count\(1),
	datac => \pwm_ctrl|dc_count\(2),
	datad => \pwm_ctrl|dc_count\(3),
	combout => \pwm_ctrl|dc_count[5]~4_combout\);

-- Location: LCCOMB_X41_Y21_N26
\pwm_ctrl|dc_count[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|dc_count[5]~5_combout\ = (!\pwm_ctrl|p_pwm_ctrl~2_combout\ & (((\pwm_ctrl|dc_count[5]~0_combout\ & \pwm_ctrl|dc_count[5]~4_combout\)) # (!\pwm_ctrl|current_dc_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count[5]~0_combout\,
	datab => \pwm_ctrl|current_dc_state~regout\,
	datac => \pwm_ctrl|p_pwm_ctrl~2_combout\,
	datad => \pwm_ctrl|dc_count[5]~4_combout\,
	combout => \pwm_ctrl|dc_count[5]~5_combout\);

-- Location: LCCOMB_X41_Y21_N14
\pwm_ctrl|dc_count[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|dc_count[5]~2_combout\ = (\pwm_ctrl|current_dc_state~regout\ & ((\pwm_ctrl|dc_count\(2)) # ((\pwm_ctrl|dc_count\(3)) # (\pwm_ctrl|dc_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(2),
	datab => \pwm_ctrl|current_dc_state~regout\,
	datac => \pwm_ctrl|dc_count\(3),
	datad => \pwm_ctrl|dc_count\(4),
	combout => \pwm_ctrl|dc_count[5]~2_combout\);

-- Location: LCCOMB_X41_Y21_N0
\pwm_ctrl|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Equal0~0_combout\ = (\pwm_ctrl|dc_count\(6) & \pwm_ctrl|dc_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(6),
	datac => \pwm_ctrl|dc_count\(5),
	combout => \pwm_ctrl|Equal0~0_combout\);

-- Location: LCCOMB_X41_Y21_N8
\pwm_ctrl|dc_count[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|dc_count[5]~3_combout\ = (\pwm_ctrl|p_pwm_ctrl~2_combout\ & ((\pwm_ctrl|dc_count[5]~1_combout\) # ((\pwm_ctrl|dc_count[5]~2_combout\ & \pwm_ctrl|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count[5]~1_combout\,
	datab => \pwm_ctrl|dc_count[5]~2_combout\,
	datac => \pwm_ctrl|p_pwm_ctrl~2_combout\,
	datad => \pwm_ctrl|Equal0~0_combout\,
	combout => \pwm_ctrl|dc_count[5]~3_combout\);

-- Location: LCCOMB_X41_Y21_N4
\pwm_ctrl|dc_count[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|dc_count[5]~6_combout\ = (((!\pwm_ctrl|dc_count[5]~5_combout\ & !\pwm_ctrl|dc_count[5]~3_combout\)) # (!\pwm_ctrl|p_pwm_ctrl~3_combout\)) # (!\pwm_ctrl|p_pwm_ctrl~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|p_pwm_ctrl~1_combout\,
	datab => \pwm_ctrl|dc_count[5]~5_combout\,
	datac => \pwm_ctrl|dc_count[5]~3_combout\,
	datad => \pwm_ctrl|p_pwm_ctrl~3_combout\,
	combout => \pwm_ctrl|dc_count[5]~6_combout\);

-- Location: LCFF_X42_Y21_N9
\pwm_ctrl|dc_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|Add1~33_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \pwm_ctrl|dc_count[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|dc_count\(0));

-- Location: LCCOMB_X38_Y20_N8
\dc_disp_ctrl|bcd_decode_rom|rom_addr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_decode_rom|rom_addr~0_combout\ = (\pwm_ctrl|current_dc_update~regout\ & \pwm_ctrl|dc_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|current_dc_update~regout\,
	datac => \pwm_ctrl|dc_count\(0),
	combout => \dc_disp_ctrl|bcd_decode_rom|rom_addr~0_combout\);

-- Location: LCFF_X38_Y20_N9
\dc_disp_ctrl|bcd_decode_rom|rom_addr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_decode_rom|rom_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_decode_rom|rom_addr\(0));

-- Location: LCCOMB_X38_Y20_N2
\dc_disp_ctrl|bcd_decode_rom|rom_addr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_decode_rom|rom_addr~1_combout\ = (\pwm_ctrl|current_dc_update~regout\ & \pwm_ctrl|dc_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|current_dc_update~regout\,
	datac => \pwm_ctrl|dc_count\(1),
	combout => \dc_disp_ctrl|bcd_decode_rom|rom_addr~1_combout\);

-- Location: LCFF_X38_Y20_N3
\dc_disp_ctrl|bcd_decode_rom|rom_addr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_decode_rom|rom_addr~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_decode_rom|rom_addr\(1));

-- Location: LCCOMB_X38_Y20_N12
\dc_disp_ctrl|bcd_decode_rom|rom_addr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_decode_rom|rom_addr~2_combout\ = (\pwm_ctrl|current_dc_update~regout\ & \pwm_ctrl|dc_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|current_dc_update~regout\,
	datac => \pwm_ctrl|dc_count\(2),
	combout => \dc_disp_ctrl|bcd_decode_rom|rom_addr~2_combout\);

-- Location: LCFF_X38_Y20_N13
\dc_disp_ctrl|bcd_decode_rom|rom_addr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_decode_rom|rom_addr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_decode_rom|rom_addr\(2));

-- Location: LCCOMB_X38_Y20_N6
\dc_disp_ctrl|bcd_decode_rom|rom_addr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_decode_rom|rom_addr~3_combout\ = (\pwm_ctrl|current_dc_update~regout\ & \pwm_ctrl|dc_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|current_dc_update~regout\,
	datad => \pwm_ctrl|dc_count\(3),
	combout => \dc_disp_ctrl|bcd_decode_rom|rom_addr~3_combout\);

-- Location: LCFF_X38_Y20_N7
\dc_disp_ctrl|bcd_decode_rom|rom_addr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_decode_rom|rom_addr~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_decode_rom|rom_addr\(3));

-- Location: LCCOMB_X38_Y20_N24
\dc_disp_ctrl|bcd_decode_rom|rom_addr~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_decode_rom|rom_addr~4_combout\ = (\pwm_ctrl|dc_count\(4) & \pwm_ctrl|current_dc_update~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|dc_count\(4),
	datad => \pwm_ctrl|current_dc_update~regout\,
	combout => \dc_disp_ctrl|bcd_decode_rom|rom_addr~4_combout\);

-- Location: LCFF_X38_Y20_N25
\dc_disp_ctrl|bcd_decode_rom|rom_addr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_decode_rom|rom_addr~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_decode_rom|rom_addr\(4));

-- Location: LCCOMB_X38_Y20_N10
\dc_disp_ctrl|bcd_decode_rom|rom_addr~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_decode_rom|rom_addr~5_combout\ = (\pwm_ctrl|dc_count\(5) & \pwm_ctrl|current_dc_update~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(5),
	datad => \pwm_ctrl|current_dc_update~regout\,
	combout => \dc_disp_ctrl|bcd_decode_rom|rom_addr~5_combout\);

-- Location: LCFF_X38_Y20_N11
\dc_disp_ctrl|bcd_decode_rom|rom_addr[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_decode_rom|rom_addr~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_decode_rom|rom_addr\(5));

-- Location: LCCOMB_X38_Y20_N20
\dc_disp_ctrl|bcd_decode_rom|rom_addr~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_decode_rom|rom_addr~6_combout\ = (\pwm_ctrl|dc_count\(6) & \pwm_ctrl|current_dc_update~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|dc_count\(6),
	datad => \pwm_ctrl|current_dc_update~regout\,
	combout => \dc_disp_ctrl|bcd_decode_rom|rom_addr~6_combout\);

-- Location: LCFF_X38_Y20_N21
\dc_disp_ctrl|bcd_decode_rom|rom_addr[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_decode_rom|rom_addr~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_decode_rom|rom_addr\(6));

-- Location: M4K_X26_Y20
\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"49D264952448122485204651845D164551444D12445104250841D064150440D02405002649825C962549424C92244902248821C862148420C82204801E4781DC761D4741CC721C4701A46819C661946418C62184601645815C561545414C52144501244811C461144410C42104400E4380DC360D4340CC320C4300A42809C260942408C22084200641805C160541404C12044100240801C060140400C0200400",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/lab7.ram0_bcd_decode_rom_eb028e2c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "dc_disp_ctrl:dc_disp_ctrl|bcd_decode_rom:bcd_decode_rom|altsyncram:bcd_rom_rtl_0|altsyncram_n571:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 10,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 10,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	portaaddr => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y20_N24
\dc_disp_ctrl|bcd_stack2_0[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_stack2_0[3]~feeder_combout\ = \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\,
	combout => \dc_disp_ctrl|bcd_stack2_0[3]~feeder_combout\);

-- Location: LCCOMB_X30_Y20_N4
\dc_disp_ctrl|bcd_stack2_2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_stack2_2[0]~0_combout\ = (\dc_disp_ctrl|current_transmit_state.s_idle~regout\ & \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|current_transmit_state.s_idle~regout\,
	datad => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	combout => \dc_disp_ctrl|bcd_stack2_2[0]~0_combout\);

-- Location: LCFF_X30_Y20_N25
\dc_disp_ctrl|bcd_stack2_0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_stack2_0[3]~feeder_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_stack2_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack2_0\(3));

-- Location: LCCOMB_X29_Y20_N2
\dc_disp_ctrl|bcd_stack1_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_stack1_0~3_combout\ = (\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\)) # (!\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & ((\dc_disp_ctrl|bcd_stack2_0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc_disp_ctrl|bcd_stack1_1[2]~0_combout\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\,
	datad => \dc_disp_ctrl|bcd_stack2_0\(3),
	combout => \dc_disp_ctrl|bcd_stack1_0~3_combout\);

-- Location: LCCOMB_X29_Y20_N8
\dc_disp_ctrl|bcd_stack1_1[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_stack1_1[2]~1_combout\ = (!\dc_disp_ctrl|current_transmit_state.s_idle~regout\ & ((\dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\) # (!\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc_disp_ctrl|current_transmit_state.s_idle~regout\,
	datac => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	datad => \dc_disp_ctrl|bcd_stack1_1[2]~0_combout\,
	combout => \dc_disp_ctrl|bcd_stack1_1[2]~1_combout\);

-- Location: LCFF_X29_Y20_N3
\dc_disp_ctrl|bcd_stack1_0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_stack1_0~3_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_stack1_1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack1_0\(3));

-- Location: LCCOMB_X30_Y20_N8
\dc_disp_ctrl|bcd_stack2_1[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_stack2_1[3]~feeder_combout\ = \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\,
	combout => \dc_disp_ctrl|bcd_stack2_1[3]~feeder_combout\);

-- Location: LCFF_X30_Y20_N9
\dc_disp_ctrl|bcd_stack2_1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_stack2_1[3]~feeder_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_stack2_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack2_1\(3));

-- Location: LCCOMB_X28_Y20_N30
\dc_disp_ctrl|bcd_stack1_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_stack1_1~5_combout\ = (\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\)) # (!\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & ((\dc_disp_ctrl|bcd_stack2_1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc_disp_ctrl|bcd_stack1_1[2]~0_combout\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\,
	datad => \dc_disp_ctrl|bcd_stack2_1\(3),
	combout => \dc_disp_ctrl|bcd_stack1_1~5_combout\);

-- Location: LCFF_X28_Y20_N31
\dc_disp_ctrl|bcd_stack1_1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_stack1_1~5_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_stack1_1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack1_1\(3));

-- Location: LCCOMB_X28_Y20_N26
\dc_disp_ctrl|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Selector4~0_combout\ = (\dc_disp_ctrl|bcd_stack1_1\(1) & (\dc_disp_ctrl|current_transmit_state.s_second_byte~regout\ & !\dc_disp_ctrl|bcd_stack1_1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_stack1_1\(1),
	datac => \dc_disp_ctrl|current_transmit_state.s_second_byte~regout\,
	datad => \dc_disp_ctrl|bcd_stack1_1\(3),
	combout => \dc_disp_ctrl|Selector4~0_combout\);

-- Location: LCCOMB_X29_Y20_N14
\dc_disp_ctrl|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Selector4~1_combout\ = (\dc_disp_ctrl|Selector4~0_combout\) # ((\dc_disp_ctrl|bcd_stack1_0\(1) & (!\dc_disp_ctrl|bcd_stack1_0\(3) & \dc_disp_ctrl|current_transmit_state.s_third_byte~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_stack1_0\(1),
	datab => \dc_disp_ctrl|bcd_stack1_0\(3),
	datac => \dc_disp_ctrl|current_transmit_state.s_third_byte~regout\,
	datad => \dc_disp_ctrl|Selector4~0_combout\,
	combout => \dc_disp_ctrl|Selector4~1_combout\);

-- Location: LCCOMB_X30_Y20_N2
\dc_disp_ctrl|bcd_stack2_2[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_stack2_2[1]~feeder_combout\ = \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\,
	combout => \dc_disp_ctrl|bcd_stack2_2[1]~feeder_combout\);

-- Location: LCFF_X30_Y20_N3
\dc_disp_ctrl|bcd_stack2_2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_stack2_2[1]~feeder_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_stack2_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack2_2\(1));

-- Location: LCCOMB_X29_Y20_N12
\dc_disp_ctrl|bcd_stack1_2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_stack1_2~1_combout\ = (\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\)) # (!\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & ((\dc_disp_ctrl|bcd_stack2_2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc_disp_ctrl|bcd_stack1_1[2]~0_combout\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\,
	datad => \dc_disp_ctrl|bcd_stack2_2\(1),
	combout => \dc_disp_ctrl|bcd_stack1_2~1_combout\);

-- Location: LCFF_X29_Y20_N13
\dc_disp_ctrl|bcd_stack1_2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_stack1_2~1_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_stack1_1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack1_2\(1));

-- Location: LCCOMB_X27_Y20_N6
\dc_disp_ctrl|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Selector4~2_combout\ = (\dc_disp_ctrl|reset_transmission_active~regout\ & ((\dc_disp_ctrl|Selector4~1_combout\) # ((\dc_disp_ctrl|current_transmit_state.s_first_byte~regout\ & \dc_disp_ctrl|bcd_stack1_2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|current_transmit_state.s_first_byte~regout\,
	datab => \dc_disp_ctrl|reset_transmission_active~regout\,
	datac => \dc_disp_ctrl|Selector4~1_combout\,
	datad => \dc_disp_ctrl|bcd_stack1_2\(1),
	combout => \dc_disp_ctrl|Selector4~2_combout\);

-- Location: LCFF_X27_Y20_N7
\dc_disp_ctrl|data_transmit[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Selector4~2_combout\,
	ena => \dc_disp_ctrl|p_dc_disp_ctrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|data_transmit\(1));

-- Location: LCFF_X30_Y20_N31
\dc_disp_ctrl|bcd_stack2_1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	ena => \dc_disp_ctrl|bcd_stack2_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack2_1\(2));

-- Location: LCCOMB_X29_Y20_N18
\dc_disp_ctrl|bcd_stack1_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_stack1_1~4_combout\ = (\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\)) # (!\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & ((\dc_disp_ctrl|bcd_stack2_1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\,
	datab => \dc_disp_ctrl|bcd_stack1_1[2]~0_combout\,
	datad => \dc_disp_ctrl|bcd_stack2_1\(2),
	combout => \dc_disp_ctrl|bcd_stack1_1~4_combout\);

-- Location: LCFF_X29_Y20_N19
\dc_disp_ctrl|bcd_stack1_1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_stack1_1~4_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_stack1_1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack1_1\(2));

-- Location: LCFF_X30_Y20_N29
\dc_disp_ctrl|bcd_stack2_1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	ena => \dc_disp_ctrl|bcd_stack2_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack2_1\(1));

-- Location: LCCOMB_X28_Y20_N20
\dc_disp_ctrl|bcd_stack1_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_stack1_1~3_combout\ = (\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\)) # (!\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & ((\dc_disp_ctrl|bcd_stack2_1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc_disp_ctrl|bcd_stack1_1[2]~0_combout\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\,
	datad => \dc_disp_ctrl|bcd_stack2_1\(1),
	combout => \dc_disp_ctrl|bcd_stack1_1~3_combout\);

-- Location: LCFF_X28_Y20_N21
\dc_disp_ctrl|bcd_stack1_1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_stack1_1~3_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_stack1_1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack1_1\(1));

-- Location: LCCOMB_X28_Y20_N14
\dc_disp_ctrl|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Selector2~1_combout\ = (\dc_disp_ctrl|bcd_stack1_1\(3) & (\dc_disp_ctrl|current_transmit_state.s_second_byte~regout\ & (!\dc_disp_ctrl|bcd_stack1_1\(2) & !\dc_disp_ctrl|bcd_stack1_1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_stack1_1\(3),
	datab => \dc_disp_ctrl|current_transmit_state.s_second_byte~regout\,
	datac => \dc_disp_ctrl|bcd_stack1_1\(2),
	datad => \dc_disp_ctrl|bcd_stack1_1\(1),
	combout => \dc_disp_ctrl|Selector2~1_combout\);

-- Location: LCCOMB_X29_Y20_N0
\dc_disp_ctrl|bcd_stack1_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|bcd_stack1_0~2_combout\ = (\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\))) # (!\dc_disp_ctrl|bcd_stack1_1[2]~0_combout\ & (\dc_disp_ctrl|bcd_stack2_0\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_stack2_0\(2),
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\,
	datad => \dc_disp_ctrl|bcd_stack1_1[2]~0_combout\,
	combout => \dc_disp_ctrl|bcd_stack1_0~2_combout\);

-- Location: LCFF_X29_Y20_N1
\dc_disp_ctrl|bcd_stack1_0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|bcd_stack1_0~2_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_stack1_1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|bcd_stack1_0\(2));

-- Location: LCCOMB_X29_Y20_N16
\dc_disp_ctrl|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Selector2~0_combout\ = (!\dc_disp_ctrl|bcd_stack1_0\(1) & (!\dc_disp_ctrl|bcd_stack1_0\(2) & (\dc_disp_ctrl|current_transmit_state.s_third_byte~regout\ & \dc_disp_ctrl|bcd_stack1_0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_stack1_0\(1),
	datab => \dc_disp_ctrl|bcd_stack1_0\(2),
	datac => \dc_disp_ctrl|current_transmit_state.s_third_byte~regout\,
	datad => \dc_disp_ctrl|bcd_stack1_0\(3),
	combout => \dc_disp_ctrl|Selector2~0_combout\);

-- Location: LCCOMB_X27_Y20_N8
\dc_disp_ctrl|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Selector2~2_combout\ = (\dc_disp_ctrl|current_transmit_state.s_fifth_byte~regout\) # ((\dc_disp_ctrl|reset_transmission_active~regout\ & ((\dc_disp_ctrl|Selector2~1_combout\) # (\dc_disp_ctrl|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|reset_transmission_active~regout\,
	datab => \dc_disp_ctrl|current_transmit_state.s_fifth_byte~regout\,
	datac => \dc_disp_ctrl|Selector2~1_combout\,
	datad => \dc_disp_ctrl|Selector2~0_combout\,
	combout => \dc_disp_ctrl|Selector2~2_combout\);

-- Location: LCFF_X27_Y20_N9
\dc_disp_ctrl|data_transmit[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Selector2~2_combout\,
	ena => \dc_disp_ctrl|p_dc_disp_ctrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|data_transmit\(3));

-- Location: LCCOMB_X28_Y21_N2
\serial_uart|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector21~0_combout\ = (\serial_uart|tx_state.s_tx_data~regout\ & (\serial_uart|tx_byte_saved\(4))) # (!\serial_uart|tx_state.s_tx_data~regout\ & ((\dc_disp_ctrl|data_transmit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_byte_saved\(4),
	datac => \dc_disp_ctrl|data_transmit\(3),
	datad => \serial_uart|tx_state.s_tx_data~regout\,
	combout => \serial_uart|Selector21~0_combout\);

-- Location: LCCOMB_X28_Y21_N20
\serial_uart|tx_byte_saved[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|tx_byte_saved[1]~1_combout\ = ((\serial_uart|tx_bit_cnt_wrap~regout\ & \serial_uart|tx_state.s_tx_data~regout\)) # (!\serial_uart|tx_byte_saved[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_byte_saved[1]~0_combout\,
	datab => \serial_uart|tx_bit_cnt_wrap~regout\,
	datad => \serial_uart|tx_state.s_tx_data~regout\,
	combout => \serial_uart|tx_byte_saved[1]~1_combout\);

-- Location: LCFF_X28_Y21_N3
\serial_uart|tx_byte_saved[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector21~0_combout\,
	ena => \serial_uart|tx_byte_saved[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_byte_saved\(3));

-- Location: LCCOMB_X28_Y21_N24
\serial_uart|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector22~0_combout\ = (\serial_uart|tx_state.s_tx_data~regout\ & ((\serial_uart|tx_byte_saved\(3)))) # (!\serial_uart|tx_state.s_tx_data~regout\ & (\dc_disp_ctrl|data_transmit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|data_transmit\(2),
	datab => \serial_uart|tx_byte_saved\(3),
	datad => \serial_uart|tx_state.s_tx_data~regout\,
	combout => \serial_uart|Selector22~0_combout\);

-- Location: LCFF_X28_Y21_N25
\serial_uart|tx_byte_saved[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector22~0_combout\,
	ena => \serial_uart|tx_byte_saved[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_byte_saved\(2));

-- Location: LCCOMB_X28_Y21_N16
\serial_uart|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector23~0_combout\ = (\serial_uart|tx_state.s_tx_data~regout\ & ((\serial_uart|tx_byte_saved\(2)))) # (!\serial_uart|tx_state.s_tx_data~regout\ & (\dc_disp_ctrl|data_transmit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc_disp_ctrl|data_transmit\(1),
	datac => \serial_uart|tx_byte_saved\(2),
	datad => \serial_uart|tx_state.s_tx_data~regout\,
	combout => \serial_uart|Selector23~0_combout\);

-- Location: LCFF_X28_Y21_N17
\serial_uart|tx_byte_saved[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector23~0_combout\,
	ena => \serial_uart|tx_byte_saved[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_byte_saved\(1));

-- Location: LCCOMB_X28_Y21_N4
\serial_uart|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector24~0_combout\ = (\serial_uart|tx_state.s_tx_data~regout\ & ((\serial_uart|tx_byte_saved\(1)))) # (!\serial_uart|tx_state.s_tx_data~regout\ & (\dc_disp_ctrl|data_transmit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|data_transmit\(0),
	datac => \serial_uart|tx_byte_saved\(1),
	datad => \serial_uart|tx_state.s_tx_data~regout\,
	combout => \serial_uart|Selector24~0_combout\);

-- Location: LCFF_X28_Y21_N5
\serial_uart|tx_byte_saved[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector24~0_combout\,
	ena => \serial_uart|tx_byte_saved[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx_byte_saved\(0));

-- Location: LCCOMB_X28_Y21_N26
\serial_uart|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|Selector34~0_combout\ = ((\serial_uart|tx_state.s_stop_bit~regout\) # ((\serial_uart|tx_byte_saved\(0) & \serial_uart|tx_state.s_tx_data~regout\))) # (!\serial_uart|tx_state.s_idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|tx_state.s_idle~regout\,
	datab => \serial_uart|tx_byte_saved\(0),
	datac => \serial_uart|tx_state.s_stop_bit~regout\,
	datad => \serial_uart|tx_state.s_tx_data~regout\,
	combout => \serial_uart|Selector34~0_combout\);

-- Location: LCFF_X28_Y21_N27
\serial_uart|tx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|Selector34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|tx~regout\);

-- Location: LCCOMB_X29_Y16_N16
\dc_disp_ctrl|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux11~0_combout\ = (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\ & (((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\)))) # 
-- (!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\ & (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\ $ (((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & 
-- !\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\,
	datab => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\,
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\,
	combout => \dc_disp_ctrl|Mux11~0_combout\);

-- Location: LCFF_X29_Y16_N17
\dc_disp_ctrl|hex0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Mux11~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex0\(0));

-- Location: LCCOMB_X29_Y16_N18
\dc_disp_ctrl|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux10~0_combout\ = (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\ & ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\) # 
-- (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ $ (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\)))) # (!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\ & 
-- (((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\ & \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\,
	datab => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\,
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\,
	combout => \dc_disp_ctrl|Mux10~0_combout\);

-- Location: LCFF_X29_Y16_N19
\dc_disp_ctrl|hex0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Mux10~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex0\(1));

-- Location: LCCOMB_X29_Y16_N4
\dc_disp_ctrl|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux9~0_combout\ = (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\ & (((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\)))) # 
-- (!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\ & (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\ & ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\) # 
-- (!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\,
	datab => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\,
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\,
	combout => \dc_disp_ctrl|Mux9~0_combout\);

-- Location: LCFF_X29_Y16_N5
\dc_disp_ctrl|hex0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Mux9~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex0\(2));

-- Location: LCCOMB_X29_Y16_N6
\dc_disp_ctrl|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux8~0_combout\ = (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\ & ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\) # 
-- ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\ & \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\)))) # (!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\ & 
-- (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\ $ (((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & !\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\,
	datab => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\,
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\,
	combout => \dc_disp_ctrl|Mux8~0_combout\);

-- Location: LCFF_X29_Y16_N7
\dc_disp_ctrl|hex0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Mux8~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex0\(3));

-- Location: LCCOMB_X29_Y16_N24
\dc_disp_ctrl|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux7~0_combout\ = (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\) # ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\ & 
-- ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\))) # (!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\ & (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\,
	datab => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\,
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\,
	combout => \dc_disp_ctrl|Mux7~0_combout\);

-- Location: LCFF_X29_Y16_N25
\dc_disp_ctrl|hex0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Mux7~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex0\(4));

-- Location: LCCOMB_X29_Y16_N2
\dc_disp_ctrl|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux6~0_combout\ = (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\ & ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\) # 
-- ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\)))) # (!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\ & 
-- ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\) # ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & !\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\,
	datab => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\,
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\,
	combout => \dc_disp_ctrl|Mux6~0_combout\);

-- Location: LCFF_X29_Y16_N3
\dc_disp_ctrl|hex0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Mux6~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex0\(5));

-- Location: LCCOMB_X29_Y16_N28
\dc_disp_ctrl|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux5~0_combout\ = (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\) # ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\ & 
-- ((!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\) # (!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\))) # (!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\ & 
-- ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\,
	datab => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\,
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\,
	combout => \dc_disp_ctrl|Mux5~0_combout\);

-- Location: LCFF_X29_Y16_N29
\dc_disp_ctrl|hex0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Mux5~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex0\(6));

-- Location: LCCOMB_X30_Y20_N0
\dc_disp_ctrl|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux23~0_combout\ = (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\ & (((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\)))) # 
-- (!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\ & (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\ $ (((!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\ & 
-- \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\,
	datab => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\,
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\,
	combout => \dc_disp_ctrl|Mux23~0_combout\);

-- Location: LCFF_X30_Y20_N1
\dc_disp_ctrl|hex1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Mux23~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex1\(0));

-- Location: LCCOMB_X30_Y20_N10
\dc_disp_ctrl|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux22~0_combout\ = (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\) # 
-- (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\ $ (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\)))) # (!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & 
-- (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\ & (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\,
	datab => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\,
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\,
	combout => \dc_disp_ctrl|Mux22~0_combout\);

-- Location: LCFF_X30_Y20_N11
\dc_disp_ctrl|hex1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Mux22~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex1\(1));

-- Location: LCCOMB_X30_Y20_N12
\dc_disp_ctrl|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux21~0_combout\ = (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\)) # 
-- (!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\ & ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\) # 
-- (!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\,
	datab => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\,
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\,
	combout => \dc_disp_ctrl|Mux21~0_combout\);

-- Location: LCFF_X30_Y20_N13
\dc_disp_ctrl|hex1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Mux21~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex1\(2));

-- Location: LCCOMB_X30_Y20_N6
\dc_disp_ctrl|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux20~0_combout\ = (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\ & ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\) # 
-- ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\)))) # (!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\ & 
-- (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\ $ (((!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\ & \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\,
	datab => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\,
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\,
	combout => \dc_disp_ctrl|Mux20~0_combout\);

-- Location: LCFF_X30_Y20_N7
\dc_disp_ctrl|hex1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Mux20~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex1\(3));

-- Location: LCCOMB_X30_Y20_N16
\dc_disp_ctrl|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux19~0_combout\ = (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\) # ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\ & 
-- ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\))) # (!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\ & (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\,
	datab => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\,
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\,
	combout => \dc_disp_ctrl|Mux19~0_combout\);

-- Location: LCFF_X30_Y20_N17
\dc_disp_ctrl|hex1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Mux19~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex1\(4));

-- Location: LCCOMB_X30_Y20_N26
\dc_disp_ctrl|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux18~0_combout\ = (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\) # 
-- ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\ & \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\)))) # (!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & 
-- ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\) # ((!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\ & \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\,
	datab => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\,
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\,
	combout => \dc_disp_ctrl|Mux18~0_combout\);

-- Location: LCFF_X30_Y20_N27
\dc_disp_ctrl|hex1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Mux18~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex1\(5));

-- Location: LCCOMB_X30_Y20_N20
\dc_disp_ctrl|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux17~0_combout\ = (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\) # ((\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & 
-- ((!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\) # (!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\))) # (!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & 
-- (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\,
	datab => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\,
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\,
	combout => \dc_disp_ctrl|Mux17~0_combout\);

-- Location: LCFF_X30_Y20_N21
\dc_disp_ctrl|hex1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Mux17~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex1\(6));

-- Location: LCCOMB_X29_Y16_N22
\dc_disp_ctrl|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux30~0_combout\ = (!\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\ & \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a8\,
	combout => \dc_disp_ctrl|Mux30~0_combout\);

-- Location: LCFF_X29_Y16_N23
\dc_disp_ctrl|hex2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Mux30~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex2\(0));

-- Location: LCCOMB_X29_Y16_N8
\dc_disp_ctrl|Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux30~1_combout\ = (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\ & !\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a8\,
	combout => \dc_disp_ctrl|Mux30~1_combout\);

-- Location: LCFF_X29_Y16_N9
\dc_disp_ctrl|hex2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Mux30~1_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex2\(2));

-- Location: LCCOMB_X29_Y16_N26
\dc_disp_ctrl|hex2[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|hex2[3]~feeder_combout\ = \dc_disp_ctrl|Mux30~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dc_disp_ctrl|Mux30~0_combout\,
	combout => \dc_disp_ctrl|hex2[3]~feeder_combout\);

-- Location: LCFF_X29_Y16_N27
\dc_disp_ctrl|hex2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|hex2[3]~feeder_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex2\(3));

-- Location: LCFF_X29_Y16_N21
\dc_disp_ctrl|hex2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a8\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex2\(4));

-- Location: LCCOMB_X29_Y16_N14
\dc_disp_ctrl|Mux30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|Mux30~2_combout\ = (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\) # (\dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\,
	datac => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a8\,
	combout => \dc_disp_ctrl|Mux30~2_combout\);

-- Location: LCFF_X29_Y16_N15
\dc_disp_ctrl|hex2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|Mux30~2_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex2\(5));

-- Location: LCCOMB_X30_Y20_N22
\dc_disp_ctrl|hex2[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dc_disp_ctrl|hex2[6]~feeder_combout\ = \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dc_disp_ctrl|bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\,
	combout => \dc_disp_ctrl|hex2[6]~feeder_combout\);

-- Location: LCFF_X30_Y20_N23
\dc_disp_ctrl|hex2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \dc_disp_ctrl|hex2[6]~feeder_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \dc_disp_ctrl|bcd_decode_rom|rom_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dc_disp_ctrl|hex2\(6));

-- Location: LCCOMB_X45_Y21_N0
\pwm_ctrl|counter[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|counter[0]~16_combout\ = \pwm_ctrl|counter\(0) $ (VCC)
-- \pwm_ctrl|counter[0]~17\ = CARRY(\pwm_ctrl|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|counter\(0),
	datad => VCC,
	combout => \pwm_ctrl|counter[0]~16_combout\,
	cout => \pwm_ctrl|counter[0]~17\);

-- Location: LCCOMB_X45_Y21_N24
\pwm_ctrl|counter[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|counter[12]~40_combout\ = (\pwm_ctrl|counter\(12) & (\pwm_ctrl|counter[11]~39\ $ (GND))) # (!\pwm_ctrl|counter\(12) & (!\pwm_ctrl|counter[11]~39\ & VCC))
-- \pwm_ctrl|counter[12]~41\ = CARRY((\pwm_ctrl|counter\(12) & !\pwm_ctrl|counter[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|counter\(12),
	datad => VCC,
	cin => \pwm_ctrl|counter[11]~39\,
	combout => \pwm_ctrl|counter[12]~40_combout\,
	cout => \pwm_ctrl|counter[12]~41\);

-- Location: LCFF_X45_Y21_N25
\pwm_ctrl|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|counter[12]~40_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \pwm_ctrl|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|counter\(12));

-- Location: LCCOMB_X45_Y21_N20
\pwm_ctrl|counter[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|counter[10]~36_combout\ = (\pwm_ctrl|counter\(10) & (\pwm_ctrl|counter[9]~35\ $ (GND))) # (!\pwm_ctrl|counter\(10) & (!\pwm_ctrl|counter[9]~35\ & VCC))
-- \pwm_ctrl|counter[10]~37\ = CARRY((\pwm_ctrl|counter\(10) & !\pwm_ctrl|counter[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|counter\(10),
	datad => VCC,
	cin => \pwm_ctrl|counter[9]~35\,
	combout => \pwm_ctrl|counter[10]~36_combout\,
	cout => \pwm_ctrl|counter[10]~37\);

-- Location: LCFF_X45_Y21_N21
\pwm_ctrl|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|counter[10]~36_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \pwm_ctrl|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|counter\(10));

-- Location: LCCOMB_X45_Y20_N0
\pwm_ctrl|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan0~2_combout\ = (!\pwm_ctrl|counter\(11) & (!\pwm_ctrl|counter\(12) & (!\pwm_ctrl|counter\(10) & !\pwm_ctrl|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|counter\(11),
	datab => \pwm_ctrl|counter\(12),
	datac => \pwm_ctrl|counter\(10),
	datad => \pwm_ctrl|counter\(13),
	combout => \pwm_ctrl|LessThan0~2_combout\);

-- Location: LCCOMB_X45_Y20_N2
\pwm_ctrl|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan0~3_combout\ = (\pwm_ctrl|counter\(14) & (\pwm_ctrl|counter\(15) & ((!\pwm_ctrl|LessThan0~2_combout\) # (!\pwm_ctrl|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|LessThan0~1_combout\,
	datab => \pwm_ctrl|LessThan0~2_combout\,
	datac => \pwm_ctrl|counter\(14),
	datad => \pwm_ctrl|counter\(15),
	combout => \pwm_ctrl|LessThan0~3_combout\);

-- Location: LCFF_X45_Y21_N1
\pwm_ctrl|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|counter[0]~16_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \pwm_ctrl|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|counter\(0));

-- Location: LCCOMB_X45_Y21_N2
\pwm_ctrl|counter[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|counter[1]~18_combout\ = (\pwm_ctrl|counter\(1) & (!\pwm_ctrl|counter[0]~17\)) # (!\pwm_ctrl|counter\(1) & ((\pwm_ctrl|counter[0]~17\) # (GND)))
-- \pwm_ctrl|counter[1]~19\ = CARRY((!\pwm_ctrl|counter[0]~17\) # (!\pwm_ctrl|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|counter\(1),
	datad => VCC,
	cin => \pwm_ctrl|counter[0]~17\,
	combout => \pwm_ctrl|counter[1]~18_combout\,
	cout => \pwm_ctrl|counter[1]~19\);

-- Location: LCFF_X45_Y21_N3
\pwm_ctrl|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|counter[1]~18_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \pwm_ctrl|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|counter\(1));

-- Location: LCCOMB_X45_Y21_N4
\pwm_ctrl|counter[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|counter[2]~20_combout\ = (\pwm_ctrl|counter\(2) & (\pwm_ctrl|counter[1]~19\ $ (GND))) # (!\pwm_ctrl|counter\(2) & (!\pwm_ctrl|counter[1]~19\ & VCC))
-- \pwm_ctrl|counter[2]~21\ = CARRY((\pwm_ctrl|counter\(2) & !\pwm_ctrl|counter[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|counter\(2),
	datad => VCC,
	cin => \pwm_ctrl|counter[1]~19\,
	combout => \pwm_ctrl|counter[2]~20_combout\,
	cout => \pwm_ctrl|counter[2]~21\);

-- Location: LCFF_X45_Y21_N5
\pwm_ctrl|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|counter[2]~20_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \pwm_ctrl|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|counter\(2));

-- Location: LCCOMB_X45_Y21_N8
\pwm_ctrl|counter[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|counter[4]~24_combout\ = (\pwm_ctrl|counter\(4) & (\pwm_ctrl|counter[3]~23\ $ (GND))) # (!\pwm_ctrl|counter\(4) & (!\pwm_ctrl|counter[3]~23\ & VCC))
-- \pwm_ctrl|counter[4]~25\ = CARRY((\pwm_ctrl|counter\(4) & !\pwm_ctrl|counter[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|counter\(4),
	datad => VCC,
	cin => \pwm_ctrl|counter[3]~23\,
	combout => \pwm_ctrl|counter[4]~24_combout\,
	cout => \pwm_ctrl|counter[4]~25\);

-- Location: LCFF_X45_Y21_N9
\pwm_ctrl|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|counter[4]~24_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \pwm_ctrl|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|counter\(4));

-- Location: LCCOMB_X45_Y21_N10
\pwm_ctrl|counter[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|counter[5]~26_combout\ = (\pwm_ctrl|counter\(5) & (!\pwm_ctrl|counter[4]~25\)) # (!\pwm_ctrl|counter\(5) & ((\pwm_ctrl|counter[4]~25\) # (GND)))
-- \pwm_ctrl|counter[5]~27\ = CARRY((!\pwm_ctrl|counter[4]~25\) # (!\pwm_ctrl|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|counter\(5),
	datad => VCC,
	cin => \pwm_ctrl|counter[4]~25\,
	combout => \pwm_ctrl|counter[5]~26_combout\,
	cout => \pwm_ctrl|counter[5]~27\);

-- Location: LCCOMB_X45_Y21_N12
\pwm_ctrl|counter[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|counter[6]~28_combout\ = (\pwm_ctrl|counter\(6) & (\pwm_ctrl|counter[5]~27\ $ (GND))) # (!\pwm_ctrl|counter\(6) & (!\pwm_ctrl|counter[5]~27\ & VCC))
-- \pwm_ctrl|counter[6]~29\ = CARRY((\pwm_ctrl|counter\(6) & !\pwm_ctrl|counter[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|counter\(6),
	datad => VCC,
	cin => \pwm_ctrl|counter[5]~27\,
	combout => \pwm_ctrl|counter[6]~28_combout\,
	cout => \pwm_ctrl|counter[6]~29\);

-- Location: LCCOMB_X45_Y21_N14
\pwm_ctrl|counter[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|counter[7]~30_combout\ = (\pwm_ctrl|counter\(7) & (!\pwm_ctrl|counter[6]~29\)) # (!\pwm_ctrl|counter\(7) & ((\pwm_ctrl|counter[6]~29\) # (GND)))
-- \pwm_ctrl|counter[7]~31\ = CARRY((!\pwm_ctrl|counter[6]~29\) # (!\pwm_ctrl|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|counter\(7),
	datad => VCC,
	cin => \pwm_ctrl|counter[6]~29\,
	combout => \pwm_ctrl|counter[7]~30_combout\,
	cout => \pwm_ctrl|counter[7]~31\);

-- Location: LCFF_X45_Y21_N15
\pwm_ctrl|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|counter[7]~30_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \pwm_ctrl|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|counter\(7));

-- Location: LCCOMB_X45_Y21_N18
\pwm_ctrl|counter[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|counter[9]~34_combout\ = (\pwm_ctrl|counter\(9) & (!\pwm_ctrl|counter[8]~33\)) # (!\pwm_ctrl|counter\(9) & ((\pwm_ctrl|counter[8]~33\) # (GND)))
-- \pwm_ctrl|counter[9]~35\ = CARRY((!\pwm_ctrl|counter[8]~33\) # (!\pwm_ctrl|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|counter\(9),
	datad => VCC,
	cin => \pwm_ctrl|counter[8]~33\,
	combout => \pwm_ctrl|counter[9]~34_combout\,
	cout => \pwm_ctrl|counter[9]~35\);

-- Location: LCFF_X45_Y21_N19
\pwm_ctrl|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|counter[9]~34_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \pwm_ctrl|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|counter\(9));

-- Location: LCCOMB_X45_Y21_N22
\pwm_ctrl|counter[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|counter[11]~38_combout\ = (\pwm_ctrl|counter\(11) & (!\pwm_ctrl|counter[10]~37\)) # (!\pwm_ctrl|counter\(11) & ((\pwm_ctrl|counter[10]~37\) # (GND)))
-- \pwm_ctrl|counter[11]~39\ = CARRY((!\pwm_ctrl|counter[10]~37\) # (!\pwm_ctrl|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|counter\(11),
	datad => VCC,
	cin => \pwm_ctrl|counter[10]~37\,
	combout => \pwm_ctrl|counter[11]~38_combout\,
	cout => \pwm_ctrl|counter[11]~39\);

-- Location: LCFF_X45_Y21_N23
\pwm_ctrl|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|counter[11]~38_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \pwm_ctrl|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|counter\(11));

-- Location: LCCOMB_X45_Y21_N26
\pwm_ctrl|counter[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|counter[13]~42_combout\ = (\pwm_ctrl|counter\(13) & (!\pwm_ctrl|counter[12]~41\)) # (!\pwm_ctrl|counter\(13) & ((\pwm_ctrl|counter[12]~41\) # (GND)))
-- \pwm_ctrl|counter[13]~43\ = CARRY((!\pwm_ctrl|counter[12]~41\) # (!\pwm_ctrl|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|counter\(13),
	datad => VCC,
	cin => \pwm_ctrl|counter[12]~41\,
	combout => \pwm_ctrl|counter[13]~42_combout\,
	cout => \pwm_ctrl|counter[13]~43\);

-- Location: LCFF_X45_Y21_N27
\pwm_ctrl|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|counter[13]~42_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \pwm_ctrl|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|counter\(13));

-- Location: LCCOMB_X45_Y21_N28
\pwm_ctrl|counter[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|counter[14]~44_combout\ = (\pwm_ctrl|counter\(14) & (\pwm_ctrl|counter[13]~43\ $ (GND))) # (!\pwm_ctrl|counter\(14) & (!\pwm_ctrl|counter[13]~43\ & VCC))
-- \pwm_ctrl|counter[14]~45\ = CARRY((\pwm_ctrl|counter\(14) & !\pwm_ctrl|counter[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm_ctrl|counter\(14),
	datad => VCC,
	cin => \pwm_ctrl|counter[13]~43\,
	combout => \pwm_ctrl|counter[14]~44_combout\,
	cout => \pwm_ctrl|counter[14]~45\);

-- Location: LCFF_X45_Y21_N29
\pwm_ctrl|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|counter[14]~44_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \pwm_ctrl|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|counter\(14));

-- Location: LCCOMB_X45_Y21_N30
\pwm_ctrl|counter[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|counter[15]~46_combout\ = \pwm_ctrl|counter[14]~45\ $ (\pwm_ctrl|counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pwm_ctrl|counter\(15),
	cin => \pwm_ctrl|counter[14]~45\,
	combout => \pwm_ctrl|counter[15]~46_combout\);

-- Location: LCFF_X45_Y21_N31
\pwm_ctrl|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|counter[15]~46_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \pwm_ctrl|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|counter\(15));

-- Location: LCCOMB_X42_Y21_N4
\pwm_ctrl|Mult0|mult_core|romout[0][7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Mult0|mult_core|romout[0][7]~6_combout\ = (\pwm_ctrl|dc_count\(2) & (((!\pwm_ctrl|dc_count\(3))))) # (!\pwm_ctrl|dc_count\(2) & ((\pwm_ctrl|dc_count\(1) & ((!\pwm_ctrl|dc_count\(3)) # (!\pwm_ctrl|dc_count\(0)))) # (!\pwm_ctrl|dc_count\(1) & 
-- ((\pwm_ctrl|dc_count\(0)) # (\pwm_ctrl|dc_count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(2),
	datab => \pwm_ctrl|dc_count\(1),
	datac => \pwm_ctrl|dc_count\(0),
	datad => \pwm_ctrl|dc_count\(3),
	combout => \pwm_ctrl|Mult0|mult_core|romout[0][7]~6_combout\);

-- Location: LCFF_X45_Y21_N13
\pwm_ctrl|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|counter[6]~28_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \pwm_ctrl|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|counter\(6));

-- Location: LCFF_X45_Y21_N11
\pwm_ctrl|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|counter[5]~26_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \pwm_ctrl|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|counter\(5));

-- Location: LCCOMB_X44_Y21_N4
\pwm_ctrl|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan1~1_cout\ = CARRY((!\pwm_ctrl|counter\(2) & \pwm_ctrl|dc_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|counter\(2),
	datab => \pwm_ctrl|dc_count\(0),
	datad => VCC,
	cout => \pwm_ctrl|LessThan1~1_cout\);

-- Location: LCCOMB_X44_Y21_N6
\pwm_ctrl|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan1~3_cout\ = CARRY((\pwm_ctrl|counter\(3) & ((!\pwm_ctrl|LessThan1~1_cout\) # (!\pwm_ctrl|dc_count\(1)))) # (!\pwm_ctrl|counter\(3) & (!\pwm_ctrl|dc_count\(1) & !\pwm_ctrl|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|counter\(3),
	datab => \pwm_ctrl|dc_count\(1),
	datad => VCC,
	cin => \pwm_ctrl|LessThan1~1_cout\,
	cout => \pwm_ctrl|LessThan1~3_cout\);

-- Location: LCCOMB_X44_Y21_N8
\pwm_ctrl|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan1~5_cout\ = CARRY((\pwm_ctrl|Mult0|mult_core|romout[0][4]~8_combout\ & ((!\pwm_ctrl|LessThan1~3_cout\) # (!\pwm_ctrl|counter\(4)))) # (!\pwm_ctrl|Mult0|mult_core|romout[0][4]~8_combout\ & (!\pwm_ctrl|counter\(4) & 
-- !\pwm_ctrl|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Mult0|mult_core|romout[0][4]~8_combout\,
	datab => \pwm_ctrl|counter\(4),
	datad => VCC,
	cin => \pwm_ctrl|LessThan1~3_cout\,
	cout => \pwm_ctrl|LessThan1~5_cout\);

-- Location: LCCOMB_X44_Y21_N10
\pwm_ctrl|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan1~7_cout\ = CARRY((\pwm_ctrl|Mult0|mult_core|romout[0][5]~combout\ & (\pwm_ctrl|counter\(5) & !\pwm_ctrl|LessThan1~5_cout\)) # (!\pwm_ctrl|Mult0|mult_core|romout[0][5]~combout\ & ((\pwm_ctrl|counter\(5)) # 
-- (!\pwm_ctrl|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Mult0|mult_core|romout[0][5]~combout\,
	datab => \pwm_ctrl|counter\(5),
	datad => VCC,
	cin => \pwm_ctrl|LessThan1~5_cout\,
	cout => \pwm_ctrl|LessThan1~7_cout\);

-- Location: LCCOMB_X44_Y21_N12
\pwm_ctrl|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan1~9_cout\ = CARRY((\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((!\pwm_ctrl|LessThan1~7_cout\) # (!\pwm_ctrl|counter\(6)))) # (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & 
-- (!\pwm_ctrl|counter\(6) & !\pwm_ctrl|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datab => \pwm_ctrl|counter\(6),
	datad => VCC,
	cin => \pwm_ctrl|LessThan1~7_cout\,
	cout => \pwm_ctrl|LessThan1~9_cout\);

-- Location: LCCOMB_X44_Y21_N14
\pwm_ctrl|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan1~11_cout\ = CARRY((\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\pwm_ctrl|counter\(7) & !\pwm_ctrl|LessThan1~9_cout\)) # (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & 
-- ((\pwm_ctrl|counter\(7)) # (!\pwm_ctrl|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \pwm_ctrl|counter\(7),
	datad => VCC,
	cin => \pwm_ctrl|LessThan1~9_cout\,
	cout => \pwm_ctrl|LessThan1~11_cout\);

-- Location: LCCOMB_X44_Y21_N16
\pwm_ctrl|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan1~13_cout\ = CARRY((\pwm_ctrl|counter\(8) & (\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & !\pwm_ctrl|LessThan1~11_cout\)) # (!\pwm_ctrl|counter\(8) & 
-- ((\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\) # (!\pwm_ctrl|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|counter\(8),
	datab => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \pwm_ctrl|LessThan1~11_cout\,
	cout => \pwm_ctrl|LessThan1~13_cout\);

-- Location: LCCOMB_X44_Y21_N18
\pwm_ctrl|LessThan1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan1~15_cout\ = CARRY((\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\pwm_ctrl|counter\(9) & !\pwm_ctrl|LessThan1~13_cout\)) # (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & 
-- ((\pwm_ctrl|counter\(9)) # (!\pwm_ctrl|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \pwm_ctrl|counter\(9),
	datad => VCC,
	cin => \pwm_ctrl|LessThan1~13_cout\,
	cout => \pwm_ctrl|LessThan1~15_cout\);

-- Location: LCCOMB_X44_Y21_N20
\pwm_ctrl|LessThan1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan1~17_cout\ = CARRY((\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((!\pwm_ctrl|LessThan1~15_cout\) # (!\pwm_ctrl|counter\(10)))) # (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & 
-- (!\pwm_ctrl|counter\(10) & !\pwm_ctrl|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \pwm_ctrl|counter\(10),
	datad => VCC,
	cin => \pwm_ctrl|LessThan1~15_cout\,
	cout => \pwm_ctrl|LessThan1~17_cout\);

-- Location: LCCOMB_X44_Y21_N22
\pwm_ctrl|LessThan1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan1~19_cout\ = CARRY((\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (\pwm_ctrl|counter\(11) & !\pwm_ctrl|LessThan1~17_cout\)) # (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- ((\pwm_ctrl|counter\(11)) # (!\pwm_ctrl|LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \pwm_ctrl|counter\(11),
	datad => VCC,
	cin => \pwm_ctrl|LessThan1~17_cout\,
	cout => \pwm_ctrl|LessThan1~19_cout\);

-- Location: LCCOMB_X44_Y21_N24
\pwm_ctrl|LessThan1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan1~21_cout\ = CARRY((\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & ((!\pwm_ctrl|LessThan1~19_cout\) # (!\pwm_ctrl|counter\(12)))) # (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ 
-- & (!\pwm_ctrl|counter\(12) & !\pwm_ctrl|LessThan1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datab => \pwm_ctrl|counter\(12),
	datad => VCC,
	cin => \pwm_ctrl|LessThan1~19_cout\,
	cout => \pwm_ctrl|LessThan1~21_cout\);

-- Location: LCCOMB_X44_Y21_N26
\pwm_ctrl|LessThan1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan1~23_cout\ = CARRY((\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (\pwm_ctrl|counter\(13) & !\pwm_ctrl|LessThan1~21_cout\)) # (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- ((\pwm_ctrl|counter\(13)) # (!\pwm_ctrl|LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datab => \pwm_ctrl|counter\(13),
	datad => VCC,
	cin => \pwm_ctrl|LessThan1~21_cout\,
	cout => \pwm_ctrl|LessThan1~23_cout\);

-- Location: LCCOMB_X44_Y21_N28
\pwm_ctrl|LessThan1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan1~25_cout\ = CARRY((\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & ((!\pwm_ctrl|LessThan1~23_cout\) # (!\pwm_ctrl|counter\(14)))) # (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ 
-- & (!\pwm_ctrl|counter\(14) & !\pwm_ctrl|LessThan1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datab => \pwm_ctrl|counter\(14),
	datad => VCC,
	cin => \pwm_ctrl|LessThan1~23_cout\,
	cout => \pwm_ctrl|LessThan1~25_cout\);

-- Location: LCCOMB_X44_Y21_N30
\pwm_ctrl|LessThan1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|LessThan1~26_combout\ = (\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((\pwm_ctrl|LessThan1~25_cout\) # (!\pwm_ctrl|counter\(15)))) # (!\pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- (\pwm_ctrl|LessThan1~25_cout\ & !\pwm_ctrl|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datad => \pwm_ctrl|counter\(15),
	cin => \pwm_ctrl|LessThan1~25_cout\,
	combout => \pwm_ctrl|LessThan1~26_combout\);

-- Location: LCCOMB_X42_Y21_N12
\pwm_ctrl|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|Equal0~1_combout\ = (!\pwm_ctrl|dc_count\(0) & (!\pwm_ctrl|dc_count\(1) & (\pwm_ctrl|dc_count\(2) & !\pwm_ctrl|dc_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(0),
	datab => \pwm_ctrl|dc_count\(1),
	datac => \pwm_ctrl|dc_count\(2),
	datad => \pwm_ctrl|dc_count\(3),
	combout => \pwm_ctrl|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y21_N24
\pwm_ctrl|p_pwm_ctrl~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_ctrl|p_pwm_ctrl~0_combout\ = (\pwm_ctrl|LessThan1~26_combout\) # ((!\pwm_ctrl|dc_count\(4) & (\pwm_ctrl|Equal0~0_combout\ & \pwm_ctrl|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_ctrl|dc_count\(4),
	datab => \pwm_ctrl|LessThan1~26_combout\,
	datac => \pwm_ctrl|Equal0~0_combout\,
	datad => \pwm_ctrl|Equal0~1_combout\,
	combout => \pwm_ctrl|p_pwm_ctrl~0_combout\);

-- Location: LCFF_X42_Y21_N25
\pwm_ctrl|ledg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \pwm_ctrl|p_pwm_ctrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_ctrl|ledg~regout\);

-- Location: LCCOMB_X36_Y21_N16
\serial_uart|received_error~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial_uart|received_error~0_combout\ = (\serial_uart|rx_bit_cnt_wrap~regout\ & ((\serial_uart|rx_state.s_stop_bit~regout\ & (!\serial_uart|rx_2r~regout\)) # (!\serial_uart|rx_state.s_stop_bit~regout\ & ((\serial_uart|received_error~regout\))))) # 
-- (!\serial_uart|rx_bit_cnt_wrap~regout\ & (((\serial_uart|received_error~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_uart|rx_bit_cnt_wrap~regout\,
	datab => \serial_uart|rx_2r~regout\,
	datac => \serial_uart|received_error~regout\,
	datad => \serial_uart|rx_state.s_stop_bit~regout\,
	combout => \serial_uart|received_error~0_combout\);

-- Location: LCFF_X36_Y21_N17
\serial_uart|received_error\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \serial_uart|received_error~0_combout\,
	sclr => \serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_uart|received_error~regout\);

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fpga_out_tx~I\ : cycloneii_io
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
	padio => ww_fpga_out_tx);

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_n[0]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|hex0\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_n[1]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|hex0\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_n[2]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|hex0\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_n[3]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|hex0\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_n[4]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|hex0\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_n[5]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|hex0\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_n[6]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|ALT_INV_hex0\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_n[0]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|hex1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_n[1]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|hex1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_n[2]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|hex1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_n[3]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|hex1\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_n[4]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|hex1\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_n[5]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|hex1\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_n[6]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|ALT_INV_hex1\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_n[0]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|hex2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_n[1]~I\ : cycloneii_io
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
	padio => ww_hex2_n(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_n[2]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|hex2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_n[3]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|hex2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_n[4]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|hex2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_n[5]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|hex2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_n[6]~I\ : cycloneii_io
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
	datain => \dc_disp_ctrl|ALT_INV_hex2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(6));

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
	datain => \pwm_ctrl|ledg~regout\,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(7));

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
	datain => \serial_uart|received_error~regout\,
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
END structure;


