`timescale 1ns / 1ps

module Mux (
    A,
    B,
    S,
    Out
);
  input [7:0] A, B;
  input S;
  output [7:0] Out;

  assign Out = (S == 1) ? B : A;
endmodule
