library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity serial_ctrl is
    port (
        -- From top_level
        clk                 : in std_logic;
        reset               : in std_logic;

        -- From serial_uart
        received_data       : in std_logic_vector(7 downto 0);
        received_data_valid : in std_logic;

        -- To pwm_ctrl
        serial_on           : out std_logic;
        serial_off          : out std_logic;
        serial_up           : out std_logic;
        serial_down         : out std_logic
    );
end serial_ctrl;

architecture rtl of serial_ctrl is
    signal ascii_char : integer range 0 to 255; -- Decimal number of ascii char
begin

    ascii_char <= to_integer(unsigned(received_data));

    p_serial_ctrl : process(clk, reset)
    begin
        if rising_edge(clk) then
            serial_on   <= '0';
            serial_off  <= '0';
            serial_up   <= '0';
            serial_down <= '0';

            if received_data_valid = '1' then
                -- "U" or "u"
                if ascii_char = 85 or ascii_char = 117 then
                    serial_up <= '1';
                -- "D" or "d"
                elsif ascii_char = 68 or ascii_char = 100 then
                    serial_down <= '1';
                -- "0"
                elsif ascii_char = 48 then
                    serial_off <= '1';
                -- "1"
                elsif ascii_char = 49 then
                    serial_on <= '1';
                end if;
            end if;
        end if;
        if reset = '1' then
            serial_on   <= '0';
            serial_off  <= '0';
            serial_up   <= '0';
            serial_down <= '0';
        end if;
    end process p_serial_ctrl;

end architecture;