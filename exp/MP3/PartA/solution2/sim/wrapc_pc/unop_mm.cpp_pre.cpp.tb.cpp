// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartA/unop_mm.cpp"
#1 "<built-in>"
#1 "<command-line>"
#1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartA/unop_mm.cpp"


void unop_mm(int A[100][100], int B[100][100], int C[100][100],
    int mA, int nA, int mB,
    int nB, int mC, int nC)
{
 for_c_row : for(int i = 0; i < mC; i++)
 {
  for_c_col : for(int j = 0; j < nC; j++)
  {
   for_common : for(int k = 0; k < nA; k++)
   {
    C[i][j] += A[i][k]*B[k][j];
   }
  }
 }
}
