`include "../inc/hust_efi_defines.vh"

module crank_position_control #(
  parameter NUM_TEETH           = `CFG_NUM_TEETH          ,
  parameter HALF_NUM_TEETH      = `CFG_HAFT_NUM_TEETH     ,
  parameter NUM_LOST_TEETH      = `CFG_NUM_LOST_TEETH     ,
  parameter CLK_FREQ            = `CFG_CLK_FREQ           ,
  parameter CYCLE_COUNTER_WIDTH = `CFG_CYCLE_COUNTER_WIDTH 
)
(
  input                                clk                , // Clock signal
  input                                reset_n            , // Asynchronous reset active low
  input                                ckp                , // CKP sensor's value
  input                                on                 , // Turn on/turn off signal
  output                               crank_tick         , // Check if crank counter == NUM_TEETH / 2 or NUM_TEETH
  output reg [$clog2(NUM_TEETH)-1:0  ] crank_counter      , // Crank counter
  output reg [CYCLE_COUNTER_WIDTH-1:0] crank_cycle_counter, // Counter crank cycle
  output reg                           crank_changed      , // Crank counter's value is changed or not
  output                               cal_rpm            , // Allow calculate RPM
  output                               cal_btdc             // Allow calculate BTDC
);

// Declare states
localparam IDLE      = 3'b000,
           START     = 3'b001,
           RESETTDC  = 3'b010,
           RESETBDC  = 3'b011,
           UPDATE    = 3'b100;

// Intenal signals and variables
wire [$clog2(NUM_TEETH)-1:0] crank_counter_input; // Crank counter input

reg  [2:0] current_state       ,
           next_state          ; // Determine state
reg  [1:0] reset_crank         ; // Synchronous reset for crank counter
                                 // Reset 0: 2'b00
                                 // Reset TDC: 2'b01
                                 // Reset BDC: 2'b10
                                 // Non reset: 2'b11
reg        reset_crank_cycle   ; // Synchronous reset for crank cycle counter
reg        increase_crank      ; // Allow increase crank counter
reg        increase_crank_cycle; // Allow increase crank cycle counter
reg        last_ckp            ; // Last CKP sensor's value
wire       pre_crank_changed   ;

assign cal_rpm = (ckp == 1);
assign cal_btdc = ((current_state == UPDATE) && (ckp == 1));

//-----------------------------------------------------------------
// Crank counter's value changed
//-----------------------------------------------------------------

assign pre_crank_changed = (crank_counter_input != crank_counter);
always @(posedge clk or negedge reset_n) begin : proc_crank_changed
  if(~reset_n) begin
    crank_changed <= 0;
  end else begin
    crank_changed <= pre_crank_changed;
  end
end

//-----------------------------------------------------------------
// Crank counter input
//-----------------------------------------------------------------

