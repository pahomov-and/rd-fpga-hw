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

    initial $timeformat(-9, 1, " ns", 9);

    task automatic check_transition(
        input logic [3:0] digit_val,
        input state_t      expected_state,
        input string        step_name
    );
        digit_in = digit_val;
        @(posedge clk); #1;
        if (dut.state === expected_state)
            $display("[%0t] PASS: %s -> state=%s", $time, step_name, dut.state.name());
        else
            $display("[%0t] FAIL: %s -> expected %s, got %s",
                      $time, step_name, expected_state.name(), dut.state.name());
    endtask

    task automatic check_unlocked_led(
        input logic     expected_state,
        input string    txt
    );
        if (unlocked_led === expected_state)
            $display("[%0t] PASS: %s unlocked_led=%0b", $time, txt, unlocked_led);
        else
            $display("[%0t] FAIL: %s unlocked_led=%0b , should be %0b", $time, txt, unlocked_led, expected_state);
    endtask

    task automatic reset_controller();
        rst = 1;
        digit_in = 4'd0;
        @(posedge clk); #1;
        rst = 0;
        $display("[%0t] after reset: state=%s (expect LOCKED)", $time, dut.state.name());
    endtask

    initial begin
        reset_controller();
        
        // Правильна послідовність із 3 цифр
        check_transition(dut.CODE0, WAIT_D2,  "digit1 correct");
        check_transition(dut.CODE1, WAIT_D3,  "digit2 correct");
        check_transition(dut.CODE2, UNLOCKED, "digit3 correct");
        if (unlocked_led === 1'b1)
            $display("[%0t] PASS: unlocked_led=1 after correct sequence", $time);
        else
            $display("[%0t] FAIL: unlocked_led expected 1, got %0b", $time, unlocked_led);

        reset_controller();

        // Сценарії помилок
        $display("\n[%0t] Check: CODE0 Y -> CODE1 X -> CODE2 Y", $time);
        check_transition(dut.CODE0,     WAIT_D2, "digit1 correct");
        check_transition(dut.CODE1 + 1, LOCKED,  "digit2 WRONG -> back to LOCKED");
        check_transition(dut.CODE2,     LOCKED, "digit3 still LOCKED");
        check_unlocked_led(1'b0, "Led locked: ");


        reset_controller();
        $display("\n[%0t] Check: CODE0 X -> CODE1 Y -> CODE2 Y", $time);
        check_transition(dut.CODE0 + 1, LOCKED,  "digit1 WRONG -> back to LOCKED");
        check_transition(dut.CODE1,     LOCKED, "digit2 still LOCKED");
        check_transition(dut.CODE2,     LOCKED, "digit3 still LOCKED");
        check_unlocked_led(1'b0, "Led locked: ");

        reset_controller();
        $display("\n[%0t] Check: CODE0 Y -> CODE1 Y -> CODE2 X", $time);
        check_transition(dut.CODE0,     WAIT_D2,  "digit1 correct");
        check_transition(dut.CODE1,     WAIT_D3,  "digit2 correct");
        check_transition(dut.CODE2+1,   LOCKED, "digit3 WRONG -> back to LOCKED");
       check_unlocked_led(1'b0, "Led locked: ");


        $display("[%0t] Simulation finished", $time);
        $finish;
    end

endmodule