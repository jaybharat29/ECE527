`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2018 06:16:04 PM
// Design Name: 
// Module Name: top
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


module top(
    RST,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    btns_5bits_tri_i,
    clka_0,
    CS,
    SDIN,
    SCLK,
    DC,
    RES,
    VBAT,
    VDD);
      input RST;
      inout [14:0]DDR_addr;
      inout [2:0]DDR_ba;
      inout DDR_cas_n;
      inout DDR_ck_n;
      inout DDR_ck_p;
      inout DDR_cke;
      inout DDR_cs_n;
      inout [3:0]DDR_dm;
      inout [31:0]DDR_dq;
      inout [3:0]DDR_dqs_n;
      inout [3:0]DDR_dqs_p;
      inout DDR_odt;
      inout DDR_ras_n;
      inout DDR_reset_n;
      inout DDR_we_n;
      inout FIXED_IO_ddr_vrn;
      inout FIXED_IO_ddr_vrp;
      inout [53:0]FIXED_IO_mio;
      inout FIXED_IO_ps_clk;
      inout FIXED_IO_ps_porb;
      inout FIXED_IO_ps_srstb;
      input [4:0]btns_5bits_tri_i;
      input clka_0;
      output CS;
      output SDIN;
      output SCLK;
      output DC;
      output RES;
      output VBAT;
      output VDD;
      wire [511:0]BRAM_PORTA_0_dout;
        wire [0:0]BRAM_PORTA_0_we;
        wire [14:0]DDR_addr;
        wire [2:0]DDR_ba;
        wire DDR_cas_n;
        wire DDR_ck_n;
        wire DDR_ck_p;
        wire DDR_cke;
        wire DDR_cs_n;
        wire [3:0]DDR_dm;
        wire [31:0]DDR_dq;
        wire [3:0]DDR_dqs_n;
        wire [3:0]DDR_dqs_p;
        wire DDR_odt;
        wire DDR_ras_n;
        wire DDR_reset_n;
        wire DDR_we_n;
        wire FIXED_IO_ddr_vrn;
        wire FIXED_IO_ddr_vrp;
        wire [53:0]FIXED_IO_mio;
        wire FIXED_IO_ps_clk;
        wire FIXED_IO_ps_porb;
        wire FIXED_IO_ps_srstb;
        wire [0:0]addra_0;
        wire [4:0]btns_5bits_tri_i;
        wire clka_0;
        wire [31:0]GPIO2_0_tri_o;
        wire [511:0]dina_0;
        wire [511:0]douta_0;
        wire [0:0]wea_0;
        wire [511:0]data_pmod_0;
      
        design_1_wrapper design_1_i
             (.douta_0(douta_0),
              .wea_0(wea_0),
              .DDR_addr(DDR_addr),
              .DDR_ba(DDR_ba),
              .DDR_cas_n(DDR_cas_n),
              .DDR_ck_n(DDR_ck_n),
              .DDR_ck_p(DDR_ck_p),
              .DDR_cke(DDR_cke),
              .DDR_cs_n(DDR_cs_n),
              .DDR_dm(DDR_dm),
              .DDR_dq(DDR_dq),
              .DDR_dqs_n(DDR_dqs_n),
              .DDR_dqs_p(DDR_dqs_p),
              .DDR_odt(DDR_odt),
              .DDR_ras_n(DDR_ras_n),
              .DDR_reset_n(DDR_reset_n),
              .DDR_we_n(DDR_we_n),
              .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
              .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
              .FIXED_IO_mio(FIXED_IO_mio),
              .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
              .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
              .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
              .addra_0(addra_0),
              .btns_5bits_tri_i(btns_5bits_tri_i),
              .clka_0(clka_0),
              .GPIO2_0_tri_o(GPIO2_0_tri_o),
              .dina_0(dina_0),
              .data_pmod_0(data_pmod_0));
              
              wrapper w1
                  (.clk(clka_0),
                   .reset(btns_5bits_tri_i[3]),
                   .addra_0(addra_0),
                   .data_pmod_0(data_pmod_0),
                   .dina_0(dina_0),
                   .BRAM_PORTA_0_we(wea_0)
                   );
                   
               PmodOLEDCtrl P1
                           (.CLK(clka_0),
                            .RST(btns_5bits_tri_i[2]|btns_5bits_tri_i[3]),
                            .DATA_IN(douta_0),
                            .CS(CS),
                            .SDIN(SDIN),
                            .SCLK(SCLK),
                            .DC(DC),
                            .RES(RES),
                            .VBAT(VBAT),
                            .VDD(VDD));
              
         
    
endmodule
