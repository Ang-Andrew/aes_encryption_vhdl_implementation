----------------------------------------------------------------------------------
-- Engineer: Andrew Ang
-- Create Date: 14.06.2018 11:19:51
-- Design Name: 
-- Module Name: mult_by_2 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
--  multiplication of a byte by 2, uses a 1 left shift followed by xor with X"1B"
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

library work;
use work.aes_encryption_lib.all;

entity mult_by_2 is
  port (
    i_state : in  State;
    o_state : out State
    );
end mult_by_2;

architecture Behavioral of mult_by_2 is

begin

  words_mult_by_2 : for i in 0 to 3 generate
    bytes_mult_by_2 : for j in 0 to 3 generate
      o_state(i)(j) <= (i_state(i)(j)(6 downto 0) & '0') xor x"1b" when i_state(i)(j)(7) = '1'
                       else i_state(i)(j)(6 downto 0) & '0';
    end generate;
  end generate;

end Behavioral;
