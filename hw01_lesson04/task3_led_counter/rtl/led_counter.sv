module led_counter #(parameter WIDTH = 4) (
    input logic clock,
    input logic reset,
    output logic[WIDTH-1:0] leds
);

logic[WIDTH-1:0] cnt;

always_ff @( posedge clock ) 
begin
    if (reset) cnt <= '0;
    else cnt <= cnt + 1'b1;
    
end

assign leds = cnt;
    
endmodule