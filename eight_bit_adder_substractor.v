`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:57:29 09/13/2020 
// Design Name: 
// Module Name:    eight_bit_adder_substractor 
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
module eight_bit_adder_substractor(
    input [7:0] a,
    input [7:0] b,
    input sel,
	 input enable,
    output [7:0] s,
    output cout
    );
	
	wire [1:7] c;
	wire [7:0] w;
	full_adder_substractor g0(a[0],b[0],sel,sel,w[0],c[1]),
								  g1(a[1],b[1],c[1],sel,w[1],c[2]),
								  g2(a[2],b[2],c[2],sel,w[2],c[3]),
								  g3(a[3],b[3],c[3],sel,w[3],c[4]),
								  g4(a[4],b[4],c[4],sel,w[4],c[5]),
								  g5(a[5],b[5],c[5],sel,w[5],c[6]),
								  g6(a[6],b[6],c[6],sel,w[6],c[7]),
								  g7(a[7],b[7],c[7],sel,w[7],cout);
	
	and a7(s[7],w[7],enable),
		 a6(s[6],w[6],enable),
		 a5(s[5],w[5],enable),
		 a4(s[4],w[4],enable),
		 a3(s[3],w[3],enable),
		 a2(s[2],w[2],enable),
		 a1(s[1],w[1],enable),
		 a0(s[0],w[0],enable);
	
endmodule
