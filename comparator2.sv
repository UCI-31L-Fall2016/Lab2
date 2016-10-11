`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2016 08:15:30 PM
// Design Name: 
// Module Name: comparator2
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


module comparator2(
    input [1:0] A,  // [MSB:LSB] A . A is a 2-bit value made of A[1] and A[0]
    input [1:0] B,  // [3:0] B for instance would give a 4-bit value. B[3],...,B[0]
    output Y
    );
    // Y is 1, if A >= B. Y is 0 otherwise
    assign Y = (A >= B)? 1'b1 : 1'b0;
    
endmodule
