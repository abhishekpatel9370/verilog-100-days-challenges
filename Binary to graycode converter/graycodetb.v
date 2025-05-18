`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2025 11:59:13 AM
// Design Name: 
// Module Name: graycodetb
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


module graycodetb();
reg [3:0] binary_in ; 
wire [3:0] gray_out ;
 binary_to_graycode utt1(binary_in ,gray_out );
 initial begin 
  binary_in = 4'b0001 ;
 #5 binary_in = 4'b1001 ;
  #5 binary_in = 4'b1111 ;
  end
  initial begin 
  $monitor("binary =%b | gray = %b |",binary_in ,gray_out);
  end
 
endmodule
