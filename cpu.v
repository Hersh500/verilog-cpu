`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2015 11:17:34 PM
// Design Name: 
// Module Name: cpu
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


module cpu(
    input btnC,
    input btnR 
    
    );
    
    wire [7:0] address; 
    wire [31:0] instr; 
    wire writing_to_reg;
    wire alu_mux_ctrl; 
    wire branch_mux_ctrl; 
    wire alu_op; 
    wire [3:0] wr_reg; 
    wire [15:0] imm_data;
    wire print_signal; 
    wire [3:0] rd_reg_a;
    wire [3:0] rd_reg_b;
    wire [15:0] rd_data_a;
    wire [15:0] rd_data_b;
    wire [15:0] alu_result; 
    wire [7:0] addr_out;
    wire im_branch_sig; 
    //reg [15:0] led;  
    wire [7:0] pc_out;
    wire [15:0] alu_mux_out;
    wire alu_diff_result; 
    
    //assign address = 8'd0; 
    assign addr_add_val = 4; 
    
    pc program_counter (btnC, btnR, address, pc_out);
    eight_bit_adder incr_pc_by_4 (pc_out, addr_out);
    branch_gate gate (im_branch_sig, alu_diff_result, branch_mux_ctrl); 
    eight_bit_mux branch_mux (branch_mux_ctrl, addr_out, imm_data[8-:8], address); 
    instruction_memory i_memory (pc_out, instr);     
    control ctrl (instr, writing_to_reg, alu_mux_ctrl, im_branch_sig, alu_op, imm_data, print_signal);    
    register_file rf (btnR, btnC, writing_to_reg, instr, alu_result, rd_data_a, rd_data_b);
    sixteen_bit_mux alu_mux (alu_mux_ctrl, imm_data, rd_data_b, alu_mux_out); //figure out which is the correct signal
    alu ar_log_u (rd_data_a, alu_mux_out, alu_op, alu_result, alu_diff_result);
    //led_ctrl led_controller (print_signal, rd_data_a, led); 
//      always @ (*)
//        begin  
//          if (print_signal == 1) 
//              led[0] = writing_to_reg; 
//              led[1] = alu_mux_ctrl; 
//              led[2] = im_branch_sig; 
//              led[3] = alu_op; 
//              led[4] = print_signal; 
//              led [5+:11] = imm_data [0+:11];
//            led[0+:8] = rd_data_a; 
//            led[8+:8] = rd_data_b; 
//              led = rd_data_a; 
//        end 
endmodule
