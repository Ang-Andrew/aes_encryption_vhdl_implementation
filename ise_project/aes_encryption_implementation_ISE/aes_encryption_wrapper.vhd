----------------------------------------------------------------------------------
-- Engineer: Andrew Ang
-- Create Date: 06.08.2018 21:37:55
-- Module Name: aes_encryption_wrapper - Behavioral
-- Project Name: aes_encryption_implementation
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: Wrapper for aes_encryption_implementation, hard-wires a input into the module so it can be tested
-- without external input
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.aes_encryption_lib.all;

entity aes_encryption_wrapper is
Port (
    clock       : in std_logic;
    reset       : in std_logic;
    o_valid     : out std_logic
);
end aes_encryption_wrapper;

architecture Behavioral of aes_encryption_wrapper is
    
    signal s_key        : Key           :=  ((x"2b",x"7e",x"15",x"16"),
                                            (x"28",x"ae",x"d2",x"a6"),
                                            (x"ab",x"f7",x"15",x"88"),
                                            (x"09",x"cf",x"4f",x"3c"));
    signal s_state      : State         :=  ((x"32",x"43",x"f6",x"a8"),
                                            (x"88",x"5a",x"30",x"8d"),
                                            (x"31",x"31",x"98",x"a2"),
                                            (x"e0",x"37",x"07",x"34"));
    signal s_o_state      : State;
                                           
    
begin

    aes_encryption_implementation_1 : entity work.aes_encryption_implementation
    port map(
        clock           => clock,
        reset           => reset,
        i_key           => s_key,
        i_state         => s_state,
        o_state         => s_o_state,
        o_valid         => o_valid
    );
    
end Behavioral;
