`include "./RegisterFile.v"
`include "./InstructionFetch.v"
`include "./InstructionMemory.v"
`include "./ALU.v"
`include "./Processor.v"
`include "./ControlUnit.v"
`include "./Mux.v"
`include "./Add8bit.v"
`include "./ID_EX_reg.v"
`include "./IF_ID_reg.v"
`include "./EX_WB_reg.v"
`include "./ForwardingUnit.v"
`include "./ImmGen.v"
module top ();
  reg clk, reset;

  initial begin
    clk = 0;
    $dumpfile("top_dump.vcd");
    $dumpvars(0, top);
    repeat (15) #10 clk = ~clk;
    $finish;
  end

  Processor processorInsts (
      clk,
      reset
  );
  initial begin
    reset = 1;
    #10;
    reset = 0;
    #10;
    reset = 1;
  end
endmodule
