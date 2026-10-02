module tb;
  reg [3:0] A, B;
  reg [2:0] ALU_Sel;
  wire [3:0] Result;
  wire CarryOut, Zero;
  alu_4bit uut(A,B,ALU_Sel,Result,CarryOut,Zero);
  initial begin
    $dumpfile("dump.vcd"); $dumpvars(0,tb);
    A=4'd10; B=4'd5;
    ALU_Sel=3'd0; #10;
    ALU_Sel=3'd1; #10;
    ALU_Sel=3'd2; #10;
    ALU_Sel=3'd4; #10;
    ALU_Sel=3'd5; #10;
    $finish;
  end
endmodule
