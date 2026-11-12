library ieee;
	use ieee.std_logic_1164.all;

entity top_level is
port(
	sw0 	: in std_logic;
	sw1 	: in std_logic;
	sw2 	: in std_logic;
	sw3 	: in std_logic;
	sw4 	: in std_logic;
	sw5 	: in std_logic;
	sw6 	: in std_logic;
	sw7 	: in std_logic;
	ledr0   : out std_logic);
end entity top_level;

architecture rtl of top_level is
begin
	led_process : process(sw0, sw1, sw2, sw3, sw4, sw5, sw6, sw7)
	begin
		if (sw0 = '1') and (sw1 = '0' and sw2 = '0' and sw3 = '0' and sw4 = '0' and sw5 = '0' and sw6 = '0' and sw7 = '0') then
			ledr0 <= '1';
		elsif (sw0 = '1' and sw1 = '1') and (sw2 = '0' and sw3 = '0' and sw4 = '0' and sw5 = '0' and sw6 = '0' and sw7 = '0') then
			ledr0 <= '1';
		elsif (sw0 = '1' and sw1 = '1' and sw2 = '1') and (sw3 = '0' and sw4 = '0' and sw5 = '0' and sw6 = '0' and sw7 = '0') then
			ledr0 <= '1';
		elsif (sw1 = '1' and sw2 = '1' and sw3 = '1') and (sw0 = '0' and sw4 = '0' and sw5 = '0' and sw6 = '0' and sw7 = '0') then
			ledr0 <= '1';
		elsif (sw2 = '1' and sw3 = '1' and sw4 = '1') and (sw0 = '0' and sw1 = '0' and sw5 = '0' and sw6 = '0' and sw7 = '0') then
			ledr0 <= '1';
		elsif (sw3 = '1' and sw4 = '1' and sw5 = '1') and (sw0 = '0' and sw1 = '0' and sw2 = '0' and sw6 = '0' and sw7 = '0') then
			ledr0 <= '1';
		elsif (sw4 = '1' and sw5 = '1' and sw6 = '1') and (sw0 = '0' and sw1 = '0' and sw2 = '0' and sw3 = '0' and sw7 = '0') then
			ledr0 <= '1';
		elsif (sw5 = '1' and sw6 = '1' and sw7 = '1') and (sw0 = '0' and sw1 = '0' and sw2 = '0' and sw3 = '0' and sw4 = '0') then
			ledr0 <= '1';
		else 
			ledr0 <= '0';
		end if;
	end process led_process;
end architecture rtl;