`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:12:59 09/20/2020 
// Design Name: 
// Module Name:    seven_bit_counter 
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
module three_bit_counter(
    input enable,
    input mode,
	 input clk,
	 input clear,
	 input preset,
    output [2:0] out
    );
	
	wire ja,ka,jb,kb,jc,kc,
		  not2,not1,not0,notmode,
		  wjb0,wjb1,wkb0,wkb1,
		  wjc0,wjc1,wjc2,wkc0,wkc1,wkc2;
		  
	not gnot3(notmode,mode);
	
	and and0(ja,out[1],out[0],enable,mode),
		 and1(ka,not1,not0,enable,notmode),
		 and_jb0(wjb0,out[0],enable,mode),
		 and_jb1(wjb1,out[2],not0,enable,notmode),
		 and_kb0(wkb0,not2,out[0],enable,mode),
		 and_kb1(wkb1,not0,enable,notmode),
		 and_jc0(wjc0,enable,mode),
		 and_jc1(wjc1,out[2],enable),
		 and_jc2(wjc2,out[1],enable),
		 and_kc0(wkc0,enable,not2),
		 and_kc1(wkc1,enable,notmode),
		 and_kc2(wkc2,enable,not1);
	
	or or0(jb,wjb0,wjb1),
		or1(kb,wkb0,wkb1),
		or2(jc,wjc0,wjc1,wjc2),
		or3(kc,wkc0,wkc1,wkc2);
	
	JK_FF jka(ja,ka,clk,clear,preset,out[2],not2),
			jkb(jb,kb,clk,clear,preset,out[1],not1),
			jkc(jc,kc,clk,clear,preset,out[0],not0);

endmodule
