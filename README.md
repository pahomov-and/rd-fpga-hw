# robot dreams · FPGA — homework

Homework for the robot dreams "FPGA" course. One folder per assignment.

| # | Lesson | Folder | Contents |
|---|---|---|---|
| 1 | 4 | [hw01_lesson04](hw01_lesson04/) | parameterized decoder, unintended latch, 4-bit LED counter |
| 2 | 5 | [hw02_lesson05](hw02_lesson05/) | counter with load and reverse + self-checking testbench |

## Layout

```
hwNN_lessonNN/
├── rtl/           synthesizable sources
├── tb/            testbenches, where the assignment asks for them
├── proj/          Vivado project (.xpr and filesets only)
└── screenshots/   simulation waveforms, synthesis messages, console output
```

Generated output is not committed: `*.cache/`, `*.runs/`, `*.sim/`, `xsim.dir/`.
The projects target `xc7z020clg400` (Zynq-7020), Vivado 2025.1.
