#include "parta.h"

void gold(int A[100][100], int B[100][100], int C[100][100],
			 int mA, int nA, int mB,
			 int nB, int mC, int nC)
{
	for(int i = 0; i < mC; i++)
	{
		for(int j = 0; j < nC; j++)
		{
			C[i][j] = 0;
			for(int k = 0; k < nA; k++)
			{
				C[i][j] += A[i][k]*B[k][j];
			}
		}
	}
}
