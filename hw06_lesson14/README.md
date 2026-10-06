# ДЗ №6 (лекція 14) — ILA

Варіант Б: заліза немає, тому все робиться в Vivado — до Generate Bitstream
включно, без Program Device.

За основу взято кодовий замок із ДЗ №3 (`lock_top`): у нього є автомат
станів, а це найцікавіші сигнали для спостереження.

## Проби

ILA інстанційовано вручну всередині `lock_controller` — `state` і
`next_state` живуть там і назовні не виведені.

| проба | сигнал | ширина |
|---|---|---|
| 0 | `state` | 2 |
| 1 | `next_state` | 2 |
| 2 | `digit_in` | 4 |
| 3 | `unlocked_led` | 1 |
| 4 | `rst` | 1 |

Глибина буфера 1024, увімкнені Advanced Trigger і Capture Control, усі
проби в режимі DATA AND TRIGGER.

## Скільки це коштує

| | замок без ILA | з ILA |
|---|---|---|
| Slice LUTs | 28 | 3 350 |
| Slice Registers | 24 | 4 552 |
| Block RAM | 0 | 0.5 плитки |

Відлагоджувальне ядро вийшло приблизно у 120 разів більше за схему, за
якою воно спостерігає. П'ять проб загалом на 10 біт — і три тисячі LUT.
Стає зрозуміло, чому ILA прибирають перед випуском.

На схемі поруч з'явився `dbg_hub` — його Vivado вставляє сам, це
JTAG-міст, через який ядро спілкується із зовнішнім світом.

## Результат

Synthesis, Implementation і Generate Bitstream проходять без помилок,
DRC чистий. Тайминги з запасом: WNS 1.314 нс, WHS 0.051 нс.

```
screenshots/ila_customize_probes.png             налаштування проб
screenshots/ila_instantiation_code.png           код інстанціювання
screenshots/schematic_ila_in_lock_controller.png ILA на схемі
logs/utilization_impl.txt                        звіт ресурсів
```
