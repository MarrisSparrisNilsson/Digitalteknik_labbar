library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity pwm_ctrl is
    port (
        -- From top_level
        clk                 : in std_logic;
        reset               : in std_logic;

        -- From key_ctrl
        key_off             : in std_logic;
        key_on              : in std_logic;
        key_down            : in std_logic;
        key_up              : in std_logic;

        -- From serial_ctrl
        serial_off          : in std_logic;
        serial_on           : in std_logic;
        serial_down         : in std_logic;
        serial_up           : in std_logic;

        -- To dc_disp_ctrl
        current_dc          : out std_logic_vector(7 downto 0);
        current_dc_update   : out std_logic;

        -- To top_level
        ledg                : out std_logic
    );
end pwm_ctrl;

architecture rtl of pwm_ctrl is

    constant max_count      : integer := 50000; --1000Hz
    signal counter          : integer range 0 to max_count;
    signal dc_count         : integer range 0 to 100;
    signal prev_dc          : integer range 0 to 100;

    type dc_state is (s_dc_on,
                      s_dc_off);
    signal current_dc_state : dc_state := s_dc_off;
    
begin

    current_dc <= std_logic_vector(to_unsigned(dc_count, current_dc'length));

    p_pwm_ctrl : process(clk, reset)
    begin
        if rising_edge(clk) then

            current_dc_update <= '0';

            if counter < max_count then
                counter <= counter + 1;
            else 
                counter <= 0;
            end if;

            if counter < dc_count * 500 or dc_count = 100 then
                ledg <= '1';
            else
                ledg <= '0';
            end if;


            if (key_off = '1' or key_on = '1' or key_down = '1' or key_up = '1' or
                serial_off = '1' or serial_on = '1' or serial_down = '1' or serial_up = '1') then
                current_dc_update <= '1';
            end if;


            if key_off = '1' or serial_off = '1' then
                if dc_count > 0 then
                    prev_dc             <= dc_count;
                end if;
                dc_count                <= 0;
                current_dc_state        <= s_dc_off;

            elsif key_on = '1' or serial_on = '1' then
                if prev_dc < 10 then
                    dc_count            <= 10;
                else
                    dc_count            <= prev_dc;
                end if;
                current_dc_state        <= s_dc_on;

            elsif key_down = '1' or serial_down = '1' then
                if dc_count > 10 and current_dc_state /= s_dc_off then
                    dc_count            <= dc_count - 1;
                end if;

            elsif key_up = '1' or serial_up = '1' then
                if current_dc_state = s_dc_off then
                    dc_count            <= 10;
                    current_dc_state    <= s_dc_on;
                elsif dc_count < 100 then
                    dc_count            <= dc_count + 1;
                end if;
            end if;

        end if;
        if reset = '1' then
            dc_count <= 0;
            prev_dc <= 100;
            counter <= 0;
            current_dc_state <= s_dc_off;
        end if;

    end process p_pwm_ctrl;

end architecture rtl;