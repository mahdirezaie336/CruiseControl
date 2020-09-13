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
	 input enable,
    output G,
    output Eq,
    output L
    );
	
	wire nota,notb,w0,w1,w2;
	not n0(nota,a), 
		 n1(notb,b);
	and a0(w0,a,notb),
				a1(w1,nota,b),
				a2(G,w0,enable),
				a3(Eq,w2,enable),
				a4(L,w1,enable);
	xnor x0(w2,a,b);
	
	
endmodule
