`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2025 11:50:56 AM
// Design Name: 
// Module Name: binary_to_graycode
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


module binary_to_graycode(binary_in ,gray_out );
input [3:0] binary_in ; 
output [3:0] gray_out ;
wire w1 ,w2,w3,w4;
assign w1= binary_in[3];
assign w2 = binary_in[3]^binary_in[2];
assign w3 = binary_in[2]^binary_in[1];
assign w4 = binary_in[1]^binary_in[0];
assign gray_out ={w1,w2,w3,w4} ;

endmodule
