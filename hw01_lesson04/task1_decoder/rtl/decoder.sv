module decoder #(parameter WIDTH=4) (
    input logic en,
    input logic [$clog2(WIDTH)-1:0] sel,
    output logic [WIDTH-1:0] y
);
    always_comb begin
        y = '0;
        if (en) y[sel] = 1'b1;
    end
endmodule

module decoder_shift #(parameter WIDTH=4) (
    input logic en,
    input logic [$clog2(WIDTH)-1:0] sel,
    output logic [WIDTH-1:0] y
);
   assign y = en ? WIDTH'(1) << sel : '0 ; // WIDTH'(1) == {{(WIDTH-1){1'b0}}, 1'b1}

endmodule