# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartA/gold.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartA/gold.cpp"
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
# 2 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartA/gold.cpp" 2

void gold(int *A, int *B, int *C,
    int mA, int nA, int mB,
    int nB, int mC, int nC)
{
 for(int i = 0; i < mC; i++)
 {
  for(int j = 0; j < nC; j++)
  {
   C[i*nC+j] = 0;
   for(int k = 0; k < nA; k++)
   {
    C[i*nC+j] += A[i*nA+k]*B[k*nB+j];
   }
  }
 }
}
