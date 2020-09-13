`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:17:58 09/13/2020 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [7:0] default_speed,
    input [7:0] current_speed,
    input [1:0] mode,
    output [7:0] result,
    output G,
    output Eq,
    output L
    );
	
	wire not_mode1,w0,w1;
	not n0(not_mode1,mode[1]);
	and a0(w0,mode[0],not_mode1);			// mode = 01
	
	eight_bit_comparator c0(default_speed, current_speed,
									w0, G, Eq, L);
	eight_bit_adder_substractor as0(default_speed, 5, mode[0],
											  mode[1], result, w1);

endmodule
