`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2015 05:30:37 PM
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory(
    input [7:0] addr, 
    output reg [31:0] instr
    );
    
    
    //reg [31:0] memory [0:255]; 
    /*
    initial begin 
        memory [0] = 8'h41000010;
        memory [1] = 8'h42000001; 
        memory [2] = 8'h43000000; 
        memory [3] = 8'h30300000; 
        memory [4] = 8'h13320000;
        memory [5] = 8'h50310003;
    end 
    */
    
    always @ (*) 
        case (addr)
            8'd0: instr <= 32'h40000000; 
            8'd4: instr <= 32'h41000010; 
            8'd8: instr <= 32'h42000001; 
            8'd12: instr <= 32'h43000000; 
            8'd16: instr <= 32'h30300000; 
            8'd20: instr <= 32'h03320000; 
            8'd24: instr <= 32'h50310010; 
            default: instr <= 32'h00000000; 
        endcase 
endmodule
