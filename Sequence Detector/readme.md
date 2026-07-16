# 1010 Sequence Detector (Moore & Mealy FSM) using Verilog

## Overview

This project implements a **1010 Sequence Detector** using **Finite State Machines (FSMs)** in Verilog HDL. Both **Moore** and **Mealy** machine implementations were designed and simulated in **Vivado**.

The detector identifies the input sequence **1010** and asserts the output when the sequence is successfully detected.

---

## Objectives

- Learn the fundamentals of Finite State Machines (FSMs)
- Understand the difference between Moore and Mealy machines
- Practice state encoding and state transitions
- Implement synchronous reset
- Verify the design through behavioral simulation in Vivado

---

## Implementations

### Moore Sequence Detector
- Output depends only on the **current state**
- Requires an additional detection state
- Stable output

### Mealy Sequence Detector
- Output depends on the **current state and current input**
- Requires fewer states than Moore implementation
- Faster output response

---

## Concepts Used

- Verilog HDL
- Finite State Machines (FSM)
- Moore Machine
- Mealy Machine
- State Encoding
- Current State & Next State Logic
- Blocking and Non-Blocking Assignments
- Synchronous Reset
- Behavioral Simulation

---

## Simulation

Simulation was performed using **Vivado Simulator**.

The following were verified:

- Correct detection of the sequence **1010**
- State transitions
- Reset functionality
- Output generation for both Moore and Mealy FSMs

---

## Comparison

| Moore FSM | Mealy FSM |
|------------|-----------|
| Output depends only on current state | Output depends on current state and input |
| Requires more states | Requires fewer states |
| Output changes after entering detection state | Output changes immediately on detection |

---

## Learning Outcomes

Through this project, I learned:

- How Finite State Machines operate
- State diagram design
- State encoding
- Difference between Moore and Mealy FSMs
- Designing sequential logic in Verilog
- Behavioral simulation using Vivado

---

## Tools Used

- Verilog HDL
- Vivado Design Suite

---

## Future Work

- Vending Machine Controller
- Traffic Light Controller
- Elevator Controller
- UART Transmitter & Receiver
- 16-bit Microprocessor

---

## Author

**Aniruddha Pratap Singh**

Electronics & Communication Engineering | Learning RTL Design, Verilog HDL, FPGA and VLSI through hands-on projects.
