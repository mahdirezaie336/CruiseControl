`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:04:18 09/13/2020
// Design Name:   comparator
// Module Name:   C:/Users/Rezaie/Xilinx-workspace/LabProject/comparator_tb.v
// Project Name:  LabProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparator_tb;

	// Inputs
	reg a;
	reg b;
	reg enable;

	// Outputs
	wire G;
	wire Eq;
	wire L;

	// Instantiate the Unit Under Test (UUT)
	comparator uut (
		.a(a), 
		.b(b), 
		.enable(enable), 
		.G(G), 
		.Eq(Eq), 
		.L(L)
	);
	
	integer i;
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		enable = 1;

		// Wait 100 ns for global reset to finish
		for(i = 0; i < 4; i=i+1) begin
			{a,b} = i;
			#100;
		end
        
		// Add stimulus here

	end
      
endmodule

