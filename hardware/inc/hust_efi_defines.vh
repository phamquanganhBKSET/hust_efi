`define CFG_NUM_TEETH            6'b111011             // Number of teeth on crankshaft
`define CFG_HAFT_NUM_TEETH       (`CFG_NUM_TEETH >> 1) // Half of NUM_TEETH
`define CFG_NUM_LOST_TEETH       6'b000001             // Number of lost teeth on crankshaft
`define CFG_MAX_RPM              3600                  // Maximum RPM
`define CFG_CLK_FREQ             50000000              // Maximum clk frequency
`define CFG_CYLINDERS            3'b100                // Number of cylinders
`define CFG_CYCLE_COUNTER_WIDTH  18                    // Crank cycle counter width