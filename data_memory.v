`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2015 12:35:02 PM
// Design Name: 
// Module Name: data_memory
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


module data_memory(
    input [7:0] addr,
    input [15:0] wr_data, 
    input mem_read, 
    input mem_write, 
    output [15:0] rd_data
    );
    reg [15:0] memory [0:255]; 
    always @ (mem_read, mem_write) 
        if (mem_read == 1) rd_data <= memory[addr]; 
        else if (mem_write == 1) memory[addr] <= wr_data; 
        
endmodule
