#
# template script for synopsys
#

# some variables
set exercise 2
set design scan_test
set sources {scan_test}

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

# compile
echo "Compile..."
compile

# write results

# changing names is required for legal VHDL identifiers
echo "Changing names..."
change_names -rules vhdl -hierarchy

echo "Write netlist and SDF..."
write -hierarchy -format vhdl -output netlist/${design}.vhd
write_sdf -version 2.1 netlist/${design}.sdf
exec fix_sdf netlist/${design}.sdf

echo "Writing reports..."
report_area > ../doc/area_${exercise}.rep
report_timing > ../doc/timing_${exercise}.rep
