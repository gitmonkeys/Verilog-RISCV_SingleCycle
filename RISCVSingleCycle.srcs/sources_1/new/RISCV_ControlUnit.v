`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2024 09:22:27 AM
// Design Name: 
// Module Name: RISCV_ControlUnit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module RISCV_ControlUnit(
    input [5:0] Opcode,
    input [5:0] Funct,
    output MemtoReg, MemWrite, Branch, ALUSrc, RegDst, RegWrite, Jump,
    output [1:0] ALUOp,
    output [2:0] ALUControl
);

RISCV_ControlUnitDecoder CUDecode (.Opcode(Opcode), .MemtoReg(MemtoReg), .MemWrite(MemWrite), .Branch(Branch), .ALUSrc(ALUSrc), .RegDst(RegDst), .RegWrite(RegWrite), .Jump(Jump), .ALUOp(ALUOp));
RISCV_ALUDecoder ALUDecode (.Funct(Funct), .ALUOp(ALUOp), .ALUControl(ALUControl));
endmodule 

module RISCV_ALUDecoder(
    input [5:0] Funct,
    input [1:0] ALUOp,
    output reg [2:0] ALUControl
);

always@(*) begin 
    case (ALUOp)
        2'b00: ALUControl <= 3'b010;
        2'b01: ALUControl <= 3'b110;
        default: case (Funct)
            6'b100000: ALUControl <= 3'b010;
            6'b100010: ALUControl <= 3'b110;
            6'b100100: ALUControl <= 3'b000;
            6'b100101: ALUControl <= 3'b001;
            6'b101010: ALUControl <= 3'b111;
            default: ALUControl <= 3'bx;
        endcase         
     endcase
 end
endmodule

module RISCV_ControlUnitDecoder(
    input [5:0] Opcode,
    output reg MemtoReg, MemWrite, Branch, ALUSrc, RegDst, RegWrite, Jump,
    output reg [1:0] ALUOp    
    );
 
always@(*) begin
if (Opcode == 6'b000000) begin//R-type
    RegWrite <= 1'b1; RegDst <= 1'b1; ALUSrc <= 1'b0; Branch <= 1'b0; MemWrite <= 1'b0; MemtoReg <= 1'b0; ALUOp <= 2'b10; Jump <= 1'b0; 
   end
else if (Opcode == 6'b100011) begin //lw
    RegWrite <= 1'b1; RegDst <= 1'b0; ALUSrc <= 1'b1; Branch <= 1'b0; MemWrite <= 1'b0; MemtoReg <= 1'b1; ALUOp <= 2'b00; Jump <= 1'b0; 
   end
else if (Opcode == 6'b101011) begin
    RegWrite <= 1'b0; RegDst <= 1'b0; ALUSrc <= 1'b1; Branch <= 1'b0; MemWrite <= 1'b1; MemtoReg <= 1'b0; ALUOp <= 2'b00; Jump <= 1'b0; 
   end
else if (Opcode == 6'b000100) begin //beq
    RegWrite <= 1'b0; RegDst <= 1'b0; ALUSrc <= 1'b0; Branch <= 1'b1; MemWrite <= 1'b0; MemtoReg <= 1'b0; ALUOp <= 2'b01; Jump <= 1'b0;
   end 
else if (Opcode == 6'b001000) begin //addi
    RegWrite <= 1'b1; RegDst <= 1'b0; ALUSrc <= 1'b1; Branch <= 1'b0; MemWrite <= 1'b0; MemtoReg <= 1'b0; ALUOp <= 2'b00; Jump <= 1'b0;
   end 
else if (Opcode == 6'b000010) begin //jump
    RegWrite <= 1'b0; RegDst <= 1'b0; ALUSrc <= 1'b0; Branch <= 1'b0; MemWrite <= 1'b0; MemtoReg <= 1'b0; ALUOp <= 2'b00; Jump <= 1'b1;       
   end
else begin
    RegWrite <= 1'bx; RegDst <= 1'bx; ALUSrc <= 1'bx; Branch <= 1'bx; MemWrite <= 1'bx; MemtoReg <= 1'bx; ALUOp <= 2'bxx; Jump <= 1'bx;
   end 
 end  
endmodule
