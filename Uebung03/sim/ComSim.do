vlib work

vlog -O0 -novopt ../syn/netlist/cpu.v
vcom -87 ../src/prol16_pack.vhd
vcom -93 ../src/memory.vhd
vcom -93 ../src/cpu_tb.vhd

vsim -t ps -sdfmax /dut=../syn/netlist/cpu.sdf -novopt cpu_tb
log -r /*
run -all
