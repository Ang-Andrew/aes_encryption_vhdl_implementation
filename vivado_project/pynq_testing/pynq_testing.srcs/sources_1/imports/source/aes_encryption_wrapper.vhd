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
    o_valid     : out std_logic;
    o_word1     : out std_logic_vector(31 downto 0);
    o_word2     : out std_logic_vector(31 downto 0);
    o_word3     : out std_logic_vector(31 downto 0);
    o_word4     : out std_logic_vector(31 downto 0)
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
    signal s_o_state_reg      : State;
    signal s_o_state            : State;
    signal s_o_valid          : std_logic;
    
--    component ila_0 IS
--    PORT (
--    clk : IN STD_LOGIC;
--    probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
--        probe2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
--        probe3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
--        probe4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
--    );
--    END component;
                                           
    
begin

    aes_encryption_implementation_1 : entity work.aes_encryption_implementation
    port map(
        clock           => clock,
        reset           => reset,
        i_key           => s_key,
        i_state         => s_state,
        o_state         => s_o_state,
        o_valid         => s_o_valid
    );
    
    process(clock,reset)
    begin
        if rising_edge(clock) then
            if s_o_valid = '1' then
                o_valid <= '1';
                o_word1 <= s_o_state(0)(0)&s_o_state(0)(1)&s_o_state(0)(2)&s_o_state(0)(3);
                o_word2 <= s_o_state(1)(0)&s_o_state(1)(1)&s_o_state(1)(2)&s_o_state(1)(3);
                o_word3 <= s_o_state(2)(0)&s_o_state(2)(1)&s_o_state(2)(2)&s_o_state(2)(3);
                o_word4 <= s_o_state(3)(0)&s_o_state(3)(1)&s_o_state(3)(2)&s_o_state(3)(3);
            end if; 
        end if;
    end process;
    
--    ila_0_1: ila_0
--    port map(
--        clk             => clock,
--        probe0          => (0=>clock),
--        probe1          => (s_o_state_reg(0)(3),s_o_state_reg(0)(2),s_o_state_reg(0)(1),s_o_state_reg(0)(0)),
--        probe2          => (s_o_state_reg(1)(3),s_o_state_reg(1)(2),s_o_state_reg(1)(1),s_o_state_reg(1)(0)),
--        probe3          => (s_o_state_reg(2)(3),s_o_state_reg(2)(2),s_o_state_reg(2)(1),s_o_state_reg(2)(0)),
--        probe4          => (s_o_state_reg(3)(3),s_o_state_reg(3)(2),s_o_state_reg(3)(1),s_o_state_reg(3)(0))
--    );

    
end Behavioral;
