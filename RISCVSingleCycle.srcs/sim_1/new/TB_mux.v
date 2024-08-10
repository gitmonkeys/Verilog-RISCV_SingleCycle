`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2024 11:23:46 AM
// Design Name: 
// Module Name: TB_mux
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


module TB_mux(

    );
    reg [3:0] A, B;
    reg SEL;
    wire [3:0] Y;
    
RISCV_MUX5bits testmux (.A(A), .B(B), .SEL(SEL), .Y(Y));

initial
begin
A <= 4'b0101; B <= 1110; SEL <= 0; #30;
A <= 4'b0101; B <= 1110; SEL <= 1; #30;
end    
endmodule
