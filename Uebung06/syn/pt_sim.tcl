set AMS_DIR     [getenv AMS_DIR]
set SYNOPSYS    [getenv SYNOPSYS]
set TECH        c35_3.3V
set WORK_DIR    work
set script_path [getenv SYNOPSYS_SCRIPTS];

set search_path  ". \
                  $AMS_DIR/synopsys/$TECH \
                  $AMS_DIR/synopsys/generics \
                  $SYNOPSYS/libraries/syn    \
                  $SYNOPSYS/dw/sim_ver"

set synthetic_library dw_foundation.sldb
set target_library    c35_CORELIB.db
set link_library      "* $target_library  $synthetic_library"
set link_create_black_boxes false

set architecture [getenv PS_ARCH]
set input [getenv PS_INPUT]

set power_enable_analysis TRUE
set power_analysis_mode time_based

#####################################################
# link design
#####################################################
set power_enable_analysis true
read_verilog netlist/multipliers_${architecture}.v
current_design Multipliers
link

read_sdc ./multipliers_${architecture}.sdc
read_parasitics ./multipliers_${architecture}.spf

#####################################################
# read switching activity file
#####################################################
read_vcd -strip_path tbMultipliers/theMultipliers ../sim/multipliers_${architecture}_${input}.vcd

#####################################################
# timing analysis
#####################################################
check_timing
update_timing
report_timing

#####################################################
# power analysis
#####################################################
check_power
set_power_analysis_options -waveform_output mult_${architecture}_${input}
update_power
report_power -hierarchy > ../doc/power_${architecture}_${input}.txt

quit
