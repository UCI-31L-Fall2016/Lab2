`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2016 08:26:47 PM
// Design Name: 
// Module Name: comparator2_tb
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


module comparator2_tb;

logic [1:0] a;  // Input variable to modify
logic [1:0] b;  // Input variable to modify
logic y;    // Output to monitor

comparator2 comp1(  // Instantiate one comparator2 named comp1
    .A(a),  // Connect variables to ports
    .B(b),
    .Y(y)
    );

initial
begin
a = 2'd0;   // Initially compare 0 against 0.
b = 2'd0;   // y should be 1 because a >= b
#10; // 10 ns

a = 2'd1;   // Compare 1 against 0
b = 2'd0;   // y should be 1 because a >= b
#10;

a = 2'd2;   // Compare 2 against 3
b = 2'd3;   // y should be 0 because a >=b is not true. a < b
#10;

a = 2'd1;   // Compare 1 against 1
b = 2'd1;   // y should be 1 because a >= b
#10;

end // end of initial

endmodule
