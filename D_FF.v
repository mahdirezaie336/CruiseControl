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
    output q,
    output q_not
    );
	
	reg q,q_not;
	always @(posedge clk) begin
		q = d;
		q_not = ~q;
	end

endmodule
