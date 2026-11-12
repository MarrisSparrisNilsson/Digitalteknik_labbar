library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
library work;

entity pwm_module is
    generic (
        g_simulation    : in boolean := false
    );
    port (
        clock_50        : in std_logic;
        key_n           : in std_logic_vector(3 downto 0);

        fpga_in_rx      : in std_logic;
        fpga_out_tx     : out std_logic;
        
        hex0_n          : out std_logic_vector(6 downto 0);
        hex1_n          : out std_logic_vector(6 downto 0);
        hex2_n          : out std_logic_vector(6 downto 0);

        ledg            : out std_logic_vector(7 downto 0);
        ledr            : out std_logic_vector(9 downto 0)
    );
end pwm_module;

architecture rtl of pwm_module is

    signal transmit_ready       : std_logic;
    signal transmit_data        : std_logic_vector(7 downto 0);
    signal transmit_data_valid  : std_logic;

    signal received_data        : std_logic_vector(7 downto 0);
    signal received_data_valid  : std_logic;
    
    signal key_on               : std_logic;
    signal key_off              : std_logic;
    signal key_up               : std_logic;
    signal key_down             : std_logic;
    
    signal serial_on            : std_logic;
    signal serial_off           : std_logic;
    signal serial_up            : std_logic;
    signal serial_down          : std_logic;
    
    signal pll_locked           : std_logic;
    signal clk_50               : std_logic; -- Use in every component
    signal reset                : std_logic; -- Active high reset signal to all components
    
    signal current_dc           : std_logic_vector(7 downto 0);
    signal current_dc_update    : std_logic;
    
begin
        
    ledr(9 downto 1)     <= (others => '0');
    ledg(7 downto 1)     <= (others => '0');

    serial_uart : entity work.serial_uart
    generic map(
        g_reset_active_state    => '1',
        g_serial_speed_bps      => 115200,
        g_clk_period_ns         => 20,
        g_parity                => 0
    )
    port map(
        clk                     => clk_50,
        reset                   => reset,
        rx                      => fpga_in_rx,
        tx                      => fpga_out_tx,

        received_data           => received_data,
        received_data_valid     => received_data_valid,
        received_error          => ledr(0),
        received_parity_error   => open,

        transmit_ready          => transmit_ready,
        transmit_data_valid     => transmit_data_valid,
        transmit_data           => transmit_data
    );

    serial_ctrl : entity work.serial_ctrl
    port map(
        clk                     => clk_50,
        reset                   => reset,

        received_data           => received_data,
        received_data_valid     => received_data_valid,

        serial_on               => serial_on,
        serial_off              => serial_off,
        serial_up               => serial_up,
        serial_down             => serial_down
    );

    pwm_ctrl : entity work.pwm_ctrl
    port map(
        clk                     => clk_50,
        reset                   => reset,
                
        key_on                  => key_on,
        key_off                 => key_off,
        key_up                  => key_up,
        key_down                => key_down,
        
        serial_on               => serial_on,
        serial_off              => serial_off,
        serial_up               => serial_up,
        serial_down             => serial_down,

        current_dc              => current_dc,
        current_dc_update       => current_dc_update,

        ledg                    => ledg(0)
    );

    key_ctrl : entity work.key_ctrl
    port map(
        clk                     => clk_50,
        reset                   => reset,
        key_n                   => key_n,
                
        key_on                  => key_on,
        key_off                 => key_off,
        key_up                  => key_up,
        key_down                => key_down
    );

    dc_disp_ctrl : entity work.dc_disp_ctrl
    port map(
        clk                     => clk_50,
        reset                   => reset,

        current_dc              => current_dc,
        current_dc_update       => current_dc_update,
                
        transmit_ready          => transmit_ready,
        transmit_data           => transmit_data,
        transmit_data_valid     => transmit_data_valid,

        hex0_n                  => hex0_n,
        hex1_n                  => hex1_n,
        hex2_n                  => hex2_n
    );
    

    b_gen_pll : if (not g_simulation) generate
        -- Instance of PLL
        i_altera_pll : entity work.altera_pll
        port map(
            areset      => '0',         -- Reset towards PLL is inactive
            inclk0      => clock_50,    -- 50 MHz input clock
            c0          => open,        -- 25 MHz output clock unused
            c1          => clk_50,      -- 50 MHz output clock
            c2          => open,        -- 100 MHz output clock unused
            locked      => pll_locked   -- PLL Locked output signal
        );

        i_reset_ctrl : entity work.reset_ctrl
        generic map(
            g_reset_hold_clk  => 127
        )
        port map(
            clk         => clk_50,
            reset_in    => '0',
            reset_in_n  => pll_locked,  -- reset active if PLL is not locked

            reset_out   => reset,
            reset_out_n => open
        );
    end generate;

    b_sim_clock_gen : if g_simulation generate
        clk_50   <= clock_50;
        p_internal_reset : process
        begin
            reset    <= '1';
            wait until clock_50 = '1';
            wait for 1 us;
            wait until clock_50 = '1';
            reset    <= '0';
            wait;
        end process p_internal_reset;
    end generate;


end architecture rtl;