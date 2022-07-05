`include "../inc/hust_efi_defines.vh"

module tb_fic;

reg                                 clk                ; // Clock signal
reg                                 reset_n            ; // Asynchronous reset active low
reg                                 ckp                ; // CKP sensor's value
reg                                 on                 ; // Turn on/turn off signal
wire                                crank_tick         ; // Check if crank counter == NUM_TEETH / 2 or NUM_TEETH
wire                                crank_changed      ; // Crank counter's value is changed or not
wire [$clog2(`CFG_NUM_TEETH)-1:0]   crank_counter      ; // Crank counter
wire [`CFG_CYCLE_COUNTER_WIDTH-1:0] crank_cycle_counter; // Counter crank cycle
wire                                cal_rpm            ; // Allow calculate RPM
wire                                cal_btdc           ; // Allow calculate BTDC

wire [`CFG_CYLINDERS-1:0][1:0]      stroke             ; // Stroke
wire [`CFG_CYLINDERS-1:0]           allow_injection    ; // Allow injection
wire [`CFG_CYLINDERS-1:0]           allow_ignition     ; // Allow ignition
wire [`CFG_CYLINDERS-1:0]           fic_on             ; // Turn on/turn off FIC
wire [`CFG_CYLINDERS-1:0]           ic_on              ; // Turn on/turn off IC

reg  [`CFG_CYLINDERS-1:0]           done               ; // Done injection
wire [`CFG_CYLINDERS-1:0]           inject             ; // Statrt inject
wire [`CFG_CYLINDERS-1:0]           cal_injection      ; // Calculate injection time
wire [`CFG_CYLINDERS-1:0]           update_table       ; // Update data table
wire [`CFG_CYLINDERS-1:0]           fuel_pump          ; // Turn on/turn off the fuel pump

crank_position_control cpc (
  .clk                (clk                ),
  .reset_n            (reset_n            ),
  .ckp                (ckp                ),
  .on                 (on                 ),
  .crank_tick         (crank_tick         ),
  .crank_counter      (crank_counter      ),
  .crank_cycle_counter(crank_cycle_counter),
  .crank_changed      (crank_changed      ),
  .cal_rpm            (cal_rpm            ),
  .cal_btdc           (cal_btdc           ) 
);

stroke_transition stc (
  .clk            (clk            ),
  .reset_n        (reset_n        ),
  .crank_tick     (crank_tick     ),
  .crank_changed  (crank_changed  ),
  .on             (on             ),
  .ckp            (ckp            ),
  .stroke         (stroke         ),
  .allow_injection(allow_injection),
  .allow_ignition (allow_ignition ),
  .fic_on         (fic_on         ),
  .ic_on          (ic_on          ) 
);

for (genvar i = 0; i < `CFG_CYLINDERS; i = i + 1) begin
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

initial begin
  clk = 0;
  reset_n = 0;
  on = 0;
  ckp = 1;
  done = 0;
end

always #4 begin
  clk = ~clk; // 125MHz
end

always #16666 begin
  @(negedge clk);
  ckp = $random();
end

always @(posedge allow_injection[0]) begin
  @(negedge clk);
  @(negedge clk);
  @(negedge clk);
  @(negedge clk);
  @(negedge clk);
  done[0] = 1;
  @(negedge clk);
  @(negedge clk);
  done[0] = 0;
end

always @(posedge allow_injection[1]) begin
  @(negedge clk);
  @(negedge clk);
  @(negedge clk);
  @(negedge clk);
  @(negedge clk);
  done[1] = 1;
  @(negedge clk);
  @(negedge clk);
  done[1] = 0;
end

always @(posedge allow_injection[2]) begin
  @(negedge clk);
  @(negedge clk);
  @(negedge clk);
  @(negedge clk);
  @(negedge clk);
  done[2] = 1;
  @(negedge clk);
  @(negedge clk);
  done[2] = 0;
end

always @(posedge allow_injection[3]) begin
  @(negedge clk);
  @(negedge clk);
  @(negedge clk);
  @(negedge clk);
  @(negedge clk);
  done[3] = 1;
  @(negedge clk);
  @(negedge clk);
  done[3] = 0;
end

initial begin
  @(negedge clk) begin
    reset_n = 1;
  end

  @(negedge clk) begin
    on <= 1;
  end

  #11000000;
  @(posedge clk) begin
    on <= 0;
  end
  #1000000;
  $stop();

end

endmodule : tb_fic