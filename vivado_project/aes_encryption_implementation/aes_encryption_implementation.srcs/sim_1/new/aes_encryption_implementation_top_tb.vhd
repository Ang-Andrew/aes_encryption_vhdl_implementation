----------------------------------------------------------------------------------
-- Engineer: Andrew Ang
-- Create Date: 29.06.2018 22:47:59
-- Module Name: aes_encryption_implementation_top_tb - Behavioral
-- Project Name: aes_encryption_implementation
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: testbench for top file
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.aes_encryption_lib.all;

entity aes_encryption_implementation_top_tb is
--  Port ( );
end aes_encryption_implementation_top_tb;

architecture Behavioral of aes_encryption_implementation_top_tb is

    component aes_encryption_implementation_top is
    Port ( 
        clock       : in std_logic;
        i_reset       : in std_logic;
        o_valid     : out std_logic   
    );
    end component aes_encryption_implementation_top;
    
    signal tb_i_reset                           : std_logic;
    signal tb_clock                             : std_logic;
    signal tb_o_valid                           : std_logic;
    constant clk_period : time := 10 ns;

begin
    
    uut: aes_encryption_implementation_top port map(
        clock           => tb_clock,
        i_reset         => tb_i_reset,
        o_valid         => tb_o_valid
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
        tb_i_reset <= '1';
        wait for clk_period*2;
        tb_i_reset <= '0';
        
        wait;
    end process; 



end Behavioral;
