library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity key_ctrl is
    port (
        -- From top_level
        clk         : in std_logic;
        reset       : in std_logic;
        key_n       : in std_logic_vector(3 downto 0);

        -- To pwm_ctrl
        key_off     : out std_logic;
        key_on      : out std_logic;
        key_down    : out std_logic;
        key_up      : out std_logic
    );
end key_ctrl;

architecture rtl of key_ctrl is
    ------------------ Double synchronize ------------------
    signal key_r            : std_logic_vector(3 downto 0);
    signal key_2r           : std_logic_vector(3 downto 0);
    --------------------------------------------------------

    signal off_key          : std_logic; -- key(0)
    signal on_key           : std_logic; -- key(1)
    signal down_key         : std_logic; -- key(2)
    signal up_key           : std_logic; -- key(3)

    constant max_pulse_cnt  : integer := 500000;
    
    signal pulse_counter    : integer range 0 to max_pulse_cnt;
    signal is_held_down     : boolean := false;
begin

    key_off     <= off_key;
    key_on      <= on_key;
    key_down    <= down_key;
    key_up      <= up_key;

    p_key_ctrl : process(clk, reset)
    begin
        if rising_edge(clk) then
            ----- Double sync ------
            key_r(0)    <= key_n(0);
            key_2r(0)   <= key_r(0);

            key_r(1)    <= key_n(1);
            key_2r(1)   <= key_r(1);

            key_r(2)    <= key_n(2);
            key_2r(2)   <= key_r(2);

            key_r(3)    <= key_n(3);
            key_2r(3)   <= key_r(3);
            ------------------------

            -- Set high one clock cycle (and then reset)
            off_key     <= '0';
            on_key      <= '0';
            down_key    <= '0';
            up_key      <= '0';
                
            if (key_2r(0) = '0' or key_2r(1) = '0' or key_2r(2) = '0' or key_2r(3) = '0') then

                if pulse_counter < max_pulse_cnt and is_held_down then
                    pulse_counter   <= pulse_counter + 1;
                else
                    if key_2r(0) = '0' then
                        off_key     <= '1';
                    elsif key_2r(2) = '0' and key_2r(3) = '0' then
                        off_key     <= '1';
                        on_key      <= '1';
                    else
                        off_key     <= not key_2r(0);
                        on_key      <= not key_2r(1);
                        down_key    <= not key_2r(2);
                        up_key      <= not key_2r(3);
                        
                    end if;
                    is_held_down    <= true;
                    pulse_counter   <= 0;
                end if;
            else
                is_held_down    <= false;
                pulse_counter   <= 0;
            end if;
        end if;
        if reset = '1' then
            is_held_down    <= false;
            pulse_counter   <= 0;
        end if;

    end process p_key_ctrl;

end architecture rtl;