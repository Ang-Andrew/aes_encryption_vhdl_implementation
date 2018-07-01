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
use IEEE.STD_LOGIC_1164.ALL;
use work.aes_encryption_lib.all;
use ieee.numeric_std.all;

entity aes_encryption_key_schedule is
    Port ( 
        i_key                   : in Key;
        o_key_schedule          : out Key_schedule                           
    );
end aes_encryption_key_schedule;

architecture Behavioral of aes_encryption_key_schedule is

    component aes_encryption_sbox is
        Port ( 
            i_byte              : in Byte;
            o_byte              : out Byte                  
        );
    end component aes_encryption_sbox;
    
    component g_function is
        Port (
            i_rcon_sel              : in integer; 
            i_word                  : in Word;
            i_word2                 : in Word;
            o_word                  : out Word                  
        );
    end component g_function;

    
    signal temp_key_schedule    : Key_schedule;
    signal g_func_schedule      : Key_schedule;
    signal rcon_sel             : integer := 0;
    signal key_schedule_mod_4   : Key_schedule;

begin

    
    round_key_gen:
    for i in 0 to 43 generate
        round_key_0_gen:
        for i in 0 to 3 generate
            temp_key_schedule(i) <= i_key(i); 
        end generate;
        leftmost_sub_key_gen:
        if (i mod 4 = 0 and i > 3) generate
            g_func_inst: g_function port map(i_rcon_sel => (i/4)-1 , i_word =>temp_key_schedule(i-1), i_word2 => temp_key_schedule(i-4), o_word =>temp_key_schedule(i));
        end generate;
        rest_of_sub_key_gen:
        if (i mod 4 /= 0 and i > 4) generate
            temp_key_schedule(i) <= (temp_key_schedule(i-1)(0) xor temp_key_schedule(i-4)(0),temp_key_schedule(i-1)(1) xor temp_key_schedule(i-4)(1),
                                    temp_key_schedule(i-1)(2) xor temp_key_schedule(i-4)(2), temp_key_schedule(i-1)(3) xor temp_key_schedule(i-4)(3)); 
        end generate;
    end generate;
    
    o_key_schedule <= temp_key_schedule;
    
end Behavioral;
