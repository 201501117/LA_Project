`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Simran Vaswani
// 
// Create Date:    19:11:29 10/07/2016 
// Design Name: Matrix inverter
// Module Name:    matrix_inversion 
// Project Name: la
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module matrix_inversion(clk,in11,in12,in13,in14,in15,in21,in22,in23,in24,in25,in31,in32,in33,in34,in35,in41,in42,in43,in44,in45,in51,in52,in53,in54,in55,op11,op12,op13,op14,op15,op21,op22,op23,op24,op25,op31,op32,op33,op34,op35,op41,op42,op43,op44,op45,op51,op52,op53,op54,op55,op11d,op12d,op13d,op14d,op15d,op21d,op22d,op23d,op24d,op25d,op31d,op32d,op33d,op34d,op35d,op41d,op42d,op43d,op44d,op45d,op51d,op52d,op53d,op54d,op55d);

//outputs
output [31:0] op11d,op12d,op13d,op14d,op15d;
output [31:0] op21d,op22d,op23d,op24d,op25d;
output [31:0] op31d,op32d,op33d,op34d,op35d;
output [31:0] op41d,op42d,op43d,op44d,op45d;
output [31:0] op51d,op52d,op53d,op54d,op55d;

output reg [31:0] op11,op12,op13,op14,op15,op21,op22,op23,op24,op25,op31,op32,op33,op34,op35,op41,op42,op43,op44,op45,op51,op52,op53,op54,op55;
//register
reg [31:0] inverse[0:24];

//inputs
input clk;
input [31:0] in11,in12,in13,in14,in15,in21,in22,in23,in24,in25,in31,in32,in33,in34,in35,in41,in42,in43,in44,in45,in51,in52,in53,in54,in55;

//registers
reg [31:0] op11t = 32'd1;
reg [31:0] op12t = 32'd0;
reg [31:0] op13t = 32'd0;
reg [31:0] op14t = 32'd0;
reg [31:0] op15t = 32'd0;

reg [31:0] op21t = 32'd0;
reg [31:0] op22t = 32'd1;
reg [31:0] op23t = 32'd0;
reg [31:0] op24t = 32'd0;
reg [31:0] op25t = 32'd0;

reg [31:0] op31t = 32'd0;
reg [31:0] op32t = 32'd0;
reg [31:0] op33t = 32'd1;
reg [31:0] op34t = 32'd0;
reg [31:0] op35t = 32'd0;

reg [31:0] op41t = 32'd0;
reg [31:0] op42t = 32'd0;
reg [31:0] op43t = 32'd0;
reg [31:0] op44t = 32'd1;
reg [31:0] op45t = 32'd0;

reg [31:0] op51t = 32'd0;
reg [31:0] op52t = 32'd0;
reg [31:0] op53t = 32'd0;
reg [31:0] op54t = 32'd0;
reg [31:0] op55t = 32'd1;

reg [31:0] x;
reg [31:0] y;

reg [31:0] in11t,in12t,in13t,in14t,in15t,in21t,in22t,in23t,in24t,in25t,in31t,in32t,in33t,in34t,in35t,in41t,in42t,in43t,in44t,in45t,in51t,in52t,in53t,in54t,in55t;

//outputs generated at the positive edge of clock
always@(posedge clk)
begin

in11t = (in11 > 0 ? in11 : (~in11+32'd1));
in12t = (in12 > 0 ? in12 : (~in12+32'd1));
in13t = (in13 > 0 ? in13 : (~in13+32'd1));
in14t = (in14 > 0 ? in14 : (~in14+32'd1));
in15t = (in15 > 0 ? in15 : (~in15+32'd1));

in21t = (in21 > 0 ? in21 : (~in21 + 32'd1));
in22t = (in22 > 0 ? in22 : (~in22 + 32'd1));
in23t = (in23 > 0 ? in23 : (~in23 + 32'd1));
in24t = (in24 > 0 ? in24 : (~in24 + 32'd1));
in25t = (in25 > 0 ? in25 : (~in25 + 32'd1));

in31t = (in31 > 0 ? in31 : (~in31 + 32'd1));
in32t = (in32 > 0 ? in32 : (~in32 + 32'd1));
in33t = (in33 > 0 ? in33 : (~in33 + 32'd1));
in34t = (in34 > 0 ? in34 : (~in34 + 32'd1));
in35t = (in35 > 0 ? in35 : (~in35 + 32'd1));

in41t = (in41 > 0 ? in41 : (~in41+32'd1));
in42t = (in42 > 0 ? in42 : (~in42+32'd1));
in43t = (in43 > 0 ? in43 : (~in43+32'd1));
in44t = (in44 > 0 ? in44 : (~in44+32'd1));
in45t = (in45 > 0 ? in45 : (~in45+32'd1));

in51t = (in51 > 0 ? in51 : (~in51+32'd1));
in52t = (in52 > 0 ? in52 : (~in52+32'd1));
in53t = (in53 > 0 ? in53 : (~in53+32'd1));
in54t = (in54 > 0 ? in54 : (~in54+32'd1));
in55t = (in55 > 0 ? in55 : (~in55+32'd1));

x = in11t;
y = in21t;

in21t = x*in21t - y*in11t;
in22t = x*in22t - y*in12t;
in23t = x*in23t - y*in13t;
in24t = x*in24t - y*in14t;
in25t = x*in25t - y*in15t;
op21t = x*op21t - y*op11t;
op22t = x*op22t - y*op12t;
op23t = x*op23t - y*op13t;
op24t = x*op24t - y*op14t;
op25t = x*op25t - y*op15t;

x = in11t;
y = in31t;

in31t = x*in31t - y*in11t;
in32t = x*in32t - y*in12t;
in33t = x*in33t - y*in13t;
in34t = x*in34t - y*in14t;
in35t = x*in35t - y*in15t;
op31t = x*op31t - y*op11t;
op32t = x*op32t - y*op12t;
op33t = x*op33t - y*op13t;
op34t = x*op34t - y*op14t;
op35t = x*op35t - y*op15t;

x = in11t;
y = in41t;

in41t = x*in41t - y*in11t;
in42t = x*in42t - y*in12t;
in43t = x*in43t - y*in13t;
in44t = x*in44t - y*in14t;
in45t = x*in45t - y*in15t;
op41t = x*op41t - y*op11t;
op42t = x*op42t - y*op12t;
op43t = x*op43t - y*op13t;
op44t = x*op44t - y*op14t;
op45t = x*op45t - y*op15t;

x = in11t;
y = in51t;

in51t = x*in51t - y*in11t;
in52t = x*in52t - y*in12t;
in53t = x*in53t - y*in13t;
in54t = x*in54t - y*in14t;
in55t = x*in55t - y*in15t;
op51t = x*op51t - y*op11t;
op52t = x*op52t - y*op12t;
op53t = x*op53t - y*op13t;
op54t = x*op54t - y*op14t;
op55t = x*op55t - y*op15t;

x = in22t;
y = in12t;

in11t = x*in11t - y*in21t;
in12t = x*in12t - y*in22t;
in13t = x*in13t - y*in23t;
in14t = x*in14t - y*in24t;
in15t = x*in15t - y*in25t;
op11t = x*op11t - y*op21t;
op12t = x*op12t - y*op22t;
op13t = x*op13t - y*op23t;
op14t = x*op14t - y*op24t;
op15t = x*op15t - y*op25t;

x = in22t;
y = in32t;

in31t = x*in31t - y*in21t;
in32t = x*in32t - y*in22t;
in33t = x*in33t - y*in23t;
in34t = x*in34t - y*in24t;
in35t = x*in35t - y*in25t;
op31t = x*op31t - y*op21t;
op32t = x*op32t - y*op22t;
op33t = x*op33t - y*op23t;
op34t = x*op34t - y*op24t;
op35t = x*op35t - y*op25t;

x = in22t;
y = in42t;

in41t = x*in41t - y*in21t;
in42t = x*in42t - y*in22t;
in43t = x*in43t - y*in23t;
in44t = x*in44t - y*in24t;
in45t = x*in45t - y*in25t;
op41t = x*op41t - y*op21t;
op42t = x*op42t - y*op22t;
op43t = x*op43t - y*op23t;
op44t = x*op44t - y*op24t;
op45t = x*op45t - y*op25t;

x = in22t;
y = in52t;

in51t = x*in51t - y*in21t;
in52t = x*in52t - y*in22t;
in53t = x*in53t - y*in23t;
in54t = x*in54t - y*in24t;
in55t = x*in55t - y*in25t;
op51t = x*op51t - y*op21t;
op52t = x*op52t - y*op22t;
op53t = x*op53t - y*op23t;
op54t = x*op54t - y*op24t;
op55t = x*op55t - y*op25t;

x = in33t;
y = in13t;

in11t = x*in11t - y*in31t;
in12t = x*in12t - y*in32t;
in13t = x*in13t - y*in33t;
in14t = x*in14t - y*in34t;
in15t = x*in15t - y*in35t;
op11t = x*op11t - y*op31t;
op12t = x*op12t - y*op32t;
op13t = x*op13t - y*op33t;
op14t = x*op14t - y*op34t;
op15t = x*op15t - y*op35t;

x = in33t;
y = in23t;

in21t = x*in21t - y*in31t;
in22t = x*in22t - y*in32t;
in23t = x*in23t - y*in33t;
in24t = x*in24t - y*in34t;
in25t = x*in25t - y*in35t;
op21t = x*op21t - y*op31t;
op22t = x*op22t - y*op32t;
op23t = x*op23t - y*op33t;
op24t = x*op24t - y*op34t;
op25t = x*op25t - y*op35t;

x = in33t;
y = in43t;

in41t = x*in41t - y*in31t;
in42t = x*in42t - y*in32t;
in43t = x*in43t - y*in33t;
in44t = x*in44t - y*in34t;
in45t = x*in45t - y*in35t;
op41t = x*op41t - y*op31t;
op42t = x*op42t - y*op32t;
op43t = x*op43t - y*op33t;
op44t = x*op44t - y*op34t;
op45t = x*op45t - y*op35t;

x = in33t;
y = in53t;

in51t = x*in51t - y*in31t;
in52t = x*in52t - y*in32t;
in53t = x*in53t - y*in33t;
in54t = x*in54t - y*in34t;
in55t = x*in55t - y*in35t;
op51t = x*op51t - y*op31t;
op52t = x*op52t - y*op32t;
op53t = x*op53t - y*op33t;
op54t = x*op54t - y*op34t;
op55t = x*op55t - y*op35t;


x = in44t;
y = in14t;

in11t = x*in11t - y*in41t;
in12t = x*in12t - y*in42t;
in13t = x*in13t - y*in43t;
in14t = x*in14t - y*in44t;
in15t = x*in15t - y*in45t;
op11t = x*op11t - y*op41t;
op12t = x*op12t - y*op42t;
op13t = x*op13t - y*op43t;
op14t = x*op14t - y*op44t;
op15t = x*op15t - y*op45t;

x = in44t;
y = in24t;

in21t = x*in21t - y*in41t;
in22t = x*in22t - y*in42t;
in23t = x*in23t - y*in43t;
in24t = x*in24t - y*in44t;
in25t = x*in25t - y*in45t;
op21t = x*op21t - y*op41t;
op22t = x*op22t - y*op42t;
op23t = x*op23t - y*op43t;
op24t = x*op24t - y*op44t;
op25t = x*op25t - y*op45t;

x = in44t;
y = in34t;

in31t = x*in31t - y*in41t;
in32t = x*in32t - y*in42t;
in33t = x*in33t - y*in43t;
in34t = x*in34t - y*in44t;
in35t = x*in35t - y*in45t;
op31t = x*op31t - y*op41t;
op32t = x*op32t - y*op42t;
op33t = x*op33t - y*op43t;
op34t = x*op34t - y*op44t;
op35t = x*op35t - y*op45t;

x = in44t;
y = in54t;

in51t = x*in51t - y*in41t;
in52t = x*in52t - y*in42t;
in53t = x*in53t - y*in43t;
in54t = x*in54t - y*in44t;
in55t = x*in55t - y*in45t;
op51t = x*op51t - y*op41t;
op52t = x*op52t - y*op42t;
op53t = x*op53t - y*op43t;
op54t = x*op54t - y*op44t;
op55t = x*op55t - y*op45t;

x = in55t;
y = in15t;

in11t = x*in11t - y*in51t;
in12t = x*in12t - y*in52t;
in13t = x*in13t - y*in53t;
in14t = x*in14t - y*in54t;
in15t = x*in15t - y*in55t;
op11t = x*op11t - y*op51t;
op12t = x*op12t - y*op52t;
op13t = x*op13t - y*op53t;
op14t = x*op14t - y*op54t;
op15t = x*op15t - y*op55t;

x = in55t;
y = in25t;

in21t = x*in21t - y*in51t;
in22t = x*in22t - y*in52t;
in23t = x*in23t - y*in53t;
in24t = x*in24t - y*in54t;
in25t = x*in25t - y*in55t;
op21t = x*op21t - y*op51t;
op22t = x*op22t - y*op52t;
op23t = x*op23t - y*op53t;
op24t = x*op24t - y*op54t;
op25t = x*op25t - y*op55t;

x = in55t;
y = in35t;

in31t = x*in31t - y*in51t;
in32t = x*in32t - y*in52t;
in33t = x*in33t - y*in53t;
in34t = x*in34t - y*in54t;
in35t = x*in35t - y*in55t;
op31t = x*op31t - y*op51t;
op32t = x*op32t - y*op52t;
op33t = x*op33t - y*op53t;
op34t = x*op34t - y*op54t;
op35t = x*op35t - y*op55t;

x = in55t;
y = in45t;

in41t = x*in41t - y*in51t;
in42t = x*in42t - y*in52t;
in43t = x*in43t - y*in53t;
in44t = x*in44t - y*in54t;
in45t = x*in45t - y*in55t;
op41t = x*op41t - y*op51t;
op42t = x*op42t - y*op52t;
op43t = x*op43t - y*op53t;
op44t = x*op44t - y*op54t;
op45t = x*op45t - y*op55t;


if(in11t==32'd0 || in22t == 32'd0 || in33t == 32'd0 || in44t==32'd0 || in55t==32'd0)
begin
	op11=32'dx;
	op22=32'dx;
	op33=32'dx;
	op44=32'dx;
	op55=32'dx;
end

else
begin
	op11 = op11t;
	op12 = op12t;
	op13 = op13t;
	op14 = op14t;
	op15 = op15t;

	op21 = op21t;
	op22 = op22t;
	op23 = op23t;
	op24 = op24t;
	op25 = op25t;

	op31 = op31t;
	op32 = op32t;
	op33 = op33t;
	op34 = op34t;
	op35 = op35t;

	op41 = op41t;
	op42 = op42t;
	op43 = op43t;
	op44 = op44t;
	op45 = op45t;

	op51 = op51t;
	op52 = op52t;
	op53 = op53t;
	op54 = op54t;
	op55 = op55t;
end


inverse[0] = op11;
inverse[1] = op12;
inverse[2] = op13;
inverse[3] = op14;
inverse[4] = op15;

inverse[5] = op21;
inverse[6] = op22;
inverse[7] = op23;
inverse[8] = op24;
inverse[9] = op25;

inverse[10] = op31;
inverse[11] = op32;
inverse[12] = op33;
inverse[13] = op34;
inverse[14] = op35;

inverse[15] = op41;
inverse[16] = op42;
inverse[17] = op43;
inverse[18] = op44;
inverse[19] = op45;

inverse[20] = op51;
inverse[21] = op52;
inverse[22] = op53;
inverse[23] = op54;
inverse[24] = op55;

end

assign op11d = op11;
assign op12d = op12;
assign op13d = op13;
assign op14d = op14;
assign op15d = op15;

assign op21d = op21;
assign op22d = op22;
assign op23d = op23;
assign op24d = op24;
assign op25d = op25;

assign op31d = op31;
assign op32d = op32;
assign op33d = op33;
assign op34d = op34;
assign op35d = op35;

assign op41d = op41;
assign op42d = op42;
assign op43d = op43;
assign op44d = op44;
assign op45d = op45;

assign op51d = op51;
assign op52d = op52;
assign op53d = op53;
assign op54d = op54;
assign op55d = op55;


endmodule

