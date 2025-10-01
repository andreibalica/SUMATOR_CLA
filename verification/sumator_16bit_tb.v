`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 01:08:59 PM
// Design Name: 
// Module Name: sumator_16bit_tb
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


module sumator_16bit_tb;

    reg  [15 : 0] a_tb;
    reg  [15 : 0] b_tb;
    reg  cin_tb;
    wire [15 : 0] sum_tb;
    wire cout_tb;
    
    sumator_16bit uut (
        .a    (a_tb),
        .b    (b_tb),
        .cin  (cin_tb),
        .sum  (sum_tb),
        .cout (cout_tb)
    );

    initial begin

        // Stare initiala
        a_tb = 16'h0000;
        b_tb = 16'h0000;
        cin_tb = 1'b0;
        #10;

        a_tb = 16'h1111;
        b_tb = 16'h2222;
        cin_tb = 1'b0;
        #10;

        a_tb = 16'h0F0F;
        b_tb = 16'h0101;
        cin_tb = 1'b0;
        #10;

        a_tb = 16'h1234;
        b_tb = 16'hABCD;
        cin_tb = 1'b1;
        #10;

        a_tb = 16'hFFFF;
        b_tb = 16'h0001;
        cin_tb = 1'b0;
        #10;

        a_tb = 16'h0001;
        b_tb = 16'hFFFF;
        cin_tb = 1'b0;
        #10;

        a_tb = 16'hFFFF;
        b_tb = 16'hFFFF;
        cin_tb = 1'b1;
        #10;
        
        #10;
        $finish;
    end

endmodule

