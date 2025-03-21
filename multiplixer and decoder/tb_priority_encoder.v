`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2025 10:59:07 PM
// Design Name: 
// Module Name: tb_priority_encoder
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


module tb_priority_encoder;
reg [7:0]A ; 
wire [2:0]out ; 
reg clk,en;
priority_encoder  utt(.A(A),.out(out),.en(en),.clk(clk) );
initial begin
clk=1;
forever #5 clk=~clk;
end
initial begin 
en=0;
A=8'b00000100 ;
#10 en=1;
end
 initial begin
 #3 A=8'b00000101 ;
 #10 A=8'b01000100 ;
 #10 A=8'b10000101 ;
 #10 A=8'b11000000 ;
 end
  initial begin
       $monitor("Time: %0t | A = %b | out = %b | en = %b", $time, A, out, en);
   end
 
endmodule
