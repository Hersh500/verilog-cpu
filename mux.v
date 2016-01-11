`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2015 05:20:39 PM
// Design Name: 
// Module Name: mux
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


module sixteen_bit_mux(
    input signal, 
    input [15:0] in1, 
    input [15:0] in2, 
    output reg [15:0] out
    );
    
    always @ (*)
        case (signal)
            0: out <= in1; 
            1: out <= in2; 
        endcase 
endmodule
