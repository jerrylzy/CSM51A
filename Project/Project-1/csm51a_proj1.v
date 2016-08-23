`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCLA
// Engineer: Jerry Liu, 404474229
// 
// Create Date: 07/16/2016 05:24:49 PM
// Design Name: 
// Module Name: csm51a_proj1
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


module csm51a_proj1(
    input x0,
    input x1,
    input x2,
    output z
    );
    //  Outputs from NOT and AND gates
    wire x0_not, x1_not, x2_not, prod1, prod2;
    
    //  NOT inputs
    not n1(x0_not, x0);
    not n2(x1_not, x1);
    not n3(x2_not, x2);
    
    //  Calculate Products
    
    // prod1 = x2'x1'x0
    and a1(prod1, x2_not, x1_not, x0);
    
    // prod2 = x1x0'
    and a2(prod2, x1, x0_not);
    
    //  Calculate Sum of Products
    
    // z = prod1 + prod2
    or o1(z, prod1, prod2);
    
endmodule
