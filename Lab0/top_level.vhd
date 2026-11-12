library ieee;
	use ieee.std_logic_1164.all;

entity top_level is
port(
	sw0 : in std_logic;
	sw1 : in std_logic;
	sw2 : in std_logic;
	ledr0 : out std_logic);
end entity top_level;

architecture rtl of top_level is
begin

	ledr0 <= sw0 and (sw1 or sw2);
	
end architecture rtl;