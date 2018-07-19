----------------------------------------------------------------------------------
-- Engineer: Andrew Ang
-- Create Date: 14.06.2018 12:39:18
-- Module Name: mult_by_3 - Behavioral
-- Project Name: aes_encryption_implementation
-- Target Devices: Pynq
-- Tool Versions: Vivado 2018.1
-- Description: mult_by_3 testbench
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

library work;
use work.aes_encryption_lib.all;

entity mult_by_3 is
  port (
    clock   : in std_logic;
    i_state : in  State;
    o_state : out State
    );
end mult_by_3;

architecture Behavioral of mult_by_3 is

  signal byte_doubled : State;
  signal i_state_reg  : State;
  signal o_state_reg  : State;

begin

  words_mult_by_2 :
  for i in 0 to 3 generate
    bytes_mult_by_2 :
    for j in 0 to 3 generate
      byte_doubled(i)(j) <= (i_state_reg(i)(j)(6 downto 0) & '0') xor x"1b" when i_state_reg(i)(j)(7) = '1'
                            else i_state_reg(i)(j)(6 downto 0) & '0';
    end generate;
  end generate;

  words_mult_by_3 :
  for i in 0 to 3 generate
    bytes_mult_by_3 :
    for j in 0 to 3 generate
      o_state_reg(i)(j) <= byte_doubled(i)(j) xor i_state_reg(i)(j);
    end generate;
  end generate;
  
  process(clock)
  begin
    if rising_edge(clock) then
        i_state_reg <= i_state;
        o_state <= o_state_reg;
    end if;
  end process;

end Behavioral;
