#include "parta.h"

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
