`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2022 01:25:45 PM
// Design Name: 
// Module Name: Refresh_Counter
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


module Refresh_Counter(
    input clk,
    output reg [2:0] counter
    );
    
    always @(posedge clk) begin
        if(counter == 3)
            counter = 0;
        else
            counter = counter + 1;       
    end
endmodule
