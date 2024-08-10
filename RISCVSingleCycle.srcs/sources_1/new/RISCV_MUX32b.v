`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2024 09:06:13 AM
// Design Name: 
// Module Name: RISCV_MUX32b
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


module RISCV_MUX32b(
    input [31:0] A,
    input [31:0] B,
    input SEL,
    output reg [31:0] Y
    );
    
    always@(*) begin
        if (SEL == 0)
            Y <= A;
         else
            Y <= B;
     end 
endmodule
