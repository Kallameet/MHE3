###################################################################

# Created by write_sdc on Wed Jan 13 09:30:34 2016

###################################################################
set sdc_version 1.7

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_operating_conditions WORST -library c35_CORELIB
set_max_total_power 50 uW
set_ideal_network [get_ports inRst]
create_clock [get_ports iClk]  -period 40  -waveform {0 20}
set_clock_latency 1  [get_clocks iClk]
set_clock_uncertainty 0.2  [get_clocks iClk]
