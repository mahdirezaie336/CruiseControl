`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:40:01 09/20/2020
// Design Name:   D_FF
// Module Name:   C:/Users/Rezaie/Xilinx-workspace/LabProject/D_FF_tb.v
// Project Name:  LabProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_FF_tb;

	// Inputs
	reg d;
	reg clk;

	// Outputs
	wire q;
	wire q_not;

	// Instantiate the Unit Under Test (UUT)
	D_FF uut (
		.d(d), 
		.clk(clk), 
		.q(q), 
		.q_not(q_not)
	);

	initial begin
		// Initialize Inputs
		d = 1;
		#200;
		d = 0;
		#200;
		d = 1;
		
        
		// Add stimulus here

	end
	
	initial begin
		
		clk = 0;
		
		repeat(30) #100 clk = ~clk;
		
	end
      
endmodule

