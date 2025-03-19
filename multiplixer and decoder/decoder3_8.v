`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 03:51:48 PM
// Design Name: 
// Module Name: decoder3_8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decoder3_8(A,out,clk,rst );
input [2:0]A;
output reg [7:0]out;
input clk,rst;
always @(posedge clk or posedge rst )
begin 
if (rst==1)
out = 0;
else 
begin 
case(A)
3'b000 : out=8'b00000000;
3'b001 : out=8'b00000001;
3'b010 : out=8'b00000010;
3'b011 : out=8'b00000011;
3'b100 : out=8'b00000100;
3'b101 : out=8'b00000101;
3'b110 : out=8'b00000110;
3'b111 : out=8'b00000111;
default : out=8'bx ;
endcase 
end
end
endmodule
