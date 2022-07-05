`include "../inc/hust_efi_defines.vh"

module stroke_transition_11 (
  input            clk            , // Clock signal
  input            reset_n        , // Asynchronous reset
  input            crank_tick     , // Crank tick
  input            on             , // Turn on/turn off signal
  input            ckp            , // CKP sensor's value
  input            crank_changed  , // Crank counter's value is changed or not
  output reg [1:0] stroke         , // Stroke
                                    // stroke == 2'b00: INTAKE
                                    // stroke == 2'b01: COMPRESSION
                                    // stroke == 2'b10: COMBUSTION
                                    // stroke == 2'b11: EXHAUST
  output reg       allow_injection, // Allow injection
  output reg       allow_ignition , // Allow ignition
  output reg       fic_on         , // Turn on/turn off FIC
  output reg       ic_on            // Turn on/turn off IC
);

// Declare states
localparam IDLE        = 3'b000,
           START       = 3'b001,
           INTAKE      = 3'b010,
           COMPRESSION = 3'b011,
           COMBUSTION  = 3'b100,
           EXHAUST     = 3'b101;

// Intenal signals and variables
reg  [2:0] current_state       ,
           next_state          ; // Determine state

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

always @(
  on,
  crank_tick,
  crank_changed,
  current_state
) begin : proc_next_state
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
      if (crank_changed) begin
        if (!ckp) begin
          next_state = COMPRESSION;
        end
        else begin
          next_state = INTAKE;
        end
      end
      else begin
        next_state = START;
      end
    end

    INTAKE : begin
      if (crank_tick & crank_changed) begin
        next_state = COMPRESSION;
      end
      else begin
        next_state = INTAKE;
      end
    end

    COMPRESSION : begin
      if (crank_tick & crank_changed) begin
        next_state = COMBUSTION;
      end
      else begin
        next_state = COMPRESSION;
      end
    end

    COMBUSTION : begin
      if (crank_tick & crank_changed) begin
        next_state = EXHAUST;
      end
      else begin
        next_state = COMBUSTION;
      end
    end

    EXHAUST : begin
      if (on) begin
        if (crank_tick & crank_changed) begin
          next_state = INTAKE;
        end
        else begin
          next_state = EXHAUST;
        end
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

always @(
  on,
  crank_tick,
  crank_changed,
  current_state
) begin : proc_output
  allow_injection = 0;
  allow_ignition  = 0;
  stroke          = 0;
  fic_on          = 0;
  ic_on           = 0;

  case (current_state)
    IDLE : begin
      if (on) begin
        // next_state = START;
        allow_injection = 0    ;
        allow_ignition  = 0    ;
        stroke          = 2'b00;
        fic_on          = 0    ;
        ic_on           = 0    ;
      end
      else begin
        // next_state = IDLE;
        allow_injection = 0    ;
        allow_ignition  = 0    ;
        stroke          = 2'b00;
        fic_on          = 0    ;
        ic_on           = 0    ;
      end
    end

    START : begin
      if (crank_changed) begin
        if (!ckp) begin
          // next_state = COMPRESSION;
          allow_injection = 0    ;
          allow_ignition  = 0    ;
          stroke          = 2'b01;
          fic_on          = 1'b1 ;
          ic_on           = 1'b1 ;
        end
        else begin
          // next_state = INTAKE;
          allow_injection = 1'b1 ;
          allow_ignition  = 0    ;
          stroke          = 2'b00;
          fic_on          = 1'b1 ;
          ic_on           = 1'b1 ;
        end
      end
      else begin
        allow_injection = 0    ;
        allow_ignition  = 0    ;
        stroke          = 2'b00;
        fic_on          = 0    ;
        ic_on           = 0    ;
      end
    end

    INTAKE : begin
      if (crank_tick & crank_changed) begin
        // next_state = COMPRESSION;
        allow_injection = 0    ;
        allow_ignition  = 0    ;
        stroke          = 2'b01;
        fic_on          = 1'b1 ;
        ic_on           = 1'b1 ;
      end
      else begin
        // next_state = INTAKE;
        allow_injection = 1'b1 ;
        allow_ignition  = 0    ;
        stroke          = 2'b00;
        fic_on          = 1'b1 ;
        ic_on           = 1'b1 ;
      end
    end

    COMPRESSION : begin
      if (crank_tick & crank_changed) begin
        // next_state = COMBUSTION;
        allow_injection = 0    ;
        allow_ignition  = 1'b1 ;
        stroke          = 2'b10;
        fic_on          = 1'b1 ;
        ic_on           = 1'b1 ;
      end
      else begin
        // next_state = COMPRESSION;
        allow_injection = 0    ;
        allow_ignition  = 0    ;
        stroke          = 2'b01;
        fic_on          = 1'b1 ;
        ic_on           = 1'b1 ;
      end
    end

    COMBUSTION : begin
      if (crank_tick & crank_changed) begin
        // next_state = EXHAUST;
        allow_injection = 0    ;
        allow_ignition  = 0    ;
        stroke          = 2'b11;
        fic_on          = 1'b1 ;
        ic_on           = 1'b1 ;
      end
      else begin
        // next_state = COMBUSTION;
        allow_injection = 0    ;
        allow_ignition  = 1'b1 ;
        stroke          = 2'b10;
        fic_on          = 1'b1 ;
        ic_on           = 1'b1 ;
      end
    end

    EXHAUST : begin
      if (on) begin
        if (crank_tick & crank_changed) begin
          // next_state = INTAKE;
          allow_injection = 1'b1 ;
          allow_ignition  = 0    ;
          stroke          = 2'b00;
          fic_on          = 1'b1 ;
          ic_on           = 1'b1 ;
        end
        else begin
          // next_state = EXHAUST;
          allow_injection = 0    ;
          allow_ignition  = 0    ;
          stroke          = 2'b11;
          fic_on          = 1'b1 ;
          ic_on           = 1'b1 ;
        end
      end
      else begin
        // next_state = IDLE;
        allow_injection = 0    ;
        allow_ignition  = 0    ;
        stroke          = 2'b00;
        fic_on          = 0    ;
        ic_on           = 0    ;
      end
    end
  endcase

end

endmodule : stroke_transition_11