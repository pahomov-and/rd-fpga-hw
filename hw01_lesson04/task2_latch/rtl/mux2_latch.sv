module mux2_latch (
    input logic a,
    input logic b,
    input logic sel,
    output logic y
);

always_comb begin
    case (sel)
        1'b0: y = a;
    endcase
    
end

endmodule
