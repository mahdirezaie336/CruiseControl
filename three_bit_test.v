`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:05:58 09/20/2020
// Design Name:   three_bit_counter
// Module Name:   C:/Users/Rezaie/Xilinx-workspace/LabProject/three_bit_test.v
// Project Name:  LabProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: three_bit_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module three_bit_test;

	// Inputs
	reg enable;
	reg mode;
	reg clk;
	reg clear;
	reg preset;

	// Outputs
	wire [2:0] out;

	// Instantiate the Unit Under Test (UUT)
	three_bit_counter uut (
		.enable(enable), 
		.mode(mode), 
		.clk(clk), 
		.clear(clear),
		.preset(preset),
		.out(out)
	);

	initial begin
		// Initialize Inputs
		enable = 1;
		mode = 0;
		clear = 0;
		preset = 1;
		#100;
		preset = 0;
        
		// Add stimulus here

	end
	
	initial begin
	
		clk = 0;

		repeat(100) #50 clk = ~clk;
	
	end
	
      
endmodule

