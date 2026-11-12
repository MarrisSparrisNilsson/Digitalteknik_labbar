library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
library work;
    use work.seven_seg_pkg.all;

entity display_ascii_number is
    port (
        clock_50            : in std_logic;
        received_data       : in std_logic_vector(7 downto 0);
        received_data_valid	: in std_logic;
        number              : out std_logic_vector(6 downto 0)
    );
end entity display_ascii_number;

architecture rtl of display_ascii_number is
begin
    display : process(clock_50)
    begin
        if rising_edge(clock_50) then
            if received_data_valid = '1' then
                number <= fn_ascii_to_7seg(received_data);
            end if;
        end if;
    end process display;

end architecture rtl;