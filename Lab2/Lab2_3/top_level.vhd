library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std;
	
entity top_level is
port(
	a, b  : in  std_logic_vector(3 downto 0);
	key_n : in  std_logic_vector(3 downto 0);
	ledr  : out std_logic_vector(2 downto 0)
);
end entity top_level;

architecture rtl of top_level is
	signal clk 		: std_logic;
	signal reset_n : std_logic;
begin
	clk 	  <= key_n(0);
	reset_n <= key_n(1);

	comp : process(clk, reset_n)
	begin
		if reset_n = '0' then
			ledr <= "000";
		elsif rising_edge(clk) then
				if a > b then
					ledr <= "100";
				elsif a < b then
					ledr <= "001";
				elsif a = b then
					ledr <= "010";
				end if;
		end if;
	end process comp;
end architecture rtl;
