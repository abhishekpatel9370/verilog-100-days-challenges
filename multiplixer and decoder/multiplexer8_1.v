`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 02:22:43 PM
// Design Name: 
// Module Name: multiplexer8_1
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


module multiplexer8_1(clk,A,out,rst,sel );
input [7:0]A;
input clk,rst ;
input [2:0]sel;
output reg out;
always @(posedge clk or posedge rst)
begin 
if (rst==1)
out<= 0 ;
else begin
 case(sel) 
3'b000 : out<=A[0];
3'b001 : out<=A[1];
3'b010 : out<=A[2];
3'b011 : out<=A[3];
3'b100 : out<=A[4];
3'b101 : out<=A[5];
3'b110 : out<=A[6];
3'b111 : out<=A[7];
default : out<= 0 ;
endcase
end
end

endmodule