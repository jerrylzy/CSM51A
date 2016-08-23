`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCLA
// Engineer: Jerry Liu, 404474229
// 
// Create Date: 07/16/2016 05:31:42 PM
// Design Name: 
// Module Name: csm51a_proj1_tb
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


module csm51a_proj1_tb(
    output z
    );
    //  4-bit integer
    reg [3:0] i;
    //  Input variables
    reg x0, x1, x2;
    
    //  Test out implementation
    csm51a_proj1 p1(.z(z), .x0(x0), .x1(x1), .x2(x2));
    
    initial
    begin
        for (i = 0; i < 8; i = i + 1)
        begin
            //  assign each bit separately
            {x2, x1, x0} = i;
            //  delay
            #10;
        end
        $finish;
    end
endmodule
