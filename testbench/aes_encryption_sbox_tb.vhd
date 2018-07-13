----------------------------------------------------------------------------------
-- Engineer: Andrew Ang 
-- Create Date: 14.06.2018 15:39:26
-- Module Name: aes_encryption_sbox_tb - Behavioral
-- Project Name: aes_encryption_implemenation
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: S-box testbench
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.aes_encryption_lib.all;

entity aes_encryption_sbox_tb is
  -- No ports in top-level testbench
end aes_encryption_sbox_tb;

architecture Behavioral of aes_encryption_sbox_tb is

    component aes_encryption_sbox is
        Port ( 
            i_byte              : in std_logic_vector(7 downto 0);
            o_byte              : out std_logic_vector(7 downto 0)                  
        );
    end component aes_encryption_sbox;
    
    signal tb_i_byte            : std_logic_vector(7 downto 0);
    signal tb_o_byte            : std_logic_vector(7 downto 0);
    
begin
    
    uut: aes_encryption_sbox port map(
        i_byte => tb_i_byte,
        o_byte => tb_o_byte
    );
    
    stim_proc: process
         begin
            tb_i_byte <=  x"9a";
            wait;        
    end process;
    
    
end Behavioral;
