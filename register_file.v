`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2015 09:34:11 PM
// Design Name: 
// Module Name: register_file
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


module register_file(
    input reset,
    input clock, 
    input writing_to_reg,
    input [31:0] instr, 
    input [15:0] wr_data, 
    output [15:0] rd_data_a, 
    output [15:0] rd_data_b
    );
    
    reg [15:0] led;
    reg [15:0] regs [0:7];  
    
    assign rd_reg_a = instr [24-:4];
    assign rd_reg_b = instr [20-:4];
    assign wr_reg = instr [28-:4];
     
    always @ (*)
    begin 
    led[0+:4] = rd_reg_a; 
    led[4+:8] = rd_reg_b; 
    led[8+:4] = wr_reg; 
    led[12] = writing_to_reg; 
    end 
    
    assign rd_data_a = regs [rd_reg_a];
    assign rd_data_b = regs [rd_reg_b];
    
    always @ (posedge clock, posedge reset) 
        if (reset == 1) 
        begin 
            regs[0] <= 0;
            regs[1] <= 0;
            regs[2] <= 0;
            regs[3] <= 0;
            regs[4] <= 0;
            regs[5] <= 0;
            regs[6] <= 0; 
            regs[7] <= 0;  
        end 
        else if (writing_to_reg == 1) 
            begin 
            regs [wr_reg] <= wr_data;  
            end 
endmodule
