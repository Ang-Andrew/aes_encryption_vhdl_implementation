----------------------------------------------------------------------------------
-- Engineer: Andrew Ang
-- Create Date: 21.06.2018 20:28:56
-- Module Name: aes_encryption_implementation - Behavioral
-- Project Name: aes_encryption_implementation
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: AES encryption implementation top file
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;

library work;
use work.aes_encryption_lib.all;

entity aes_encryption_implementation is
  port (
    clock   : in  std_logic;
    reset   : in  std_logic;
    i_key   : in  Key;
    i_state : in  State;
    o_state : out State;
    o_valid : out std_logic
    );
end aes_encryption_implementation;

architecture Behavioral of aes_encryption_implementation is

  signal key_schedule : Key_schedule;
  type round_num is (round0, round1, round2, round3, round4,
                     round5, round6, round7, round8, round9, round10);

  signal current_round           : round_num;
  signal current_state           : State;
  signal current_key             : Key;
  signal first_output_state      : State;
  signal output_state            : State;
  signal final_state_input       : State;
  signal final_round_input_state : State;

begin

  key_schedule_1 : entity work.aes_encryption_key_schedule
    port map(
      clock          => clock,
      i_key          => i_key,
      o_key_schedule => key_schedule
      );

--    aes_first_round : entity work.aes_encryption_key_addition
--    port map(
--      clock   => clock,  
--      i_state => i_state,
--      i_key   => i_key,
--      o_state => first_output_state
--      );
  
    aes_first_round_key_addition:
        for i in 0 to 3 generate
        first_output_state(i) <= (i_state(i)(0) xor i_state(i)(0),
                                   i_state(i)(1) xor i_state(i)(1),
                                   i_state(i)(2) xor i_state(i)(2),
                                   i_state(i)(3) xor i_state(i)(3));
    end generate;
  
  
  aes_other_round : entity work.aes_encryption_round
    port map(
      clock   => clock,
      i_state => current_state,
      i_key   => current_key,
      o_state => output_state
      );

  aes_last_round_1 : entity work.aes_encryption_last_round
    port map(
      clock   => clock,
      i_state => final_state_input,
      i_key   => current_key,
      o_state => o_state
      );

  process(clock, reset)
  begin
    if rising_edge(clock) then
        if reset = '1' then
            current_round <= round0;
        else
            case current_round is
            when round0 =>
              o_valid       <= '0';
              current_round <= round1;
              current_state <= first_output_state;
              current_key   <= (key_schedule(4), key_schedule(5), key_schedule(6), key_schedule(7));
            when round1 =>
              current_round <= round2;
              current_state <= output_state;
              current_key   <= (key_schedule(8), key_schedule(9), key_schedule(10), key_schedule(11));
            when round2 =>
              current_round <= round3;
              current_state <= output_state;
              current_key   <= (key_schedule(12), key_schedule(13), key_schedule(14), key_schedule(15));
            when round3 =>
              current_round <= round4;
              current_state <= output_state;
              current_key   <= (key_schedule(16), key_schedule(17), key_schedule(18), key_schedule(19));
            when round4 =>
              current_round <= round5;
              current_state <= output_state;
              current_key   <= (key_schedule(20), key_schedule(21), key_schedule(22), key_schedule(23));
            when round5 =>
              current_round <= round6;
              current_state <= output_state;
              current_key   <= (key_schedule(24), key_schedule(25), key_schedule(26), key_schedule(27));
            when round6 =>
              current_round <= round7;
              current_state <= output_state;
              current_key   <= (key_schedule(28), key_schedule(29), key_schedule(30), key_schedule(31));
            when round7 =>
              current_round <= round8;
              current_state <= output_state;
              current_key   <= (key_schedule(32), key_schedule(33), key_schedule(34), key_schedule(35));
            when round8 =>
              current_round <= round9;
              current_state <= output_state;
              current_key   <= (key_schedule(36), key_schedule(37), key_schedule(38), key_schedule(39));
            when round9 =>
              current_round     <= round10;
              final_state_input <= output_state;
              current_key       <= (key_schedule(40), key_schedule(41), key_schedule(42), key_schedule(43));
              o_valid           <= '1';
            when round10 =>
              current_round <= round10;
              current_state <= final_state_input;
              current_key   <= (key_schedule(40), key_schedule(41), key_schedule(42), key_schedule(43));
            when others =>
              current_round <= round0;
            end case;
        end if;
    end if;

  end process;


end Behavioral;
