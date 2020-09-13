`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:08 09/13/2020 
// Design Name: 
// Module Name:    comparator 
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
module comparator(
    input a,
    input b,
    output G,
    output Eq,
    output L
    );
	
	wire nota,notb;
	not #(5) n0(nota,a), 
				n1(notb,b);
	and #(5) a0(G,a,notb),
				a1(L,nota,b);
	xnor #(10) x0(Eq,a,b);
	
endmodule
