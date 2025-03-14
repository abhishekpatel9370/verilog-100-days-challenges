`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2025 05:31:09 PM
// Design Name: 
// Module Name: basic_gates_operation
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

module basic_gates_operation(input  a,b , output cgate1,cgate2,cgate3,cgate4 ,cout1,cout2,cout3,cout4);
assign cout1 = a|b ; 
assign cout2 =a&b ;
assign cout3 = a^b;  // using data flow modeling 
assign cout4 = ~(a^b);
 
 and(cgate1,a,b);
 or(cgate2,a,b);
 nor(cgate3,a,b);  /// using gate level modeling 
 nand(cgate4,a,b);

endmodule
