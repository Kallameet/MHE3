vlib work

vlog ../syn/netlist/cpu.v
vlog ../syn/pfile_stildpv.v

vsim -pli /eda/etc/synopsys/libstildpv/libstildpv.so cpu_test
log -r /*
run -all
