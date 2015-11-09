vsim -novopt top_tb
log -r /*
add wave /top_tb/dut/*
run 10 us