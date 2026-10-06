
module debounce #(
        parameter integer WIDTH_DATA = 4,
        parameter integer COUNT_MAX = 200_000
    ) (
        input   logic clk,
        input   logic[WIDTH_DATA - 1:0] btn_raw,
        input   logic rst, // Обов'язково треба ініціалізувати btn_clean counter бо буде стан X
        output  logic[WIDTH_DATA - 1:0] btn_clean
    );

    logic [$clog2(COUNT_MAX+1)-1:0] counter;

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            btn_clean <= '0;
            counter <= 0;
        end else if (btn_raw != btn_clean) begin
            counter <= counter + 1;
            if (counter == COUNT_MAX) begin
                btn_clean <= btn_raw;
                counter <= '0;
            end
        end else counter <= 0;
    end
endmodule
