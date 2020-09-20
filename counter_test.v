`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:47:25 09/20/2020
// Design Name:   seven_bit_counter
// Module Name:   C:/Users/Rezaie/Xilinx-workspace/LabProject/counter_test.v
// Project Name:  LabProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seven_bit_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_test;

	// Inputs
	reg enable;
	reg mode;
	reg clk;

	// Outputs
	wire [2:0] out;

	// Instantiate the Unit Under Test (UUT)
	seven_bit_counter uut (
		.enable(enable), 
		.mode(mode), 
		.clk(clk), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		enable = 1;
		mode = 1;

		
        
		// Add stimulus here

	end
	
	initial begin
		
		clk = 0;
		repeat(100) #50 clk = ~clk;
		
	end
      
endmodule

