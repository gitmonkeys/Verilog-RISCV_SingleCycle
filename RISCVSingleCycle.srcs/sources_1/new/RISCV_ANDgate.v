`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2024 09:24:12 AM
// Design Name: 
// Module Name: RISCV_ANDgate
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


module RISCV_ANDgate(
    input zero,
    input branch,
    output PCSrc
    );
    
    assign PCSrc = zero & branch;
    
endmodule
