`include "../inc/hust_efi_defines.vh"

module stroke_transition #(
  parameter CYLINDERS = `CFG_CYLINDERS
)
(
  input                       clk            , // Clock signal
  input                       reset_n        , // Asynchronous reset
  input                       crank_tick     , // Crank tick
  input                       crank_changed  , // Crank counter's value is changed or not
  input                       on             , // Turn on/turn off signal
  input                       ckp            , // CKP sensor's value
  output [CYLINDERS-1:0][1:0] stroke         , // Stroke
  output [CYLINDERS-1:0]      allow_injection, // Allow injection
  output [CYLINDERS-1:0]      allow_ignition , // Allow ignition
  output [CYLINDERS-1:0]      fic_on         , // Turn on/turn off FIC
  output [CYLINDERS-1:0]      ic_on            // Turn on/turn off IC
);

generate
  case (CYLINDERS)
    3'b001 : begin
      stroke_transition_00 stc (
        .clk            (clk               ),
        .reset_n        (reset_n           ),
        .crank_tick     (crank_tick        ),
        .crank_changed  (crank_changed     ),
        .on             (on                ),
        .ckp            (ckp               ),
        .stroke         (stroke            ),
        .allow_injection(allow_injection   ),
        .allow_ignition (allow_ignition    ),
        .fic_on         (fic_on            ),
        .ic_on          (ic_on             ) 
      );
    end

    3'b010 : begin
      stroke_transition_00 stc00 (
        .clk            (clk               ),
        .reset_n        (reset_n           ),
        .crank_tick     (crank_tick        ),
        .crank_changed  (crank_changed     ),
        .on             (on                ),
        .ckp            (ckp               ),
        .stroke         (stroke[0]         ),
        .allow_injection(allow_injection[0]),
        .allow_ignition (allow_ignition [0]),
        .fic_on         (fic_on         [0]),
        .ic_on          (ic_on          [0]) 
      );

      stroke_transition_01 stc01 (
        .clk            (clk               ),
        .reset_n        (reset_n           ),
        .crank_tick     (crank_tick        ),
        .crank_changed  (crank_changed     ),
        .on             (on                ),
        .ckp            (ckp               ),
        .stroke         (stroke[1]         ),
        .allow_injection(allow_injection[1]),
        .allow_ignition (allow_ignition [1]),
        .fic_on         (fic_on         [1]),
        .ic_on          (ic_on          [1]) 
      );
    end

    3'b011 : begin
      stroke_transition_00 stc00 (
        .clk            (clk               ),
        .reset_n        (reset_n           ),
        .crank_tick     (crank_tick        ),
        .crank_changed  (crank_changed     ),
        .on             (on                ),
        .ckp            (ckp               ),
        .stroke         (stroke[0]         ),
        .allow_injection(allow_injection[0]),
        .allow_ignition (allow_ignition [0]),
        .fic_on         (fic_on         [0]),
        .ic_on          (ic_on          [0]) 
      );

      stroke_transition_10 stc10 (
        .clk            (clk               ),
        .reset_n        (reset_n           ),
        .crank_tick     (crank_tick        ),
        .crank_changed  (crank_changed     ),
        .on             (on                ),
        .ckp            (ckp               ),
        .stroke         (stroke[1]         ),
        .allow_injection(allow_injection[1]),
        .allow_ignition (allow_ignition [1]),
        .fic_on         (fic_on         [1]),
        .ic_on          (ic_on          [1]) 
      );

      stroke_transition_01 stc01 (
        .clk            (clk               ),
        .reset_n        (reset_n           ),
        .crank_tick     (crank_tick        ),
        .crank_changed  (crank_changed     ),
        .on             (on                ),
        .ckp            (ckp               ),
        .stroke         (stroke[2]         ),
        .allow_injection(allow_injection[2]),
        .allow_ignition (allow_ignition [2]),
        .fic_on         (fic_on         [2]),
        .ic_on          (ic_on          [2]) 
      );
    end

    3'b100 : begin
      stroke_transition_00 stc00 (
        .clk            (clk               ),
        .reset_n        (reset_n           ),
        .crank_tick     (crank_tick        ),
        .crank_changed  (crank_changed     ),
        .on             (on                ),
        .ckp            (ckp               ),
        .stroke         (stroke[0]         ),
        .allow_injection(allow_injection[0]),
        .allow_ignition (allow_ignition [0]),
        .fic_on         (fic_on         [0]),
        .ic_on          (ic_on          [0]) 
      );

      stroke_transition_11 stc11 (
        .clk            (clk               ),
        .reset_n        (reset_n           ),
        .crank_tick     (crank_tick        ),
        .crank_changed  (crank_changed     ),
        .on             (on                ),
        .ckp            (ckp               ),
        .stroke         (stroke[1]         ),
        .allow_injection(allow_injection[1]),
        .allow_ignition (allow_ignition [1]),
        .fic_on         (fic_on         [1]),
        .ic_on          (ic_on          [1]) 
      );

      stroke_transition_01 stc01 (
        .clk            (clk               ),
        .reset_n        (reset_n           ),
        .crank_tick     (crank_tick        ),
        .crank_changed  (crank_changed     ),
        .on             (on                ),
        .ckp            (ckp               ),
        .stroke         (stroke[2]         ),
        .allow_injection(allow_injection[2]),
        .allow_ignition (allow_ignition [2]),
        .fic_on         (fic_on         [2]),
        .ic_on          (ic_on          [2]) 
      );

      stroke_transition_10 stc10 (
        .clk            (clk               ),
        .reset_n        (reset_n           ),
        .crank_tick     (crank_tick        ),
        .crank_changed  (crank_changed     ),
        .on             (on                ),
        .ckp            (ckp               ),
        .stroke         (stroke[3]         ),
        .allow_injection(allow_injection[3]),
        .allow_ignition (allow_ignition [3]),
        .fic_on         (fic_on         [3]),
        .ic_on          (ic_on          [3]) 
      );
    end

    default : begin
      stroke_transition_00 stc (
        .clk            (clk               ),
        .reset_n        (reset_n           ),
        .crank_tick     (crank_tick        ),
        .crank_changed  (crank_changed     ),
        .on             (on                ),
        .ckp            (ckp               ),
        .stroke         (stroke            ),
        .allow_injection(allow_injection   ),
        .allow_ignition (allow_ignition    ),
        .fic_on         (fic_on            ),
        .ic_on          (ic_on             ) 
      );
    end
  endcase
endgenerate

endmodule : stroke_transition