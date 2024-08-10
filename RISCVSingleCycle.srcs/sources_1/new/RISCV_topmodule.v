`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Luan Tran
// 
// Create Date: 06/07/2024 09:59:23 AM
// Design Name: 
// Module Name: RISCV_topmodule
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


module RISCV_topmodule(
    input clk, reset,
    output [31:0] instruction,
    output [31:0] Result
    );
    wire [31:0] ins, srcA, srcB, ALUResult, WriteData, ReadData;
    wire [31:0] PCPlus4, PCBranch, PC, PC1, SignImm, shiftleftout;
    wire MemtoReg, MemWrite, Branch, ALUSrc, RegDst, RegWrite, zero, PCSrc;
    wire [2:0] ALUControl;
    wire [4:0] WriteReg;
    
    RISCV_IM32bits InstructionMemory (.ProgramCounterIn(PC), .IMout(ins));
    
    RISCV_PC ProgramCounter (.in(PC1), .out(PC), .clk(clk), .reset(reset));
    
    RISCV_RegisterFile RegisterFile (.A1(ins[25:21]), .A2(ins[20:16]), .A3(WriteReg),
                                     .WD3(Result), .WE3(RegWrite), .RD1(srcA),
                                     .RD2(WriteData), .clk(clk)
                                     );
                                     
    RISCV_ControlUnit ControlUnit (.Opcode(ins[31:26]), .Funct(ins[5:0]), 
                                   .MemtoReg(MemtoReg), .MemWrite(MemWrite),
                                   .Branch(Branch), .ALUControl(ALUControl),
                                   .ALUSrc(ALUSrc), .RegDst(RegDst),.RegWrite(RegWrite)
                                   );
                                   
    RISCV_PCplus4 PCplus4 (.in(PC), .outplus4(PCPlus4));
    
    RISCV_SignExtend SignExtend (.ins(ins[15:0]), .ins_out32(SignImm));
    
    RISCV_shiftleft Shiftleft (.SignImm(SignImm), .Y(shiftleftout));      
    
    RISCV_ALUPCBranch ALUPCBranch (.SignImm(shiftleftout), .PCPlus4(PCPlus4), .PCBranch(PCBranch));
    
    RISCV_MUX5bits MUX5bits (.A(ins[20:16]), .B(ins[15:11]), .SEL(RegDst), .Y(WriteReg)); 
    
    RISCV_ANDgate ANDgate (.branch(Branch), .zero(zero), .PCSrc(PCSrc));     
    
    RISCV_MUX32b MUXPC (.A(PCPlus4), .B(PCBranch), .SEL(PCSrc), .Y(PC1));
    
    RISCV_MUX32b ALUsrcB (.A(WriteData), .B(SignImm), .SEL(ALUSrc), .Y(srcB));
    
    RISCV_ALU ALU (.srcA(srcA), .srcB(srcB), .ALUControl(ALUControl), .ALUResult(ALUResult), .zero(zero));
    
    RISCV_DataMemory DataMemory (.inputA(ALUResult), .WD(WriteData), .clk(clk), .WE(MemWrite), .RD(ReadData));
    
    RISCV_MUX32b ReadDataMUX (.A(ALUResult), .B(ReadData), .SEL(MemtoReg), .Y(Result)); 
    
    assign instruction = ins;               
endmodule
