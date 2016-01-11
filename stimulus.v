`timescale 1s / 100 ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/13/2015 12:14:54 AM
// Design Name: 
// Module Name: stimulus
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


module stimulus;

    reg clock; 
    reg reset; 
    wire [15:0] led_out; 
    
    cpu my_cpu (clock, reset, led_out); 
    initial begin 
        clock = 1'b0; 
    end 
    always 
        #5 clock = -clock; 
    initial 
        $monitor ($time, " Output led_out = %d", led_out); 
        
endmodule
