---------------------------------------------------------------------------------- 
-- Engineer: Andrew Ang
-- Create Date: 28.07.2018 17:09:38  
-- Module Name: bitwise_xor_word - Behavioral
-- Project Name: aes_encryption_implementation
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: bitwise XOR for Word types
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.aes_encryption_lib.all;

entity bitwise_xor_word is
    Port ( 
        i_word1         : in Word;
        i_word2         : in Word;         
        o_word          : out Word          
    );
end bitwise_xor_word;

architecture Behavioral of bitwise_xor_word is
       
begin
    
    bitwise_xor: for i in 0 to 3 generate
        o_word(i) <= i_word1(i) xor i_word2(i);
    end generate;    
    
end Behavioral;
