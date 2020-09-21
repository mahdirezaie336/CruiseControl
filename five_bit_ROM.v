`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:40:40 09/21/2020 
// Design Name: 
// Module Name:    five_bit_ROM 
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
module five_bit_ROM(
    input [4:0] in,
    output [4:0] out
    );
	
	reg out;
	always @(in)
		case(in)
			1: out = 5'b00001;
			2: out = 0;
			4: out = 2;
			8: out = 3;
			16: out = 17;
			default: out = 0;
		endcase

endmodule
