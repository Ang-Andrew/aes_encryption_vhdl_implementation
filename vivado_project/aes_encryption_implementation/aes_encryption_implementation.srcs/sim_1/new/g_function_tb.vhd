---------------------------------------------------------------------------------- 
-- Engineer: Andrew
-- Create Date: 18.06.2018 21:24:07 
-- Module Name: g_function_tb - Behavioral
-- Project Name: aes_encryption_implementation
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: testbench for g-function
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.aes_encryption_lib.all; 

entity g_function_tb is
--  Port ( );
end g_function_tb;

architecture Behavioral of g_function_tb is
    
    component g_function is
    Port (
        clock                   : in std_logic;
        i_rcon_sel              : in integer; 
        i_word                  : in Word;
        i_word2                 : in Word;
        o_word                  : out Word                  
    );
    end component g_function;
    
    signal tb_i_rcon_sel       : integer;           
    signal tb_i_word            : Word;
    signal tb_i_word2           : Word;
    signal tb_o_word            : Word;
    signal tb_rcon_sel          : integer := 0;
    signal tb_g_func_example    : Word;
    signal tb_clock             : std_logic;
    constant clk_period         : time := 10 ns;

begin
    
    uut: g_function port map(
        clock       => tb_clock,
        i_rcon_sel  => tb_rcon_sel,
        i_word      => tb_i_word,
        i_word2     => tb_i_word2,
        o_word      => tb_o_word
    );
    
    stim_proc: process
         begin         
            tb_i_word   <=  (x"09",x"cf",x"4f",x"3c");
            tb_rcon_sel <= 0;
            tb_i_word2  <= (x"2b",x"7e",x"15",x"16");
            -- tb_g_func_example <= (x"2b" xor tb_o_word(0),x"7e" xor tb_o_word(1),x"15" xor tb_o_word(2),x"16" xor tb_o_word(3));
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
