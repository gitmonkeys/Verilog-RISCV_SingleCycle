`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2024 10:59:31 AM
// Design Name: 
// Module Name: RISCV_PC
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


module RISCV_PC(
    input clk, reset,
    input [31:0] in,
    output reg [31:0] out
    );
    
    always@(posedge clk or posedge reset) begin
        if (reset)
            out <= 0;
        else
            out <= in;
     end      
endmodule
