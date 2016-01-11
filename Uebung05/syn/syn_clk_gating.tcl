#
# template script for synopsys
#

# some variables
set exercise 5
set design cpu
set sources {prol16_pack reg_file datapath control alu cpu}

# analyze
echo "Analyzing..."
foreach s $sources {
    analyze -format vhdl ../src/${s}.vhd
}

# elaborate
echo "Elaborate..."
elaborate $design

# set environment and constraints

#FIXME: set constraints
set_operating_conditions -library c35_CORELIB WORST

#clock gating style
set_clock_gating_style -sequential_cell latch -positive_edge_logic {and} -negative_edge_logic {or}

# compile
echo "Compile..."
compile -gate_clock

# write results

# changing names is required for legal VHDL identifiers
echo "Changing names..."
change_names -rules verilog -hierarchy

echo "Write netlist and SDF..."
write -hierarchy -format verilog -output netlist/${design}.v
write_sdf -version 2.1 netlist/${design}.sdf
exec fix_sdf netlist/${design}.sdf

echo "Write sdc and spf..."
write_sdc netlist/${design}.sdc
write_parasitics -output netlist/${design}.spf

echo "Writing reports..."
report_area > ../doc/area_${exercise}.rep
report_timing > ../doc/timing_${exercise}.rep
report_clock_gating -verbose -gated -ungated > ../doc/clock_gating_${exercise}.rep
