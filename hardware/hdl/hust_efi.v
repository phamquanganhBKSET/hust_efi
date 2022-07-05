`include "../inc/hust_efi_defines.vh"

module hust_efi #(
  parameter CYLINDERS           = `CFG_CYLINDERS          ,
  parameter NUM_TEETH           = `CFG_NUM_TEETH          ,
  parameter HALF_NUM_TEETH      = `CFG_HAFT_NUM_TEETH     ,
  parameter NUM_LOST_TEETH      = `CFG_NUM_LOST_TEETH     ,
  parameter CLK_FREQ            = `CFG_CLK_FREQ           ,
  parameter CYCLE_COUNTER_WIDTH = `CFG_CYCLE_COUNTER_WIDTH 
)
(
  input                            clk                , // Clock signal
  input                            reset_n            , // Asynchronous reset active low
  input                            efi_on             , // Turn on/turn off signal for Crank State machine and Stroke State Machine
  input                            ckp                , // CKP sensor's value
  input  [CYLINDERS-1:0]           done               , // Done injection
  input  [CYLINDERS-1:0]           btdc_ready         , // BTDC gain enough for ignition
  output [$clog2(NUM_TEETH)-1:0  ] crank_counter      , // Crank counter
  output [CYCLE_COUNTER_WIDTH-1:0] crank_cycle_counter, // Counter crank cycle
  output                           cal_rpm            , // Allow calculate RPM
  output                           cal_btdc           , // Allow calculate BTDC
  output [CYLINDERS-1:0]           cal_injection      , // Calculate injection time
  output [CYLINDERS-1:0]           cal_ignition       , // Calculate ignition timing
  output [CYLINDERS-1:0]           inject             , // Statrt inject
  output [CYLINDERS-1:0]           ignite             , // Ignite
  output [CYLINDERS-1:0]           update_table       , // Update data table
  output [CYLINDERS-1:0]           fuel_pump            // Turn on/turn off the fuel pump
);

// Intenal signals and variables
wire                      crank_tick     ; // Check if crank counter == NUM_TEETH / 2 or NUM_TEETH
wire                      crank_changed  ; // Crank counter's value is changed or not
wire [CYLINDERS-1:0][1:0] stroke         ; // Stroke
wire [CYLINDERS-1:0]      allow_injection; // Allow injection
wire [CYLINDERS-1:0]      allow_ignition ; // Allow ignition
wire [CYLINDERS-1:0]      fic_on         ; // Turn on/turn off FIC
wire [CYLINDERS-1:0]      ic_on          ; // Turn on/turn off IC


crank_position_control crank_position_control_inst (
  .clk                (clk                ),
  .reset_n            (reset_n            ),
  .ckp                (ckp                ),
  .on                 (efi_on             ),
  .crank_tick         (crank_tick         ),
  .crank_counter      (crank_counter      ),
  .crank_cycle_counter(crank_cycle_counter),
  .crank_changed      (crank_changed      ),
  .cal_rpm            (cal_rpm            ),
  .cal_btdc           (cal_btdc           ) 
);

stroke_transition stroke_transition_inst (
  .clk            (clk            ),
  .reset_n        (reset_n        ),
  .crank_tick     (crank_tick     ),
  .crank_changed  (crank_changed  ),
  .on             (efi_on         ),
  .ckp            (ckp            ),
  .stroke         (stroke         ),
  .allow_injection(allow_injection),
  .allow_ignition (allow_ignition ),
  .fic_on         (fic_on         ),
  .ic_on          (ic_on          ) 
);

genvar i;
for (i = 0; i < CYLINDERS; i = i + 1) begin
  ignition_control ic (
    .clk           (clk                ),
    .reset_n       (reset_n            ),
    .on            (ic_on[i]           ),
    .allow_ignition(allow_ignition[i]  ),
    .stroke        (stroke[i]          ),
    .crank_tick    (crank_tick         ),
    .btdc_ready    (btdc_ready[i]      ),
    .ignite        (ignite[i]          ),
    .cal_ignition  (cal_ignition[i]    ) 
  );

  fuel_injection_control fic (
    .clk            (clk               ),
    .reset_n        (reset_n           ),
    .on             (fic_on[i]         ),
    .done           (done[i]           ),
    .stroke         (stroke[i]         ),
    .crank_tick     (crank_tick        ),
    .allow_injection(allow_injection[i]),
    .inject         (inject[i]         ),
    .cal_injection  (cal_injection[i]  ),
    .update_table   (update_table[i]   ),
    .fuel_pump      (fuel_pump[i]      ) 
  );
end

endmodule : hust_efi