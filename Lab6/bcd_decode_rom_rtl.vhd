--=================================================================
--
-- BCD Decode
--
-- Transforms a 8 bit input vector to 3 BCD values.
-- Valid in shall be set high when input_vector is valid.
-- Valid_out shall be set high when transformed data is ready on
-- the bcd_* outputs
--
--=================================================================

library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;

entity bcd_decode_rom is
port(
      clk                     : in  std_logic;
      reset                   : in  std_logic;   -- active high reset

      -- input data interface
      input_vector            : in  std_logic_vector(7 downto 0);
      valid_in                : in  std_logic;
      ready                   : out std_logic;  -- ready for data when high

      -- output result
      bcd_0                   : out std_logic_vector(3 downto 0); -- ones
      bcd_1                   : out std_logic_vector(3 downto 0); -- tens
      bcd_2                   : out std_logic_vector(3 downto 0); -- hundreds
      valid_out               : out std_logic -- Set high one clock cycle when bcd* is valid
   );
end entity bcd_decode_rom;

architecture rtl of bcd_decode_rom is

   -- Types and constants
   -- ten bits needed for BCD values since we will never support more than value 2 for hundreds
   type t_bcd_rom is array (0 to 2**input_vector'length-1) of std_logic_vector(9 downto 0);

   function fn_create_bcd_rom(
      inject_error   : boolean)
   return t_bcd_rom is
      variable v_ones      : integer range 0 to 15;
      variable v_tens      : integer range 0 to 15;
      variable v_hundreds  : integer range 0 to 3;
      variable v_rom       : t_bcd_rom;
   begin
      v_ones         := 0;
      v_tens         := 0;
      v_hundreds     := 0;
      for idx in 0 to 2**input_vector'length-1 loop
         v_rom(idx)     := std_logic_vector(to_unsigned(v_hundreds,2)) &
                           std_logic_vector(to_unsigned(v_tens,4)) &
                           std_logic_vector(to_unsigned(v_ones,4));
         if v_ones < 9 then
            v_ones         := v_ones + 1;
         elsif v_tens < 9 then
            v_tens         := v_tens + 1;
            v_ones         := 0;
         else
            v_ones         := 0;
            v_tens         := 0;
            v_hundreds     := v_hundreds + 1;
         end if;
      end loop;

      if inject_error then
         v_rom(123)  := std_logic_vector(to_unsigned(1,2)) &
                        std_logic_vector(to_unsigned(2,4)) &
                        std_logic_vector(to_unsigned(0,4)); -- value 120
      end if;

      return v_rom;

   end function fn_create_bcd_rom;


   -- Signals
   signal rom_addr         : integer range 0 to 2**input_vector'length-1;
   signal addr_valid       : std_logic;
   signal bcd_rom          : t_bcd_rom    := fn_create_bcd_rom(true); -- Set this to true when all tests are being tesed.
   signal rom_data         : std_logic_vector(9 downto 0);
   signal rom_data_valid   : std_logic;

begin


   p_main : process(clk)
	begin
		if rising_edge(clk) then
         ready                <= not reset;
         addr_valid           <= '0';
         if valid_in = '1' then
            rom_addr             <= to_integer(unsigned(input_vector));
            addr_valid           <= '1';
         else
            rom_addr     <= 0;
         end if;
         rom_data                   <= bcd_rom(rom_addr);
         rom_data_valid             <= addr_valid;
		end if;
	end process p_main;

   bcd_0       <= rom_data(3 downto 0);
   bcd_1       <= rom_data(7 downto 4);
   bcd_2       <= "00" & rom_data(9 downto 8);
   valid_out   <= rom_data_valid;

end architecture rtl;
