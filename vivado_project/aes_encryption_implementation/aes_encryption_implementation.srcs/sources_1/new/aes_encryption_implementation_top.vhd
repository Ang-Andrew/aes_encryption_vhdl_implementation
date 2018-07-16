----------------------------------------------------------------------------------
-- Engineer: Andrew Ang
-- Create Date: 27.06.2018 20:29:20
-- Module Name: aes_encryption_implementation_top - Behavioral
-- Project Name: aes_encryption_implmentation
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: AES encryption top file
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.aes_encryption_lib.all;

entity aes_encryption_implementation_top is
    Port ( 
        clock       : in std_logic;
        i_reset       : in std_logic;  
        o_valid     : out std_logic   
    );
end aes_encryption_implementation_top;

architecture Behavioral of aes_encryption_implementation_top is
    
    component aes_encryption_implementation is
    Port ( 
        clock               : in std_logic;
        reset               : in std_logic;                   
        i_key               : in Key;
        i_state             : in State;
        o_state             : out State;
        o_valid             : out std_logic                     
    );
    end component aes_encryption_implementation;
    
    signal i_key            : Key;
    
    signal i_state          : State;
    
    signal o_state          : State;
    
    signal reset_cont       : std_logic;    --rest controller
    
    type fsm is (state_idle, state_reset, state_wait, state_valid);
    signal current_state    : fsm               := state_idle;
    signal valid_output     : std_logic        := '0';
    
begin
    
    aes_encryption_implemenation_1: aes_encryption_implementation port map(
        clock       =>  clock,
        reset       =>  reset_cont,
        i_key       =>  i_key,
        i_state     =>  i_state,
        o_state     =>  o_state,
        o_valid     =>  valid_output    
    );
    
    process(clock,i_reset) 
    begin
        if(rising_edge(clock)) then 
                case current_state is
                    when state_idle =>
                        if i_reset = '1' then
                            current_state <= state_reset;
                        else
                            current_state <= state_idle;
                        end if;
                    when state_reset =>
                        if i_reset = '0' then
                            reset_cont <= '1';
                            i_key <= ((x"2b",x"7e",x"15",x"16"),
                                        (x"28",x"ae",x"d2",x"a6"),
                                        (x"ab",x"f7",x"15",x"88"),
                                        (x"09",x"cf",x"4f",x"3c"));
                            i_state <= ((x"32",x"43",x"f6",x"a8"),
                                      (x"88",x"5a",x"30",x"8d"),
                                      (x"31",x"31",x"98",x"a2"),
                                      (x"e0",x"37",x"07",x"34"));
                            current_state <= state_wait;
                        else 
                            current_state <= state_reset;
                        end if;
                    when state_wait =>
                        reset_cont <= '0';
                        if valid_output = '1' then
                            current_state <= state_idle;
                            o_valid <= '1';
                        else
                            current_state <= state_wait;
                        end if;
                    when others =>
                        current_state <= state_idle; 
                end case;
        end if;
    end process;
    

end Behavioral;
