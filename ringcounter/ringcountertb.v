`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2025 11:18:53 PM
// Design Name: 
// Module Name: ringcountertb
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


module ringcountertb;
reg clk ,rst ;
reg [3:0] Cin ;
wire [3:0] Cout ;

// module instantion 
ringcounter utt1(Cin,Cout ,rst ,clk );
 initial begin 
 clk=1 ; end
always #5 clk =~clk ;

initial begin 
rst =1 ;
Cin = 4'b001 ; 
#15 rst =0 ; end 
initial begin 
$monitor("$time =%d | Cin =%b | Cout = %b ",$time ,Cin ,Cout);
end
endmodule
