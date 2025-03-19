`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2025 06:00:00 PM
// Design Name: Testbench for basic_gates_operation
// Module Name: tb_basic_gates_operation
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//  - Testbench for verifying basic logic gate operations
//  - Applies all possible input combinations and monitors the output
// 
// Dependencies: 
//  - Requires basic_gates_operation module
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tb_basic_gates_operation;
    // Declare testbench variables
    reg a, b;
    wire cout1, cgate1,cout2, cgate2,cout3, cgate3,cout4, cgate4; // 4-bit output for dataflow and gate-level modeling

    // Instantiate the Device Under Test (DUT)
    basic_gates_operation uut (
      a,b , cgate1,cgate2,cgate3,cgate4 ,cout1,cout2,cout3,cout4
    );

    // Apply test stimulus
initial begin 
        // Test Cases
        a = 0; b = 0; #10; // Wait 10 time units
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        // End simulation
        $stop;
    end
endmodule
