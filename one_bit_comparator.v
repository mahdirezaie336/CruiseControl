`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:58:28 09/13/2020 
// Design Name: 
// Module Name:    one_bit_comparator 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module one_bit_comparator(
    input a,
    input b,
    input in_g,
    input in_eq,
    input in_l,
    output G,
    output Eq,
    output L
    );
	
	wire w0,w1,w2;
	comparator c0(a,b,w0,w1,w2);
	or #(5) o0(G,w0,in_g);
	or #(5) o1(Eq,w1,in_eq);
	or #(5) o2(L,w2,in_l);

endmodule
