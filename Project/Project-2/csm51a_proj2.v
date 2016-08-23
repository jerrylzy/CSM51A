`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCLA
// Engineer: Jerry Liu, 404474229; Haojie Chen, 204449491
// 
// Create Date: 07/30/2016 06:08:38 PM
// Design Name: 
// Module Name: csm51a_proj2
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


module csm51a_proj2(
    input x0,
    input x1,
    input x2,
    input x3,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g
    );
    
    wire n1_out, n2_out, n4_out, n5_out, n7_out, n9_out;
    
    //  x_2' + x_1 + x_0: a, d, e
    nor n1(n1_out, !x2, x1, x0);
    
    //  x_3 + x_2 + x_1 + x_0': a, d
    nor n2(n2_out, x3, x2, x1, !x0);

    //  output a
    nor n3(a, n1_out, n2_out);
    
    //  x_2' + x_1 + x_0': b
    nor n4(n4_out, !x2, x1, !x0);
    
    //  x_2' + x_1' + x_0: b
    nor n5(n5_out, !x2, !x1, x0);
    
    //  output b
    nor n6(b, n4_out, n5_out);
    
    //  x_2 + x_1' + x_0: c, f
    nor n7(n6_out, x2, !x1, x0);
    
    //  output c
    nor n8(c, n6_out, n6_out);
    
    //  x_2' + x_1' + x_0': d, f, g
    nor n9(n7_out, !x2, !x1, !x0);
    
    //  output d
    nor n10(d, n1_out, n2_out, n7_out);

    //  output e
    nor n11(e, n1_out, x0);
    
    //  x_3 + x_2 + x_0': f
    nor n12(n8_out, x3, x2, !x0);
    nor n13(f, n6_out, n7_out, n8_out);
    
    //  x_3 + x_2 + x_1: g
    nor n14(n9_out, x3, x2, x1);
    
    //  output g
    nor n15(g, n7_out, n9_out); 
 
endmodule
