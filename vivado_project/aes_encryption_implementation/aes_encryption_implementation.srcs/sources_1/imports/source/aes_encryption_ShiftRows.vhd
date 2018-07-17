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
--  AES encryption shift rows stage
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;

library work;
use work.aes_encryption_lib.all;

entity aes_encryption_ShiftRows is
  port (
    input_state  : in  State;
    output_state : out State
    );
end aes_encryption_ShiftRows;

architecture Behavioral of aes_encryption_ShiftRows is

begin

  output_state <= ((input_state(0)(0), input_state(1)(1), input_state(2)(2), input_state(3)(3)),
                   (input_state(1)(0), input_state(2)(1), input_state(3)(2), input_state(0)(3)),
                   (input_state(2)(0), input_state(3)(1), input_state(0)(2), input_state(1)(3)),
                   (input_state(3)(0), input_state(0)(1), input_state(1)(2), input_state(2)(3)));


end Behavioral;
