----------------------------------------------------------------------------------
-- Engineer: Andrew Ang
-- Create Date: 13.06.2018 16:10:09
-- Module Name: aes_encryption_ShiftRows_tb - Behavioral
-- Project Name: aes_encryption_implmentation
-- Target Devices: Pynq
-- Tool Versions: Vivado 2018.1
-- Description: ShiftRows testbench
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.aes_encryption_lib.State;

entity aes_encryption_ShiftRows_tb is
end aes_encryption_ShiftRows_tb;

architecture Behavioral of aes_encryption_ShiftRows_tb is
   
    component aes_encryption_ShiftRows is
    Port ( 
        input_state             : in State;
        output_state            : out State
    );
    end component aes_encryption_ShiftRows;
    
    signal tb_input_state                       : State;
    signal tb_output_state                      : State;
    signal tb_clock                             : std_logic;
    constant clk_period : time := 10 ns;

begin

    uut: aes_encryption_ShiftRows port map(
        input_state     => tb_input_state,
        output_state    => tb_output_state
    );
    
    clk_process :process
    begin
         tb_clock <= '1';
         wait for clk_period/2;
         tb_clock <= '0';
         wait for clk_period/2;
    end process;
    
    stim_proc: process
         begin
            wait for clk_period*2;
            tb_input_state <= ((x"00",x"01",x"02",x"03"),(x"04",x"05",x"06",x"07"),(x"08",x"09",x"0a",x"0b"),(x"0c",x"0d",x"0e",x"0f")); 
            wait;        
    end process;

end Behavioral;
