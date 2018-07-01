----------------------------------------------------------------------------------
-- Engineer: Andrew Ang
-- Create Date: 14.06.2018 13:22:50
-- Module Name: aes_encyrption_mixColumns_tb - Behavioral
-- Project Name: aes_encryption_implemenation
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: testbench for mixColumns algorithm 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.aes_encryption_lib.all;

entity aes_encyrption_mixColumns_tb is
end aes_encyrption_mixColumns_tb;

architecture Behavioral of aes_encyrption_mixColumns_tb is
    
    component aes_encryption_mixColumns is
        Port ( 
                i_state                     : in State;
                o_state                     : out State
        );
    end component aes_encryption_mixColumns;

    
    signal tb_input_state                         : State;
    signal tb_output_state                        : State;
    
begin

    uut: aes_encryption_mixColumns port map(
        i_state => tb_input_state,
        o_state => tb_output_state 
    );
    
    stim_proc: process
         begin
            tb_input_state <= ((x"d4",x"bf",x"5d",x"30"),(x"e0",x"b4",x"52",x"ae"),(x"b8",x"41",x"11",x"f1"),(x"1e",x"27",x"98",x"e5")); 
            wait;        
    end process;

end Behavioral;