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
    output [7:0] s,
    output cout
    );
	
	wire [1:7] c;
	full_adder_substractor g0(a[0],b[0],sel,sel,s[0],c[1]),
								  g1(a[1],b[1],c[1],sel,s[1],c[2]),
								  g2(a[2],b[2],c[2],sel,s[2],c[3]),
								  g3(a[3],b[3],c[3],sel,s[3],c[4]),
								  g4(a[4],b[4],c[4],sel,s[4],c[5]),
								  g5(a[5],b[5],c[5],sel,s[5],c[6]),
								  g6(a[6],b[6],c[6],sel,s[6],c[7]),
								  g7(a[7],b[7],c[7],sel,s[7],cout);

endmodule
