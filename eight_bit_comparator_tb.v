`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:18:00 09/13/2020
// Design Name:   eight_bit_comparator
// Module Name:   C:/Users/Rezaie/Xilinx-workspace/LabProject/eight_bit_comparator_tb.v
// Project Name:  LabProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eight_bit_comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module eight_bit_comparator_tb;

	// Inputs
	reg [0:7] a;
	reg [0:7] b;

	// Outputs
	wire G;
	wire Eq;
	wire L;

	// Instantiate the Unit Under Test (UUT)
	eight_bit_comparator uut (
		.a(a), 
		.b(b), 
		.G(G), 
		.Eq(Eq), 
		.L(L)
	);
	
	integer i = 0, j = 0;
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		for(i = 6; i < 11; i=i+1) begin
			a = i;
			for(j = 6; j < 11; j=j+1) begin
				b = j;
				#100;
			end
		end
		// Add stimulus here

	end
      
endmodule

