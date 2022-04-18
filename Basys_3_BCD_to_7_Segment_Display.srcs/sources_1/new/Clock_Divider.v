`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2022 01:25:45 PM
// Design Name: 
// Module Name: Clock_Divider
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
module Clock_Divider #(parameter div_value = 49999999)(
    input clk,
    output reg divided_clk = 0
    );
    integer counter_value = 0;
    
    always @(posedge clk) begin
        if (counter_value == div_value) begin
            counter_value <= 0;
            divided_clk <= ~divided_clk;
        end else begin
            counter_value <= counter_value + 1;   
            divided_clk <= divided_clk;
        end             
    end
endmodule
