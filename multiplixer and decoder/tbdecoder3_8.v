`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 04:04:22 PM
// Design Name: 
// Module Name: tbdecoder3_8
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


module tbdecoder3_8;
reg [2:0]A;
wire [7:0]out;
reg clk,rst;
decoder3_8 utt1(A,out,clk,rst );
initial 
begin 
clk=0;
forever #5 clk=~clk;
end
initial 
begin
rst=1;
A=3'b001;
#10 rst=0;
end
initial 
begin 
#10 A=3'b001;
#10 A=3'b010;
#10 A=3'b101;
#10 A=3'b011;
#10 A=3'b010;
#10 A=3'b110;
#10 A=3'b111;
#10 A=3'b011;
#20 $stop;
end

endmodule
