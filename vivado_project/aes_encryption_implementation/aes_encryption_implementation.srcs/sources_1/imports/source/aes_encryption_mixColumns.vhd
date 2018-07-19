----------------------------------------------------------------------------------
-- Engineer:Andrew Ang
-- Create Date: 14.06.2018 13:02:02
-- Module Name: aes_encryption_mixColumns - Behavioral
-- Project Name: aes_encryption_implemenation
-- Target Devices: Pynq-Z1 
-- Tool Versions: Vivado 2018.1
-- Description:mixColumns algorithm for AES encryption
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.aes_encryption_lib.all;

entity aes_encryption_mixColumns is
    Port ( 
            clock                       : in std_logic;
            i_state                     : in State;
            o_state                     : out State
    );
end aes_encryption_mixColumns;

architecture Behavioral of aes_encryption_mixColumns is
    
    component mult_by_2 is
        Port ( 
            i_state                 : in State;
            o_state                 : out State
        );
    end component mult_by_2;
    
    component mult_by_3 is
        Port ( 
            i_state                 : in State;
            o_state                 : out State
        );
    end component mult_by_3;
    
    signal state_mult_2             : State;
    signal state_mult_3             : State;     
    signal i_state_reg              : State;
    signal o_state_reg              : State;            

begin

    mult_by_2_1: mult_by_2 port map(
        i_state => i_state_reg,
        o_state => state_mult_2
    );
    
    mult_by_3_1: mult_by_3 port map(
        i_state => i_state_reg,
        o_state => state_mult_3
    );
    
    mix_col_out:
    for i in 0 to 3 generate
        o_state_reg(i) <= (state_mult_2(i)(0) xor state_mult_3(i)(1) xor i_state_reg(i)(2) xor i_state_reg(i)(3),
                       state_mult_2(i)(1) xor state_mult_3(i)(2) xor i_state_reg(i)(0) xor i_state_reg(i)(3),
                       state_mult_2(i)(2) xor state_mult_3(i)(3) xor i_state_reg(i)(0) xor i_state_reg(i)(1),
                       state_mult_2(i)(3) xor state_mult_3(i)(0) xor i_state_reg(i)(1) xor i_state_reg(i)(2));
    end generate;
    
    process(clock)
    begin
        if rising_edge(clock) then
            i_state_reg <= i_state;
            o_state     <= o_state_reg;
        end if;
    end process;
    
end Behavioral;
