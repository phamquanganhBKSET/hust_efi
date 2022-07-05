`include "../inc/hust_efi_defines.vh"

module tb_hust_efi;

reg                                 clk                ; // Clock signal
reg                                 reset_n            ; // Asynchronous reset active low
reg                                 efi_on             ; // Turn on/turn off signal for Crank State machine and Stroke State Machine
reg                                 ckp                ; // CKP sensor's value
reg                                 on                 ; // Turn on/turn off signal
reg  [`CFG_CYLINDERS-1:0]           done               ; // Done injection
reg  [`CFG_CYLINDERS-1:0]           btdc_ready         ; // BTDC gain enough for ignition
wire [$clog2(`CFG_NUM_TEETH)-1:0]   crank_counter      ; // Crank counter
wire [`CFG_CYCLE_COUNTER_WIDTH-1:0] crank_cycle_counter; // Counter crank cycle
wire                                cal_rpm            ; // Allow calculate RPM
wire                                cal_btdc           ; // Allow calculate BTDC
wire                                cal_injection      ; // Calculate injection time
wire                                cal_ignition       ; // Calculate ignition timing
wire [`CFG_CYLINDERS-1:0]           inject             ; // Statrt inject
wire [`CFG_CYLINDERS-1:0]           ignite             ; // Ignite
wire [`CFG_CYLINDERS-1:0]           update_table       ; // Update data table
wire [`CFG_CYLINDERS-1:0]           fuel_pump          ; // Turn on/turn off the fuel pump

hust_efi hust_efi_inst (
  .clk                (clk                ),
  .reset_n            (reset_n            ),
  .efi_on             (on                 ),
  .ckp                (ckp                ),
  .done               (done               ),
  .btdc_ready         (btdc_ready         ),
  .crank_counter      (crank_counter      ),
  .crank_cycle_counter(crank_cycle_counter),
  .cal_rpm            (cal_rpm            ),
  .cal_btdc           (cal_btdc           ),
  .cal_injection      (cal_injection      ),
  .cal_ignition       (cal_ignition       ),
  .inject             (inject             ),
  .ignite             (ignite             ),
  .update_table       (update_table       ),
  .fuel_pump          (fuel_pump          ) 
);

initial begin
  clk = 0;
  reset_n = 0;
  efi_on = 0;
  ckp = 1;
  done = '1;
  btdc_ready = '1;
end

always #4 begin
  clk = ~clk; // 125MHz
end

always #16666 begin
  @(negedge clk);
  ckp = $random();
end

initial begin
  @(negedge clk) begin
    reset_n = 1;
  end

  @(negedge clk) begin
    efi_on = 1;
  end

  #11000000;

  @(posedge clk) begin
    on <= 0;
  end

  #1000000;
  $stop();

end

endmodule : tb_hust_efi