----------------------------------------------------------------------------------
-- Engineer: Andrew Ang
-- Create Date: 24.06.2018 14:57:55
-- Module Name: aes_encryption_implementation_tb - Behavioral
-- Project Name: aes_encryption_implementation
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: testbench for AES encryption top file
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

library work;
use work.aes_encryption_lib.all;

entity aes_encryption_implementation_tb is
  -- No ports in top-level testbench
end aes_encryption_implementation_tb;

architecture Behavioral of aes_encryption_implementation_tb is

  signal tb_input_state  : State;
  signal tb_output_state : State;
  signal tb_input_key    : Key;
  signal tb_clock        : std_logic;
  signal tb_reset        : std_logic;
  signal tb_o_valid      : std_logic;

  constant clk_period : time := 10 ns;

begin

  clk_process : process
  begin
    tb_clock <= '0';
    wait for clk_period/2;
    tb_clock <= '1';
    wait for clk_period/2;
  end process;

  uut : entity work.aes_encryption_implementation
    port map(
      clock   => tb_clock,
      reset   => tb_reset,
      i_key   => tb_input_key,
      i_state => tb_input_state,
      o_state => tb_output_state,
      o_valid => tb_o_valid
      );

  stim_proc : process
  begin

    tb_input_state <= ((x"32", x"43", x"f6", x"a8"),
                       (x"88", x"5a", x"30", x"8d"),
                       (x"31", x"31", x"98", x"a2"),
                       (x"e0", x"37", x"07", x"34"));

    tb_input_key <= ((x"2b", x"7e", x"15", x"16"),
                     (x"28", x"ae", x"d2", x"a6"),
                     (x"ab", x"f7", x"15", x"88"),
                     (x"09", x"cf", x"4f", x"3c"));
--        wait for clk_period*2;
--        tb_reset <= '1';
--        wait for clk_period*2;
--        tb_reset <= '0';

    wait;

  end process;

end Behavioral;
