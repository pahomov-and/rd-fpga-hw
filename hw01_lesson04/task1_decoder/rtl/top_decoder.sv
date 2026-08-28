module top_decoder (
    input logic en,
    input logic [1:0] sel4,
    input logic [2:0] sel8,
    output logic [3:0] y4, y4_sh,
    output logic [7:0] y8, y8_sh
);
    decoder #(.WIDTH(4)) u_dec4 (.en(en), .sel(sel4), .y(y4));
    decoder #(.WIDTH(8)) u_dec8 (.en(en), .sel(sel8), .y(y8));

    decoder_shift #(.WIDTH(4)) u_dec_sh_4 (.en(en), .sel(sel4), .y(y4_sh));
    decoder_shift #(.WIDTH(8)) u_dec_sh_8 (.en(en), .sel(sel8), .y(y8_sh));
    
endmodule