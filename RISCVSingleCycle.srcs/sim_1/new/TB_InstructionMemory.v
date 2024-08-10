`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2024 07:17:19 PM
// Design Name: 
// Module Name: TB_InstructionMemory
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


module TB_InstructionMemory(

    );
    reg clk;
    reg [31:0] ProgramCounterIn;
    wire [31:0] IMout;
    
    RISCV_IM32bits TB_InstructionMemory (.ProgramCounterIn(ProgramCounterIn), .IMout(IMout));
    
    initial
    begin
    clk = 1'b1; ProgramCounterIn = 'd0; #30;
    clk = 1'b1; ProgramCounterIn = 'd1; #30;
    clk = 1'b1; ProgramCounterIn = 'd2; #30;
    ProgramCounterIn = 'd3; #30;
    end
    
endmodule
