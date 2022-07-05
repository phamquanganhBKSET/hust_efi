`include "../inc/hust_efi_defines.vh"

module fuel_injection_control (
  input       clk            , // Clock signal
  input       reset_n        , // Asynchronous reset
  input       on             , // Turn on/turn off signal
  input       done           , // Done injection
  input [1:0] stroke         , // Stroke
                               // stroke == 2'b00: INTAKE
                               // stroke == 2'b01: COMPRESSION
                               // stroke == 2'b10: COMBUSTION
                               // stroke == 2'b11: EXHAUST
  input       crank_tick     , // Crank tick
  input       allow_injection, // Allow injection
  output reg  inject         , // Statrt inject
  output reg  cal_injection  , // Calculate injection time
  output reg  update_table   , // Update data table
  output reg  fuel_pump        // Turn on/turn off the fuel pump
);

// Declare states
localparam IDLE        = 3'b000,
           START       = 3'b001,
           CALCULATE   = 3'b010,
           WAITINJECT  = 3'b011,
           INJECT      = 3'b100,
           WAITUPDATE  = 3'b101,
           UPDATE      = 3'b110;

// Intenal signals and variables
reg  [2:0] current_state       ,
           next_state          ; // Determine state

//-----------------------------------------------------------------
// Update table
//-----------------------------------------------------------------

always @(posedge clk or negedge reset_n) begin : proc_update_table
  if(~reset_n) begin
    update_table <= 0;
  end else begin
    update_table <= ((stroke == 2'b11) && (crank_tick == 1));
  end
end

//-----------------------------------------------------------------
// Calculate injection time
//-----------------------------------------------------------------

always @(posedge clk or negedge reset_n) begin : proc_cal_injection
  if(~reset_n) begin
    cal_injection <= 0;
  end else begin
    cal_injection <= ((stroke == 2'b00) && (crank_tick == 1));
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
      next_state = CALCULATE;
    end

    CALCULATE : begin
      next_state = WAITINJECT;
    end

    WAITINJECT : begin
      if (allow_injection) begin
        next_state = INJECT;
      end
      else begin
        next_state = WAITINJECT;
      end
    end

    INJECT : begin
      if (done) begin
        next_state = WAITUPDATE;
      end
      else begin
        next_state = INJECT;
      end
    end

    WAITUPDATE : begin
      if (stroke == 2'b11) begin
        next_state = UPDATE;
      end
      else begin
        next_state = WAITUPDATE;
      end
    end

    UPDATE : begin
      if (on) begin
        next_state = START;
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
  inject        = 0;
  fuel_pump     = 0;

  case (current_state)
    IDLE : begin
      if (on) begin
        // next_state = START;
        inject        = 0   ;
        fuel_pump     = 1'b1;
      end
      else begin
        // next_state = IDLE;
        inject        = 0;
        fuel_pump     = 0;
      end
    end

    START : begin
      // next_state = CALCULATE;
      inject        = 0   ;
      fuel_pump     = 1'b1;
    end

    CALCULATE : begin
      // next_state = WAITINJECT;
      inject        = 0   ;
      fuel_pump     = 1'b1;
    end

    WAITINJECT : begin
      if (allow_injection) begin
        // next_state = INJECT;
        inject        = 1'b1;
        fuel_pump     = 1'b1;
      end
      else begin
        // next_state = WAITINJECT;
        inject        = 0   ;
        fuel_pump     = 1'b1;
      end
    end

    INJECT : begin
      if (done) begin
        // next_state = WAITUPDATE;
        inject        = 0   ;
        fuel_pump     = 1'b1;
      end
      else begin
        // next_state = INJECT;
        inject        = 1'b1;
        fuel_pump     = 1'b1;
      end
    end

    WAITUPDATE : begin
      if (stroke == 2'b11) begin
        // next_state = UPDATE;
        inject        = 0   ;
        fuel_pump     = 1'b1;
      end
      else begin
        // next_state = WAITUPDATE;
        inject        = 0   ;
        fuel_pump     = 1'b1;
      end
    end

    UPDATE : begin
      // next_state = START;
      inject        = 0   ;
      fuel_pump     = 1'b1;
    end
  endcase
end

endmodule : fuel_injection_control