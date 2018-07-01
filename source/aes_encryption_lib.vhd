----------------------------------------------------------------------------------
-- Engineer: Andrew Ang
-- 
-- Create Date: 13.06.2018 15:25:22
-- Design Name: 
-- Module Name: aes_encryption_lib - Behavioral
-- Project Name: aes_encryption_implementation
-- Target Devices: PYNQ-Z1
-- Tool Versions: 
-- Description: 
--  AES encryption library
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package aes_encryption_lib is

    subtype Byte is std_logic_vector(7 downto 0);
    type Word is array (0 to 3) of Byte;                -- a word represents a column in the state matrix
    type State is array (0 to 3) of Word;               -- a state comprises of of 4 words
    type Key is array (0 to 3) of Word;                 -- keeping Key type seperate from State
    type Byte_array is array (0 to 9) of Byte;
    type Key_schedule is array (0 to 43) of Word;        -- storing sub-keys
    
    constant Rcon : Byte_array := (x"01", x"02", x"04", x"08", x"10", x"20", x"40", x"80", x"1B", x"36"); 
    
end package aes_encryption_lib;

package body aes_encryption_lib is
end aes_encryption_lib;