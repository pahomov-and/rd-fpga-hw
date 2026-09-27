set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports {led_tri_o[0]}]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports {led_tri_o[1]}]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports {led_tri_o[2]}]
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports {led_tri_o[3]}]

set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports {btn_tri_i[0]}]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports {btn_tri_i[1]}]
set_property -dict {PACKAGE_PIN L20 IOSTANDARD LVCMOS33} [get_ports {btn_tri_i[2]}]
set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS33} [get_ports {btn_tri_i[3]}]

set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports {sw_tri_i[0]}]
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports {sw_tri_i[1]}]

## Такт 100 МГц
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports clk_100MHz]
create_clock -period 10.000 -name sys_clk [get_ports clk_100MHz]

## Сброс
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports reset_rtl_0]
