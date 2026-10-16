`timescale 1ns/1ps
// Системний тестбенч: процесор, шина, модуль і дисплей разом.

module tb_sound_sys;

	// Вхідний такт 125 МГц: на платі він приходить від Ethernet-мікросхеми.
	// Усередині clk_wiz ділить його до 100 МГц, на яких працює система.
	localparam CLK_HALF = 4;          // 8 нс period
	localparam TIMEOUT  = 2_000_000;  // 2 мс - із запасом на старт BSP

	reg clk   = 1'b0;
	reg rst_n = 1'b0;
	always #CLK_HALF clk = ~clk;

	wire [3:0] level;

	// Лінії I2C двонаправлені: в обгортці стоять IOBUF, тож назовні йдуть
	// inout. Без підтяжок вони лишаться в z, і контролер не побачить
	// навіть того, що виставив сам.
	wire iic_scl_io, iic_sda_io;
	pullup (iic_scl_io);
	pullup (iic_sda_io);

	sound_sys_wrapper dut (
		.sys_clk    (clk),
		.reset_n    (rst_n),
		.level      (level),
		.iic_scl_io (iic_scl_io),
		.iic_sda_io (iic_sda_io)
	);

	i2c_slave_model #(.ADDR(7'h3C)) display (
		.scl (iic_scl_io),
		.sda (iic_sda_io)
	);

	//  спостереження

	// Очікувана послідовність рівнів. Програма жене пилку кроком 4096 при
	// N=1, тож рівень це |x| >> 12: піднімається по одиниці, на 32767
	// лишається 7, і лише -32768 дає 8. Далі вниз.
	//
	// Переходів саме 15, а не 17 за числом відліків: нульовий рівень на
	// початку - це вихідний стан, а не зміна, і на 32767 рівень лишається
	// тим самим 7, що й на 28672. Повернення в нуль тут не буде: збірка
	// йде з SIMULATION, тобто пилка проходить рівно один раз.
	localparam N_EXP = 15;
	reg [3:0] expected [0:N_EXP-1];
	initial begin
		expected[0]  = 4'd1;  expected[1]  = 4'd2;
		expected[2]  = 4'd3;  expected[3]  = 4'd4;
		expected[4]  = 4'd5;  expected[5]  = 4'd6;
		expected[6]  = 4'd7;  expected[7]  = 4'd8;
		expected[8]  = 4'd7;  expected[9]  = 4'd6;
		expected[10] = 4'd5;  expected[11] = 4'd4;
		expected[12] = 4'd3;  expected[13] = 4'd2;
		expected[14] = 4'd1;
	end

	reg  [3:0] level_q = 4'd0;
	integer    changes = 0;
	integer    errors  = 0;

	always @(posedge clk) begin
		if (rst_n && level !== level_q) begin
			if (changes < N_EXP) begin
				if (level === expected[changes])
					$display("%0t  level = %0d", $time, level);
				else begin
					$display("%0t  level = %0d, очікувався %0d  <-- ПОМИЛКА",
					         $time, level, expected[changes]);
					errors = errors + 1;
				end
			end
			changes = changes + 1;
			level_q <= level;
		end
		else if (!rst_n) begin
			level_q <= 4'd0;
		end
	end

	// прогін

	initial begin : main
		$display("--- скидання ---");
		rst_n = 1'b0;
		repeat (20) @(posedge clk);
		rst_n = 1'b1;
		$display("%0t  скидання знято, чекаємо на MicroBlaze", $time);

		// Чекаємо або повного проходу пилки, або тайм-ауту
		while (changes < N_EXP && $time < TIMEOUT) @(posedge clk);

		repeat (100) @(posedge clk);

		$display("--- підсумок ---");
		$display("  змін рівня: %0d з %0d очікуваних", changes, N_EXP);
		if (changes == 0)
			$display("FAIL: рівень не змінився жодного разу - чи підвантажено .elf?");
		else if (changes < N_EXP)
			$display("FAIL: тайм-аут, пилка не дійшла до кінця");
		else if (errors)
			$display("FAIL: %0d розбіжностей", errors);
		else
			$display("PASS");

		$finish;
	end

endmodule
