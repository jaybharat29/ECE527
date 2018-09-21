//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Thu Sep 20 19:50:27 2018
//Host        : Jay running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clka_0,
    RST,
    CS,
    SDIN,
    SCLK,
    DC,
    RES,
    VBAT,
    VDD);
//  output [511:0]BRAM_PORTA_0_dout;
//  input [0:0]BRAM_PORTA_0_we;
//  input [0:0]addra_0;
  input clka_0;
  input RST;
  output CS;
  output SDIN;
  output SCLK;
  output DC;
  output RES;
  output VBAT;
  output VDD;
//  input [511:0]dina_0;

  wire [511:0]BRAM_PORTA_0_dout;
  wire [0:0]BRAM_PORTA_0_we;
  wire [0:0]addra_0;
  wire clka_0;
  wire [511:0]dina_0;

  design_1 design_1_i
       (.BRAM_PORTA_0_dout(BRAM_PORTA_0_dout),
        .BRAM_PORTA_0_we(BRAM_PORTA_0_we),
        .addra_0(addra_0),
        .clka_0(clka_0),
        .dina_0(dina_0));
        
  PmodOLEDCtrl P1
        (.CLK(clka_0),
         .RST(RST),
         .DATA_IN(BRAM_PORTA_0_dout),
         .CS(CS),
         .SDIN(SDIN),
         .SCLK(SCLK),
         .DC(DC),
         .RES(RES),
         .VBAT(VBAT),
         .VDD(VDD));
endmodule
