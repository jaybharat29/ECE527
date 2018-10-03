# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartA/unop_mm.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartA/unop_mm.cpp"


void unop_mm(int A[10000], int B[10000], int C[10000],
    int mA, int nA, int mB,
    int nB, int mC, int nC)
{
 for_c_row : for(int i = 0; i < mC; i++)
 {
  for_c_col : for(int j = 0; j < nC; j++)
  {
   for_common : for(int k = 0; k < nA; k++)
   {
    C[i*nC+j] += A[i*nA+k]*B[k*nB+j];
   }
  }
 }
}