assign crank_counter_input = (reset_crank    == 2'b00) ? 0                 : 
                             (reset_crank    == 2'b01) ? NUM_LOST_TEETH    : 
                             (reset_crank    == 2'b10) ? HALF_NUM_TEETH    : 
                             (increase_crank == 1'b1)  ? crank_counter + 1 : 
                                                         crank_counter      ;

//-----------------------------------------------------------------
// Crank tick
//-----------------------------------------------------------------

assign crank_tick = ((crank_counter == HALF_NUM_TEETH) || (crank_counter == NUM_TEETH));

//-----------------------------------------------------------------
// Last CKP
//-----------------------------------------------------------------

always @(posedge clk or negedge reset_n) begin : proc_last_ckp
  if(~reset_n) begin
    last_ckp <= 0;
  end else begin
    last_ckp <= ckp;
  end
end

//-----------------------------------------------------------------
// Crank counter
//-----------------------------------------------------------------

always @(posedge clk or negedge reset_n) begin : proc_crank_counter
  if(~reset_n) begin
    crank_counter <= 0;
  end else begin
    crank_counter <= crank_counter_input;
  end
end

//-----------------------------------------------------------------
// Crank cycle counter
//-----------------------------------------------------------------

always @(posedge clk or negedge reset_n) begin : proc_crank_cycle_counter
  if(~reset_n) begin
    crank_cycle_counter <= 0;
  end else begin
    if (reset_crank_cycle) begin
      crank_cycle_counter <= 0;
    end
    else if (increase_crank_cycle) begin
      crank_cycle_counter <= crank_cycle_counter + 1;
    end
    else begin
      crank_cycle_counter <= crank_cycle_counter;
    end
  end
end

//-----------------------------------------------------------------
// Clocked Block for ASMD
//-----------------------------------------------------------------

always @(posedge clk or negedge reset_n) begin : proc_current_state
  if(~reset_n) begin
    current_state <= 0;
  end else begin
    if (~on) begin
      current_state <= 0;
    end else begin
      current_state <= next_state;
    end
  end
end

//-----------------------------------------------------------------
// Next State Block for ASMD
//-----------------------------------------------------------------

always @(*) begin : proc_next_state
  case (current_state)
    IDLE : begin
      if (on) begin
        next_state = START;
      end
      else begin
        next_state = IDLE;
      end
    end

    START : begin
      if (ckp == 0) begin
        next_state = RESETTDC; // At TDC
      end
      else begin
        next_state = RESETBDC; // At BDC
      end
    end

    RESETTDC : begin
      next_state = UPDATE;
    end

    RESETBDC : begin
      next_state = UPDATE;
    end

    UPDATE : begin
      if (on) begin
        next_state = UPDATE;
      end
      else begin
        next_state = IDLE;
      end
    end

    default : begin
      next_state = IDLE;
    end
  endcase
end

//-----------------------------------------------------------------
// Output Block for ASMD
//-----------------------------------------------------------------

always @(*) begin : proc_output
  reset_crank          = 2'b11;
  reset_crank_cycle    = 0    ;
  increase_crank       = 0    ;
  increase_crank_cycle = 0    ;

  case (current_state)
    IDLE : begin
      if (on) begin
        reset_crank          = 2'b00;
        reset_crank_cycle    = 0    ;
        increase_crank       = 0    ;
        increase_crank_cycle = 0    ;
      end
      else begin
        reset_crank          = 2'b00;
        reset_crank_cycle    = 1;
        increase_crank       = 0;
        increase_crank_cycle = 0;
      end
    end

    START : begin
      if (ckp == 0) begin
        reset_crank          = 2'b01;
        reset_crank_cycle    = 0    ;
        increase_crank       = 0    ;
        increase_crank_cycle = 0    ;
      end
      else begin
        reset_crank          = 2'b10;
        reset_crank_cycle    = 0    ;
        increase_crank       = 0    ;
        increase_crank_cycle = 0    ;
      end
    end

    RESETTDC : begin
      reset_crank          = 2'b01;
      reset_crank_cycle    = 0    ;
      increase_crank       = 0    ;
      increase_crank_cycle = 0    ;
    end

    RESETBDC : begin
      reset_crank          = 2'b10;
      reset_crank_cycle    = 0    ;
      increase_crank       = 0    ;
      increase_crank_cycle = 0    ;
    end

    UPDATE : begin
      if (on) begin
        if (ckp != last_ckp && ckp == 1) begin
          reset_crank          = 2'b11;
          reset_crank_cycle    = ckp ? 1 : 0;
          increase_crank       = ckp ? 1 : 0;
          increase_crank_cycle = 0;
          if (crank_counter == NUM_TEETH) begin
            reset_crank = 2'b01;
          end
          else begin
            reset_crank = reset_crank;
          end
        end
        else begin
          reset_crank          = 2'b11;
          reset_crank_cycle    = 0    ;
          increase_crank       = 0    ;
          increase_crank_cycle = 1'b1 ;
        end
      end
      else begin
        reset_crank          = 2'b11;
        reset_crank_cycle    = 0    ;
        increase_crank       = 0    ;
        increase_crank_cycle = 0    ;
      end
    end
  endcase
end

endmodule : crank_position_control