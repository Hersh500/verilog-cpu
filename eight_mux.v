`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2015 05:52:49 PM
// Design Name: 
// Module Name: eight_mux
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


module eight_bit_mux(
    input control, 
    input [7:0] in1, 
    input [7:0] in2, 
    output reg [7:0] out
    );

always @ (*)
    case (control)
        0: out <= in1; 
        1: out <= in2; 
    endcase 

endmodule
