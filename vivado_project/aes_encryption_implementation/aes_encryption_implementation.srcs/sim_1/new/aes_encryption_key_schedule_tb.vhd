----------------------------------------------------------------------------------
-- Engineer: Andrew Ang
-- Create Date: 19.06.2018 22:07:11
-- Module Name: aes_encryption_key_schedule_tb - Behavioral
-- Project Name: aes_encryption_implementation
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: Testbench for key schedule
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.aes_encryption_lib.all;

entity aes_encryption_key_schedule_tb is
--  Port ( );
end aes_encryption_key_schedule_tb;

architecture Behavioral of aes_encryption_key_schedule_tb is
    
    component aes_encryption_key_schedule is
    Port ( 
        clock                   : in std_logic;
        i_key                   : in Key;
        i_rcon_sel              : in integer;
        o_key                   : out Key                           
    );
    end component aes_encryption_key_schedule;
    
    signal tb_key               : Key;
    signal tb_key_out           : Key;
    signal tb_clock             : std_logic;
    signal tb_round             : integer range 0 to 10 := 0;
    constant clk_period         : time := 10 ns;


begin
    
    uut: aes_encryption_key_schedule port map(
        clock   => tb_clock,
        i_key   => tb_key,
        o_key   => tb_key_out,
        i_rcon_sel => tb_round                
    );
    
    stim_proc : process
    begin
        --tb_key <= ((x"2b",x"7e",x"15",x"16"),(x"28",x"ae",x"d2",x"a6"),(x"ab",x"f7",x"15",x"88"),(x"09",x"cf",x"4f",x"3c"));
        tb_key  <= ((x"a0",x"fa",x"fe",x"17"),(x"88",x"54",x"2c",x"b1"),(x"23",x"a3",x"39",x"39"),(x"2a",x"6c",x"76",x"05"));
        wait for 1 ps;
    end process;
    
    clk_process :process
    begin
         tb_clock <= '0';
         wait for clk_period/2;
         tb_clock <= '1';
         wait for clk_period/2;
    end process;
    

end Behavioral;
