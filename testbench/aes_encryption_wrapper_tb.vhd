---------------------------------------------------------------------------------- 
-- Engineer: Andrew Ang 
-- Create Date: 06.08.2018 21:47:44
-- Module Name: aes_encryption_wrapper_tb - Behavioral
-- Project Name: aes_encryption_implementation 
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: testbench for aes_encryption_wrapper
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_1164.ALL;
use work.aes_encryption_lib.all;

entity aes_encryption_wrapper_tb is
--  Port ( );
end aes_encryption_wrapper_tb;

architecture Behavioral of aes_encryption_wrapper_tb is

    component aes_encryption_wrapper is
        Port (
            clock       : in std_logic;
            reset       : in std_logic;
            o_valid     : out std_logic
        );
    end component aes_encryption_wrapper;
    
    constant clk_period : time      := 10 ns;
    
    signal tb_clock     : std_logic;
    signal tb_reset     : std_logic := '0';
    signal tb_o_valid   : std_logic;
    
begin

    clk_process :process
    begin
         tb_clock <= '0';
         wait for clk_period/2;
         tb_clock <= '1';
         wait for clk_period/2;
    end process;
    
    uut : aes_encryption_wrapper port map(
        clock       => tb_clock,
        reset       => tb_reset,
        o_valid     => tb_o_valid
    );
    

end Behavioral;
