# QMTECH ZYNQ7000 Bajie Board (XC7Z020-CLG400)
#
# SYS_CLK, 125 МГц, одиночний вхід. Клок приходить від Ethernet-мікросхеми
# RTL8211 через R71 100 Ом (розд. 2.2.9, рис. 2-20). Іншого тактового
# джерела для PL на платі немає.

# тактування
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports sys_clk]
create_clock -period 8.000 -name sys_clk [get_ports sys_clk]

# скидання
# SW2, кнопка користувача на боці PL (розд. 2.2.7, рис. 2-18).
# Підтягнута до VCCO_34 через 1 кОм, натискання дає нуль -> активний нуль.
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports reset_n]

# роз'єм розширення JP2, банк 34
#
# Сигнали взяті підряд з непарного боку, щоб лягли на один шлейф:
#
#   контакт  1/2   GND              -> земля модуля SSD1306
#   контакт  3/4   VCCO_34 = 3.3 В  -> живлення модуля
#   контакт  5     P20   SCL
#   контакт  7     T19   SDA
#   контакт  9     U20   level[0]
#   контакт 11     W20   level[1]
#   контакт 13     P19   level[2]
#   контакт 15     R16   level[3]


# I2C - шина з відкритим стоком. Модулі SSD1306 майже завжди мають власні
# підтяжки 4.7 кОм; внутрішні підтяжки ПЛІС заслабкі й увімкнені лише як
# підстраховка на випадок модуля без резисторів.
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33 PULLUP TRUE} [get_ports iic_scl_io]
set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33 PULLUP TRUE} [get_ports iic_sda_io]

# Власних світлодіодів на боці PL плата не має: D1 - індикатор живлення,
# D2 - FPGA_DONE. Тому рівень теж іде на роз'єм розширення.
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports {level[0]}]
set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS33} [get_ports {level[1]}]
set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS33} [get_ports {level[2]}]
set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS33} [get_ports {level[3]}]
