`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2015 03:27:17 PM
// Design Name: 
// Module Name: alu
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
  
module alu(
    input [15:0] in1, 
    input [15:0] in2, 
    input op,
    output reg [15:0] result,
    output wire diff
    );
    
    always @ (op, in1, in2)
        case (op)
            0: result <= in1 + in2;
            1: result <= in1 - in2;  
        endcase
 
   assign diff = (op == 1 && result == 16'd0); 
   
endmodule
