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
// *****************************************************
// To use load input enable must be 0 and mode must be 1
//
//////////////////////////////////////////////////////////////////////////////////
module three_bit_counter(
    input enable,
    input mode,
	 input clk,
	 input clear,
	 input preset,
	 input [2:0] load,
    output [2:0] out
    );
	
	wire ja,ka,jb,kb,jc,kc,
		  not2,not1,not0,notmode,notenable,
		  notload2,notload1,notload0,
		  wja0,wja1,wka0,wka1,
		  wjb0,wjb1,wjb2,wjb3,wkb0,wkb1,wkb2,wkb3,
		  wjc0,wjc1,wjc2,wjc3,wjc4,wkc0,wkc1,wkc2,wkc3,wkc4;
		  
	not gnot0(notload0,load[0]),
		 gnot1(notload1,load[1]),
		 gnot2(notload2,load[2]),
		 gnot3(notmode,mode),
		 gnot4(notenable,enable);
	
	and and_ja0(wja0,out[1],out[0],enable,mode),
		 and_lja(wja1,notenable,mode,load[2]),
		 and_ka0(wka0,not1,not0,enable,notmode),
		 and_lka(wka1,notenable,mode,notload2),
		 
		 and_jb0(wjb0,out[0],enable,mode),
		 and_jb1(wjb1,out[2],not0,enable,notmode),
		 and_ljb(wjb2,notenable,mode,load[1]),
		 and_kb0(wkb0,not2,out[0],enable,mode),
		 and_kb1(wkb1,not0,enable,notmode),
		 and_lkb(wkb2,notenable,mode,notload1),
		 
		 and_jc0(wjc0,enable,mode),
		 and_jc1(wjc1,out[2],enable),
		 and_jc2(wjc2,out[1],enable),
		 and_ljc(wjc3,notenable,mode,load[0]),
		 and_kc0(wkc0,enable,not2),
		 and_kc1(wkc1,enable,notmode),
		 and_kc2(wkc2,enable,not1),
		 and_lkc(wkc3,notenable,mode,notload0);
	
	
	or or_loadja(ja,wja0,wja1),
		or_loadka(ka,wka0,wka1),
		or_loadjb(jb,wjb0,wjb1,wjb2),
		or_loadkb(kb,wkb0,wkb1,wkb2),
		or_loadjc(jc,wjc0,wjc1,wjc2,wjc3),
		or_loadkc(kc,wkc0,wkc1,wkc2,wkc3);
	
	JK_FF jka(ja,ka,clk,clear,preset,out[2],not2),
			jkb(jb,kb,clk,clear,preset,out[1],not1),
			jkc(jc,kc,clk,clear,preset,out[0],not0);

endmodule
