set AMS_DIR [getenv AMS_DIR]
set SYNOPSYS [getenv SYNOPSYS]
set TECH c35_3.3V
set WORK_DIR work
set script_path [getenv SYNOPSYS_SCRIPTS];

set search_path ". \
$AMS_DIR/synopsys/$TECH \
$AMS_DIR/synopsys/generics \
$SYNOPSYS/libraries/syn \
$SYNOPSYS/dw/sim_ver"

set synthetic_library dw_foundation.sldb
set target_library c35_CORELIB.db
set link_library "* $target_library $synthetic_library"
set link_create_black_boxes false

set power_enable_analysis TRUE
set power_analysis_mode time_based

#####################################################
# link design
#####################################################
set power_enable_analysis true
read_verilog ../syn/netlist/cpu_clk_gating.v
current_design cpu
link

read_sdc ../syn/netlist/cpu_clk_gating.sdc
read_parasitics ../syn/netlist/cpu_clk_gating.spf

#####################################################
# read switching activity file
#####################################################
read_vcd -strip_path cpu_tb/dut ../sim/cpu_clk_gating.vcd

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
set_power_analysis_options -waveform_output cpu
update_power
report_power -hierarchy > report_power.rep
