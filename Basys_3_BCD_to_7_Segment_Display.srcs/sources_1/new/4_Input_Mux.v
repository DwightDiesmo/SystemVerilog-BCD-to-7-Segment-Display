`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2022 01:25:45 PM
// Design Name: 
// Module Name: 4_Input_Mux
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
module Input_4_Mux(
    input [3:0] input_1,
    input [3:0] input_2,
    input [3:0] input_3,
    input [3:0] input_4,
    input [1:0] select,
    output [3:0] mux_out
    );
    assign mux_out = input_1;
endmodule
