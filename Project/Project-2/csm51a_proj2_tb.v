`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCLA
// Engineer: Jerry Liu, 404474229; Haojie Chen, 204449491
// 
// Create Date: 07/30/2016 06:11:35 PM
// Design Name: 
// Module Name: csm51a_proj2_tb
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


module csm51a_proj2_tb(
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g
    );
    //  4-bit is enough for BCD
    reg [3:0] i;
    
    //  Input
    reg x3, x2, x1, x0;

    csm51a_proj2 plusOneSecond1(.x3(x3), .x2(x2), .x1(x1), .x0(x0), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g));
    
       
    initial
    begin
        for (i = 0; i < 10; i = i + 1)
        begin
            //  assign each bit separately
            {x3, x2, x1, x0} = i;
            //  delay
            #5;
        end
        $finish;
    end
    
endmodule
