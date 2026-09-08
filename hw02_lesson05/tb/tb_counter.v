// 2. НАПИСАТИ TESTBENCH ДЛЯ COUNTER
module tb_counter;
    reg        clk;
    reg        rst;
    reg        load;
    reg [3:0]  data_in;
    reg        en;
    reg        up_down;
    wire [3:0] count;


    counter dut (
        .clk(clk),
        .rst(rst),
        .load(load),
        .data_in(data_in),
        .en(en),
        .up_down(up_down),
        .count(count)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        /* 9. ЗНАЙТИ X-СТАН У Wave window
          До першого скидання регістр count ще не отримував жодного значення. 
          У симуляції регістр стартує не з нуля, а в невизначеному стані X,
          визначеним він стає лише після спрацювання reset або завантаження.
        */
        //load = 0;
        //data_in = 4'd0;
        //en = 0;
        //up_down = 1;
        //rst = 0; // X -> 0, це НЕ posedge
        #3;

        // 3. ПЕРЕВІРИТИ ЗАВАНТАЖЕННЯ (LOAD)
        rst = 1;
        @(posedge clk); #1;
        rst = 0;

        load = 1;
        data_in = 4'd10;
        @(posedge clk); #1;
        load = 0;

        check_count(4'd10, "load 10");

        // 4. ПЕРЕВІРИТИ РАХУНОК ВГОРУ, ВКЛЮЧНО З ПЕРЕХОДОМ ЧЕРЕЗ МЕЖУ
        en = 1;
        up_down = 1;

        repeat (3) @(posedge clk);  #1;
        
        check_count(4'd13, "up x3 -> 13");

        repeat (3) @(posedge clk);  #1;

        check_count(4'd0, "up x3 -> 0");

        // 5. ПЕРЕВІРИТИ УТРИМАННЯ ЗНАЧЕННЯ (EN=0)
        en = 0;

        repeat (2) @(posedge clk);  #1;

        check_count(4'd0, "up x2 en=0");

        // 6. ПЕРЕВІРИТИ РАХУНОК ВНИЗ ІЗ ПЕРЕХОДОМ ЧЕРЕЗ МЕЖУ
        en = 1;
        up_down = 0;

        @(posedge clk);  #1;

        check_count(4'd15, "down x1 wrap 0 -> 15");

        // 7. ПЕРЕВІРИТИ ПРІОРИТЕТ LOAD НАД EN
        load = 1;
        data_in = 4'd5;
        en = 1;
        up_down = 1;

        @(posedge clk);  #1;

        check_count(4'd5, "up x1 load priority over en");

        // БОНУС (ОПЦІЙНО)

        load = 1;
        data_in = 4'd8;
        
        @(posedge clk);  #1;

        load = 0;
        en = 1;
        up_down = 0;

        @(posedge clk);  #1;

        check_count(4'd7, "load 8, down x1 -> 7");


        #3;
        $finish;
    end


task automatic check_count (input [3:0] expected,  input [8*32:1] name);
  if (count === expected) $display("PASS: %0s", name);
        else $display("FAIL: %0s (expected %0d, got %0d)", name, expected, count);
endtask

endmodule