`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2018 12:48:52 PM
// Design Name: 
// Module Name: two
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


module two(
    input clk,
    input rst,
    input mode0,
    input mode1,
    input mode2,
    input mode3,
    input [7:0] SW,
    output [7:0] LED
    );
    
    enum {MODE0, MODE1, MODE2, MODE3} state, next_state;
    logic [7:0] SW_in;
    always_ff@(posedge clk)
    begin
        state <= next_state;
    end
    
    always_comb
    begin
        if(rst)
            next_state = MODE0;
        else if(mode0)
            next_state = MODE0;
        else if (mode1)
            next_state = MODE1;
        else if (mode2)
            next_state = MODE2;
        else if (mode3)
            next_state = MODE3;
        else
            next_state = state;
    end
    
    always_comb
    begin
        case(state)
            MODE0 : SW_in = SW;
            MODE1 : SW_in = {2'b00, SW[7:2]};
            MODE2 : SW_in = {SW[4:0], SW[7:5]};
            MODE3 : SW_in = ~SW;
        endcase
    end
    
    one S1 ( .clk(clk), .rst(rst), .SW(SW_in), .LED(LED));
    
endmodule