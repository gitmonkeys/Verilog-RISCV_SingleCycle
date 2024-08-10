`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2024 09:32:36 AM
// Design Name: 
// Module Name: RISCV_shiftleft
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


module RISCV_shiftleft(
    input [31:0] SignImm,
    output [31:0] Y
    );
    
    assign Y = SignImm << 2;
    
endmodule
