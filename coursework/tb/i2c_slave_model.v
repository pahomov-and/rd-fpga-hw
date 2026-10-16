`timescale 1ns/1ps
//
// Модель ведомого I2C - тільки підтвердження прийому.
//
// Логіки SSD1306 всередині немає: ні кадрового буфера, ні розбору команд.
// Задача моделі в тому, щоб шина жила і XIic_Send доходив до кінця -
// без ACK контролер обриває передачу на першому ж байті.
//
// Що відстежується:
//   START - спад SDA при високому SCL
//   STOP  - підйом SDA при високому SCL
//   біти  - защіпка SDA по фронту SCL
//   ACK   - на дев'ятому такті SDA притискається до нуля
//
// SDA модель саме відпускає (1'bz), а не виставляє одиницю, інакше вона
// зіткнулася б із контролером, коли той передає.
//
module i2c_slave_model #(
	parameter [6:0] ADDR    = 7'h3C,  // адреса дисплея
	parameter       VERBOSE = 1       // друкувати прийняті байти
) (
	input wire scl,
	inout wire sda
);

	reg       active  = 1'b0;  // транзакція триває
	reg       is_addr = 1'b0;  // поточний байт - адресний
	reg       addr_ok = 1'b0;  // адреса збіглася, підтверджуємо решту
	reg       ack_drv = 1'b0;  // притискаємо SDA на біті ACK
	reg [3:0] bit_cnt = 4'd0;
	reg [7:0] shifter = 8'd0;

	assign sda = ack_drv ? 1'b0 : 1'bz;

	// START - спад SDA, поки SCL високий. Лічильник скидається саме тут,
	// бо контролер уміє робити повторний старт без STOP.
	always @(negedge sda) begin
		if (scl) begin
			active  <= 1'b1;
			is_addr <= 1'b1;
			bit_cnt <= 4'd0;
			ack_drv <= 1'b0;
			if (VERBOSE) $display("%0t  i2c: START", $time);
		end
	end

	// STOP - підйом SDA, поки SCL високий
	always @(posedge sda) begin
		if (scl && active) begin
			active  <= 1'b0;
			addr_ok <= 1'b0;
			ack_drv <= 1'b0;
			if (VERBOSE) $display("%0t  i2c: STOP", $time);
		end
	end

	// Біти засуваються по фронту SCL - у цей момент дані вже стабільні
	always @(posedge scl) begin
		if (active) begin
			if (bit_cnt < 4'd8) begin
				shifter <= {shifter[6:0], sda};
				bit_cnt <= bit_cnt + 4'd1;
			end
			else begin
				// дев'ятий такт - біт ACK, його ми вже тримаємо
				bit_cnt <= 4'd0;
				is_addr <= 1'b0;
			end
		end
	end

	// Рішення про ACK ухвалюється по спаду, щоб до фронту дев'ятого такту
	// SDA вже був притиснутий
	always @(negedge scl) begin
		if (active && bit_cnt == 4'd8) begin
			if (is_addr) begin
				addr_ok <= (shifter[7:1] == ADDR);
				ack_drv <= (shifter[7:1] == ADDR);
				if (VERBOSE) begin
					// Рядкові літерали в тернарнику стають бітовими векторами
					// однакової ширини й друкуються числом - тільки if/else.
					if (shifter[7:1] != ADDR)
						$display("%0t  i2c: адреса 0x%02h - не наша, NACK", $time, shifter[7:1]);
					else if (shifter[0])
						$display("%0t  i2c: адреса 0x%02h, читання -> ACK", $time, shifter[7:1]);
					else
						$display("%0t  i2c: адреса 0x%02h, запис -> ACK", $time, shifter[7:1]);
				end
			end
			else begin
				ack_drv <= addr_ok;
				if (VERBOSE && addr_ok)
					$display("%0t  i2c: байт 0x%02h -> ACK", $time, shifter);
			end
		end
		else begin
			ack_drv <= 1'b0;
		end
	end

endmodule
