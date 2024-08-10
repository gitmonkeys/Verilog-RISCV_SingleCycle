`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2024 10:12:32 AM
// Design Name: 
// Module Name: TB_RISCV
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


module TB_RISCV(

    );
    reg clk, reset;
    wire [31:0] Result, instruction;
   // wire [5:0] Funct; 

    RISCV_topmodule TBtest (.clk(clk), .reset(reset), .Result(Result), .instruction(instruction));
   
    initial
    begin
   clk = 0; reset = 1; #30;
   clk = 1; reset = 0; #30;
    end
endmodule
