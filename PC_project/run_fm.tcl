#!fm_shell
# Osarumwense Aigbe (osarum.aigbe@gmail.com)

set synopsys_auto_setup true

set_svf results/compile_computer.svf

create_container ref

set hdlin_vhdl_std 1993
set hdlin_vhdl_integer_range_constraint true
read_vhdl -libname work src/ALU.vhd 
read_vhdl -libname work src/rom_128x8_sync.vhd
read_vhdl -libname work src/rw_96x8_sync.vhd
read_vhdl -libname work src/Output_Ports.vhd
read_vhdl -libname work src/memory.vhd
read_vhdl -libname work src/data_path.vhd
read_vhdl -libname work src/control_unit.vhd
read_vhdl -libname work src/cpu.vhd
read_vhdl -libname work src/computer.vhd

set_top computer

create_container impl
read_ddc -container impl -libname work results/computer.ddc
set_top impl:/computer

set_reference_design      ref:/work/computer
set_implementation_design impl:/work/computer

set verification_failing_point_limit 5000

verify

exit