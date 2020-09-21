`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:05:43 09/21/2020
// Design Name:   eight_bit_parallel_register
// Module Name:   C:/Users/Rezaie/Xilinx-workspace/LabProject/parallel_register_tb.v
// Project Name:  LabProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eight_bit_parallel_register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module parallel_register_tb;

	// Inputs
	reg [7:0] in;
	reg clk;
	reg enable;
	reg clear;
	reg preset;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	eight_bit_parallel_register uut (
		.in(in), 
		.clk(clk), 
		.enable(enable), 
		.clear(clear), 
		.preset(preset), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		enable = 1;
		clear = 1;
		preset = 0;

		// Wait 100 ns for global reset to finish
		#100;
      clear = 0;
		#80;
		in = 44;
		#80;
		in = 149;
		// Add stimulus here
		
	end
	
	initial begin
		
		clk = 0;
		repeat(100) #50 clk = ~clk;
		
	end
      
endmodule

