`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2023 00:15:18
// Design Name: 
// Module Name: comparator
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


module comparator(
    input a0, 
    input a1,
    input a2,
    input a3,
    input b0, 
    input b1,
    input b2,
    input b3,
    
    output AeqB,
    output AltB,
    output AgtB
);

wire xnor1_out, xnor2_out, xnor3_out, xnor4_out;
wire and1_out, and2_out, and3_out;
wire not1_out, not2_out, not3_out, not4_out;

wire and4_out, and5_out, and6_out, and7_out;

wire and8_out, and9_out, and10_out;

wire and11_out, and12_out;

wire and13_out;

wire or1_out, or2_out;

//////////////XNOR//////////////////
nand_xnor xnor1(
.a(a0),
.b(b0),
.c(xnor1_out)
);

nand_xnor xnor2(
.a(a1),
.b(b1),
.c(xnor2_out)
);

nand_xnor xnor3(
.a(a2),
.b(b2),
.c(xnor3_out)
);

nand_xnor xnor4(
.a(a3),
.b(b3),
.c(xnor4_out)
);
/////////////////AND1/////////////
nand_and and1(
.a(xnor1_out),
.b(xnor2_out),
.c(and1_out)
);

nand_and and2(
.a(xnor3_out),
.b(xnor4_out),
.c(and2_out)
);

nand_and and3(
.a(and1_out),
.b(and2_out),
.c(AeqB)
);
//////////////NOT////////////////
nand_not not1(
.a(b0),
.b(not1_out)
);

nand_not not2(
.a(b1),
.b(not2_out)
);

nand_not not3(
.a(b2),
.b(not3_out)
);

nand_not not4(
.a(b3),
.b(not4_out)
);
///////////////AND2/////////////and7_out
nand_and and4(
.a(xnor3_out),
.b(xnor4_out),
.c(and4_out)
);

nand_and and5(
.a(xnor2_out),
.b(not1_out),
.c(and5_out)
);

nand_and and6(
.a(and4_out),
.b(and5_out),
.c(and6_out)
);

nand_and and7(
.a(and6_out),
.b(a0),
.c(and7_out)
);
///////////////AND3/////////////
nand_and and8(
.a(xnor3_out),
.b(xnor4_out),
.c(and8_out)
);

nand_and and9(
.a(not2_out),
.b(a1),
.c(and9_out)
);

nand_and and10(
.a(and8_out),
.b(and9_out),
.c(and10_out)
);
///////////////AND4////////////
nand_and and11(
.a(xnor4_out),
.b(not3_out),
.c(and11_out)
);

nand_and and12(
.a(and11_out),
.b(a2),
.c(and12_out)
);
/////////////AND5//////////////
nand_and and13(
.a(not4_out),
.b(a3),
.c(and13_out)
);
////////////OR////////////////
nand_or or1(
.a(and7_out),
.b(and10_out),
.c(or1_out)
);

nand_or or2(
.a(and12_out),
.b(and13_out),
.c(or2_out)
);

nand_or or3(
.a(or1_out),
.b(or2_out),
.c(AgtB)
);
///////////////NOR/////////
nand_nor nor1(
.a(AeqB),
.b(AgtB),
.c(AltB)
);
endmodule
