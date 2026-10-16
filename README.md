# robot dreams · FPGA - homework

Homework for the robot dreams "FPGA" course. One folder per assignment.
Target `xc7z020clg400` (Zynq-7020) on a QMTECH Bajie board, Vivado/Vitis 2025.1.

| # | Lesson | Folder | Contents |
|---|---|---|---|
| 1 | 4 | [hw01_lesson04](hw01_lesson04/) | parameterized decoder, unintended latch, 4-bit LED counter |
| 2 | 5 | [hw02_lesson05](hw02_lesson05/) | counter with load and reverse + self-checking testbench |
| 3 | 7 | [hw03_lesson07](hw03_lesson07/) | code-lock FSM, timing closure, pipelining |
| 4 | 10 | [hw04_lesson10](hw04_lesson10/) | two processor systems: Zynq PS and MicroBlaze |
| 5 | 12 | [hw05_lesson12](hw05_lesson12/) | frame receiver: CDC FIFO, AXI4-Stream, DMA into block RAM |
| 6 | 14 | [hw06_lesson14](hw06_lesson14/) | ILA on the lock FSM, manual HDL instantiation |
| 7 | 15 | [hw07_lesson15](hw07_lesson15/) | moving maximum in Vitis HLS, baseline vs `PIPELINE II=1` |
| - | 16 | [coursework](coursework/) | **sound level indicator**: custom AXI4-Lite IP, MicroBlaze, SSD1306 over I²C |

The coursework is the one to read first - it is the only assignment with a
full report: register map, hand-computed expectations, waveforms, resource
and timing figures, and photos of the board.

## Layout

Folder structure follows what each assignment needs, so it varies. Common names:

```
rtl/ or ip_repo/   synthesizable sources
tb/                testbenches
vivado/            Vivado project
vitis/             Vitis workspace: platform and application
constraints/       pin assignments
screenshots/       waveforms, console output, tool reports
logs/              captured tool output
```

Generated output is not committed: `*.cache/`, `*.runs/`, `*.sim/`, `*.gen/`,
`xsim.dir/`, Vitis platforms and `.xsa` archives. Everything regenerates from
the sources and the project files that are here.
