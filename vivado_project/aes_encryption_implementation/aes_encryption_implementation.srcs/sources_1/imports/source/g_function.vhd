----------------------------------------------------------------------------------
-- Engineer: Andrew Ang
-- Create Date: 18.06.2018 21:03:40
-- Module Name: g_function - Behavioral
-- Project Name: aes_encryption_implementation
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: Implementation of g-function
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

library work;
use work.aes_encryption_lib.all;

entity g_function is
  port (
    clock      : in std_logic;
    i_rcon_sel : in  integer;
    i_word     : in  Word;
    i_word2    : in  Word;
    o_word     : out Word
    );
end g_function;

architecture Behavioral of g_function is

  signal temp_word      : Word;
  signal sub_temp_word  : Word;
  signal rcon_temp_word : Word;
  signal rcon_sel_reg   : integer;    
  signal word_reg       : Word;
  signal word2_reg      : Word;
  signal o_word_reg     : Word;
    
begin

  rotation : temp_word <= (i_word(1), i_word(2), i_word(3), i_word(0));

  s_box_sub_0 : for i in 0 to 3 generate
    s_box_inst : entity work.aes_encryption_sbox
      port map(
        clock  => clock,
        i_byte => temp_word(i),
        o_byte => sub_temp_word(i)
        );
  end generate;

  rcon_addition : rcon_temp_word <= (sub_temp_word(0) xor Rcon(rcon_sel_reg),
                                     sub_temp_word(1), sub_temp_word(2), sub_temp_word(3));

  word2_addition : o_word_reg <= (rcon_temp_word(0) xor word2_reg(0), rcon_temp_word(1) xor word2_reg(1),
                              rcon_temp_word(2) xor word2_reg(2), rcon_temp_word(3) xor word2_reg(3));
                              
  process(clock)
  begin
    if rising_edge(clock) then
        rcon_sel_reg <= i_rcon_sel;
        word_reg     <= i_word;
        word2_reg    <= i_word2;
        o_word       <= o_word_reg;
    end if;
  end process;

end Behavioral;
