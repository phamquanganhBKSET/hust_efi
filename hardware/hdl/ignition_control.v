`include "../inc/hust_efi_defines.vh"

module ignition_control #(
  parameter CYLINDERS = `CFG_CYLINDERS
)
(
  input                  clk           , // Clock signal
  input                  reset_n       , // Asynchronous reset
  input                  on            , // Turnon/turn off signal
  input                  allow_ignition, // Allow ignition
  input  [1:0]           stroke        , // Stroke
                                         // stroke == 2'b00: INTAKE
                                         // stroke == 2'b01: COMPRESSION
                                         // stroke == 2'b10: COMBUSTION
                                         // stroke == 2'b11: EXHAUST
  input                  crank_tick    , // Crank tick
  input [CYLINDERS-1:0]  btdc_ready    , // BTDC gain enough for ignition
  output reg             ignite        , // Ignite
  output reg             cal_ignition    // Calculate ignition timing
);

// Declare states
localparam IDLE        = 3'b000,
           START       = 3'b001,
           CALCULATE   = 3'b010,
           WAITIGNITE  = 3'b011,
           IGNITE      = 3'b100,
           WAITINTAKE  = 3'b101;

// Intenal signals and variables
reg  [2:0] current_state       ,
           next_state          ; // Determine state

//-----------------------------------------------------------------
// Calculate ignition time
//-----------------------------------------------------------------

always @(posedge clk or negedge reset_n) begin : proc_cal_ignition
  if(~reset_n) begin
    cal_ignition <= 0;
  end else begin
    cal_ignition <= ((stroke == 2'b11) && (crank_tick == 1));
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
    IDLE: begin
      if (on) begin
        next_state = START;
      end
      else begin
        next_state = IDLE;
      end
    end

    START : begin
      next_state = CALCULATE;
    end

    CALCULATE : begin
      next_state = WAITIGNITE;
    end

    WAITIGNITE : begin
      if (allow_ignition & btdc_ready) begin
        next_state = IGNITE;
      end
      else begin
        next_state = WAITIGNITE;
      end
    end

    IGNITE : begin
      if (on) begin
        next_state = WAITINTAKE;
      end
      else begin
        next_state = IDLE;
      end
    end

    WAITINTAKE : begin
      if (stroke == 2'b00) begin
        next_state = START;
      end
      else begin
        next_state = WAITINTAKE;
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
  ignite        = 0;
  // cal_ignition  = 0;

  case (current_state)
    IDLE: begin
      if (on) begin
        // next_state = START;
        ignite        = 0;
        // cal_ignition  = 0;
      end
      else begin
        // next_state = IDLE;
        ignite        = 0;
        // cal_ignition  = 0;
      end
    end

    START : begin
      // next_state = CALCULATE;
      ignite        = 0   ;
      // cal_ignition  = 1'b1;
    end

    CALCULATE : begin
      // next_state = WAITIGNITE;
      ignite        = 0   ;
      // cal_ignition  = 1'b1;
    end

    WAITIGNITE : begin
      if (allow_ignition & btdc_ready) begin
        // next_state = IGNITE;
        ignite        = 1'b1;
        // cal_ignition  = 0   ;
      end
      else begin
        // next_state = WAITIGNITE;
        ignite        = 0;
        // cal_ignition  = 0;
      end
    end

    IGNITE : begin
      if (on) begin
        // next_state = WAITINTAKE;
        ignite        = 0;
        // cal_ignition  = 0;
      end
      else begin
        // next_state = IDLE;
        ignite        = 0;
        // cal_ignition  = 0;
      end
    end

    WAITINTAKE : begin
      if (stroke == 2'b00) begin
        // next_state = START;
        ignite        = 0;
        // cal_ignition  = 0;
      end
      else begin
        // next_state = WAITINTAKE;
        ignite        = 0;
        // cal_ignition  = 0;
      end
    end
  endcase
end

endmodule : ignition_control