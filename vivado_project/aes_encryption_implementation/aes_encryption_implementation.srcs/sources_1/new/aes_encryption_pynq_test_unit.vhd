----------------------------------------------------------------------------------\
-- Engineer: Andrew Ang
-- Create Date: 12.08.2018 14:48:15
-- Module Name: aes_encryption_pynq_test_unit - Behavioral
-- Project Name: aes_encryption_implementation
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: Test unit that shifts in on-board dip switches on the Pynq-Z1
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.aes_encryption_lib.all;

entity aes_encryption_pynq_test_unit is
    Port ( 
        clock           : in std_logic;
        reset           : in std_logic;
        i_sw            : in std_logic_vector(1 downto 0);
        i_ready         : in std_logic;
        o_valid         : out std_logic
    );
end aes_encryption_pynq_test_unit;

architecture Behavioral of aes_encryption_pynq_test_unit is
    
    signal s_i_state_reg    : State;
    signal s_i_key_reg      : Key;
    signal s_aes_i_state    : State;
    signal s_aes_i_key      : Key;    
    signal s_o_state        : State;
    signal s_temp_word      : Word;
    signal s_temp_byte      : std_logic_vector(7 downto 0);
    signal s_aes_o_valid    : std_logic;
    
    type fsm is (idle,ready,start_aes,waiting,end_aes);        
    signal current_state    : fsm := idle;

begin
    
    aes_encryption_implementation_1 : entity work.aes_encryption_implementation
        port map(
            clock           => clock,
            reset           => reset,
            i_key           => s_aes_i_key,
            i_state         => s_aes_i_state,
            o_state         => s_o_state,
            o_valid         => s_aes_o_valid
        );
    
    process(clock,reset)
    begin
        if rising_edge(clock) then
            if reset = '1' then
                current_state   <= idle;
                o_valid         <= '0';
            else
                case current_state is 
                    when idle =>
                        if i_ready = '1' then
                            current_state <= ready;
                        end if;
                    when ready => 
                        -- fill key and state with input from dip switches
                        s_temp_byte <= i_sw & i_sw & i_sw & i_sw;
                        s_temp_word <= (s_temp_byte,s_temp_byte,s_temp_byte,s_temp_byte);
                        s_i_state_reg <= (s_temp_word,s_temp_word, s_temp_word, s_temp_word);
                        -- make the key the same
                        s_i_key_reg <= (s_temp_word,s_temp_word, s_temp_word, s_temp_word);
                        
                        current_state <= start_aes;
                    
                    when start_aes => 
                        s_aes_i_key     <= s_i_key_reg;
                        s_aes_i_state   <= s_i_state_reg;
                        
                        current_state <= waiting;
                        
                    when waiting =>
                        if s_aes_o_valid = '1' then
                            current_state <= end_aes;
                            o_valid       <= '1';  
                        end if;
                    when end_aes =>
                        -- perpetual loop until core is resetted by the user
                end case;
            end if;
        end if;
    end process;

end Behavioral;
