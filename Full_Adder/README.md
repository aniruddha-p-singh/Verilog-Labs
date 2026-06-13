# Full Adder in Verilog

## Overview

This project implements a **1-Bit Full Adder** using Verilog HDL.

A Full Adder is a combinational logic circuit that performs the addition of three binary inputs:

* A
* B
* Carry-In (Cin)

and produces two outputs:

* Sum
* Carry-Out (Cout)

The Full Adder is a fundamental building block used in arithmetic circuits such as Ripple Carry Adders, Carry Look-Ahead Adders, and Arithmetic Logic Units (ALUs).

---

## Logic Equations

### Sum

```text
Sum = A ⊕ B ⊕ Cin
```

### Carry-Out

```text
Cout = (A & B) | (Cin & (A ⊕ B))
```

---

## Truth Table

| A | B | Cin | Sum | Cout |
| - | - | --- | --- | ---- |
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

---

## Project Structure

```text
Full_Adder/
├── full_adder.v
├── full_adder_tb.v
└── README.md
```

---

## Simulation

The design was verified using a Verilog testbench that applies all possible input combinations and checks the corresponding outputs.

### Example Output

```text
A B Cin | Sum Cout
0 0 0   | 0   0
0 0 1   | 1   0
0 1 0   | 1   0
0 1 1   | 0   1
1 0 0   | 1   0
1 0 1   | 0   1
1 1 0   | 0   1
1 1 1   | 1   1
```

---

## Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave
* Visual Studio Code
* Git & GitHub

---

## Author

**Anirudhha Pratap Singh**

Electronics Engineering Student | Aspiring VLSI Engineer
