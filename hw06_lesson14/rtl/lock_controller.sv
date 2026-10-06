import lock_pkg::*;

module lock_controller(
    input  logic        clk,
    input  logic        rst,
    input  logic [3:0]  digit_in,
    output logic        unlocked_led
);

    localparam logic [3:0] CODE0 = 4'd3; // Pass PI
    localparam logic [3:0] CODE1 = 4'd1;
    localparam logic [3:0] CODE2 = 4'd4;

    state_t state, next_state;

    // 1.1.1 ЛИШЕ реєстр стану (копіює next_state у state на фронті такту, нічого не вирішує);
    always_ff @(posedge clk or posedge rst) begin
        if (rst) state <= LOCKED;
        else state <= next_state;
    end

    // 1.1.2 ЛИШЕ логіка переходів (рахує next_state за поточним state і digit_in, нічого не виводить назовні);
    always_comb begin
        next_state = state;
        /* 
        Автомат переходить щотакту, як вимагає ДЗ.
        З реальною кнопкою це не працює: після debounce цифра утримується тисячі
        тактів, і наступний же такт поверне автомат у LOCKED. Перевірено симуляцією.
        Робочий замок вимагав би стробу "нова цифра" (CE) + ігнорування стану
        "кнопку не натиснуто". Тут не роблю, бо ДЗ фіксує поведінку інакше.
        */
        case (state)
            LOCKED:
                if (digit_in == CODE0) next_state = WAIT_D2;
                else next_state = LOCKED;
            WAIT_D2:
                if (digit_in == CODE1) next_state = WAIT_D3;
                else next_state = LOCKED;
            WAIT_D3:
                if (digit_in == CODE2) next_state = UNLOCKED;
                else next_state = LOCKED;
            UNLOCKED:
                next_state = UNLOCKED;
            default:
                next_state = LOCKED;
        endcase
    end

    // 1.1.3 ЛИШЕ логіка виходу (рахує unlocked_led із поточного state, не займається переходами)
    always_comb begin
        unlocked_led = (state == UNLOCKED);
    end

    ila_0 u_ila (
        .clk    (clk),
        .probe0 (state),
        .probe1 (next_state),
        .probe2 (digit_in),
        .probe3 (unlocked_led),
        .probe4 (rst)
    );
endmodule