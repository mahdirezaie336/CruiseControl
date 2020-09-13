`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:32:30 09/13/2020
// Design Name:   ALU
// Module Name:   C:/Users/Rezaie/Xilinx-workspace/LabProject/ALU_tb.v
// Project Name:  LabProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_tb;

	// Inputs
	reg [7:0] default_speed;
	reg [7:0] current_speed;
	reg [1:0] mode;

	// Outputs
	wire [7:0] result;
	wire G;
	wire Eq;
	wire L;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.default_speed(default_speed), 
		.current_speed(current_speed), 
		.mode(mode), 
		.result(result), 
		.G(G), 
		.Eq(Eq), 
		.L(L)
	);

	initial begin
		// Initialize Inputs
		default_speed = 220;
		current_speed = 220;
		mode = 3;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

