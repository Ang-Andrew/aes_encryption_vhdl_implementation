-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1_AR70908 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed Aug 15 21:04:00 2018
-- Host        : ANDREWPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/git_repos/aes_encryption_vhdl_implementation/vivado_project/pynq_testing/pynq_testing.srcs/sources_1/bd/design_1/ip/design_1_aes_encryption_wrapp_0_0/design_1_aes_encryption_wrapp_0_0_stub.vhdl
-- Design      : design_1_aes_encryption_wrapp_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_aes_encryption_wrapp_0_0 is
  Port ( 
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    o_valid : out STD_LOGIC;
    o_word1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_word2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_word3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_word4 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_aes_encryption_wrapp_0_0;

architecture stub of design_1_aes_encryption_wrapp_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clock,reset,o_valid,o_word1[31:0],o_word2[31:0],o_word3[31:0],o_word4[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "aes_encryption_wrapper,Vivado 2018.1_AR70908";
begin
end;
