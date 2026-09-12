module lock_top #(
    parameter integer COUNT_MAX = 200_000
)(
    input logic clk,
    input logic rst,
    input logic[3:0] digit_in,
    output logic unlocked_led
);

logic[3:0] digit_clean; 

debounce #(.COUNT_MAX(COUNT_MAX)) m_debounce(
    .clk(clk),
    .rst(rst),
    .btn_raw(digit_in),
    .btn_clean(digit_clean)
);

lock_controller m_lock_controller(
    .clk(clk),
    .rst(rst),
    .digit_in(digit_clean),
    .unlocked_led(unlocked_led)
);

 
endmodule
