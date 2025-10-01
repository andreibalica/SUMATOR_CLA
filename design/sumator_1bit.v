`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 10:30:44 AM
// Design Name: 
// Module Name: sumator_1bit
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


module sumator_1bit(
    input a, b, cin,
    output s, p, g
    );
    
assign s = (a ^ b) ^ cin;
assign p = a | b;
assign g = a & b; 

endmodule
