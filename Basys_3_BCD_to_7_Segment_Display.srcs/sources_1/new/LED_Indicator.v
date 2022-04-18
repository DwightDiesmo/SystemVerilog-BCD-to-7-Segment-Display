`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/20/2022 01:32:45 PM
// Design Name: 
// Module Name: LED_Indicator
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
module LED_Indicator #(parameter WL = 16)(
    input [WL-1:0] switch,
    output reg [WL-1:0] led
    );
    
    genvar i;
    generate
        for(i=0; i<16; i = i + 1) begin : led_switch_indicator
            always @(*) begin
                led[i] = switch[i];
            end
        end
    endgenerate
endmodule
