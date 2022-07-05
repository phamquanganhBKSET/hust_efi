`include "../inc/hust_efi_defines.vh"

module tb_crank;

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

initial begin
  clk = 0;
  reset_n = 0;
  on = 0;
  ckp = 1;
end

always #4 begin
  clk = ~clk; // 125MHz
end

always #16666 begin
  @(negedge clk);
  ckp <= $random();
end

initial begin
  @(negedge clk) begin
    reset_n <= 1;
  end

  @(negedge clk) begin
    on <= 1;
  end

  #1000000;
  @(posedge clk) begin
    on <= 0;
  end
  #1000000;
  $stop();

end

endmodule : tb_crank