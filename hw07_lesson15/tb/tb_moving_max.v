`timescale 1ns / 1ps

module tb_moving_max;

    reg         ap_clk;
    reg         ap_rst;
    reg         ap_start;
    wire        ap_done;
    wire        ap_idle;
    wire        ap_ready;
    wire [5:0]  in_data_address0;
    wire        in_data_ce0;
    reg [31:0]  in_data_q0;
    wire [5:0]  out_data_address0;
    wire        out_data_ce0;
    wire        out_data_we0;
    wire [31:0] out_data_d0;

    reg [31:0] mem_in [0:63];
    reg [31:0] mem_out [0:63];
    reg [31:0] ref_out [0:63];


    moving_max dut (
        .ap_clk(ap_clk), .ap_rst(ap_rst), .ap_start(ap_start),
        .ap_done(ap_done), .ap_idle(ap_idle), .ap_ready(ap_ready),
        .in_data_address0(in_data_address0),
        .in_data_ce0(in_data_ce0),
        .in_data_q0(in_data_q0),
        .out_data_address0(out_data_address0),
        .out_data_ce0(out_data_ce0),
        .out_data_we0(out_data_we0),
        .out_data_d0(out_data_d0)
    );

    initial ap_clk = 0;  always #5  ap_clk = ~ap_clk;

    integer i, j, n, m;
    integer errors;
    
    initial begin
        for (i = 0; i < 64; i = i + 1)
            mem_in[i] = (i == 20) ? 32'd1000 : 32'd0;
        
        // еталон
        for (n = 0; n < 64; n = n + 1) begin
            m = -2147483648; // INT_MIN
            for (j = (n > 7 ? n - 7 : 0); j <= n; j = j + 1)
                if ($signed(mem_in[j]) > m) m = $signed(mem_in[j]);
            ref_out[n] = m;
        end
    end


    always @(posedge ap_clk)
    if (in_data_ce0) in_data_q0 <= mem_in[in_data_address0];

    always @(posedge ap_clk)
    if (out_data_ce0 && out_data_we0) mem_out[out_data_address0] <= out_data_d0;

    initial begin
        ap_rst = 1;
        ap_start = 0;
        
        repeat (3) @(posedge ap_clk);

        ap_rst = 0;
        ap_start = 1;

        wait (ap_done);
        repeat(3) @(posedge ap_clk);

        errors = 0;
        for (i = 0; i < 64; i = i + 1) begin
            if (mem_out[i] !== ref_out[i]) begin
                errors = errors + 1;
                $display("n=%0d: got %0d, want %0d", i, $signed(mem_out[i]), $signed(ref_out[i]));
            end
        end

        if (errors == 0) $display("PASSED");
        else             $display("FAILED: %0d errors", errors);

        $finish;
    end
endmodule
