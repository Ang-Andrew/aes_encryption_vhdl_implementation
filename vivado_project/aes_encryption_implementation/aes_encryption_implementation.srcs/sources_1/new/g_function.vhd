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
use IEEE.STD_LOGIC_1164.ALL;
use work.aes_encryption_lib.all;

entity g_function is
    Port (
        i_rcon_sel              : in integer; 
        i_word                  : in Word;
        i_word2                 : in Word;
        o_word                  : out Word                  
    );
end g_function;

architecture Behavioral of g_function is

    component aes_encryption_sbox is
        Port ( 
            i_byte              : in Byte;
            o_byte              : out Byte                  
        );
    end component aes_encryption_sbox;
    
    signal temp_word            : Word;
    signal sub_temp_word        : Word;
    signal rcon_temp_word       : Word;
    
begin
    
    rotation:
    temp_word <= (i_word(1),i_word(2),i_word(3),i_word(0));
    
    s_box_sub_0:
    for i in 0 to 3 generate
        s_box_inst: aes_encryption_sbox port map(i_byte => temp_word(i), o_byte => sub_temp_word(i));
    end generate; 

    rcon_addition:
    rcon_temp_word <= (sub_temp_word(0) xor Rcon(i_rcon_sel),sub_temp_word(1),sub_temp_word(2),sub_temp_word(3));
    
    word2_addition:
    o_word <= (rcon_temp_word(0) xor i_word2(0), rcon_temp_word(1) xor i_word2(1), rcon_temp_word(2) xor i_word2(2), rcon_temp_word(3) xor i_word2(3));
    
end Behavioral;