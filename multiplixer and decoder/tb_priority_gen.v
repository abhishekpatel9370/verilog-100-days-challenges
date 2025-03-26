`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2025 07:24:40 PM
// Design Name: 
// Module Name: tb_priority_gen
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


module tb_priority_gen;
reg [3:0]data_in;
wire even_priority,odd_priority;
priority_gen4bit utt(.data_in(data_in),.even_priority(even_priority),.odd_priority(odd_priority) );
initial begin 
#10 data_in=4'b0001;
#10 data_in=4'b1001;
#10 data_in=4'b1101;
#10 data_in=4'b1111;
#10 data_in=4'b0011;
#10 data_in=4'b1001;
#10 data_in=4'b0011;
end
initial begin 
$monitor("Time = %0d | data_in = %b , even_priority = %b | odd_priority = %b ",$time , data_in,even_priority,odd_priority);
end
endmodule
