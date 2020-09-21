`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:51:39 09/21/2020
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
	reg [2:0] load;

	// Outputs
	wire [2:0] out;

	// Instantiate the Unit Under Test (UUT)
	three_bit_counter uut (
		.enable(enable), 
		.mode(mode), 
		.clk(clk), 
		.clear(clear), 
		.preset(preset), 
		.load(load), 
		.out(out)
	);
	
	integer i;
	initial begin
		// Initialize Inputs
		enable = 0;
		mode = 1;
		clear = 0;
		load = 0;
		preset = 1;
		#100;
		preset = 0;
		#100;
		for(i = 0; i < 8; i=i+1)
			#100 load = i;
        
		// Add stimulus here

	end
	
	initial begin
	
		clk = 0;

		repeat(100) #50 clk = ~clk;
	
	end
      
endmodule

