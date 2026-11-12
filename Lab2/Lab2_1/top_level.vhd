library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
entity top_level is
port(
	sw 		: in  std_logic_vector(5 downto 0);
	key_n 	: in  std_logic_vector(3 downto 0);
	ledr 	: out std_logic_vector(3 downto 0));
end entity top_level;

architecture rtl of top_level is
	signal clk     : std_logic;
	signal reset_n : std_logic;
	
	signal value_1 : unsigned(2 downto 0);
	signal value_2 : unsigned(2 downto 0);
	
begin
	clk 	<= key_n(0);
	reset_n <= key_n(1);
	
	value_1 <= unsigned(sw(2 downto 0));
	--value_1 <= signed(sw(5) & sw(5 downto 3));
	value_2 <= unsigned(sw(5 downto 3));
	
	adder : process(clk, reset_n) is 
	begin
		if reset_n = '0' then
			ledr <= (others => '0');
		elsif rising_edge(clk) then
			ledr <= std_logic_vector(('0' & value_1) + value_2);
		end if;
	end process adder;
	
end architecture rtl;
