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
                     round5, round6, round7, round8, round9, round10, round11);

  signal current_round              : round_num := round0;
  signal current_state              : State;
  signal current_key                : Key;
  signal first_output_state         : State;
  signal output_state               : State;
  signal o_state_reg                : State;                    
  signal final_state_input          : State;
  signal final_key_input            : Key;
  signal final_round_input_state    : State;
  signal output_key                 : Key;
  signal current_round_num          : integer range 0 to 10 := 0;
  signal key_schedule_input         : Key;
  
  signal s0_reg_1                   : State;
  signal s0_reg_2                   : State;
  signal s0_reg_3                   : State;
  signal s0_reg_4                   : State;
  signal s0_reg_5                   : State;
  
  signal state_counter                 : integer range 0 to 7 := 0;

begin

    key_schedule_1 : entity work.aes_encryption_key_schedule
        port map(
          clock          => clock,
          i_rcon_sel     => current_round_num,
          i_key          => key_schedule_input,
          o_key          => output_key
          );
  
--    aes_first_round_key_addition:
--        for i in 0 to 3 generate
--            first_output_state(i) <= (i_state(i)(0) xor i_key(i)(0),
--                                       i_state(i)(1) xor i_key(i)(1),
--                                       i_state(i)(2) xor i_key(i)(2),
--                                       i_state(i)(3) xor i_key(i)(3));
--        end generate;
  
  aes_first_round_key_addition : entity work.bitwise_xor_state
    port map(
        state1      => i_state,
        state2      => i_key,
        o_state     => first_output_state
    );
  
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
      i_key   => final_key_input,
      o_state => o_state_reg
      );

  process(clock, reset)
  begin
    if rising_edge(clock) then
        if reset = '1' then
            current_round <= round0;
        else
            case current_round is
            when round0 =>
                if state_counter < 7 then
                    o_valid         <= '0';
                    state_counter   <= state_counter + 1;
                    s0_reg_1        <= first_output_state;
                    s0_reg_2        <= s0_reg_1;
                    s0_reg_3        <= s0_reg_2;
                    s0_reg_4        <= s0_reg_3;
                    s0_reg_5        <= s0_reg_4;
                    current_round   <= round0;
                    key_schedule_input <=  i_key;
                    current_round_num <= 0;

                else
                    -- state and key calculation should be ready
                    current_state   <= s0_reg_5;
                    current_key     <= output_key;
                    key_schedule_input <= output_key;
                    current_round   <= round1;
                    current_round_num <= 1;
                    state_counter   <= 0;
                end if;      
            when round1 =>
                if state_counter < 7 then
                    state_counter   <= state_counter + 1;
                    current_round   <= round1;
                    key_schedule_input <=  current_key;
                else
                    -- state and key calcaulation are done
                    current_state   <= output_state;
                    current_key     <= output_key;
                    key_schedule_input <= output_key;
                    state_counter   <= 0;
                    current_round   <= round2;
                    current_round_num <= 2;
                end if;
            when round2 =>
                if state_counter < 7 then
                    state_counter   <= state_counter + 1;
                    current_round   <= round2;
                else
                    -- state and key calcaulation are done
                    current_state   <= output_state;
                    current_key     <= output_key;
                    key_schedule_input <= output_key;
                    state_counter   <= 0;
                    current_round   <= round3;
                    current_round_num <= 3;
                end if;
            when round3 =>
                if state_counter < 7 then
                    state_counter   <= state_counter + 1;
                    current_round   <= round3;
                else
                    -- state and key calcaulation are done
                    current_state   <= output_state;
                    current_key     <= output_key;
                    key_schedule_input <= output_key;
                    state_counter   <= 0;
                    current_round   <= round4;
                    current_round_num <= 4;
                end if;
            when round4 =>
                if state_counter < 7 then
                    state_counter   <= state_counter + 1;
                    current_round   <= round4;
                else
                    -- state and key calcaulation are done
                    current_state   <= output_state;
                    current_key     <= output_key;
                    key_schedule_input <= output_key;
                    state_counter   <= 0;
                    current_round   <= round5;                    
                    current_round_num <= 5;
                end if;
            when round5 =>
                if state_counter < 7 then
                    state_counter   <= state_counter + 1;
                    current_round   <= round5;
                else
                    -- state and key calcaulation are done
                    current_state   <= output_state;
                    current_key     <= output_key;
                    key_schedule_input <= output_key;
                    state_counter   <= 0;
                    current_round   <= round6;
                    current_round_num <= 6;
                end if;
            when round6 =>
                if state_counter < 7 then
                    state_counter   <= state_counter + 1;
                    current_round   <= round6;
                else
                    -- state and key calcaulation are done
                    current_state   <= output_state;
                    current_key     <= output_key;
                    key_schedule_input <= output_key;
                    state_counter   <= 0;
                    current_round   <= round7;
                    current_round_num <= 7;
                end if;
            when round7 =>
                if state_counter < 7 then
                    state_counter   <= state_counter + 1;
                    current_round   <= round7;
                else
                    -- state and key calcaulation are done
                    current_state   <= output_state;
                    current_key     <= output_key;
                    key_schedule_input <= output_key;
                    state_counter   <= 0;
                    current_round   <= round8;
                    current_round_num <= 8;
                end if;
            when round8 =>
                if state_counter < 7 then
                    state_counter   <= state_counter + 1;
                    current_round   <= round8;
                else
                    -- state and key calcaulation are done
                    current_state   <= output_state;
                    current_key     <= output_key;
                    key_schedule_input <= output_key;
                    state_counter   <= 0;
                    current_round   <= round9;
                    current_round_num <= 9;
                end if;
            when round9 =>
                if state_counter < 7 then
                    state_counter   <= state_counter + 1;
                    current_round   <= round9;
                else
                    -- state and key calcaulation are done
                    --key_schedule_input  <= output_key;
                    final_state_input   <= output_state;
                    final_key_input     <= output_key;
                    current_state       <= output_state;     
                    current_key         <= output_key;
                    state_counter       <= 0;
                    current_round       <= round10;
                end if;
            when round10 =>
                if state_counter < 3 then
                    state_counter   <= state_counter + 1;
                    current_round   <= round10;
                else
                    o_valid         <= '1';
                    o_state         <= o_state_reg;
                    current_round   <= round11;
                    state_counter   <= 0; 
                end if;              
            when round11 =>
                current_round       <= round11;
            when others =>
              current_round <= round0;
            end case;
        end if;
    end if;

  end process;


end Behavioral;
