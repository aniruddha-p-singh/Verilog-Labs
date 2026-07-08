# 32-Bit Arithmetic Logic Unit (ALU) in Verilog

## Overview

This project implements a **32-bit Arithmetic Logic Unit (ALU)** using Verilog HDL. The ALU performs a set of arithmetic and logical operations based on a 4-bit control signal (`alu_op`). The design was simulated using **Icarus Verilog** and verified using **GTKWave**.

---

## Features

- 32-bit inputs and output
- 4-bit ALU control input
- Zero flag generation
- Combinational logic implementation
- Testbench included for functional verification

---

## Supported Operations

| ALU Control | Operation |
|------------|-----------|
| `0000` | AND |
| `0001` | OR |
| `0010` | ADD |
| `0110` | SUBTRACT |
| `0111` | Set Less Than (SLT) |
| `1100` | NOR |

---

## Inputs

| Signal | Width | Description |
|--------|------|-------------|
| `a` | 32 bits | First operand |
| `b` | 32 bits | Second operand |
| `alu_op` | 4 bits | Operation select signal |

---

## Outputs

| Signal | Width | Description |
|--------|------|-------------|
| `result` | 32 bits | Result of the selected operation |
| `zero` | 1 bit | Set to `1` when the result is zero |

---

## Simulation

The design was verified using:

- Icarus Verilog
- GTKWave

The testbench checks every supported ALU operation and verifies the Zero flag functionality.

---

## Project Structure

```
32_Bit_ALU/
│── alu.v
│── alu_tb.v
│── alu_tb.vcd
│── waveform.png
└── README.md
```

---

## Learning Outcomes

This project helped reinforce the following Verilog concepts:

- Modules
- Dataflow and Behavioral Modeling
- Combinational Logic
- `always @(*)`
- `case` statements
- Testbench development
- Simulation using Icarus Verilog
- Waveform analysis using GTKWave

---

## Author

**Aniruddha Pratap Singh**

Learning Verilog HDL and Digital Design by building projects from scratch.
