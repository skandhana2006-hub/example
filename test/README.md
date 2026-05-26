# 8-bit ALU Tiny Tapeout Project

## Overview

This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL for Tiny Tapeout.

The ALU performs arithmetic and logical operations based on opcode selection.

## Supported Operations

| Opcode | Operation |
|--------|------------|
| 000 | Addition |
| 001 | Subtraction |
| 010 | AND |
| 011 | OR |
| 100 | XOR |

## Inputs

- ui_in[7:0]  → Operand A
- uio_in[7:0] → Operand B and opcode bits

## Outputs

- uo_out[7:0] → ALU Result

## Tools Used

- Verilog HDL
- Tiny Tapeout
- OpenLane
- Icarus Verilog
- GTKWave

## Project Structure

```text
src/        → Verilog source files
test/       → Testbench files
docs/       → Project documentation
```

## Author

Your Name
