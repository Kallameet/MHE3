vsim -novopt top_tb
log -r /*
add wave /top_tb/dut/*
run 1000 us
