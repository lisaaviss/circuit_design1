`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2023 15:59:16
// Design Name: 
// Module Name: nand_nor
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


module nand_nor(
input a,
input b,
output c
    );
    
    wire nand1, nand2, nand3;
    nand(nand1, a, a);
    nand(nand2, b, b);
    nand(nand3, nand1, nand2);
    nand(c, nand3, nand3);
    
endmodule
