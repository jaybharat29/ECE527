# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartA/parta1_2.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartA/parta1_2.cpp"
# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartA/parta.h" 1




void unop_mm(int *A, int *B, int *C,
    int mA, int nA, int mB,
    int nB, int mC, int nC);

void gold(int *A, int *B, int *C,
    int mA, int nA, int mB,
    int nB, int mC, int nC);

void parta1_2(int *A, int *B, int *C,
    int mA, int nA, int mB,
    int nB, int mC, int nC);
# 2 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartA/parta1_2.cpp" 2

void parta1_2(int A[10000], int B[10000], int C[10000],
    int mA, int nA, int mB,
    int nB, int mC, int nC)
{

 for_c_row : for(int i = 0; i < mC; i++)
 {
  for_c_col : for(int j = 0; j < nC; j++)
  {
#pragma HLS PIPELINE II=1
   for_common : for(int k = 0; k < nA; k++)
   {
    C[i*nC+j] += A[i*nA+k]*B[k*nB+j];
   }
  }
 }
}
