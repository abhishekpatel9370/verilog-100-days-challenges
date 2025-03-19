`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2025 10:03:28 PM
// Design Name: 
// Module Name: tb_subtractor
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


module tb_subtractor;
reg  a,b,c ; 
wire diff,subtractor ;
full_subtractor uut1(a,b,c,diff,subtractor);
initial begin 
    a=0;b=0 ;c=0;
#10  a=1;b=1 ;c=0;
#10 a=1;b=1 ;c=1;

end
endmodule
