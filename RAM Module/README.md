# RAM Module

## Description

This project implements a simple Random Access Memory (RAM) using Verilog HDL.

RAM allows data to be written into a memory location and read from that location.

## Features

- 4-bit address
- 8-bit data
- 16 memory locations
- Write operation
- Read operation
- Simple Verilog code

## Inputs

| Input | Size | Description |
|-------|------|-------------|
| clk | 1-bit | Clock signal |
| write_enable | 1-bit | Enables writing data |
| address | 4-bit | Selects memory location |
| data_in | 8-bit | Data to be stored |

## Output

| Output | Size | Description |
|--------|------|-------------|
| data_out | 8-bit | Data read from memory |

## How It Works

When `write_enable = 1`, the input data is stored at the selected address.

When `write_enable = 0`, the data stored at the selected address is read.

Example:

Address = 3  
Data written = 50

Later, when address = 3:

Data read = 50

## Files

- `README.md` - Project documentation
- `ram.v` - RAM Verilog code
- `ram_tb.v` - Testbench
- `output.vcd` - Simulation waveform

## How to Run

Compile:

iverilog -o ram_sim ram.v ram_tb.v

Run:

vvp ram_sim

Open waveform:

gtkwave output.vcd

## Expected Result

The RAM should correctly store and read data from different memory addresses.

## Conclusion

The RAM module successfully performs write and read operations using Verilog HDL.