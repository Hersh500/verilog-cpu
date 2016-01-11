`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2015 06:04:33 PM
// Design Name: 
// Module Name: branch_and_gate
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


module branch_gate(
    input ctrl_signal, 
    input alu_diff_result,
    output branch_mux_ctrl
    ); 
    
    assign branch_mux_ctrl = ctrl_signal & alu_diff_result; 
    
endmodule
