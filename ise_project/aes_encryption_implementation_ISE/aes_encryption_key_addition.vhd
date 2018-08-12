---------------------------------------------------------------------------------- 
-- Engineer: Andrew Ang
-- Create Date: 21.06.2018 21:02:18
-- Module Name: aes_encryption_key_addition - Behavioral
-- Project Name: aes_encryption_implementation
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: Implementation of key addition in AES encryption
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;

library work;
use work.aes_encryption_lib.all;

entity aes_encryption_key_addition is
  port (
    clock   : in  std_logic;
    i_state : in  State;
    i_key   : in  Key;
    o_state : out State
    );
end aes_encryption_key_addition;

architecture Behavioral of aes_encryption_key_addition is
    
    signal i_state_reg      : State;
--    signal i_key_reg        : Key;
--    signal o_state_reg      : State;
    

begin
    
    key_addition:
    for i in 0 to 3 generate
        o_state(i) <= (i_state(i)(0) xor i_key(i)(0),
                           i_state(i)(1) xor i_key(i)(1),
                           i_state(i)(2) xor i_key(i)(2),
                           i_state(i)(3) xor i_key(i)(3));
    end generate;
    
--    process(clock)
--    begin
--        if rising_edge(clock) then
--            i_state_reg <= i_state;
--            i_key_reg   <= i_key;
--            o_state     <= o_state_reg;            
--        end if;
--    end process;

end Behavioral;
