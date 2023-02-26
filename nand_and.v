`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2023 00:37:09
// Design Name: 
// Module Name: nand_and
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


module nand_and(
    input a,
    input b,
    output c
    );
    
    wire nand1;
    
    nand(nand1, a, b);
    nand(c, nand1, nand1);
    
endmodule
