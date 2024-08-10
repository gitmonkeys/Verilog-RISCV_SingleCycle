`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Achronix Corp.
// Engineer: Luan Tran
// 
// Create Date: 06/03/2024 10:31:02 AM
// Design Name: 
// Module Name: RISCV_IM32bits
// Project Name: 
// Target Devices: Zynq 7000
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


module RISCV_IM32bits(
    input clk,
    input [31:0] ProgramCounterIn,
    output reg [31:0] IMout
    );
  wire [31:0] temp;
  reg [31:0] memoryarray[9:0]; 
  initial
  begin
  
  memoryarray[9] = 'h214a0002; //addi $t2, $t2, 2
  memoryarray[8] = 'h02328020; //add $s0, $s1, $s2
  memoryarray[7] = 'h016D4022; //sub $s0, $t3, $t5
  memoryarray[6] = 'h8c130001; //lw $s3, 1
  memoryarray[5] = 'h200c0000; //addi $t4, $0, 0
  memoryarray[4] = 'h200d0005; //addi $t5, $0, 5
  memoryarray[3] = 'hac020004; //sw $2, 4($0)
  memoryarray[2] = 'h118d0002; //beq $t4, $t5, end
  memoryarray[1] = 'h218c0001; //addi $t4, $t4, 1
  memoryarray[0] = 'h80000006; //jump label
 end
 
 assign temp = memoryarray[ProgramCounterIn];
 always@(posedge clk) begin
    IMout = temp;
    end
 
endmodule
