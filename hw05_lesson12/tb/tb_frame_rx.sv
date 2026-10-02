`timescale 1ns / 1ps

module tb_frame_rx;

    localparam integer FRAME_WIDTH = 8;    // Маленький кадр
    localparam integer FRAME_HEIGHT = 4;    // 32 байта = 8 слів
    localparam int WORDS = FRAME_WIDTH * FRAME_HEIGHT / 4;   // 8
    int word_idx = 0;
    logic [31:0] expected_val;


    // до DUT
    logic        pix_clk, pix_valid;
    logic        pix_sof;
    logic [7:0]  pix_data;
    logic        aclk, aresetn, start;
    logic        m_axis_tready;
    wire [31:0]  m_axis_tdata;
    wire         m_axis_tvalid, m_axis_tlast;

    bit ok = 1;

    frame_rx #(
        .FRAME_WIDTH  (FRAME_WIDTH),
        .FRAME_HEIGHT (FRAME_HEIGHT)
    ) dut (
        .*
    );

    // два клока
    initial aclk    = 0;  always #10 aclk    = ~aclk;   // 50 МГц
    initial pix_clk = 0;  always #25 pix_clk = ~pix_clk; // 20 МГц

    task automatic send_byte(input logic [7:0] d, input logic sof = 1'b0);
        @(posedge pix_clk);
        pix_data <= d;
        pix_sof <= sof;
        pix_valid <= 1'b1;
        @(posedge pix_clk);
        pix_valid <= 1'b0;
        pix_sof <= 1'b0;
    endtask

    always @(posedge aclk) begin
        if (aresetn && m_axis_tvalid && m_axis_tready) begin
            expected_val = {8'(4*word_idx), 8'(4*word_idx+1), 8'(4*word_idx+2), 8'(4*word_idx+3)};
            
            if (m_axis_tdata !== expected_val) begin
                ok = 0;
                $error("слово %0d: прийнялось %08h, очікувалось %08h", word_idx, m_axis_tdata, expected_val);
            end

            if (m_axis_tlast !== (word_idx == WORDS-1)) begin
                ok = 0;
                $error("слово %0d: TLAST=%0b, очікувалось %0b",
                    word_idx, m_axis_tlast, (word_idx == WORDS-1));

            end
            
            
            word_idx++;
        end
    end

    logic [31:0] hold_data;
    logic hold_last, was_stalled = 0;

    // Паузи. Поки TVALID поднят, а TREADY ще не прийшов, ні TDATA, ні TLAST меняться не повинні
    always @(posedge aclk) begin
        if (aresetn && m_axis_tvalid && !m_axis_tready) begin
            if (was_stalled) begin
                if (m_axis_tdata !== hold_data || m_axis_tlast !== hold_last) begin
                    ok = 0;
                    $error("TDATA/TLAST змінились під час очікування TREADY");
                end
            end
            hold_data <= m_axis_tdata;
            hold_last <= m_axis_tlast;
            was_stalled <= 1;
        end else begin
            was_stalled <= 0;
        end
    end


    initial begin
        m_axis_tready = 0;
        @(posedge aresetn);
        forever begin
            @(posedge aclk);
            m_axis_tready <= ($urandom_range(0,3) != 0);   // готов приблизно в 3х тактах з 4х
        end
    end



    initial begin
        pix_valid = 0;
        pix_data = 0;
        start = 0;
        aresetn = 0;
        pix_sof = 0;

        repeat (10) @(posedge aclk);
        aresetn = 1;

        // Чекаємо поки XPM-FIFO закінчить свій сброс
        wait (dut.fifo_wr_rst_busy == 1'b0);
        repeat (5) @(posedge pix_clk);

        start = 1;
        wait (dut.armed);
        @(posedge pix_clk);

        // мусор
        repeat (5) send_byte(8'hFF);

        for (int i = 0; i < FRAME_WIDTH*FRAME_HEIGHT; i++)
            send_byte(i[7:0], i == 0);

        repeat (50) @(posedge aclk);

        if (word_idx != WORDS) begin
            ok = 0;
            $error("отримано %0d слів замість %0d", word_idx, WORDS);

        end

        if (dut.overflow) begin
            ok = 0;
            $error("FIFO overflow");
        end
        
        if(ok) $display("TEST PASSED");

        $finish;
    end


endmodule
