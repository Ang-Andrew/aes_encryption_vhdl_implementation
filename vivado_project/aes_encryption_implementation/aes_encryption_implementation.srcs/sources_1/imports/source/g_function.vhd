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

  signal rotation_out_reg      : Word;
  signal sub_out_reg      : Word;
  signal rcon_in_reg    : Word;
  signal rcon_out_reg : Word;
  signal word2_addition_reg : Word; 
  signal word_reg       : Word;
  signal word2_reg      : Word;
  signal word2_reg2     : Word;
  signal word2_reg3     : Word;         
  signal o_word_reg     : Word;
    
begin

  rotation : rotation_out_reg <= (word_reg(1), word_reg(2), word_reg(3), word_reg(0));

  s_box_sub_0 : for i in 0 to 3 generate
    s_box_inst : entity work.aes_encryption_sbox
      port map(
        i_byte => rotation_out_reg(i),
        o_byte => sub_out_reg(i)
        );
  end generate;

  rcon_addition : rcon_out_reg <= (rcon_in_reg(0) xor Rcon(i_rcon_sel),
                                     rcon_in_reg(1), rcon_in_reg(2), rcon_in_reg(3));

  word2_addition : o_word_reg <= (word2_addition_reg(0) xor word2_reg3(0), word2_addition_reg(1) xor word2_reg3(1),
                              word2_addition_reg(2) xor word2_reg3(2), word2_addition_reg(3) xor word2_reg3(3));
                              
  process(clock)
  begin
    if rising_edge(clock) then
        -- rcon_sel_reg <= i_rcon_sel;
        rcon_in_reg  <= sub_out_reg;
        word2_addition_reg <= rcon_out_reg;
        word_reg     <= i_word;
        word2_reg    <= i_word2;
        word2_reg2   <= word2_reg;
        word2_reg3   <= word2_reg2;
        o_word       <= o_word_reg;
    end if;
  end process;

end Behavioral;
