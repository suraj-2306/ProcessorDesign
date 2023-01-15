`timescale 1ns / 1ps

module ForwardingUnit (
    Rs1_ID_EX,
    Rd_EX_WB,
    RegWrite_EX_WB,
    Forward
);

  input [2:0] Rs1_ID_EX, Rd_EX_WB;
  input RegWrite_EX_WB;
  output reg Forward;

  always @(*) begin
    if (RegWrite_EX_WB == 0) Forward = 0;
    else if ((Rs1_ID_EX == Rd_EX_WB) && (RegWrite_EX_WB == 1)) Forward = 1;
    else Forward = 0;
  end
endmodule

