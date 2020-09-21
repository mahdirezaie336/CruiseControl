`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:56:56 09/21/2020 
// Design Name: 
// Module Name:    eight_bit_parallel_register 
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
module eight_bit_parallel_register(
    input [7:0] in,
    input clk,
    input enable,
	 input clear,
	 input preset,
    output [7:0] out
    );
	
	wire d[7:0];
	wire outnot[7:0];
	
	and and0(d[0],in[0],enable),
		 and1(d[1],in[1],enable),
		 and2(d[2],in[2],enable),
		 and3(d[3],in[3],enable),
		 and4(d[4],in[4],enable),
		 and5(d[5],in[5],enable),
		 and6(d[6],in[6],enable),
		 and7(d[7],in[7],enable);
	
	D_FF dff0(d[0],clk,clear,preset,out[0],outnot[0]),
		  dff1(d[1],clk,clear,preset,out[1],outnot[1]),
		  dff2(d[2],clk,clear,preset,out[2],outnot[2]),
		  dff3(d[3],clk,clear,preset,out[3],outnot[3]),
		  dff4(d[4],clk,clear,preset,out[4],outnot[4]),
		  dff5(d[5],clk,clear,preset,out[5],outnot[5]),
		  dff6(d[6],clk,clear,preset,out[6],outnot[6]),
		  dff7(d[7],clk,clear,preset,out[7],outnot[7]);

endmodule
