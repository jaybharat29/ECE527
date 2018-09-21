`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2018 03:16:41 PM
// Design Name: 
// Module Name: control_wrapper
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


module control_wrapper(
    input clk,
    input reset,
    output addra_0,
    output [511:0] dina_0,
    output BRAM_PORTA_0_we
    );
    
    always@(clk)
    begin
        if(reset) begin
            BRAM_PORTA_0_we = 1'b1;
            dina_0 = 512'h504154454c2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020;
            addra_0 = 0;
         end
    end
endmodule
