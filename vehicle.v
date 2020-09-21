`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:45 09/21/2020 
// Design Name: 
// Module Name:    vehicle 
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
module vehicle(
    input [3:0] fuel,
    output [7:0] current_speed
    );
	
	reg current_speed;
	always @(fuel) begin
		#150 current_speed = current_speed + fuel;
	end

endmodule
