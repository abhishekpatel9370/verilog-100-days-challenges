`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 02:02:04 PM
// Design Name: 
// Module Name: comparator4bit
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


module comparator4bit(
input [3:0]A,B,
output reg gtA,gtB,AeqB);
always @(*)
begin 
if(A>B)begin
gtA=1;
AeqB=0;
gtB=0;end
else if(A<B)begin
gtB=1;
gtA=0;
AeqB=0;
end
else if(A==B)
begin
AeqB=1;
gtB=0;
gtA=0;
end 
end
endmodule
