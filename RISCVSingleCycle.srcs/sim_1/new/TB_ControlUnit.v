`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2024 12:18:30 PM
// Design Name: 
// Module Name: TB_ControlUnit
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


module TB_ControlUnit(

    );
    reg [5:0] Opcode;
    reg [5:0] Funct;
    wire MemtoReg, MemWrite, Branch, ALUSrc, RegDst, RegWrite, Jump;
    wire [1:0] ALUOp;
    wire [2:0] ALUControl;
    
    RISCV_ControlUnit TB1 ( .Opcode(Opcode),
                            .Funct(Funct),
                            .MemtoReg(MemtoReg),
                            .MemWrite(MemWrite),
                            .Branch(Branch),
                            .ALUSrc(ALUSrc),
                            .RegDst(RegDst),
                            .RegWrite(RegWrite),
                            .Jump(Jump),
                            .ALUOp(ALUOp),
                            .ALUControl(ALUControl)
                            );
                            
    initial
    begin
    Opcode = 6'b000000; Funct = 6'b100000; #30;
    Opcode = 6'b100011; Funct = 6'b100010; #30;
    Opcode = 6'b101011; Funct = 6'b100100; #30;
    Opcode = 6'b000100; Funct = 6'b100000; #30;
    Opcode = 6'b001000; Funct = 6'b100101; #30;
    Opcode = 6'b000010; Funct = 6'b101010; #30;
    Opcode = 6'b000001; #30;
    end  
endmodule
