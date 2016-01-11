`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2015 11:40:38 PM
// Design Name: 
// Module Name: led_ctrl
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


module led_ctrl(
    input print_signal,
    input [15:0] data,
    output wire [15:0] led_out
    );
    
    assign led_out = (print_signal) ? data : 16'b0; 
    
    always @ (*) 
        if (print_signal == 1) 
            led_out = data; 
endmodule
