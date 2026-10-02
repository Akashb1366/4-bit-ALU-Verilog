module alu_4bit(
  input [3:0] A, B,
  input [2:0] ALU_Sel,
  output reg [3:0] Result,
  output reg CarryOut, Zero
);
always @(*) begin
  CarryOut = 0;
  case(ALU_Sel)
    3'b000: Result = A & B; // AND
    3'b001: Result = A | B; // OR
    3'b010: Result = A ^ B; // XOR
    3'b011: Result = ~A;    // NOT
    3'b100: {CarryOut, Result} = A + B; // ADD
    3'b101: {CarryOut, Result} = A - B; // SUB
    3'b110: Result = A << 1; // Left Shift
    3'b111: Result = A >> 1; // Right Shift
    default: Result = 4'b0000;
  endcase
  Zero = (Result == 0);
end
endmodule
