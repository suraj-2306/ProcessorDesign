`timescale 1ns / 1ps

module ControlUnit (
    opcode,
    ALUctrl,
    ALUsrc,
    RegWrite,
    jump,
    ImmSel
);
  input [1:0] opcode;
  output reg RegWrite, ALUctrl, ALUsrc, jump, ImmSel;

  always @(opcode) begin
    case (opcode)
      2'b00: {ALUctrl, ALUsrc, RegWrite, jump, ImmSel} = 5'b01100;  // addi 
      2'b01: {ALUctrl, ALUsrc, RegWrite, jump, ImmSel} = 5'b11100;  // sll 
      2'b11: {ALUctrl, ALUsrc, RegWrite, jump, ImmSel} = 5'bxx011;  // jmp
    endcase
  end
endmodule
