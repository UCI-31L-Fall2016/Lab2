`timescale 1ns / 1ps    
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2016 02:25:16 PM
// Design Name: 
// Module Name: mux2to1
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


module mux2to1( //Ports declaration inside the brackets.
    input A,
    input B,
    input sel,
    output Y
    );  //  Don't forget semi-colon
    
    assign Y = (sel == 1'b0)? A : B;
    // Means that if sel == 0, Y = A, if sel == 1, Y = B
    // 1'b0 means 1 bit with binary value of 0
    // 2'b10 would mean 2 bit with binary value of 10
    // 3'o3 would mean 3 bit with octal value of 3
    // 8'd9 would mean 8 bit with decimal value of 9
    // 4'hF would mean 4 bit with hexadecimal value of F. Same as 4'b1111
    
endmodule
