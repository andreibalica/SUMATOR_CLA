`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 10:43:47 AM
// Design Name: 
// Module Name: sumator_4bit
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


module sumator_4bit(
    input [3:0] a, b,
    input cin,
    output [3:0] sum,
    output cout,
    output P,
    output G
    );
    
wire [4:0] c;
wire [3:0] p, g;

sumator_1bit sum_0 (
    .a(a[0]),
    .b(b[0]),
    .cin(c[0]),
    .s(sum[0]),
    .p(p[0]),
    .g(g[0])
    );
    
sumator_1bit sum_1 (
    .a(a[1]),
    .b(b[1]),
    .cin(c[1]),
    .s(sum[1]),
    .p(p[1]),
    .g(g[1])
    );
    
sumator_1bit sum_2 (
    .a(a[2]),
    .b(b[2]),
    .cin(c[2]),
    .s(sum[2]),
    .p(p[2]),
    .g(g[2])
    );
    
sumator_1bit sum_3 (
    .a(a[3]),
    .b(b[3]),
    .cin(c[3]),
    .s(sum[3]),
    .p(p[3]),
    .g(g[3])
    );

CLA cla_inst(
    .cin(cin),
    .p(p),
    .g(g),
    .c(c),
    .P(P),
    .G(G)
    );

assign cout = c[4];
endmodule
