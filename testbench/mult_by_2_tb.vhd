----------------------------------------------------------------------------------
-- Engineer: Andrew Ang
-- Create Date: 14.06.2018 11:46:44
-- Module Name: mult_by_2_tb - Behavioral
-- Project Name: aes_encryption_implementation
-- Target Devices: Pynq
-- Tool Versions: Vivado 2018.1
-- Description: testbench for mult_by_2 module
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.aes_encryption_lib.all;

entity mult_by_2_tb is
  -- No ports in top-level testbench
end mult_by_2_tb;

architecture Behavioral of mult_by_2_tb is
   
    component mult_by_2 is
    Port ( 
        i_state             : in State;
        o_state             : out State
    );
    end component mult_by_2;
    
    signal tb_input_state                       : State;
    signal tb_output_state                      : State;

begin

    uut: mult_by_2 port map(
        i_state     => tb_input_state,
        o_state     => tb_output_state
    );
   
    stim_proc: process
         begin
            tb_input_state <= ((x"80",x"01",x"02",x"03"),(x"04",x"05",x"06",x"07"),(x"08",x"09",x"0a",x"0b"),(x"0c",x"0d",x"0e",x"0f")); 
            wait;        
    end process;

end Behavioral;
