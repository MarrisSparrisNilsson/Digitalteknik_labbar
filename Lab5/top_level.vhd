library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
library work;

entity top_level is
    port (
        clk_50      : in std_logic;
        reset_n     : in std_logic;
        uart_rxd    : in std_logic;
        uart_txd    : out std_logic;
        hex0        : out std_logic_vector(6 downto 0);
        ledr        : out std_logic_vector(1 downto 0)
    );
end top_level;

architecture rtl of top_level is
    signal received_data       : std_logic_vector(7 downto 0);
    signal received_data_valid : std_logic;
    signal received_error      : std_logic := '0';

    signal heartbeat_key_n_input    : std_logic_vector(3 downto 0);

begin

    ledr(1) <= received_error;

    serial_uart : entity work.serial_uart
    generic map(
        g_reset_active_state  => '0',
        g_serial_speed_bps    => 9600,
        g_clk_period_ns       => 20,
        g_parity              => 0
    )
    port map(
        clk                   => clk_50,
        reset                 => reset_n,
        rx                    => uart_rxd,
        tx                    => uart_txd,

        received_data         => received_data,
        received_data_valid   => received_data_valid,
        received_error        => received_error,
        received_parity_error => open,

        transmit_ready        => open,
        transmit_data_valid   => received_data_valid,
        transmit_data         => received_data
    );

    heartbeat_key_n_input   <= "000" & reset_n;

    hearbeat_led : entity work.heartbeat_led
    port map(
        clock_50 => clk_50,
        key_n    => heartbeat_key_n_input,
        ledr     => ledr(0)
    );

    display_ascii_number : entity work.display_ascii_number
    port map(
        clock_50            => clk_50,
        received_data       => received_data,
        received_data_valid => received_data_valid,
        number              => hex0
    );


end architecture rtl;