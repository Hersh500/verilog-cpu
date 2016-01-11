`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2015 06:56:30 PM
// Design Name: 
// Module Name: four_bit_adder
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

module eight_bit_adder(
    input [7:0] in1,
    output [7:0] result
    );
//    wire cout1, cout2, cout3, cout4, cout5, cou6, cout7, cout8;
    
//    full_adder adder1 (in1[0], in2[0], 0, result[0], cout1);
//    full_adder adder2 (in1[1], in1[1], cout1, result[1], cout2);
//    full_adder adder3 (in1[2], in2[2], cout2, result[2], cout3);
//    full_adder adder4 (in1[3], in2[3], cout3, result[3], cout4);
//    full_adder adder5 (in1[4], in2[4], cout4, result[4], cout5);
//    full_adder adder6 (in1[5], in2[5], cout5, result[5], cout6);
//    full_adder adder7 (in1[6], in2[6], cout6, result[6], cout7); 
//    full_adder adder8 (in1[7], in2[7], cout7, result[7], cout8);
    assign result = in1 + 4; 
    
endmodule
