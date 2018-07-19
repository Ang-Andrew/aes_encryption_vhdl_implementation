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
    clock   : in  std_logic;
    i_state : in  State;
    o_state : out State
    );
end mult_by_2;

architecture Behavioral of mult_by_2 is
    
    signal o_state_reg : State;
    signal i_state_reg : State;
    
    
begin

  words_mult_by_2 : for i in 0 to 3 generate
    bytes_mult_by_2 : for j in 0 to 3 generate
      o_state_reg(i)(j) <= (i_state_reg(i)(j)(6 downto 0) & '0') xor x"1b" when i_stati_state_reg(j)(7) = '1'
                       else i_state_reg(i)(j)(6 downto 0) & '0';
    end generate;
  end generate;
  
  process(clock)
  begin
    if rising_edge(clock) then
        o_state <= o_state_reg;
        i_state_reg <= i_state;
    end if;
  end process;

end Behavioral;
