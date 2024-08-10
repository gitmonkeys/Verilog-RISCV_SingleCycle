`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2024 07:35:34 PM
// Design Name: 
// Module Name: TB_RegisterFile
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


module TB_RegisterFile(

    );
    reg [31:0] ins;
    reg clk; 
    wire [4:0] A1, A2;
    wire [31:0] RD1, RD2;
    
    RISCV_RegisterFile TB_Register (.clk(clk), .ins(ins), .RD1(RD1), .RD2(RD2), .A1(A1), .A2(A2));
    
    initial
    begin
    clk = 0; ins = 'h016D4022; #30;
    clk = 1; ins = 'h016D4022; #30;
    clk = 0; ins = 'h016D4022; #30;
    ins = 'h00000000; #30;
    ins = 'h02328020; #30;
    ins = 'h80000006; #30;
    ins = 'h218c0001; #30;
    ins = 'b01; #30;
    end
endmodule
