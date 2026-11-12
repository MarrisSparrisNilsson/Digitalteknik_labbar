library ieee;
  use ieee.std_logic_1164.all;

entity top_level is
port(
  sw0   : in std_logic;
  sw1   : in std_logic;
  sw2   : in std_logic;
  sw3   : in std_logic;
  sw4   : in std_logic;
  sw5   : in std_logic;
  sw6   : in std_logic;
  sw7   : in std_logic;
  ledr0 : out std_logic);
end entity top_level;

architecture rtl of top_level is
begin
  ledr0 <= (sw0 and not (sw1 or sw2 or sw3 or sw4 or sw5 or sw6 or sw7 ))  or
        ((sw0 and sw1) and not (sw2 or sw3 or sw4 or sw5 or sw6 or sw7 ))  or
        ((sw0 and sw1 and sw2) and not (sw3 or sw4 or sw5 or sw6 or sw7 )) or
        ((sw1 and sw2 and sw3) and not (sw0 or sw4 or sw5 or sw6 or sw7 )) or
        ((sw2 and sw3 and sw4) and not (sw0 or sw1 or sw5 or sw6 or sw7 )) or
        ((sw3 and sw4 and sw5) and not (sw0 or sw1 or sw2 or sw6 or sw7 )) or
        ((sw4 and sw5 and sw6) and not (sw0 or sw1 or sw2 or sw3 or sw7 )) or
        ((sw5 and sw6 and sw7) and not (sw0 or sw1 or sw2 or sw3 or sw4 ));
end architecture rtl;