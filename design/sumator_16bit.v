`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 12:37:40 PM
// Design Name: 
// Module Name: sumator_16bit
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


module sumator_16bit(
    input [15:0] a, b,
    input cin,
    output [15:0] sum,
    output cout
    );
    
wire [4:0] c;
wire [3:0] p, g;

sumator_4bit sum_0 (
    .a(a[3:0]),
    .b(b[3:0]),
    .cin(c[0]),
    .sum(sum[3:0]),
    .cout(),
    .P(p[0]),
    .G(g[0])
);

sumator_4bit sum_1 (
    .a(a[7:4]),
    .b(b[7:4]),
    .cin(c[1]),
    .sum(sum[7:4]),
    .cout(),
    .P(p[1]),
    .G(g[1])
);

sumator_4bit sum_2 (
    .a(a[11:8]),
    .b(b[11:8]),
    .cin(c[2]),
    .sum(sum[11:8]),
    .cout(),
    .P(p[2]),
    .G(g[2])
);

sumator_4bit sum_3 (
    .a(a[15:12]),
    .b(b[15:12]),
    .cin(c[3]),
    .sum(sum[15:12]),
    .cout(),
    .P(p[3]),
    .G(g[3])
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
