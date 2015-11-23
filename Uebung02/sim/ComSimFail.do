vlib work

vcom -87 ../syn/netlist/scan_test_mod_fail.vhd
vcom -93 ../src/scan_test_tb.vhd

vsim -novopt scan_test_tb
log -r /*
add wave /scan_test_tb/dut/*
run 1 us
