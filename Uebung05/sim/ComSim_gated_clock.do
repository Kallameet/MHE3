vlib work

vlog -O0 -novopt ../syn/netlist/cpu_clk_gating.v
vcom -87 ../src/prol16_pack.vhd
vcom -93 ../src/memory.vhd
vcom -93 ../src/cpu_tb.vhd

vsim -t ps -sdfmax /dut=../syn/netlist/cpu_clk_gating.sdf -novopt cpu_tb

vcd file cpu_clk_gating.vcd
vcd add -r /cpu_tb/dut/*

log -r /*
run -all

quit -sim
