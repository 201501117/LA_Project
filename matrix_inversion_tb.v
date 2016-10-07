`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Simran Vaswani
//
// Create Date:   19:13:33 10/07/2016
// Design Name:   matrix_inversion
// Module Name:   C:/.Xilinx/la/matrix_inversion_tb.v
// Project Name:  la
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: matrix_inversion
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module matrix_inversion_tb;

	// inputs
	reg clk;
	reg [31:0] in11;
	reg [31:0] in12;
	reg [31:0] in13;
	reg [31:0] in14;
	reg [31:0] in15;
	reg [31:0] in21;
	reg [31:0] in22;
	reg [31:0] in23;
	reg [31:0] in24;
	reg [31:0] in25;
	reg [31:0] in31;
	reg [31:0] in32;
	reg [31:0] in33;
	reg [31:0] in34;
	reg [31:0] in35;
	reg [31:0] in41;
	reg [31:0] in42;
	reg [31:0] in43;
	reg [31:0] in44;
	reg [31:0] in45;
	reg [31:0] in51;
	reg [31:0] in52;
	reg [31:0] in53;
	reg [31:0] in54;
	reg [31:0] in55;

	// Outputs
	wire [31:0] op11;
	wire [31:0] op12;
	wire [31:0] op13;
	wire [31:0] op14;
	wire [31:0] op15;
	wire [31:0] op21;
	wire [31:0] op22;
	wire [31:0] op23;
	wire [31:0] op24;
	wire [31:0] op25;
	wire [31:0] op31;
	wire [31:0] op32;
	wire [31:0] op33;
	wire [31:0] op34;
	wire [31:0] op35;
	wire [31:0] op41;
	wire [31:0] op42;
	wire [31:0] op43;
	wire [31:0] op44;
	wire [31:0] op45;
	wire [31:0] op51;
	wire [31:0] op52;
	wire [31:0] op53;
	wire [31:0] op54;
	wire [31:0] op55;
	wire [31:0] op11d;
	wire [31:0] op12d;
	wire [31:0] op13d;
	wire [31:0] op14d;
	wire [31:0] op15d;
	wire [31:0] op21d;
	wire [31:0] op22d;
	wire [31:0] op23d;
	wire [31:0] op24d;
	wire [31:0] op25d;
	wire [31:0] op31d;
	wire [31:0] op32d;
	wire [31:0] op33d;
	wire [31:0] op34d;
	wire [31:0] op35d;
	wire [31:0] op41d;
	wire [31:0] op42d;
	wire [31:0] op43d;
	wire [31:0] op44d;
	wire [31:0] op45d;
	wire [31:0] op51d;
	wire [31:0] op52d;
	wire [31:0] op53d;
	wire [31:0] op54d;
	wire [31:0] op55d;

	// instantiate the Unit Under Test (UUT)
	matrix_inversion uut (
		.clk(clk), 
		.in11(in11), 
		.in12(in12), 
		.in13(in13), 
		.in14(in14), 
		.in15(in15), 
		.in21(in21), 
		.in22(in22), 
		.in23(in23), 
		.in24(in24), 
		.in25(in25), 
		.in31(in31), 
		.in32(in32), 
		.in33(in33), 
		.in34(in34), 
		.in35(in35), 
		.in41(in41), 
		.in42(in42), 
		.in43(in43), 
		.in44(in44), 
		.in45(in45), 
		.in51(in51), 
		.in52(in52), 
		.in53(in53), 
		.in54(in54), 
		.in55(in55), 
		.op11(op11), 
		.op12(op12), 
		.op13(op13), 
		.op14(op14), 
		.op15(op15), 
		.op21(op21), 
		.op22(op22), 
		.op23(op23), 
		.op24(op24), 
		.op25(op25), 
		.op31(op31), 
		.op32(op32), 
		.op33(op33), 
		.op34(op34), 
		.op35(op35), 
		.op41(op41), 
		.op42(op42), 
		.op43(op43), 
		.op44(op44), 
		.op45(op45), 
		.op51(op51), 
		.op52(op52), 
		.op53(op53), 
		.op54(op54), 
		.op55(op55), 
		.op11d(op11d), 
		.op12d(op12d), 
		.op13d(op13d), 
		.op14d(op14d), 
		.op15d(op15d), 
		.op21d(op21d), 
		.op22d(op22d), 
		.op23d(op23d), 
		.op24d(op24d), 
		.op25d(op25d), 
		.op31d(op31d), 
		.op32d(op32d), 
		.op33d(op33d), 
		.op34d(op34d), 
		.op35d(op35d), 
		.op41d(op41d), 
		.op42d(op42d), 
		.op43d(op43d), 
		.op44d(op44d), 
		.op45d(op45d), 
		.op51d(op51d), 
		.op52d(op52d), 
		.op53d(op53d), 
		.op54d(op54d), 
		.op55d(op55d)
	);

	initial 
	begin
		clk = 0;
		in11 = 0;
		in12 = 0;
		in13 = 0;
		in14 = 0;
		in15 = 0;
		in21 = 0;
		in22 = 0;
		in23 = 0;
		in24 = 0;
		in25 = 0;
		in31 = 0;
		in32 = 0;
		in33 = 0;
		in34 = 0;
		in35 = 0;
		in41 = 0;
		in42 = 0;
		in43 = 0;
		in44 = 0;
		in45 = 0;
		in51 = 0;
		in52 = 0;
		in53 = 0;
		in54 = 0;
		in55 = 0;

		#250;  //after this time interval
		in11 = 32'd1;
		in12 = 32'd1;
		in13 = 32'd1;
		in14 = 32'd1;
		in15 = 32'd1;
		in21 = 32'd11;
		in22 = 32'd12;
		in23 = 32'd11;
		in24 = 32'd11;
		in25 = 32'd11;
		in31 = 32'd13;
		in32 = 32'd13;
		in33 = 32'd14;
		in34 = 32'd13;
		in35 = 32'd13;
		in41 = 32'd7;
		in42 = 32'd7;
		in43 = 32'd7;
		in44 = 32'd8;
		in45 = 32'd7;
		in51 = 32'd3;
		in52 = 32'd3;
		in53 = 32'd3;
		in54 = 32'd3;
		in55 = 32'd4;
		
		#500;
		clk = 1'b1;

	end
      

endmodule

