`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2024 06:38:40 PM
// Design Name: 
// Module Name: RISV_RegisterFile
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


module RISCV_RegisterFile(
    input [31:0] ins,
    input clk, WE3,
    input [4:0] A1, A2, A3,
    input [31:0] WD3,
    output [31:0] RD1, RD2    
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
    
   assign A1 = ins[25:21];
   assign A2 = ins[20:16];
      
   always@(posedge clk) begin 
    if (WE3 == 1) begin
        mem[A3] <= WD3;
    end
   end 
   assign RD1 = mem[A1];
   assign RD2 = mem[A2];
  //assign RD1 = (A1 != 0) ? mem[A1] : 0; //if input A1 is not 0, A1 will store in mem 
  //assign RD2 = (A2 != 0) ? mem[A2] : 0; 
  
endmodule
