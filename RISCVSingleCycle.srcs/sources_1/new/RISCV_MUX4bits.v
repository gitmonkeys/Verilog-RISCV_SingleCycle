`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2024 11:17:19 AM
// Design Name: 
// Module Name: RISCV_MUX4bits
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


module RISCV_MUX5bits(
    input [4:0] A,
    input [4:0] B,
    input SEL,
    output reg [4:0] Y
    );
    
    always@(*) begin
        if (SEL == 0) 
            Y <= A;
        else
            Y <= B;
    end
endmodule
