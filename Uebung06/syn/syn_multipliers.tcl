exec rm -fr work/
suppress_message {ELAB-311}
remove_design -all

set architecture [getenv PS_ARCH]

# design files
analyze -format vhdl ../src/Multipliers-e.vhd
analyze -format vhdl ../src/Multipliers-${architecture}-a.vhd

# elaborate
elaborate Multipliers -architecture ${architecture}

# constraints
set_operating_conditions -library c35_CORELIB WORST
create_clock -period 40 iClk
set_dont_touch_network iClk
set_clock_latency 1 iClk
set_clock_uncertainty 0.2 iClk
set_ideal_network inRst

set_max_total_power 50 uW

set_fix_hold iClk

# results of the constraining
report_clock -attributes > ../doc/clk_res_multipliers_${architecture}.rep
report_clock -skew >> ../doc/clk_res_multipliers_${architecture}.rep
report_net >> ../doc/clk_res_multipliers_${architecture}.rep

compile -map_effort high -area_effort high -power_effort high 
#-gate_clock 

change_names -rules verilog -hierarchy

# report the results
report_area > ../doc/area_multipliers_${architecture}.rep
report_timing > ../doc/timing_multipliers_${architecture}.rep
report_constraint > ../doc/constraint_multipliers_${architecture}.rep
report_power > ../doc/power_multipliers_${architecture}.rep
#report_clock_gating -verbose -gated -ungated > ../doc/clock_gating_multipliers_${architecture}.rpt

# write output needed for power simulation
write_sdc ./multipliers_${architecture}.sdc
write_parasitics -output ./multipliers_${architecture}.spf

# postsynthesis simulation

write -hierarchy -format verilog -output netlist/multipliers_${architecture}.v__
exec cat netlist/headers.v netlist/multipliers_${architecture}.v__ > netlist/multipliers_${architecture}.v 
exec rm netlist/multipliers_${architecture}.v__
write_sdf -version 2.1 netlist/multipliers_${architecture}.sdf

gui_stop
quit
