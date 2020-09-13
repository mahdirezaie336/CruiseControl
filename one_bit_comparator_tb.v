`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:19:23 09/13/2020
// Design Name:   one_bit_comparator
// Module Name:   C:/Users/Rezaie/Xilinx-workspace/LabProject/one_bit_comparator_tb.v
// Project Name:  LabProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: one_bit_comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module one_bit_comparator_tb;

	// Inputs
	reg a;
	reg b;
	reg in_g;
	reg in_eq;
	reg in_l;

	// Outputs
	wire G;
	wire Eq;
	wire L;

	// Instantiate the Unit Under Test (UUT)
	one_bit_comparator uut (
		.a(a), 
		.b(b), 
		.in_g(in_g), 
		.in_eq(in_eq), 
		.in_l(in_l), 
		.G(G), 
		.Eq(Eq), 
		.L(L)
	);
	
	integer i;
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		in_g = 0;
		in_eq = 0;
		in_l = 0;

		// Wait 100 ns for global reset to finish
		#100;
		in_g = 1;
		in_eq = 0;
		in_l = 0;
      for(i = 0; i < 4; i=i+1) begin
			{a,b} = i;
			#100;
		end
		// Add stimulus here

	end
      
endmodule

