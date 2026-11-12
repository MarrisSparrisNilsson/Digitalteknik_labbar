library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;
library std;
   use std.textio.all;

entity testbench_top is
end entity testbench_top;

architecture bhv of testbench_top is

   -- Clock and reset generation
   signal clock_50         : std_logic := '0';
   signal reset_n          : std_logic := '0';  -- Active low reset
   signal reset            : std_logic := '1';  -- Active high reset
   signal kill_clock       : std_logic := '0';
   signal errors_found     : integer;

     -- Output signals to / from DUT
   signal bcd_input_vector          : std_logic_vector(7 downto 0);
   signal bcd_valid_in              : std_logic;
   signal bcd_ready                 : std_logic;
   signal bcd_0                     : std_logic_vector(3 downto 0);
   signal bcd_1                     : std_logic_vector(3 downto 0);
   signal bcd_2                     : std_logic_vector(3 downto 0);
   signal bcd_0_int                 : integer range 0 to 15;
   signal bcd_1_int                 : integer range 0 to 15;
   signal bcd_2_int                 : integer range 0 to 15;
   signal bcd_total                 : integer;
   signal bcd_valid_out             : std_logic;

   procedure pr_write(v_input_str : in string) is
      variable v_line : line;
   begin
      write(v_line,v_input_str);
      writeline(OUTPUT, v_line);
   end procedure pr_write;

begin

   bcd_0_int   <= to_integer(unsigned(bcd_0));
   bcd_1_int   <= to_integer(unsigned(bcd_1));
   bcd_2_int   <= to_integer(unsigned(bcd_2));

   bcd_total   <= bcd_2_int*100 + bcd_1_int*10 + bcd_0_int;

   --=============================================================
   -- p_generate_clock
   -- Process that generates 50 MHz clock signal.
   -- stops clock when the kill_clock signal is set high.
   --=============================================================
   p_generate_clock : process
   begin
      clock_50 <= '0';
      wait for 10 ns;
      while ( kill_clock = '0' ) loop
         clock_50 <= not clock_50;
         wait for 10 ns;
      end loop;
      -- wait forever;
      wait;
   end process p_generate_clock;

   --=============================================================
   -- p_generate_reset
   -- Process that holds active low reset signal active
   -- for some time in the beginning of simulation.
   --=============================================================
   p_generate_reset : process
   begin
      -- Set reset active
      reset_n     <= '0';
      reset       <= '1';  -- Active high reset
      wait for 123 ns;
      -- Set reset inactive
      reset_n     <= '1';
      reset       <= '0';  -- Active low reset
      -- Wait forever
      wait;
   end process p_generate_reset;

   --=============================================================
   -- p_main_test_process
   -- Process that controls and runs all tests that shall be done.
   --=============================================================
   p_main_test_process : process
   begin

      -- Startup values
      kill_clock           <= '0';
      bcd_input_vector     <= (others => '0');
      bcd_valid_in         <= '0';
      errors_found         <= 0;
      pr_write("Simulation starts.");

      -- wait until reset is released
      wait until reset_n = '1';
      -- Wait another 100 ns
      wait for 100 ns;
      -- wait for clock signal to go high
      wait until clock_50 = '1';

      -- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      -- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      -- !!! CHANGE BELOW TO TEST ALL VALUES OF INPUT VECTOR, use a loop maybe? !!!
      -- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      -- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      -- set value 123 to bcd input vector
      
      for i in 0 to 255 loop

         bcd_input_vector        <= std_logic_vector(to_unsigned(i,bcd_input_vector'length));
         wait until clock_50 = '1';
         bcd_valid_in            <= '1';
         wait until clock_50 = '1';
         bcd_valid_in            <= '0';
         while bcd_valid_out /= '1' loop
            wait for 1 ns;
         end loop;
         if bcd_total /= i then
            pr_write("ERROR - Input : " & integer'image(i) & " resulted in output : " & integer'image(bcd_total));
            errors_found            <= errors_found + 1;
         end if;
         wait until bcd_valid_out = '0';
      end loop;


      pr_write("Simulation finished. Total number of errors detected : " & integer'image(errors_found));
      pr_write("Testbench ends...");
      wait for 100 ns;
      -- Kill clock and wait forever. Enables "run -all" command in modelsim
      kill_clock           <= '1';
      wait;
   end process p_main_test_process;

   i_dut_bcd_decode : entity work.bcd_decode_rom
   port map(
      clk                     => clock_50,
      reset                   => reset,   -- active high reset

      -- input data interface
      input_vector            => bcd_input_vector, -- in  std_logic_vector(7 downto 0)
      valid_in                => bcd_valid_in,     -- in  std_logic
      ready                   => bcd_ready,        -- out std_logic

      -- output result
      bcd_0                   => bcd_0,            -- out std_logic_vector(3 downto 0) ones
      bcd_1                   => bcd_1,            -- out std_logic_vector(3 downto 0) tens
      bcd_2                   => bcd_2,            -- out std_logic_vector(3 downto 0) hundreds
      valid_out               => bcd_valid_out);   -- out std_logic, Set high one clock cycle when bcd* is valid



end architecture bhv;