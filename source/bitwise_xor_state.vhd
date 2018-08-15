----------------------------------------------------------------------------------
-- Engineer: Andrew Ang
-- Create Date: 07.08.2018 21:24:02
-- Module Name: bitwise_xor_state - Behavioral
-- Project Name: aes_encryption_implementation
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: bitwise XOR on states/keys
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.aes_encryption_lib.all;

entity bitwise_xor_state is
    Port ( 
        state1          : in State;
        state2          : in Key;
        o_state         : out State
    );
end bitwise_xor_state;

architecture Behavioral of bitwise_xor_state is

begin
    
    bitwise_xor : for i in 0 to 3 generate
        o_state(i) <=     (state1(i)(0) xor state2(i)(0),
                           state1(i)(1) xor state2(i)(1),
                           state1(i)(2) xor state2(i)(2),
                           state1(i)(3) xor state2(i)(3));
    end generate;

end Behavioral;
