----------------------------------------------------------------------------------
-- Engineer: Andrew Ang
-- Create Date: 14.06.2018 12:55:48
-- Module Name: mult_by_3_tb - Behavioral
-- Project Name: aes_encryption_implementaion
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: mixColumns algorithm for AES encryption
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.aes_encryption_lib.all;

entity mult_by_3_tb is
end mult_by_3_tb;

architecture Behavioral of mult_by_3_tb is
   
    component mult_by_3 is
    Port (
        clock               : in std_logic; 
        i_state             : in State;
        o_state             : out State
    );
    end component mult_by_3;
    
    signal tb_input_state                       : State;
    signal tb_output_state                      : State;
    signal tb_clock                             : std_logic;
    constant clk_period                         : time := 10 ns;

begin

    uut: mult_by_3 port map(
        clock       => tb_clock,
        i_state     => tb_input_state,
        o_state     => tb_output_state
    );
   
    stim_proc: process
         begin
            tb_input_state <= ((x"FF",x"01",x"02",x"03"),(x"04",x"05",x"06",x"07"),(x"08",x"09",x"0a",x"0b"),(x"0c",x"0d",x"0e",x"0f")); 
            wait;        
    end process;
    
    clk_process :process
    begin
         tb_clock <= '0';
         wait for clk_period/2;
         tb_clock <= '1';
         wait for clk_period/2;
    end process;

end Behavioral;