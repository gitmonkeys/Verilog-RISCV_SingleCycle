`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2024 11:06:31 AM
// Design Name: 
// Module Name: RISCV_PCplus4
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


module RISCV_PCplus4(
    input [31:0] in,
    output [31:0] outplus4
    );
    assign outplus4 = in + 4;
endmodule
