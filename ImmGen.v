`timescale 1ns / 1ps

module ImmGen (
    InstrCode,
    ImmSel,
    extended
);
  input [7:0] InstrCode;
  input ImmSel;
  output [7:0] extended;

  reg [7:0] ext;
  always @(InstrCode, ImmSel) begin
    case (ImmSel)
      1'b0: ext = {{5{1'b0}}, InstrCode[2:0]};  // for sll,addi cases, shamt = 3 bit number
      1'b1: ext = {{2{1'b0}}, InstrCode[5:0]};  // for jump case, const = 6 bit number
    endcase
  end

  assign extended = ext;
endmodule
