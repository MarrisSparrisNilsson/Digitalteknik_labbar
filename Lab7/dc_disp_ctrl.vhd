library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
library work;
    use work.seven_seg_pkg.all;

entity dc_disp_ctrl is
    port (
        -- From top_level
        clk                 : in std_logic;
        reset               : in std_logic;
        -- From pwm_ctrl
        current_dc          : in std_logic_vector(7 downto 0);
        current_dc_update   : in std_logic;

        -- From serial_uart
        transmit_ready      : in std_logic;

        -- To serial_uart
        transmit_data_valid : out std_logic;
        transmit_data       : out std_logic_vector(7 downto 0);

        -- To top_level
        hex0_n              : out std_logic_vector(6 downto 0);
        hex1_n              : out std_logic_vector(6 downto 0);
        hex2_n              : out std_logic_vector(6 downto 0)

    );
end entity dc_disp_ctrl;

architecture rtl of dc_disp_ctrl is

    signal valid_transmit   : std_logic;
    signal data_transmit    : std_logic_vector(7 downto 0);
            
    signal hex0             : std_logic_vector(6 downto 0);
    signal hex1             : std_logic_vector(6 downto 0);
    signal hex2             : std_logic_vector(6 downto 0);

    signal bcd_0            : std_logic_vector(3 downto 0);
    signal bcd_1            : std_logic_vector(3 downto 0);
    signal bcd_2            : std_logic_vector(3 downto 0);
    signal valid_out        : std_logic;


    function fn_bcd_to_ascii (
        bcd_value : std_logic_vector(3 downto 0)
    ) return std_logic_vector is
		variable ascii_value : std_logic_vector(7 downto 0);
    begin
        case bcd_value is
            when "0000" =>
                ascii_value := "00110000"; -- '0' in ASCII
            when "0001" =>
                ascii_value := "00110001"; -- '1' in ASCII
            when "0010" =>
                ascii_value := "00110010"; -- '2' in ASCII
            when "0011" =>
                ascii_value := "00110011"; -- '3' in ASCII
            when "0100" =>
                ascii_value := "00110100"; -- '4' in ASCII
            when "0101" =>
                ascii_value := "00110101"; -- '5' in ASCII
            when "0110" =>
                ascii_value := "00110110"; -- '6' in ASCII
            when "0111" =>
                ascii_value := "00110111"; -- '7' in ASCII
            when "1000" =>
                ascii_value := "00111000"; -- '8' in ASCII
            when "1001" =>
                ascii_value := "00111001"; -- '9' in ASCII
            when others =>
                ascii_value := (others => '0'); -- Default value if the BCD is invalid
        end case;

        return ascii_value;
    end function fn_bcd_to_ascii;


    type transmit_state is (s_idle,
                            s_first_byte,
                            s_second_byte,
                            s_third_byte,
                            s_fourth_byte,
                            s_fifth_byte);

    signal current_transmit_state : transmit_state := s_idle;

    signal update                   : std_logic;
    signal stack                    : std_logic := '0';
    signal bcd_stack1_0             : std_logic_vector(3 downto 0);
    signal bcd_stack1_1             : std_logic_vector(3 downto 0);
    signal bcd_stack1_2             : std_logic_vector(3 downto 0);

    signal bcd_stack2_0             : std_logic_vector(3 downto 0);
    signal bcd_stack2_1             : std_logic_vector(3 downto 0);
    signal bcd_stack2_2             : std_logic_vector(3 downto 0);

    signal reset_transmission_active    : boolean := false;
    signal transmission_started         : boolean := false;
    signal transmission_finished        : boolean := false;

