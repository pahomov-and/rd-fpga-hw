/* 1.2 Написати testbench: правильна послідовність із 3 цифр
   (перевірка кожного переходу окремо: LOCKED->WAIT_D2,
   WAIT_D2->WAIT_D3, WAIT_D3->UNLOCKED) І сценарій помилки
   (неправильна цифра на будь-якому кроці -> повернення
   в LOCKED).
*/

import lock_pkg::*;

module tb_lock_controller;
    logic        clk;
    logic        rst;
    logic [3:0]  digit_in;
    logic        unlocked_led;

    lock_controller dut (
        .clk(clk),
        .rst(rst),
        .digit_in(digit_in),
        .unlocked_led(unlocked_led)

    );

    initial clk = 0;
    always #5 clk = ~clk;

    task automatic check_transition(
        input logic [3:0] digit_val,
        input state_t      expected_state,
        input string        step_name
    );
        digit_in = digit_val;
        @(posedge clk); #1;
        if (dut.state === expected_state)
            $display("[%0t ns] PASS: %-28s -> state=%s", $time, step_name, dut.state.name());
        else
            $display("[%0t ns] FAIL: %-28s -> expected %s, got %s",
                      $time, step_name, expected_state.name(), dut.state.name());
    endtask

    task automatic reset_controller();
        rst = 1;
        digit_in = 4'd0;
        @(posedge clk); #1;
        rst = 0;
        $display("[%0t ns] after reset: state=%s (expect LOCKED)", $time, dut.state.name());
    endtask

    initial begin
        reset_controller();
        
        // Правильна послідовність із 3 цифр
        check_transition(dut.CODE0, WAIT_D2,  "digit1 correct");
        check_transition(dut.CODE1, WAIT_D3,  "digit2 correct");
        check_transition(dut.CODE2, UNLOCKED, "digit3 correct");
        if (unlocked_led === 1'b1)
            $display("[%0t ns] PASS: unlocked_led=1 after correct sequence", $time);
        else
            $display("[%0t ns] FAIL: unlocked_led expected 1, got %0b", $time, unlocked_led);

        reset_controller();

        // Сценарій помилки
        check_transition(dut.CODE0,     WAIT_D2, "digit1 correct");
        check_transition(dut.CODE1 + 1, LOCKED,  "digit2 WRONG -> back to LOCKED");

        $display("[%0t ns] Simulation finished", $time);
        $finish;
    end

endmodule