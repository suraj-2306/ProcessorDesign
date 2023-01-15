`timescale 1ns / 1ps

module Add8bit (
    A,
    B,
    out
);

  input [7:0] A, B;
  output [7:0] out;

  assign out = A + B;

endmodule
