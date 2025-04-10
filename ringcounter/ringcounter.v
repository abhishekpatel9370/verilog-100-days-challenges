`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2025 11:14:03 PM
// Design Name: 
// Module Name: ringcounter
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


module ringcounter(Cin,Cout ,rst ,clk );
input clk,rst ;
input [3:0] Cin ;
output reg [3:0] Cout ;
always @(posedge clk or posedge rst)
if(rst)
Cout=Cin;
else 
Cout = {Cout[2:0],Cout[3]};
endmodule
