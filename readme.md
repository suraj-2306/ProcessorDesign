# RISC-V Processor Design

The project is about implementing custom 4-stage pipeline 8 bit processor for implementing the following instructions:

- constrant addition(addi)
- shift left logical(sll)
- unconditional jump(j)

The processor has the following stages:

- Instruction fetch
- Register file
- Execution
- Writeback

The processor also incorporates a forwarding unit to resolve hazards.

The instrcution and their op-code is explained below:

## addi

- Usage: addi _destinationReg_, _immediateData_
- Instruction code
  | Opcode (00) | DestReg| ImmData|
  | :----------:| :----: | :----: |
  | 7:6         |  5:3 | 2:0|

## sll

- Usage: sll _destinationReg_, _shiftAmount_
- Instruction code:
  | Opcode (01) | DestReg| Shamt|
  | :----------:| :----: | :--: |
  | 7:6         |  5:3 | 2:0|
