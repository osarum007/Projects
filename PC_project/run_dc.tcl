# Osarumwense Aigbe (osarum.aigbe@gmail.com)

set link_library {db/sclib_tigfet10_hpnw4_tt_0p70v_25c.db}
set target_library {db/sclib_tigfet10_hpnw4_tt_0p70v_25c.db}

define_design_lib WORK -path ./work

set_svf results/analyze_computer.svf

analyze -format vhdl -work work src/ALU.vhd 
analyze -format vhdl -work work src/rom_128x8_sync.vhd
analyze -format vhdl -work work src/rw_96x8_sync.vhd
analyze -format vhdl -work work src/Output_Ports.vhd
analyze -format vhdl -work work src/memory.vhd
analyze -format vhdl -work work src/data_path.vhd
analyze -format vhdl -work work src/control_unit.vhd
analyze -format vhdl -work work src/cpu.vhd
analyze -format vhdl -work work src/computer.vhd

set_svf results/elab_computer.svf
elaborate computer -work work

# source timing.tcl
# set_compile_options
set_svf ../PC_project/results/compile_computer.svf
# compile_ultra -scan -no_autoungroup -no_seq_output_inversion
compile -map_effort low

write_file -hierarchy -output results/computer.ddc

# set prev_output_file_base $output_file_base
# set output_file_base ../PC_project/results/computer
# source wrverilog2.tcl
# set output_file_base $prev_output_file_base
change_name -rules verilog -hier
write_file -format verilog -hierarchy -output results/computer.v

exit