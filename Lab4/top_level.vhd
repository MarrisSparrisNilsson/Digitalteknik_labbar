library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
    use ieee.std_logic_unsigned.all;

entity top_level is
port(
        clk_50  : in std_logic;
        sw      : in std_logic_vector(3 downto 0);
        key_n   : in std_logic_vector(3 downto 0);
        ledr    : out std_logic_vector(17 downto 0);
        ledg    : out std_logic_vector(7 downto 0);
        hex0    : out std_logic_vector(6 downto 0);
        hex1    : out std_logic_vector(6 downto 0);
        hex2    : out std_logic_vector(6 downto 0);
        hex3    : out std_logic_vector(6 downto 0)
    );
end top_level;

architecture rtl of top_level is
    ---------- Syncronize ----------
    signal sw_r     : std_logic;
    signal sw_2r     : std_logic;

    -- signal roll_btn     : std_logic;
    signal roll_btn_r   : std_logic;
    signal roll_btn_2r  : std_logic;

    -- signal reset_n      : std_logic;
    signal reset_n_r    : std_logic;
    signal reset_n_2r   : std_logic;
    --------------------------------

    signal chance           : integer range 0 to 5 := 0;
    signal waiting_for_roll : boolean := false;
    signal is_first_roll    : boolean := true;

	constant c_200ms_count_max : integer := 7000000; -- Board
	signal counter  : integer range 0 to c_200ms_count_max;

    signal hex0_state : std_logic_vector(6 downto 0) := "1111111";
    signal hex1_state : std_logic_vector(6 downto 0) := "1111111";
    signal hex2_state : std_logic_vector(6 downto 0) := "1111111";
    signal hex3_state : std_logic_vector(6 downto 0) := "1111111";
    
    type t_dice_state is (
        s_1,
        s_2,
        s_3,
        s_4,
        s_5,
        s_6,
        s_stop
    );
    signal main_state : t_dice_state := s_stop;

    type t_loading_lights_state is (
        s_1,
        s_2,
        s_3,
        s_4,
        s_5,
        s_6,
        s_stop
    );
    signal loading_state : t_loading_lights_state := s_stop;
        
begin
    hex0 <= hex0_state;
    hex1 <= hex1_state;
    hex2 <= hex2_state;
    hex3 <= hex3_state;

    roll_dice : process(reset_n_2r, clk_50)
    begin
        if rising_edge(clk_50) then
            if roll_btn_2r = '0' then
                ledr <= (others => '0');
                ledg <= (others => '0');

                is_first_roll <= false;
                
                ------ Roll history ------
                if waiting_for_roll then
                    hex3_state <= hex2_state;
                    hex2_state <= hex1_state;

                    if not (main_state = s_stop) then
                        hex1_state <= hex0_state;
                    end if;
                end if;
                waiting_for_roll <= false;
                --------------------------

                -- Light effect 2 (rolling animation) --
                if counter < c_200ms_count_max then
                    counter <= counter + 1;
                else
				    counter <= 0;
                        
                    case loading_state is
                        when s_1 =>
                            hex0_state <= "1111110";
                            loading_state <= s_2;
                        when s_2 =>
                            hex0_state <= "1111101";
                            loading_state <= s_3;
                        when s_3 =>
                            hex0_state <= "1111011";
                            loading_state <= s_4;
                        when s_4 =>
                            hex0_state <= "1110111";
                            loading_state <= s_5;
                        when s_5 =>
                            hex0_state <= "1101111";
                            loading_state <= s_6;
                        when s_6 =>
                            hex0_state <= "1011111";
                            loading_state <= s_1;
                        when others =>
                            hex0_state <= "0111111";
                            loading_state <= s_1;
                    end case;
                end if;
                ----------------------------------------
                        
                case main_state is
                    when s_1 =>
                        main_state <= s_2;
                    when s_2 =>
                        main_state <= s_3;
                    when s_3 =>
                        main_state <= s_4;
                    when s_4 =>
                        main_state <= s_5;
                    when s_5 =>
                        main_state <= s_6;
                    when s_6 =>
                        main_state <= s_1;
                    when others =>
                        main_state <= s_1;
                end case;                

                -------- Cheat mode --------
                chance <= chance + 1;
                if chance = 4 then
                    chance <= 0;
                end if;

                if sw_2r = '1' then
                    if chance mod 4 = 0 then
                        main_state <= s_6;
                    end if;
                end if;
                ----------------------------
                
            elsif roll_btn_2r = '1' then
                if not is_first_roll then
                    waiting_for_roll <= true;
                end if;

                case main_state is
                    when s_1 =>
                        hex0_state <= "1111001"; --1
                    when s_2 =>
                        hex0_state <= "0100100"; --2
                    when s_3 =>
                        hex0_state <= "0110000"; --3
                    when s_4 =>
                        hex0_state <= "0011001"; --4
                    when s_5 =>
                        hex0_state <= "0010010"; --5
                    when s_6 =>
                        hex0_state <= "0000010"; --6
                    when others =>
                        hex0_state <= "1000000"; --0
                end case;

                ------ Light effect 1 ------
                if main_state = s_6 then
                    ledg <= (others => '1');
                end if;
                ----------------------------
                
            end if;
        end if;

        if reset_n_2r = '0' then
            hex0_state <= "1111111"; --0
            hex1_state <= "1111111"; --0
            hex2_state <= "1111111"; --0
            hex3_state <= "1111111"; --0
            ledr <= (others => '0');
            ledg <= (others => '0');
            main_state <= s_stop;
        end if;
    end process roll_dice;

    p_double_sync : process(clk_50)
    begin
        if rising_edge(clk_50) then
            sw_r <= sw(0);
            sw_2r <= sw_r;

            roll_btn_r <= key_n(1);
            roll_btn_2r <= roll_btn_r;

            reset_n_r <= key_n(0);
            reset_n_2r <= reset_n_r;
        end if;
    end process;


end architecture rtl;