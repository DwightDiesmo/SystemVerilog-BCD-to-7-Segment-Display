`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2022 01:25:45 PM
// Design Name: 
// Module Name: BCD_to_7_Segment_Display
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


module BCD_to_7_Segment_Display (
    input [15:0] switch,
    output [15:0] led,
    output [3:0] display,
    output decimal_point,
    output [6:0] segment
    );
    
    assign decimal_point = 'b1;
    
    LED_Indicator #(.WL(16)) led_indicator (
    .switch(switch),
    .led(led)
    );
    
    Display_Selector display_selector (
    .select(switch[15:12]),
    .display(display)
    );
    
    Segment_Decoder segment_decoder (
    .bcd_value(switch[3:0]),
    .segment(segment)
    );
endmodule
