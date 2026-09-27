`timescale 1ns / 1ps

module tb_design_1;

    logic       clk_100MHz;
    logic       reset_rtl_0;
    logic [3:0] btn_tri_i;
    logic [1:0] sw_tri_i;
    wire  [3:0] led_tri_o;

    // Масштаб часу sim-прошивки (1 ns)
    localparam LED_STEP   = 400_000;            // 400 мкс, шаг дорожки
    localparam POLL_PER   =  20_000;            //  20 мкс, період опроса
    localparam DEBOUNCE_W = 10 * POLL_PER;      // 200 мкс, окно антидребезга
    localparam HOLD       =  2 * DEBOUNCE_W;    // 400 мкс, тримати з запасом

    design_1_wrapper dut (
        .clk_100MHz  (clk_100MHz),
        .reset_rtl_0 (reset_rtl_0),
        .btn_tri_i   (btn_tri_i),
        .sw_tri_i    (sw_tri_i),
        .led_tri_o   (led_tri_o)
    );

    // 100 МГц
    initial clk_100MHz = 1'b0;
    always #5 clk_100MHz = ~clk_100MHz;

    int led_changes = 0;

    task automatic press_button(input int idx);
        btn_tri_i[idx] = 1'b1;   // тільки свій біт
        #(HOLD);
        btn_tri_i[idx] = 1'b0;
        #(HOLD);
    endtask

    // сценарій 
    initial begin
        $timeformat(-6, 1, " us", 12);

        btn_tri_i   = '0;           // не лишати в X: прошивка читає GPIO одразу
        sw_tri_i    = 2'b01;        // sw0 = 1 -> рух вліво
        reset_rtl_0 = 1'b0;         // ext_reset_in активний НИЗЬКИЙ
        #1000;
        reset_rtl_0 = 1'b1;

        wait (led_tri_o == 4'b0001);            // перший реальний крок доріжки
        $display("\n%t  firmware is running", $time);

        repeat (4) @(led_tri_o);                // базова швидкість, 400 мкс

        $display("\n--- btn0: faster ---");
        press_button(0);
        repeat (4) @(led_tri_o);                // 360 мкс

        $display("\n--- btn1: slower ---");
        press_button(1);
        repeat (4) @(led_tri_o);                // знову 400 мкс

        $display("\n--- sw0 = 0: direction right ---");
        sw_tri_i[0] = 1'b0;
        repeat (4) @(led_tri_o);

        $display("\n--- btn2: stop ---");
        press_button(2);
        led_changes = 0;
        #(2 * LED_STEP); // єдине фіксоване очікування
        if (led_changes != 0) $error("LED still running after btn2");
        else $display("%t  stopped OK", $time);

        $display("\n--- btn2: resume ---");
        press_button(2);
        repeat (4) @(led_tri_o);

        $display("\nTEST DONE");
        $finish;
    end

    // лог змін led_tri_o
    time t_prev = 0;

    always @(led_tri_o) if (!$isunknown(led_tri_o)) begin   // X/Z на скиданні пропускаємо
        led_changes++;
        $display("%t  led = %b   dt =%t", $time, led_tri_o, $time - t_prev);
        t_prev = $time;
    end

endmodule
