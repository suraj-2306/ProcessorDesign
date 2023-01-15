#!/bin/bash
iverilog ./top.v -o build/top_output.out
./build/top_output.out
gtkwave ./build/top_dump.vcd ./build/top.gtkw
