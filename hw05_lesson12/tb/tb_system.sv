`timescale 1ns / 1ps

module tb_system;

    logic        clk100, clk20;
    logic        reset_rtl_0;
    logic [0:0]  gpio_rtl_0_tri_i;
    logic [7:0]  pix_data_0;
    logic        pix_sof_0, pix_valid_0;

    design_1_wrapper dut (
        .diff_clock_rtl_0_clk_p (clk100),
        .diff_clock_rtl_0_clk_n (~clk100),
        .clk_20MHz              (clk20),
        .reset_rtl_0            (reset_rtl_0),
        .gpio_rtl_0_tri_i       (gpio_rtl_0_tri_i),
        .pix_data_0             (pix_data_0),
        .pix_sof_0              (pix_sof_0),
        .pix_valid_0            (pix_valid_0)
    );

    initial clk100 = 0;  always #5  clk100 = ~clk100;   // 100 МГц
    initial clk20  = 0;  always #25 clk20  = ~clk20;    // 20 МГц

    localparam int FRAME_BYTES = 320 * 200;

initial begin
    pix_valid_0 = 0;  pix_sof_0 = 0;  pix_data_0 = 0;
    @(posedge reset_rtl_0);
    repeat (100) @(posedge clk20);

    forever begin
        for (int i = 0; i < FRAME_BYTES; i++) begin
            @(posedge clk20);
            pix_data_0  <= i[7:0];
            pix_sof_0   <= (i == 0);
            pix_valid_0 <= 1'b1;
        end
        @(posedge clk20);
        pix_valid_0 <= 1'b0;
        pix_sof_0   <= 1'b0;
        repeat (20) @(posedge clk20);   // між кадровий інтервал
    end
end

initial begin
    reset_rtl_0      = 1'b0;
    gpio_rtl_0_tri_i = 1'b0;

    repeat (100) @(posedge clk100);
    reset_rtl_0 = 1'b1;

    repeat (30000) @(posedge clk100);   // ~300 мкс на старт
    gpio_rtl_0_tri_i = 1'b1;
    repeat (1000) @(posedge clk100);
    gpio_rtl_0_tri_i = 1'b0;
end


endmodule
