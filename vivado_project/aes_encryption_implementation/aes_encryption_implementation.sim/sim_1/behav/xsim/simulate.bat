@echo off
REM ****************************************************************************
REM Vivado (TM) v2018.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Sat Jul 21 17:01:39 +1000 2018
REM SW Build 2188600 on Wed Apr  4 18:40:38 MDT 2018
REM
REM Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
call xsim aes_encryption_key_schedule_tb_behav -key {Behavioral:sim_1:Functional:aes_encryption_key_schedule_tb} -tclbatch aes_encryption_key_schedule_tb.tcl -view D:/git_repos/aes_encryption_vhdl_implementation/vivado_project/aes_encryption_implementation/aes_encryption_implementation_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
