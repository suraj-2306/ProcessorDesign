`include "../src/RegisterFile.v"
`include "../src/InstructionFetch.v"
`include "../src/InstructionMemory.v"
`include "../src/ALU.v"
`include "../src/Processor.v"
`include "../src/ControlUnit.v"
`include "../src/Mux.v"
`include "../src/Add8bit.v"
`include "../src/ID_EX_reg.v"
`include "../src/IF_ID_reg.v"
`include "../src/EX_WB_reg.v"
`include "../src/ForwardingUnit.v"
`include "../src/ImmGen.v"
module top ();
  reg clk, reset;

  initial begin
    clk = 0;
    $dumpfile("build/top_dump.vcd");
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
