`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2024 09:09:44 AM
// Design Name: 
// Module Name: RISCV_DataMemory
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


module RISCV_DataMemory(
    input [31:0] inputA,
    input [31:0] WD,
    input clk, WE, MemRead,
    output reg [31:0] RD
    );
    
    reg [31:0] mem [31:0];
    
    initial
    begin
   mem[0] = 'd0;
   mem[1] = 'd1;
   mem[2] = 'd2;
   mem[3] = 'd3;
   mem[4] = 'd4;
   mem[5] = 'd5;
   mem[6] = 'd6;
   mem[7] = 'd7;
   mem[8] = 'd8;
   mem[9] = 'd9;
   mem[10] = 'd10;
   mem[11] = 'd11;
   mem[12] = 'd12;
   mem[13] = 'd13;
   mem[14] = 'd14;
   mem[15] = 'd15;
   mem[16] = 'd16;
   mem[17] = 'd17;
   mem[18] = 'd18;
   mem[19] = 'd19;
   mem[20] = 'd20;
   mem[21] = 'd21;
   mem[22] = 'd22;
   mem[23] = 'd23;
   mem[24] = 'd24;
   mem[25] = 'd25;
   mem[26] = 'd26;
   mem[27] = 'd27;
   mem[28] = 'd28;
   mem[29] = 'd29;
   mem[30] = 'd30; 
   mem[31] = 'd31;
   end 

    always@(posedge clk)
    begin
        if (WE == 1) begin
            mem[inputA] <= WD;
           end
       else if (MemRead == 1) begin
            RD <= mem[inputA];
       end     
    end     
            
endmodule
