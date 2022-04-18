`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2022 01:25:45 PM
// Design Name: 
// Module Name: Display_Selector
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


module Display_Selector(
    input [3:0] select,
    output reg [3:0] display
    );
    always @(*) begin
        display = select;
    end
endmodule
