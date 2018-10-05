#include "partb.h"

void partb(int A[100][100], int B[100][100], int C[100][100],
		   int mA, int nA, int mB,
		   int nB, int mC, int nC)
{
	int A_i[100][100];
	int B_i[100][100];
	int C_i[100][100];
	//store A internally
	for(int i = 0; i < mA; i++)
	{
		for(int j = 0; j < nA; j++)
		{
			A_i[i][j] = A[i][j];
		}
	}
	//store B internally
	for(int i = 0; i < mB; i++)
	{
		for(int j = 0; j < nB; j++)
		{
			B_i[i][j] = B[i][j];
		}
	}

	for(int i = 0; i < mC; i++)
	{
		for(int j = 0; j < nC; j++)
		{
			C_i[i][j] = 0;
		}
	}


	for_c_row : for(int i = 0; i < mC; i++)
		{
			for_c_col : for(int j = 0; j < nC; j++)
			{
				int sum = 0;
				for(int k = 0; k < nA; k++)
				{
					sum += A_i[i][k]*B_i[k][j];
				}
				C_i[i][j] = sum;
			}
		}
	//write C externally
	for(int i = 0; i < mC; i++)
	{
		for(int j = 0; j < nC; j++)
		{
			C[i][j] = C_i[i][j];
		}
	}
}
