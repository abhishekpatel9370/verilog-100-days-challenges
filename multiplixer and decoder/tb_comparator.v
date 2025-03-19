`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 02:07:51 PM
// Design Name: 
// Module Name: tb_comparator
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


module tb_comparator;
reg [3:0]A,B;
wire gtA,gtB,AeqB;

 comparator4bit  utt1(A,B, gtA,gtB,AeqB);
 
 initial 
 begin 
 #10 A=4'b0001;B=4'b0100;
  #10 A=4'b0101;B=4'b0100;
   #10 A=4'b1001;B=4'b1001;
    #10 A=4'b1001;B=4'b0110;
     $stop ;
    end
   
    
 
endmodule
