# 4-Bit Ring Counter using Verilog

## Overview

This project implements a **4-bit Ring Counter** using Verilog HDL.

A Ring Counter is a circular shift register in which a single logic `1` rotates through all flip-flops with each clock pulse. It is commonly used for sequence generation and timing applications.

---

## Working Principle

- On reset, the counter is initialized to `0001`.
- On every positive edge of the clock, the logic `1` shifts to the next position.
- After the last position, it returns to the first position.

Sequence:

```
0001 → 0010 → 0100 → 1000 → 0001 → ...
```

---

## Files

- `ring_counter.v` – Verilog source code
- `ring_counter_tb.v` – Testbench
- `README.md` – Project documentation
- `simulation_result.png` – Simulation waveform

---

## Software Used

- Icarus Verilog
- ModelSim
- Xilinx Vivado
- GTKWave (optional)

---

## How to Run

### Compile

```bash
iverilog -o ring_counter ring_counter.v ring_counter_tb.v
```

### Run

```bash
vvp ring_counter
```

### View Waveform

```bash
gtkwave dump.vcd
```

---

## Expected Output

| Clock Pulse | Q |
|-------------|------|
| Reset | 0001 |
| 1 | 0010 |
| 2 | 0100 |
| 3 | 1000 |
| 4 | 0001 |
| 5 | 0010 |

---

## Applications

- Sequence generators
- Timing circuits
- LED chasers
- Digital controllers
- Finite State Machines (FSMs)

---

## Author

Your Name