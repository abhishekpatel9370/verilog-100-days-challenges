`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2025 10:29:52 PM
// Design Name: 
// Module Name: ALU4bit_addsub
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


module ALU4bit(
    input [3:0] A, B ,// 4-bit inputs
    output reg [7:0] result, 
    input sel,  
    input [1:0] opcode ,
    output reg overflow_flag ,carry_flag ,
    output reg [3:0] remainder);
    
    always@(*)
    begin 
    overflow_flag = 0 ;
    carry_flag= 0;
    remainder=0;
    casez(opcode)
    2'b00 : begin // addition 
            result=A+B ; 
            carry_flag = result[8];
            overflow_flag=(A[3]==B[3])&&(A[3]!=result[3]);
            end
   2'b01 : begin // substraction   
           result= {1'b0, A} - {1'b0, B}; 
           carry_flag = result[8];
           overflow_flag = (A[3] != B[3]) && (result[3] != A[3]);
            end      
            
  2'b10 : begin 
         result = A * B;
          carry_flag = result[7:4] != 0;  // If upper 8-bits are non-zero, carry occurs
          overflow_flag = result[7:4] != {4{result[3]}};

           end
   2'b11 : begin 
            // Division
              if (B != 0) begin
                  result = A / B;
                  remainder = A % B;
              end else begin
                  result = 8'hFF;  // Error: Division by zero
                  remainder = 4'hF;  // Error flag
                  carry_flag = 1;
                  overflow_flag = 1;
              end
          end        
   default: begin
                     result = 8'h0;
                     remainder = 4'h0;
                     carry_flag = 0;
                     overflow_flag = 0;
                 end
             endcase
         end

endmodule
