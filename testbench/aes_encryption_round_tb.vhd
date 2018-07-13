---------------------------------------------------------------------------------- 
-- Engineer: Andrew Ang 
-- Create Date: 21.06.2018 22:18:55
-- Module Name: aes_encryption_round_tb - Behavioral
-- Project Name: aes_encryption_implementation
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: AES encryption round testbench
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.aes_encryption_lib.all;

entity aes_encryption_round_tb is
  -- No ports in top-level testbench
end aes_encryption_round_tb;

architecture Behavioral of aes_encryption_round_tb is

    component aes_encryption_round is
        Port ( 
            i_state             : in State;
            i_key               : in Key;
            o_state             : out State
        );
    end component aes_encryption_round;
    
    signal tb_i_state           : State;
    signal tb_i_key             : Key;
    signal tb_o_state           : State;

begin
    
    uut: aes_encryption_round port map(
        i_state             => tb_i_state,
        i_key               => tb_i_key,
        o_state             => tb_o_state
    );
    
    stim_proc: process
    begin
        tb_i_state <= ((x"32",x"43",x"f6",x"a8"),
                      (x"88",x"5a",x"30",x"8d"),
                      (x"31",x"31",x"98",x"a2"),
                      (x"e0",x"37",x"07",x"34"));
                    
        tb_i_key <= ((x"2b",x"7e",x"15",x"16"),
                      (x"28",x"ae",x"d2",x"a6"),
                      (x"ab",x"f7",x"15",x"88"),
                      (x"09",x"cf",x"4f",x"3c"));    
        wait;
    end process;
    
end Behavioral;
