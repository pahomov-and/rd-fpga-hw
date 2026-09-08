// 1. НАПИСАТИ МОДУЛЬ COUNTER
module counter (
    input  wire       clk,
    input  wire       rst,
    input  wire       load,
    input  wire [3:0] data_in,
    input  wire       en,
    input  wire       up_down,
    output reg  [3:0] count
);

 
always @(posedge clk or posedge rst)
begin
    if (rst) begin
        count <= 'b0;
    end else if (load) begin
        count <= data_in;
    end else if (en && up_down)  begin
        count <= count + 1'b1;
    end else if (en && !up_down)  begin
        count <= count - 1'b1;
    end

end

endmodule