begin

    transmit_data_valid <= valid_transmit;
    transmit_data       <= data_transmit;

    hex0_n <= hex0;
    hex1_n <= hex1;
    hex2_n <= hex2;

    bcd_decode_rom : entity work.bcd_decode_rom
    port map(
        clk             => clk,
        reset           => reset,
        
        input_vector    => current_dc,
        valid_in        => current_dc_update,
        ready           => open,

        bcd_0           => bcd_0,
        bcd_1           => bcd_1,
        bcd_2           => bcd_2,
        valid_out       => valid_out
    );

    p_dc_disp_ctrl : process(clk, reset)--, transmit_ready, current_transmit_state)
    begin
        if rising_edge(clk) then
            
            if valid_out = '1'  then
                hex0 <= fn_ascii_to_7seg(fn_bcd_to_ascii(bcd_0));
                hex1 <= fn_ascii_to_7seg(fn_bcd_to_ascii(bcd_1));
                hex2 <= fn_ascii_to_7seg(fn_bcd_to_ascii(bcd_2));

                if current_transmit_state /= s_idle then --Transmit in progress
                    bcd_stack2_0    <= bcd_0;
                    bcd_stack2_1    <= bcd_1;
                    bcd_stack2_2    <= bcd_2;
                    stack           <= '1';
                else -- idle state
                    bcd_stack1_0    <= bcd_0;
                    bcd_stack1_1    <= bcd_1;
                    bcd_stack1_2    <= bcd_2;
                    stack           <= '0';
                end if;
                update <= '1';
            end if;

            valid_transmit <= '0';
            
            if transmit_ready = '1' and valid_transmit = '0' then

                if transmission_started and not transmission_finished then
                    transmission_finished   <= true;
                end if;
                
                case current_transmit_state is
                    when s_idle =>

                        data_transmit <= (others => '0');

                        if reset_transmission_active then
                            current_transmit_state  <= s_first_byte;
                        else
                            if stack = '1' then
                                bcd_stack1_0    <= bcd_stack2_0;
                                bcd_stack1_1    <= bcd_stack2_1;
                                bcd_stack1_2    <= bcd_stack2_2;
                                stack           <= '0';
                            end if;
                            if update = '1' then
                                current_transmit_state <= s_first_byte;
                            end if;
                        end if;

                        transmission_started    <= false;
                        transmission_finished   <= false;

                    
                    when s_first_byte =>
                        if reset_transmission_active then
                            data_transmit           <= "00100000"; -- " " (Space)
                        else
                            if to_integer(unsigned(fn_bcd_to_ascii(bcd_stack1_2))) = 0 then
                                data_transmit       <= "00100000"; -- " " (Space)
                            else
                                data_transmit       <= fn_bcd_to_ascii(bcd_stack1_2);
                            end if;
                        end if;

                        if not transmission_started then
                            valid_transmit          <= '1';
                        end if;
                        if transmission_finished then
                            current_transmit_state  <= s_second_byte;
                            transmission_started    <= false;
                            transmission_finished   <= false;
                        end if;
                            
                    when s_second_byte =>
                        if reset_transmission_active then
                            data_transmit           <= "00100000"; -- " " (Space)
                        else
                            if to_integer(unsigned(fn_bcd_to_ascii(bcd_stack1_1))) = 0 then
                                data_transmit       <= "00100000"; -- " " (Space)
                            else
                                data_transmit       <= fn_bcd_to_ascii(bcd_stack1_1);
                            end if;
                        end if;

                        if not transmission_started then
                            valid_transmit          <= '1';
                        end if;
                        if transmission_finished then
                            current_transmit_state  <= s_third_byte;
                            transmission_started    <= false;
                            transmission_finished   <= false;
                        end if;
                        
                    
                    when s_third_byte =>
                        if reset_transmission_active then
                            data_transmit           <= "00110000"; -- 0
                        else
                            data_transmit           <= fn_bcd_to_ascii(bcd_stack1_0);
                        end if;

                        if not transmission_started then
                            valid_transmit          <= '1';
                        end if;
                        if transmission_finished then
                            current_transmit_state  <= s_fourth_byte;
                            transmission_started    <= false;
                            transmission_finished   <= false;
                        end if;
                        
                    when s_fourth_byte =>                    
                        data_transmit           <= "00100101"; -- %
                        
                        if not transmission_started then
                            valid_transmit          <= '1';
                        end if;
                        if transmission_finished then
                            current_transmit_state  <= s_fifth_byte;
                            transmission_started    <= false;
                            transmission_finished   <= false;
                        end if;
                    
                    when s_fifth_byte =>
                        data_transmit           <= "00001101"; -- CR (Carrige return)
                        
                        if not transmission_started then
                            valid_transmit          <= '1';
                        end if;
                        if transmission_finished then
                            current_transmit_state  <= s_idle;
                            transmission_started    <= false;
                            transmission_finished   <= false;
                        end if;

                        if stack = '1' then
                            update <= '1';
                        else 
                            update <= '0';
                        end if;

                        reset_transmission_active   <= false;
                    
                    when others =>
                        null;
                end case;
            else -- ready = 0
                transmission_started <= true;
            end if;

        end if; -- clock if

        if reset = '1' then
            stack <= '0';
            update <= '0';
            transmission_started    <= false;
            transmission_finished   <= false;

            reset_transmission_active   <= true;

            hex0 <= fn_ascii_to_7seg("00110000"); -- 0
            hex1 <= fn_ascii_to_7seg("00110000"); -- 0
            hex2 <= fn_ascii_to_7seg("00110000"); -- 0


            bcd_stack1_0    <= (others => '0');
            bcd_stack1_1    <= (others => '0');
            bcd_stack1_2    <= (others => '0');
            bcd_stack2_0    <= (others => '0');
            bcd_stack2_1    <= (others => '0');
            bcd_stack2_2    <= (others => '0');

            current_transmit_state  <= s_idle;
        end if;
                
    end process p_dc_disp_ctrl;

    end architecture rtl;