`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2025 07:43:58 PM
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(A,out,en,clk );
// input and output ports ;
input [7:0]A;
input clk,en;
output reg [2:0]out;
// implementation of sequantial block 
always @(posedge clk)
if(en==0)
out=3'bxxx;
else
begin 
   casez (A)  // `?` in `casez` allows "don't-care" bits
         8'b1???????: out = 3'b111;  // Highest priority
         8'b01??????: out = 3'b110;
         8'b001?????: out = 3'b101;
         8'b0001????: out = 3'b100;
         8'b00001???: out = 3'b011;
         8'b000001??: out = 3'b010;
         8'b0000001?: out = 3'b001;
         8'b00000001: out = 3'b000;  // Lowest priority
         default: out = 3'bxxx;
         endcase
end
endmodule
