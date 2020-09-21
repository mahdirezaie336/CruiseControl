`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:39:01 09/21/2020 
// Design Name: 
// Module Name:    control_unit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module control_unit(
    input [7:0] current_speed,
    input [1:0] mode,
    input [2:0] consc_level,
    input clk,
	 input clear,
	 input preset,
    output brake,
    output [2:0] fuel_level,
    output [7:0] default_speed
    );
	
	wire [7:0] swire;
	wire G, Eq, L;
	wire [4:0] fwire;
	wire [4:0] cwire;
	wire notCL0, notCL1, notCL2;
	
	ALU alu(default_speed, current_speed, mode, swire, G, Eq, L);
	
	eight_bit_parallel_register 
	#5 r0(swire, clk, mode[1], clear, preset, default_speed);
	
	not not0(notCL0, consc_level[0]),
		 not1(notCL1, consc_level[1]),
		 not2(notCL2, consc_level[2]);
	
	and and0(fwire[0], Eq, consc_level[2]),
		 and1(fwire[1], G, consc_level[2]),
		 and2(fwire[2], L, consc_level[2]),
		 and3(fwire[3], notCL2, consc_level[1]),
		 and4(fwire[4], notCL2, notCL1),
		 and5(brake, notCL0, notCL1, notCL2);
	
	or or0(cwire[3],fwire[1],fwire[2]),
		or1(cwire[4],fwire[0],fwire[2],fwire[4]);
	
	three_bit_counter counter(cwire[3], cwire[4], clk, clear,
								preset, {fwire[0],0,0}, fuel_level);
	
endmodule
