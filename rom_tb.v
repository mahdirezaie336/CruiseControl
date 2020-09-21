`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:51:31 09/21/2020
// Design Name:   five_bit_ROM
// Module Name:   C:/Users/Rezaie/Xilinx-workspace/LabProject/rom_tb.v
// Project Name:  LabProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: five_bit_ROM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rom_tb;

	// Inputs
	reg [4:0] in;

	// Outputs
	wire [4:0] out;

	// Instantiate the Unit Under Test (UUT)
	five_bit_ROM uut (
		.in(in), 
		.out(out)
	);
	
	integer i;
	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
      in = 16;
		#100;
      in = 8;
		#100;
      in = 4;
		#100;
      in = 2;
		#100;
      in = 1;
		#100;
		
		for(i = 0; i < 17; i=i+1)begin
			#100 in = i;
		end
		// Add stimulus here

	end
      
endmodule

