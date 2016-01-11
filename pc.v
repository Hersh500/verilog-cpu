`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2015 11:20:16 PM
// Design Name: 
// Module Name: pc
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


module pc(
    input clock,
    input reset, 
    input [7:0] pcin,
    output reg [7:0] pcout
    );
    
   
    always @ (posedge clock, posedge reset)
        if (reset == 1)
            pcout <= 8'b00000000;
        else 
            pcout <= pcin;     
endmodule
