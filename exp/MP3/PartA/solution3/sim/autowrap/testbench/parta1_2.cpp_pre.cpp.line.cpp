#pragma line 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartA/parta1_2.cpp"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartA/parta1_2.cpp"
#pragma line 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartA/parta.h" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
void unop_mm(int A[100][100], int B[100][100], int C[100][100],
    int mA, int nA, int mB,
    int nB, int mC, int nC);
#pragma empty_line
void gold(int A[100][100], int B[100][100], int C[100][100],
    int mA, int nA, int mB,
    int nB, int mC, int nC);
#pragma empty_line
void parta1_2(int A[100][100], int B[100][100], int C[100][100],
    int mA, int nA, int mB,
    int nB, int mC, int nC);
#pragma empty_line
void parta1_3(int A[100][100], int B[100][100], int C[100][100],
    int mA, int nA, int mB,
    int nB, int mC, int nC);
#pragma line 2 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartA/parta1_2.cpp" 2
#pragma empty_line
void parta1_2(int A[100][100], int B[100][100], int C[100][100],
    int mA, int nA, int mB,
    int nB, int mC, int nC)
{
#pragma empty_line
 for_c_row : for(int i = 0; i < mC; i++)
 {
  for_c_col : for(int j = 0; j < nC; j++)
  {
#pragma HLS PIPELINE II=1
   for_common : for(int k = 0; k < nA; k++)
   {
    C[i][j] += A[i][k]*B[k][j];
   }
  }
 }
}
