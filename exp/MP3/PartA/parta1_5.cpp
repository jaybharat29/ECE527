#include "parta.h"

void parta1_5(int A[100][100], int B[100][100], int C[100][100],
			 int mA, int nA, int mB,
			 int nB, int mC, int nC)
{
	for_c_row : for(int i = 0; i < mC; i++)
	{
#pragma HLS interface ap_fifo port=C[i]
#pragma HLS interface ap_fifo port=A[i]
		for_c_col : for(int j = 0; j < nC; j++)
		{
#pragma HLS PIPELINE II=1
			for_common : for(int k = 0; k < nA; k++)
			{
#pragma HLS interface ap_fifo port=B[j]
				C[i][j] += A[i][k]*B[j][k];
			}
		}
	}
}
