----------------------------------------------------------------------------------
-- Engineer: Andrew Ang
-- Create Date: 24.06.2018 14:48:43
-- Module Name: aes_encryption_last_round - Behavioral
-- Project Name: AES encryption implmentation
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: AES last round implementation
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

library work;
use work.aes_encryption_lib.all;

entity aes_encryption_last_round is
  port (
    clock   : in std_logic;
    i_state : in  State;
    i_key   : in  Key;
    o_state : out State
    );
end aes_encryption_last_round;

architecture Behavioral of aes_encryption_last_round is

  signal s_box_out      : State;
  signal shiftRows_out  : State;
  signal mixColumns_out : State;
  
  signal i_state_reg    : State;
  signal i_key_reg      : Key;
  signal o_state_reg    : State;

begin

  subBytes_process : for i in 0 to 3 generate
    subBytes : for j in 0 to 3 generate
      s_box_inst : entity work.aes_encryption_sbox
        port map(
          i_byte => i_state_reg(i)(j),
          o_byte => s_box_out(i)(j)
          );
    end generate;
  end generate;

  shiftRows_process : entity work.aes_encryption_ShiftRows
    port map(
      input_state  => s_box_out,
      output_state => shiftRows_out
      );

  addRoundKey_process : entity work.aes_encryption_key_addition
    port map(
      clock   => clock,
      i_state => shiftRows_out,
      i_key   => i_key_reg,
      o_state => o_state_reg
      );
   
   process(clock)
   begin
    if rising_edge(clock) then
        i_state_reg <= i_state;
        i_key_reg   <= i_key;
        o_state     <= o_state_reg;
    end if;
   end process; 
    
end Behavioral;
