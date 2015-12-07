read netlist netlist/cpu.v
read netlist $AMS_DIR/verilog/c35b3/*.v
report modules -summary
report modules -error
run build_model cpu
run drc cpu.spf
set faults -fault_coverage
set faults -summary verbose
add faults -all
set patterns internal
run atpg -random
report summaries > ../doc/atpg_results.rep
write pattern pfile.stil -format stil99 -replace
write faults ../doc/atpg_fault_list.rep -all -replace
