connect -url tcp:127.0.0.1:3121
source C:/Users/HH/Documents/Embedded_system/hust_efi/fpga/hust_efi/hust_efi.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351B3E46AA" && level==0} -index 1
fpga -file C:/Users/HH/Documents/Embedded_system/hust_efi/fpga/hust_efi/hust_efi.sdk/design_1_wrapper_hw_platform_0/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351B3E46AA"} -index 0
loadhw -hw C:/Users/HH/Documents/Embedded_system/hust_efi/fpga/hust_efi/hust_efi.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351B3E46AA"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351B3E46AA"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351B3E46AA"} -index 0
dow C:/Users/HH/Documents/Embedded_system/hust_efi/fpga/hust_efi/hust_efi.sdk/hust_efi_final/Debug/hust_efi_final.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351B3E46AA"} -index 0
con
