----------------------------------------------------------------------------------
-- Engineer: Andrew Ang
-- Create Date: 14.06.2018 16:45:30
-- Module Name: aes_encryption_key_schedule - Behavioral
-- Project Name: aes_encryption_implementation
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: Implementation of AES key schedule 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

library work;
use work.aes_encryption_lib.all;

entity aes_encryption_key_schedule is
  port (
    clock          : in std_logic;
    i_key          : in  Key;
    i_rcon_sel     : in integer;
    o_key          : out Key
    );
end aes_encryption_key_schedule;

architecture Behavioral of aes_encryption_key_schedule is
  
  signal i_key_reg            : Key;
  signal g_func_output      : Word;
  signal o_key_reg          : Key;
  signal temp_key_out       : Key;
  
  type word_reg is array (0 to 2) of Word;
  signal reg_1              : word_reg;
  signal reg_2              : word_reg;
  signal reg_3              : word_reg;
  signal reg_4              : word_reg;
                 

begin
    
    -- g-function between the third and first element  
    g_func_inst : entity work.g_function
        port map(
            clock           => clock,
            i_rcon_sel      => i_rcon_sel,
            i_word          => i_key_reg(3),
            i_word2         => i_key_reg(0),
            o_word          => g_func_output
        );
    
    temp_key_out(0) <= g_func_output;

    bitwise_xor_1 : entity work.bitwise_xor_word
        port map(
            i_word1         => temp_key_out(0),
            i_word2         => reg_4(1),
            o_word          => temp_key_out(1)
    );

    bitwise_xor_2 : entity work.bitwise_xor_word
        port map(
            i_word1         => temp_key_out(1),
            i_word2         => reg_4(2),
            o_word          => temp_key_out(2)
        );
        
    bitwise_xor_3 : entity work.bitwise_xor_word
        port map(
            i_word1         => temp_key_out(2),
            i_word2         => reg_4(3),
            o_word          => temp_key_out(3)
        ); 
    
    
    -- XOR'ing between words in current key

  
  process(clock)
  begin
    if rising_edge(clock) then
        -- input register
        i_key_reg     <= i_key;
        
        -- pipelining
        reg_1(0)    <= i_key_reg(1);
        reg_1(1)    <= i_key_reg(2);
        reg_1(2)    <= i_key_reg(3);
        reg_2       <= reg_1;
        reg_3       <= reg_2;
        reg_4       <= reg_3;
        
        o_key_reg   <= temp_key_out;
        o_key       <= o_key_reg;           

    end if;
  end process;
  

end Behavioral;
