`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2024 09:32:54 AM
// Design Name: 
// Module Name: RISCV_ALU
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


module RISCV_ALU(
    input [31:0] srcA,
    input [31:0] srcB,
    input [2:0] ALUControl,
    output [31:0] ALUResult,
    output zero
    );
    reg [31:0] ALU;
    
    always@(*) begin
        case (ALUControl)
            3'b010: ALU <= srcA + srcB;
            3'b110: ALU <= srcA - srcB;
            3'b011: ALU <= ~srcA;
            3'b100: ALU <= srcA ^ srcB;
            3'b000: ALU <= srcA & srcB;
            3'b001: ALU <= srcA | srcB;
            3'b111: if (srcA < srcB) ALU <= 'h00000001;
            else ALU <= 'h00000000;
            default: ALU <= 'hx;
        endcase 
     end             
     
     assign ALUResult = ALU;
     assign zero = (ALU <= 'h0000000) ? 1:0; //zero output is true if ALU contains all zero numbers                
endmodule
