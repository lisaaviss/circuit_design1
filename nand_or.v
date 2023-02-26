`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2023 00:44:57
// Design Name: 
// Module Name: nand_or
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


module nand_or(
input a,
input b,
output c
    );
    wire nand1, nand2;
    nand(nand1, a, a);
    nand(nand2, b, b);
    nand(c, nand1, nand2);
endmodule
