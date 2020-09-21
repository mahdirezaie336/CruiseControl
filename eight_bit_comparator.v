`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:58 09/13/2020 
// Design Name: 
// Module Name:    eight_bit_cmparator 
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
module eight_bit_comparator(
    input [7:0] a,
    input [7:0] b,
	 input enable,
    output G,
    output Eq,
    output L
    );
	// x[0] is LSB
	wire g[1:7],e[1:7],l[1:7];
	
	one_bit_comparator c7(a[7],b[7], 0 ,enable, 0 ,g[7],e[7],l[7]),
							 c6(a[6],b[6],g[7],e[7],l[7],g[6],e[6],l[6]),
							 c5(a[5],b[5],g[6],e[6],l[6],g[5],e[5],l[5]),
							 c4(a[4],b[4],g[5],e[5],l[5],g[4],e[4],l[4]),
							 c3(a[3],b[3],g[4],e[4],l[4],g[3],e[3],l[3]),
							 c2(a[2],b[2],g[3],e[3],l[3],g[2],e[2],l[2]),
							 c1(a[1],b[1],g[2],e[2],l[2],g[1],e[1],l[1]),
							 c0(a[0],b[0],g[1],e[1],l[1], L  , Eq , G  );
							 

endmodule
