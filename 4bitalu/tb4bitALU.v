`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2025 10:29:52 PM
// Design Name: 
// Module Name: ALU4bit_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Testbench for ALU4bit module
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module ALU4bit_tb;
    // Inputs
    reg [3:0] A;
    reg [3:0] B;
    reg sel;
    reg [1:0] opcode;

    // Outputs
    wire [7:0] result;
    wire overflow_flag;
    wire carry_flag;
    wire [3:0] remainder;

    // Instantiate the ALU4bit
    ALU4bit uut (
        .A(A),
        .B(B),
        .sel(sel),
        .opcode(opcode),
        .result(result),
        .overflow_flag(overflow_flag),
        .carry_flag(carry_flag),
        .remainder(remainder)
    );

    // Initialize Inputs
    initial begin
        A = 0;
        B = 0;
        sel = 0;
        opcode = 2'b00;
        
        // Test addition (opcode = 00)
        #10 A = 4'b0101; B = 4'b0011; opcode = 2'b00; // 5 + 3 = 8
        #10 A = 4'b1111; B = 4'b0001; opcode = 2'b00; // 15 + 1 = 16 (check carry/overflow)
        
        // Test subtraction (opcode = 01)
        #10 A = 4'b1010; B = 4'b0110; opcode = 2'b01; // 10 - 6 = 4
        #10 A = 4'b0100; B = 4'b1000; opcode = 2'b01; // 4 - 8 = -4 (check overflow)
        
        // Test multiplication (opcode = 10)
        #10 A = 4'b0010; B = 4'b0011; opcode = 2'b10; // 2 * 3 = 6
        #10 A = 4'b1111; B = 4'b0011; opcode = 2'b10; // 15 * 3 = 45 (check carry)
        
        // Test division (opcode = 11)
        #10 A = 4'b1010; B = 4'b0010; opcode = 2'b11; // 10 / 2 = 5, remainder = 0
        #10 A = 4'b1010; B = 4'b0000; opcode = 2'b11; // Division by zero (check error)
        
        // End simulation
        #10 $finish;
    end

    // Display outputs
    initial begin
        $monitor("Time = %0t | A = %0d, B = %0d, Opcode = %b, Result = %0d, Overflow = %b, Carry = %d, Remainder = %b", 
                 $time, A, B, opcode, result, overflow_flag, carry_flag, remainder);
    end
endmodule
