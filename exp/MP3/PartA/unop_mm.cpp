

void unop_mm(int *A, int *B, int *C,
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
