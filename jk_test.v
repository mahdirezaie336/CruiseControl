`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:52:36 09/20/2020
// Design Name:   JK_FF
// Module Name:   C:/Users/Rezaie/Xilinx-workspace/LabProject/jk_test.v
// Project Name:  LabProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JK_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module jk_test;

	// Inputs
	reg j;
	reg k;
	reg clk;

	// Outputs
	wire q;
	wire q_not;

	// Instantiate the Unit Under Test (UUT)
	JK_FF uut (
		.j(j), 
		.k(k), 
		.clk(clk), 
		.q(q), 
		.q_not(q_not)
	);

	initial begin
		// Initialize Inputs
		j = 0;
		k = 0;

		// Wait 100 ns for global reset to finish
		#100;
      {j,k} = 1;
		#100;
      {j,k} = 2;
		#100;
      {j,k} = 3;
		#100;
      {j,k} = 1;
		#100;
      {j,k} = 2;
		#100;
      {j,k} = 3;
		#100;
      {j,k} = 1;
		#100;
      {j,k} = 2;
		#100;
      {j,k} = 3;
		
		// Add stimulus here

	end
	
	initial begin
		
		clk = 0;
		repeat(100) #50 clk = ~clk;
		
	end
      
endmodule

