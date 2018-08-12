set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { clock }]; #IO_L13P_T2_MRCC_35 Sch=sysclk
create_clock -add -name clock -period 8.00 -waveform {0 4} [get_ports { clock }];
#create_clock -period 10.000 -name clock -waveform {0.000 5.000} -add [get_ports clock]
set_property PACKAGE_PIN R14 [get_ports o_valid]
set_property PACKAGE_PIN D19 [get_ports reset]


set_property IOSTANDARD LVCMOS18 [get_ports o_valid]
set_property IOSTANDARD LVCMOS18 [get_ports reset]
set_property IOSTANDARD LVCMOS18 [get_ports clock]
