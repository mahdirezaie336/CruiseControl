`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:32:02 09/20/2020 
// Design Name: 
// Module Name:    D_FF 
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
module D_FF(
    input d,
    input clk,
	 input clear,
	 input preset,
    output q,
    output q_not
    );
	
	assign q_not = ~ q;
	reg q;
	always @(posedge clk) begin
		if(clear)
			q = 0;
		else
			if(preset)
				q = 1;
			else
				q = d;
	end

endmodule
