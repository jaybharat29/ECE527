#pragma line 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartB/partb.cpp"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartB/partb.cpp"
#pragma line 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartB/partb.h" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
void partb(int A[100][100], int B[100][100], int C[100][100],
     int mA, int nA, int mB,
     int nB, int mC, int nC);
#pragma empty_line
void gold(int A[100][100], int B[100][100], int C[100][100],
    int mA, int nA, int mB,
    int nB, int mC, int nC);
#pragma line 2 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartB/partb.cpp" 2
#pragma empty_line
void partb(int A[100][100], int B[100][100], int C[100][100],
     int mA, int nA, int mB,
     int nB, int mC, int nC)
{
 int A_i[100][100];
 int B_i[100][100];
 int C_i[100][100];
#pragma empty_line
 for(int i = 0; i < mA; i++)
 {
  for(int j = 0; j < nA; j++)
  {
   A_i[i][j] = A[i][j];
  }
 }
#pragma empty_line
 for(int i = 0; i < mB; i++)
 {
#pragma HLS PIPELINE
  for(int j = 0; j < nB; j++)
  {
   B_i[i][j] = B[i][j];
  }
 }
#pragma empty_line
 for(int i = 0; i < mC; i++)
 {
#pragma HLS PIPELINE
  for(int j = 0; j < nC; j++)
  {
   C_i[i][j] = 0;
  }
 }
#pragma empty_line
#pragma empty_line
 for(int i = 0; i < mC; i++)
 {
  for(int j = 0; j < nC; j++)
  {
   int sum = 0;
   for(int k = 0; k < nA; k++)
   {
#pragma HLS PIPELINE
#pragma HLS unroll factor = 2
    sum += A_i[i][k]*B_i[k][j];
   }
   C_i[i][j] = sum;
  }
 }
#pragma empty_line
 for(int i = 0; i < mC; i++)
 {
#pragma HLS PIPELINE
  for(int j = 0; j < nC; j++)
  {
   C[i][j] = C_i[i][j];
  }
 }
}
