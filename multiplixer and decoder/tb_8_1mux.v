`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 02:38:08 PM
// Design Name: 
// Module Name: tb_8_1mux
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


module tb_8_1mux;
reg [7:0]A;
reg clk,rst ;
reg [2:0]sel;
wire out;
multiplexer8_1  utt1(.clk(clk),.A(A),.out(out),.rst(rst),.sel(sel) );
initial 
begin 
clk=0;
forever #5 clk=~clk;end
initial begin 
#5 rst=1 ; 
A=8'b10101011;
sel=3'b001;
#5 rst=0;
end
initial begin 
#5 sel = 3'b001;
#5 sel = 3'b010;
#5 sel = 3'b011;
#5 sel = 3'b101;
#5 sel = 3'b010;
#50 $stop;
end
initial 
begin 
$display("sel=%b , A= %b , out = %d ",sel ,A,out);
end


endmodule
