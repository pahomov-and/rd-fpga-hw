## Такт 100 МГц
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 10.000 -name sys_clk [get_ports clk]

## Скидання
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports rst]

## Цифра коду — кнопки
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports {digit_in[0]}]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports {digit_in[1]}]
set_property -dict {PACKAGE_PIN L20 IOSTANDARD LVCMOS33} [get_ports {digit_in[2]}]
set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS33} [get_ports {digit_in[3]}]

## Індикатор "відкрито"
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports unlocked_led]
