library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
library work;

entity top_level is
    port (
        clk_50      : in std_logic;
        reset_n     : in std_logic;
        uart_rxd    : in std_logic;
        sw          : in std_logic; -- Konvention att göra till en vector?
        ledr        : out std_logic_vector(11 downto 0)
    );
end top_level;

architecture rtl of top_level is
    -- Double synchronize --
    signal sw_r     : std_logic;
    signal sw_2r    : std_logic;
    signal reset_r  : std_logic;
    signal reset_2r : std_logic;
    ------------------------
    signal test_port : std_logic_vector(11 downto 0);

    signal received_data       : std_logic_vector(7 downto 0);
    signal received_data_valid : std_logic;
    signal received_error      : std_logic := '0';

    signal bcd_0               : std_logic_vector(3 downto 0);
    signal bcd_1               : std_logic_vector(3 downto 0);
    signal bcd_2               : std_logic_vector(3 downto 0);
    signal valid_out           : std_logic;

begin

    serial_uart : entity work.serial_uart
    generic map(
        g_reset_active_state  => '0',
        g_serial_speed_bps    => 115200,
        g_clk_period_ns       => 20,
        g_parity              => 0
    )
    port map(
        clk                   => clk_50,
        reset                 => reset_2r,
        rx                    => uart_rxd,
        serial_uart_test_port => test_port,

        received_data         => received_data,
        received_data_valid   => received_data_valid,
        received_error        => received_error,
        received_parity_error => open,

        transmit_ready        => open,
        transmit_data_valid   => '0',
        transmit_data         => (others => '0')
    );

    bcd_decode_rom : entity work.bcd_decode_rom
    port map(
        clk          => clk_50,
        reset        => reset_2r,
        
        input_vector => received_data,
        valid_in     => received_data_valid,
        ready        => open,

        bcd_0 => bcd_0,
        bcd_1 => bcd_1,
        bcd_2 => bcd_2,
        valid_out => valid_out
    );

    p_debug : process(clk_50)
    begin
        if rising_edge(clk_50) then
            sw_r <= sw;
            sw_2r <= sw_r;
            reset_r     <= reset_n;
            reset_2r    <= reset_r;

            if sw_2r = '0' then
                if valid_out = '1' then
                    ledr <= bcd_2 & bcd_1 & bcd_0;
                end if;
            else 
                ledr <= test_port;
            end if;
        end if;        
    end process p_debug;

end architecture rtl;