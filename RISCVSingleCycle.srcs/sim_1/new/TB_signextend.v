`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2024 10:43:28 AM
// Design Name: 
// Module Name: TB_signextend
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


module TB_signextend(

    );
    reg [15:0] ins;
    wire [31:0] out;
    
    RISCV_SignExtend Test(.ins(ins), .ins_out32(out));
    initial
    begin
    
    ins <= 16'b1111111111111111; #30;
    ins <= 16'd1111111111111111; #30;
    end
endmodule
