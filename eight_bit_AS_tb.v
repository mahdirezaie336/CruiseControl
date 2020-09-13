`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:33:47 09/13/2020
// Design Name:   eight_bit_adder_substractor
// Module Name:   C:/Users/Rezaie/Xilinx-workspace/LabProject/eight_bit_AS_tb.v
// Project Name:  LabProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eight_bit_adder_substractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module eight_bit_AS_tb;

	// Inputs
	reg [0:7] a;
	reg [0:7] b;
	reg sel;
	reg enable;

	// Outputs
	wire [0:7] s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	eight_bit_adder_substractor uut (
		.a(a), 
		.b(b), 
		.sel(sel), 
		.enable(enable),
		.s(s), 
		.cout(cout)
	);

	integer i,j;
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		sel = 0;
		enable = 1;

		// Wait 100 ns for global reset to finish
		#100;
      for(i = 253; i < 255; i=i+1) begin
			for(j = 2; j < 5; j=j+1) begin
				{a} = i;
				{b} = j;
				#100;
			end
		end
		
		a = 0;
		b = 0;
		sel = 1;
		#500;
		
		for(i = 8; i < 11; i=i+1) begin
			for(j = 2; j < 5; j=j+1) begin
				{a} = i;
				{b} = j;
				#100;
			end
		end
		// Add stimulus here

	end
      
endmodule

