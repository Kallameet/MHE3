// Verilog STILDPV testbench written by  TetraMAX (TM)  B-2008.09-SP3-i090115_213636 
// Date: Sun Dec  6 17:57:41 2015
// Module tested: cpu

`timescale 1 ns / 1 ns

module cpu_test;
   integer verbose;         // message verbosity level
   integer report_interval; // pattern reporting intervals
   integer diagnostic_msg;  // format miscompares for TetraMAX diagnostics
   parameter NINPUTS = 20, NOUTPUTS = 37;
   // The next two variables hold the current value of the TetraMAX pattern number
   // and vector number, while the simulation is progressing. $monitor or $display these
   // variables, or add them to waveform views, to see these values change with time
   integer pattern_number;
   integer vector_number;

   wire clk_i;  reg clk_i_REG ;
   wire res_i;  reg res_i_REG ;
   wire test_mode_i;  reg test_mode_i_REG ;
   wire scan_enable_i;  reg scan_enable_i_REG ;
   wire mem_ce_no;
   wire mem_oe_no;
   wire mem_we_no;
   wire illegal_inst_o;
   wire cpu_halt_o;
   wire [15:0] mem_addr_o;
   wire [15:0] mem_data_o;
   wire [15:0] mem_data_i;
//   reg [15:0] mem_data_i_REG;
   reg \mem_data_i_REG[0] ;
   reg \mem_data_i_REG[1] ;
   reg \mem_data_i_REG[2] ;
   reg \mem_data_i_REG[3] ;
   reg \mem_data_i_REG[4] ;
   reg \mem_data_i_REG[5] ;
   reg \mem_data_i_REG[6] ;
   reg \mem_data_i_REG[7] ;
   reg \mem_data_i_REG[8] ;
   reg \mem_data_i_REG[9] ;
   reg \mem_data_i_REG[10] ;
   reg \mem_data_i_REG[11] ;
   reg \mem_data_i_REG[12] ;
   reg \mem_data_i_REG[13] ;
   reg \mem_data_i_REG[14] ;
   reg \mem_data_i_REG[15] ;

   // map register to wire for DUT inputs and bidis
   assign clk_i = clk_i_REG ;
   assign res_i = res_i_REG ;
   assign test_mode_i = test_mode_i_REG ;
   assign scan_enable_i = scan_enable_i_REG ;
   assign mem_data_i = { \mem_data_i_REG[15] , \mem_data_i_REG[14] , \mem_data_i_REG[13]
          , \mem_data_i_REG[12] , \mem_data_i_REG[11] , \mem_data_i_REG[10] , \mem_data_i_REG[9]
          , \mem_data_i_REG[8] , \mem_data_i_REG[7] , \mem_data_i_REG[6] , \mem_data_i_REG[5]
          , \mem_data_i_REG[4] , \mem_data_i_REG[3] , \mem_data_i_REG[2] , \mem_data_i_REG[1]
          , \mem_data_i_REG[0]  };

   // instantiate the design into the testbench
   cpu dut (
      .clk_i(clk_i),
      .res_i(res_i),
      .test_mode_i(test_mode_i),
      .scan_enable_i(scan_enable_i),
      .mem_addr_o({ mem_addr_o[15], mem_addr_o[14], mem_addr_o[13],
          mem_addr_o[12], mem_addr_o[11], mem_addr_o[10], mem_addr_o[9], mem_addr_o[8],
          mem_addr_o[7], mem_addr_o[6], mem_addr_o[5], mem_addr_o[4], mem_addr_o[3],
          mem_addr_o[2], mem_addr_o[1], mem_addr_o[0] }),
      .mem_data_o({ mem_data_o[15], mem_data_o[14],
          mem_data_o[13], mem_data_o[12], mem_data_o[11], mem_data_o[10], mem_data_o[9],
          mem_data_o[8], mem_data_o[7], mem_data_o[6], mem_data_o[5], mem_data_o[4],
          mem_data_o[3], mem_data_o[2], mem_data_o[1], mem_data_o[0] }),
      .mem_data_i({ mem_data_i[15],
          mem_data_i[14], mem_data_i[13], mem_data_i[12], mem_data_i[11], mem_data_i[10],
          mem_data_i[9], mem_data_i[8], mem_data_i[7], mem_data_i[6], mem_data_i[5],
          mem_data_i[4], mem_data_i[3], mem_data_i[2], mem_data_i[1], mem_data_i[0]
          }),
      .mem_ce_no(mem_ce_no),
      .mem_oe_no(mem_oe_no),
      .mem_we_no(mem_we_no),
      .illegal_inst_o(illegal_inst_o),
      .cpu_halt_o(cpu_halt_o)   );

   // STIL Direct Pattern Validate Access
   initial begin
      //
      // --- establish a default time format for %t
      //
      $timeformat(-9,2," ns",18);
      vector_number = 0;

      //
      // --- default verbosity to 0; use '+define+tmax_msg=N' on verilog compile line to change.
      //
      `ifdef tmax_msg
         verbose = `tmax_msg ;
      `else
         verbose = 0 ;
      `endif

      //
      // --- default pattern reporting interval is every 5 patterns;
      //     use '+define+tmax_rpt=N' on verilog compile line to change.
      //
      `ifdef tmax_rpt
         report_interval = `tmax_rpt ;
      `else
         report_interval = 5 ;
      `endif

      //
      // --- support generating Extened VCD output by using
      //     '+define+tmax_vcde' on verilog compile line.
      //
      `ifdef tmax_vcde
         // extended VCD, see Verilog specification, IEEE Std. 1364-2001 section 18.3
         if (verbose >= 1) $display("// %t : opening Extended VCD output file", $time);
         $dumpports( dut, "sim_vcde.out");
      `endif

      //
      // --- default miscompare messages are not formatted for TetraMAX diagnostics;
      //     use '+define+tmax_diag=N' on verilog compile line to format errors for diagnostics.
      //
      `ifdef tmax_diag
         diagnostic_msg = `tmax_diag ;
      `else
         diagnostic_msg = 0 ;
      `endif

      // '+define+tmax_parallel=N' on the command line overrides default simulation, using parallel load
      //   with N serial vectors at the end of each Shift
      // '+define+tmax_serial=M' on the command line forces M initial serial patterns,
      //   followed by the remainder in parallel (with N serial vectors if tmax_parallel is also specified)

      // +define+tmax_par_force_time on the command line overrides default parallel check/load time
      `ifdef tmax_par_force_time
         $STILDPV_parallel(,,,`tmax_par_force_time);
      `endif

      // TetraMAX parallel-mode simulation required for these patterns
      `ifdef tmax_parallel
         // +define+tmax_serial_timing on the command line overrides default minimal-time for parallel load behavior
         `ifdef tmax_serial_timing
         `else
            $STILDPV_parallel(,,0); // apply minimal time advance for parallel load_unload
            // if tmax_serial_timing is defined, use equivalent serial load_unload time advance
         `endif
         `ifdef tmax_serial
            $STILDPV_parallel(`tmax_parallel,`tmax_serial);
         `else
            $STILDPV_parallel(`tmax_parallel,0);
         `endif
      `else
         `ifdef tmax_serial
            // +define+tmax_serial_timing on the command line overrides default minimal-time for parallel load behavior
            `ifdef tmax_serial_timing
            `else
               $STILDPV_parallel(,,0); // apply minimal time advance for parallel load_unload
               // if tmax_serial_timing is defined, use equivalent serial load_unload time advance
            `endif
            $STILDPV_parallel(0,`tmax_serial);
         `else
            // default serial mode
         `endif
      `endif

      if (verbose>3)      $STILDPV_trace(1,1,1,1,1,report_interval,diagnostic_msg); // verbose=4; + trace each Vector
      else if (verbose>2) $STILDPV_trace(1,0,1,1,1,report_interval,diagnostic_msg); // verbose=3; + trace labels
      else if (verbose>1) $STILDPV_trace(0,0,1,1,1,report_interval,diagnostic_msg); // verbose=2; + trace WFT-changes
      else if (verbose>0) $STILDPV_trace(0,0,1,0,1,report_interval,diagnostic_msg); // verbose=1; + trace proc/macro entries
      else                $STILDPV_trace(0,0,0,0,0,report_interval,diagnostic_msg); // verbose=0; only pattern-interval

      $STILDPV_setup( "pfile.stil",,,"cpu_test.dut" );
      while ( !$STILDPV_done()) #($STILDPV_run( pattern_number, vector_number ));
      $display("Time %t: STIL simulation data completed.",$time);
      $finish; // comment this out if you terminate the simulation from other activities
   end

   // STIL Direct Pattern Validate Trace Options
   // The STILDPV_trace() function takes '1' to enable a trace and '0' to disable.
   // Unspecified arguments maintain their current state. Tracing may be changed at any time.
   // The following arguments control tracing of:
   // 1st argument: enable or disable tracing of all STIL labels
   // 2nd argument: enable or disable tracing of each STIL Vector and current Vector count
   // 3rd argument: enable or disable tracing of each additional Thread (new Pattern)
   // 4th argument: enable or disable tracing of each WaveformTable change
   // 5th argument: enable or disable tracing of each Procedure or Macro entry
   // 6th argument: interval to print starting pattern messages; 0 to disable
   // For example, a separate initial block may be used to control these options
   // (uncomment and change time values to use):
   // initial begin
   //    #800000 $STILDPV_trace(1,1);
   //    #600000 $STILDPV_trace(,0);
   // Additional calls to $STILDPV_parallel() may also be defined to change parallel/serial
   // operation during simulation. Any additional calls need a # time value.
   // 1st integer is number of serial (flat) cycles to simulate at end of each shift
   // 2nd integer is TetraMAX pattern number (starting at zero) to start parallel load
   // 3rd optional value '1' will advance time during the load_unload the same as a serial
   //     shift operation (with no events during that time), '0' will advance minimal time
   //     (1 shift vector) during the parallel load_unload.
   // For example,
   //    #8000 $STILDPV_parallel( 2,10 );
   // end // of initial block with additional trace/parallel options
endmodule
