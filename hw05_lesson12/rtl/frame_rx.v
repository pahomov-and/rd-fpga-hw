`default_nettype none

module frame_rx #(
    parameter DATA_WIDTH = 32,
    parameter integer FRAME_WIDTH = 320,
    parameter integer FRAME_HEIGHT = 200
) (
    // Вхідний домен
    input wire         pix_clk,
    input wire [7:0]   pix_data,
    input wire         pix_valid,
    input wire         pix_sof,


    // AXI домен
    input  wire        aclk,
    input  wire        aresetn,

    input  wire        start,

    // ---- Master side (вихід потоку) ----
    output wire [DATA_WIDTH-1:0]       m_axis_tdata,
    output wire                        m_axis_tvalid,
    input  wire                        m_axis_tready,
    output wire                        m_axis_tlast

);

localparam integer WORDS_PER_FRAME = FRAME_WIDTH * FRAME_HEIGHT / 4;
localparam integer CNT_W = $clog2(WORDS_PER_FRAME);

reg [CNT_W-1:0] rd_word_count = 0;
reg [CNT_W-1:0] wr_word_count = 0;
reg armed = 0;
reg capturing = 0;

wire fifo_wr_rst_busy, fifo_full;
reg word_ready = 0;
wire fifo_wr_en = ~fifo_wr_rst_busy && word_ready && ~fifo_full;
wire wr_frame_done = fifo_wr_en && (wr_word_count == WORDS_PER_FRAME - 1);
wire frame_begin = armed && !capturing && pix_valid && pix_sof;
wire capture_en  = (capturing || frame_begin) && pix_valid;



reg [1:0] counter_bytes = 0;
reg [DATA_WIDTH-1:0] make_word  = 0;
reg overflow = 0;


wire [DATA_WIDTH-1:0] fifo_dout;
wire                  fifo_empty;
wire                  fifo_rd_en;

assign m_axis_tvalid = ~fifo_empty;
assign fifo_rd_en    = m_axis_tvalid & m_axis_tready;
assign m_axis_tdata  = fifo_dout;
assign m_axis_tlast = (rd_word_count == WORDS_PER_FRAME - 1);




xpm_fifo_async #(
    .READ_MODE          ("fwft"),   // важливо, ...
    .FIFO_READ_LATENCY  (0),
    .CDC_SYNC_STAGES    (2),
    .WRITE_DATA_WIDTH   (DATA_WIDTH),
    .READ_DATA_WIDTH    (DATA_WIDTH),
    .FIFO_WRITE_DEPTH   (512),
    .FIFO_MEMORY_TYPE   ("block"),
    .SIM_ASSERT_CHK     (1)
    ) fifo (
    // Пишемо, домен pix_clk
    .rst    (~aresetn),
    .wr_clk (pix_clk),
    .wr_en        (fifo_wr_en),
    .din          (make_word),
    .full         (fifo_full),
    .wr_rst_busy  (fifo_wr_rst_busy),


    // Читання, домен aclk
    .rd_clk       (aclk),
    .rd_en        (fifo_rd_en),
    .dout         (fifo_dout),
    .empty        (fifo_empty),

    .sleep(1'b0), .injectsbiterr(1'b0), .injectdbiterr(1'b0)

);

reg [1:0] rst_sync_q;
reg [2:0] start_sync_q;

wire pix_aresetn = rst_sync_q[1];
wire start_rise = start_sync_q[1] & ~start_sync_q[2];

always @(posedge pix_clk or negedge aresetn) begin
    if (!aresetn) rst_sync_q <= 2'b00;
    else          rst_sync_q <= {rst_sync_q[0], 1'b1};
end


always @(posedge pix_clk) begin
    if (!pix_aresetn) start_sync_q <= 3'b000;
    else start_sync_q <= {start_sync_q[1:0], start};
end



always @(posedge pix_clk) begin

    if (!pix_aresetn) begin
        counter_bytes <= 0;
        word_ready <= 0;
        armed <= 0;
        capturing <= 0;
        wr_word_count <= 0;
        overflow <= 0;
    end else begin
        word_ready <= 0;

        if (word_ready && !fifo_wr_en) overflow <= 1; // Add if (dut.overflow) $error("FIFO overflow: загублен піксель");

        if (start_rise) begin
            armed <= 1;
            capturing     <= 0;
            wr_word_count <= 0;
            counter_bytes <= 0;
            overflow <= 0;
        end else if (wr_frame_done) begin
            armed <= 0;
            capturing <= 0;
        end else if (fifo_wr_en) wr_word_count <= wr_word_count + 1;


        if (capture_en) begin
            make_word <= {make_word[DATA_WIDTH-9:0], pix_data}; // перший байт старшим
            // make_word <= {pix_data, make_word[DATA_WIDTH-1:8]}; // перший байт молодшим
            counter_bytes <= frame_begin ? 2'd1 : counter_bytes + 1'b1; 

            if (frame_begin) begin
                capturing <= 1'b1;
                wr_word_count <= 0;
            end else if (counter_bytes == 2'd3) begin
                word_ready <= 1'b1;
            end
        end

    end
end

always @(posedge aclk) begin
    if (!aresetn)
        rd_word_count <= 0;
    else if (fifo_rd_en)
        rd_word_count <= m_axis_tlast ? 0 : rd_word_count + 1'b1;
end


endmodule
`default_nettype wire
