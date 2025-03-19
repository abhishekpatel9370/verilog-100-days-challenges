`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2025 09:28:45 PM
// Design Name: 
// Module Name: tb_halfadder
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


module tb_fullfadder( );
wire sum,cout;
reg a,b,c;
full_adder utt1(a,b,c,sum,cout);
initial begin 
#10 a=0;b=0;c=0 ; 
#10 a=1;b=1 ; c=1;
#10 a=1;b=1 ; c=0;
end

endmodule
