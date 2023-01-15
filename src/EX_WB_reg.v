`timescale 1ns / 1ps

module EX_WB_reg (
    input Clk,
    Reset,
    input RegWrite_ID_EX,
    input [7:0] ALUresult,
    input [2:0] Rd_ID_EX,
    output reg RegWrite_EX_WB,
    output reg [7:0] ALUresult_EX_WB,
    output reg [2:0] Rd_EX_WB
);

  always @(posedge Clk, negedge Reset) begin
    if (Reset == 0) begin
      RegWrite_EX_WB = 1'b0;
      ALUresult_EX_WB = 8'b0;
      Rd_EX_WB = 3'b0;
    end else begin
      RegWrite_EX_WB = RegWrite_ID_EX;
      ALUresult_EX_WB = ALUresult;
      Rd_EX_WB = Rd_ID_EX;
    end
  end
endmodule
