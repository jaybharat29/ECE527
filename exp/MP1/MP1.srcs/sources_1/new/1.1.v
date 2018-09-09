`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2018 12:16:19 AM
// Design Name: 
// Module Name: 1
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


module one(
    input clk,
    input rst,
    input [7:0] SW,
    output [7:0] LED
    );
    
    reg [7:0] d1SW;
    reg [7:0] d2SW;
    reg [7:0] d3SW;
    
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            d3SW <= 0;
        else    begin
            d1SW <= SW;
            d2SW <= d1SW;
            d3SW <= d2SW;
        end
    end
    
    assign LED = d3SW;
endmodule
