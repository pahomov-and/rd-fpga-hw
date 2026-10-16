`timescale 1ns/1ps
// Тестбенч для sound_level: імітує процесор (AXI4-Lite master),
// пише відліки в IN, читає PEAK і LEVEL та звіряє з очікуваними.
module tb_sound_level;

  // Адреси регістрів модуля (див. README)
  localparam [3:0] ADDR_IN    = 4'h0;   // вхідний відлік, запис = один крок
  localparam [3:0] ADDR_N     = 4'h4;   // розмір вікна, 1–8
  localparam [3:0] ADDR_PEAK  = 4'h8;   // пік за модулем
  localparam [3:0] ADDR_LEVEL = 4'hC;   // рівень 0–8

  reg clk = 0;                  // такт 100 МГц
  reg rst_n = 0;                // скидання, активний 0

  // Канал AW - адреса запису
  reg  [3:0]  axi_awaddr  = 0;  // адреса регістра для запису
  reg         axi_awvalid = 0;  // master: адреса запису виставлена
  wire        axi_awready;      // slave: адресу запису прийнято

  // Канал W - дані запису
  reg  [31:0] axi_wdata   = 0;  // дані, що пишуться в регістр
  reg  [3:0]  axi_wstrb   = 0;  // маска байтів (4'hF = всі 4 байти)
  reg         axi_wvalid  = 0;  // master: дані запису виставлені
  wire        axi_wready;       // slave: дані запису прийнято

  // Канал B - відповідь на запис
  wire [1:0]  axi_bresp;        // статус запису (2'b00 = OKAY), тут не перевіряється
  wire        axi_bvalid;       // slave: відповідь на запис видана
  reg         axi_bready  = 0;  // master: готовий прийняти відповідь

  // Канал AR - адреса читання
  reg  [3:0]  axi_araddr  = 0;  // адреса регістра для читання
  reg         axi_arvalid = 0;  // master: адреса читання виставлена
  wire        axi_arready;      // slave: адресу читання прийнято

  // Канал R - дані читання
  wire [31:0] axi_rdata;        // прочитане значення регістра
  wire [1:0]  axi_rresp;        // статус читання (2'b00 = OKAY), тут не перевіряється
  wire        axi_rvalid;       // slave: прочитані дані видані
  reg         axi_rready  = 0;  // master: готовий прийняти дані

  wire [3:0]  level;            // вихід модуля на світлодіоди, рівень 0–8
  integer     error_count = 0;  // лічильник розбіжностей з очікуваним

  always #5 clk = ~clk;         // період 10 нс -> 100 МГц

// DUT - запакований IP (модуль-обгортка sound_level_0).
// Порти ті самі, але в нижньому регістрі та з префіксом s00_axi_;
// ширини зафіксовані при пакуванні, тому параметрів немає.
// Вибір DUT: без BROKEN - робочий IP, з BROKEN - копія з навмисною помилкою
// (Settings -> Simulation -> Verilog options -> Defines: BROKEN)
`ifdef BROKEN
  sound_level_broken_0 dut (
`else
  sound_level_0 dut (
`endif
        .level(level),
        .s00_axi_aclk(clk),
        .s00_axi_aresetn(rst_n),

        .s00_axi_awaddr(axi_awaddr),
        .s00_axi_awprot(3'b0),          // рівень захисту - не використовується
        .s00_axi_awvalid(axi_awvalid),
        .s00_axi_awready(axi_awready),
        .s00_axi_wdata(axi_wdata),
        .s00_axi_wstrb(axi_wstrb),
        .s00_axi_wvalid(axi_wvalid),
        .s00_axi_wready(axi_wready),
        .s00_axi_bresp(axi_bresp),
        .s00_axi_bvalid(axi_bvalid),
        .s00_axi_bready(axi_bready),

        .s00_axi_araddr(axi_araddr),
        .s00_axi_arprot(3'b0),          // рівень захисту - не використовується
        .s00_axi_arvalid(axi_arvalid),
        .s00_axi_arready(axi_arready),
        .s00_axi_rdata(axi_rdata),
        .s00_axi_rresp(axi_rresp),
        .s00_axi_rvalid(axi_rvalid),
        .s00_axi_rready(axi_rready)
  );

  // axi_write - одна транзакція запису AXI4-Lite:
  // виставити адресу й дані -> дочекатися AWREADY і WREADY -> прийняти BVALID
  task axi_write(input [3:0] addr, input [31:0] data); begin
    @(posedge clk);
    axi_awaddr <= addr;
    axi_awvalid <= 1;

    axi_wdata <= data;
    axi_wstrb <= 4'hF;
    axi_wvalid <= 1;

    axi_bready <= 1;
    
    wait(axi_awready && axi_wready); @(posedge clk);
    axi_awvalid <= 0;
    axi_wvalid <= 0;

    wait(axi_bvalid); @(posedge clk);
    axi_bready <= 0; @(posedge clk);
  end endtask

  // axi_read - одна транзакція читання AXI4-Lite:
  // виставити адресу -> дочекатися ARREADY -> забрати RDATA при RVALID
  task axi_read(input [3:0] addr, output [31:0] data); begin
    @(posedge clk);
    axi_araddr <= addr;
    axi_arvalid <= 1;
    axi_rready <= 1;

    wait(axi_arready); @(posedge clk);
    axi_arvalid <= 0;

    wait(axi_rvalid);
    data = axi_rdata; @(posedge clk);
    axi_rready <= 0; @(posedge clk);
  end endtask

  // reset_dut - скидання модуля між сценаріями (очищає вікно і N)
  task reset_dut; begin
    rst_n = 0; repeat(3) @(posedge clk);
    rst_n = 1; repeat(2) @(posedge clk);
  end endtask

  // check_step - один крок: записати відлік у IN, прочитати PEAK і LEVEL,
  // порівняти з очікуваними; при розбіжності вивести повідомлення з міткою
  task check_step(input [31:0]  sample,
                  input [31:0]  expected_peak,
                  input [31:0]  expected_level,
                  input [255:0] label);
    reg [31:0] actual_peak, actual_level; begin
      axi_write(ADDR_IN, sample);
      axi_read(ADDR_PEAK,  actual_peak);
      axi_read(ADDR_LEVEL, actual_level);

      if (actual_peak !== expected_peak || actual_level !== expected_level) begin
        error_count = error_count + 1;
        $display("%0s: PEAK=%0d want %0d | LEVEL=%0d want %0d",
                 label, actual_peak, expected_peak, actual_level, expected_level);
      end
    end endtask

  initial begin
    repeat(5) @(posedge clk);
    rst_n = 1; 
    repeat(2) @(posedge clk);   // скидання 5 тактів

    // Сценарій 1: вікно N=4 - пік тримається 4 кроки і випадає з вікна.
    // -300 -> 300 (h12C)  -> not -> hFED3 -> +1 -> hFED4
    // {16'hFFFF,16'hFED4}: молодші 16 біт = −300 -> модуль 300.
    
    $display("--- сценарій 1: N=4 ---");
    axi_write(ADDR_N, 4);
    check_step(32'd100,                100, 0, "s1 n0");
    check_step({16'hFFFF,16'hFED4},    300, 0, "s1 n1");
    check_step(32'd50,                 300, 0, "s1 n2");
    check_step(32'd20,                 300, 0, "s1 n3");
    check_step(32'd10,                 300, 0, "s1 n4");
    check_step(32'd5,                   50, 0, "s1 n5");

    // Сценарій 2: N=1 - PEAK = |поточний відлік|; межі 32767 і −32768 (-> 32768, LEVEL 8)
    $display("--- сценарій 2: N=1 ---");
    reset_dut;
    axi_write(ADDR_N, 1);
    check_step(32'd32767,            32767, 7, "s2 n0");
    check_step(32'h00008000,         32768, 8, "s2 n1"); // −32768

    // Сценарій 3: N=3 - нулі, від'ємні відліки (0xFFFFC000 = −16384), граничні рівні
    $display("--- сценарій 3: N=3 ---");
    reset_dut;
    axi_write(ADDR_N, 3);
    check_step(32'd0,                    0, 0, "s3 n0");
    check_step(32'd16384,            16384, 4, "s3 n1");
    check_step(32'd32767,            32767, 7, "s3 n2");
    check_step(32'd16384,            32767, 7, "s3 n3");
    check_step(32'd0,                32767, 7, "s3 n4");
    check_step(32'hFFFFC000,         16384, 4, "s3 n5"); // -16384
    check_step(32'h00008000,         32768, 8, "s3 n6"); // −32768

    if (error_count) $display("FAIL: %0d errors", error_count);
    else $display("PASS");

    $finish;
  end
endmodule
