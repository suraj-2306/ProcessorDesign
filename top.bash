#!/bin/bash
iverilog top.v -o top_output.out
./top_output.out
gtkwave top_dump.vcd top.gtkw
