`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:14:39 09/20/2020 
// Design Name: 
// Module Name:    JK_FF 
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
module JK_FF(
    input j,
    input k,
    input clk,
	 input clear,
	 input preset,
    output q,
    output q_not
    );
	
	assign q_not = ~q;
	reg q;
	always @(posedge clk) begin
		if(clear) 
			q = 0;
		else
			if(preset)
				q = 1;
			else
				case({j,k})
					0: q = q;
					1: q = 0;
					2: q = 1;
					3: q = ~q;
				endcase
	end

endmodule
