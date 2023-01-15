`timescale 1ns / 1ps

module InstructionFetch (
    input Clk,
    input Reset,
    input [7:0] PCin,
    output reg [7:0] PCout,
    output [7:0] Instruction_Code
);

  InstructionMemory IM (
      PCout,
      Reset,
      Instruction_Code
  );
  always @(posedge Clk, negedge Reset) begin
    if (Reset == 0) PCout <= 0;
    else PCout <= PCin;
  end

endmodule
