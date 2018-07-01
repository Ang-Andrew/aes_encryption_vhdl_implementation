---------------------------------------------------------------------------------- 
-- Engineer: Andrew Ang- 
-- Create Date: 21.06.2018 21:10:53
-- Module Name: aes_encryption_key_addition_tb - Behavioral
-- Project Name: aes_encryption_implementation
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: AES encryption key addition test bench
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.aes_encryption_lib.all;

entity aes_encryption_key_addition_tb is
--  Port ( );
end aes_encryption_key_addition_tb;

architecture Behavioral of aes_encryption_key_addition_tb is
    
    component aes_encryption_key_addition is
        Port ( 
            i_state             : in State;
            i_key               : in State;
            o_state             : out State
        );
    end component aes_encryption_key_addition;
    
    signal tb_i_state           : State;
    signal tb_i_key             : State;
    signal tb_o_state           : State;
    
begin

    uut: aes_encryption_key_addition port map(
        i_state             => tb_i_state,
        i_key               => tb_i_key,               
        o_state             => tb_o_state             
    );
    
    stim_proc: process
    begin
        tb_i_state <= ((x"04",x"66",x"81",x"e5"),
                        (x"e0",x"cb",x"19",x"9a"),
                        (x"48",x"f8",x"d3",x"7a"),
                        (x"28",x"06",x"26",x"4c"));
                        
        tb_i_key <= ((x"a0",x"fa",x"fe",x"17"),
                        (x"88",x"54",x"2c",x"b1"),
                        (x"23",x"a3",x"39",x"39"),
                        (x"2a",x"6c",x"76",x"05"));
                        
        wait;
    end process;

end Behavioral;
