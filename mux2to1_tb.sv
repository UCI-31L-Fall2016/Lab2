`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2016 02:35:15 PM
// Design Name: 
// Module Name: mux2to1_tb
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


module mux2to1_tb;

logic a;  // definition of variables to modify
logic b;
logic sel;
wire y;

mux2to1 L1( // module instantiation. Instance name is L1.
    .A(a),  // Bind variable a to port A of L1
    .B(b),  // Bind b variable to port B of L1
    .sel(sel), // ...
    .Y(y)
    );

initial begin
// Initial values of input
a = 1'b0;   // Give the value of 0 to a
b = 1'b0;   
sel = 1'b0;
#10; // wait 10 ns
a = 1'b0;
b = 1'b1;
sel = 1'b0;
#10; // wait 10 ns
a = 1'b0;
b = 1'b1;
sel = 1'b1;
#10; // wait 10 ns
a = 1'b0;
b = 1'b1;
sel = 1'b0;
#10; // wait 10 ns
a = 1'b1;
b = 1'b0;
sel = 1'b0;

end

endmodule
