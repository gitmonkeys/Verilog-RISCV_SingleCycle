`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2024 10:28:47 AM
// Design Name: 
// Module Name: RISV_SignExtend
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


module RISCV_SignExtend(
    input [15:0] ins,
    output [31:0] ins_out32
    );
    
    assign ins_out32 = {{16{ins[15]}}, ins};
endmodule
