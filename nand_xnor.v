`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2023 00:23:28
// Design Name: 
// Module Name: nand_xnor
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


module nand_xnor(
    input a,
    input b,
    output c
    );
    
    wire nand1, nand2, nand3, nand4;
    
    nand(nand1, a, b);
    nand(nand2, a, nand1);
    nand(nand3, b, nand1);
    nand(nand4, nand2, nand3);
    
    nand(c, nand4, nand4);


endmodule
