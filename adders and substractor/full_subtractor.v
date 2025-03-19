`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2025 10:00:15 PM
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(a,b,c,diff,borrow );
input a,b,c;
output diff,borrow;
assign {borrow , diff } = a-b-c;

endmodule
