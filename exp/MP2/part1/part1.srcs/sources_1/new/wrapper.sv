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


module wrapper(
    input clk,
    input reset,
    input [511:0] data_pmod_0,
    output logic addra_0,
    output logic [511:0] dina_0,
    output logic BRAM_PORTA_0_we
    );
    
    logic [511:0] rdata_pmod;
    
    always@(posedge clk)
    begin
        rdata_pmod <= data_pmod_0;
    end
    always@(posedge clk)
    begin
        BRAM_PORTA_0_we = 0;
        addra_0 = 0;
        dina_0 = 0;
        if(reset)
            BRAM_PORTA_0_we = 1'b1;
            addra_0 = 1'b0;
            dina_0 = data_pmod_0;
            
    end
endmodule
