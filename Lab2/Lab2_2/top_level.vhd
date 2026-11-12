library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
entity top_level is
port(
	channel : in std_logic_vector(3 downto 0);
	sel 	: in std_logic_vector(1 downto 0);
	key_n 	: in std_logic_vector(3 downto 0);
	mux_out : out std_logic
);
end entity top_level;

architecture rtl of top_level is
	--internal signals
	signal clk 		: std_logic;
	signal reset_n : std_logic;
	signal a : std_logic;
	signal b : std_logic;
	signal c : std_logic;
	signal d : std_logic;
begin
	clk 	<= key_n(0);
	reset_n <= key_n(1);

	a <= std_logic(channel(0));
	b <= std_logic(channel(1));
	c <= std_logic(channel(2));
	d <= std_logic(channel(3));

	sync_mux4 : process(clk, reset_n)
	begin
		if reset_n = '0' then
			mux_out <= '0';
		elsif rising_edge(clk) then
			case sel is
				when "00" => mux_out <= a;
				when "01" => mux_out <= b;
				when "10" => mux_out <= c;
				when others => mux_out <= d;
			end case;
		end if;
	end process sync_mux4;
	
end architecture rtl;
