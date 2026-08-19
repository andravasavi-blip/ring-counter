# 4-bit Ring Counter using Verilog

## Overview

This project implements a 4-bit Ring Counter using Verilog HDL.

A Ring Counter is a type of shift register in which the output of the last flip-flop is connected back to the input of the first flip-flop.

## Inputs

- `clk` – Clock signal
- `reset` – Reset signal

## Output

- `q[3:0]` – 4-bit counter output

## Working

When reset is active, the counter is initialized to:

```text
0001