`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:56:09 09/13/2020 
// Design Name: 
// Module Name:    full_adder_substractor 
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
module full_adder_substractor(
    input a,
    input b,
    input cin,
    input sel,
    output sum,
    output cout
    );
	
	wire w0;
	xor #(10) x0(w0,b,sel);
	full_adder g0(a,w0,cin,sum,cout);

endmodule
