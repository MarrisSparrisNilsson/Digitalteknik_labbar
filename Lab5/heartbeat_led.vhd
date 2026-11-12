library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
entity heartbeat_led is
port(
	clock_50 : in std_logic; -- 50 MHz clock
	key_n	 : in std_logic_vector(3 downto 0);
	ledr	 : out std_logic
);
end entity heartbeat_led;

architecture rtl of heartbeat_led is
	-- Constant and type declarations
	-- constant c_500ms_count_max : integer := 25; -- Sim
	constant c_500ms_count_max : integer := 25000000; -- Board
	
	-- Internal signal declarations
	signal reset_n  : std_logic;
	signal counter  : integer range 0 to c_500ms_count_max;
	signal tick		: std_logic;
	signal led		: std_logic := '0';
	signal up_tick 	: integer range 0 to c_500ms_count_max := 0;
	
begin
	-- Assign internal signals from entity inputs
	-- Active low reset reset from KEY0
	reset_n <= key_n(0);
	ledr <= led;
	
	-- turn off unused LED outputs
	--ledr <= (others => '0'); -- USE ONE OF THESE FOR THE TOGGLE LED
	
	p_tick : process(clock_50, reset_n)
	begin
		if reset_n = '0' then 
			counter <= 0;
			tick <= '0';
		elsif rising_edge(clock_50) then
			if (counter < c_500ms_count_max) then
				counter <= counter + 1;
				tick <= '0';
			else
				counter <= 0;
				tick <= '1';
			end if;
		end if;
	end process p_tick;
	
	p_toggle : process(clock_50, reset_n)
	begin
		if reset_n = '0' then
			led <= '0';
		elsif rising_edge(clock_50) then
			if tick = '1' then
				led <= not(led);
			end if;
		end if;			
	end process p_toggle;
end architecture rtl;