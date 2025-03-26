`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2025 07:18:41 PM
// Design Name: 
// Module Name: priority_gen4bit
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


module priority_gen4bit(data_in,even_priority,odd_priority );
input [3:0] data_in ; 
output even_priority,odd_priority ;

assign even_priority = data_in[3]^data_in[2]^data_in[1]^data_in[0];
assign odd_priority=~even_priority ; 

endmodule
