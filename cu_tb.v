`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:54:42 09/21/2020
// Design Name:   control_unit
// Module Name:   C:/Users/Rezaie/Xilinx-workspace/LabProject/cu_tb.v
// Project Name:  LabProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cu_tb;

	// Inputs
	reg [7:0] current_speed;
	reg [1:0] mode;
	reg [2:0] consc_level;
	reg clk;
	reg clear;
	reg preset;

	// Outputs
	wire brake;
	wire [2:0] fuel_level;
	wire [7:0] default_speed;

	// Instantiate the Unit Under Test (UUT)
	control_unit uut (
		.current_speed(current_speed), 
		.mode(mode), 
		.consc_level(consc_level), 
		.clk(clk), 
		.clear(clear), 
		.preset(preset), 
		.brake(brake), 
		.fuel_level(fuel_level), 
		.default_speed(default_speed)
	);

	initial begin
		// Initialize Inputs
		current_speed = 0;
		mode = 2;
		consc_level = 4;
		clear = 1;
		preset = 0;
		// Wait 100 ns to clear flip flops
		#100;
		clear = 0;
		
		#200;
		mode = 1;
		
		#300;
		current_speed = 100;
		// Add stimulus here

	end
	
	initial begin
		
		clk = 0;
		repeat(100) #50 clk = ~clk;
		
	end
      
endmodule

