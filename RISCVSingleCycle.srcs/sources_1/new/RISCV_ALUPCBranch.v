`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2024 09:46:03 AM
// Design Name: 
// Module Name: RISCV_ALUPCBranch
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


module RISCV_ALUPCBranch(
    input [31:0] SignImm,
    input [31:0] PCPlus4,
    output [31:0] PCBranch
    );
    
    assign PCBranch = SignImm + PCPlus4;
    
endmodule
