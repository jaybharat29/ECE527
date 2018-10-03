#include <stdlib.h>
#include <stdio.h>
#include "parta.h"

#define TEST_VECTORS 3

void parta1_1_test_func(int rowA, int colA, int colB)
{
	int mA = rowA;
	int nA = colA;
	int mB = nA;
	int nB = colB;
	int mC = mA;
	int nC = nB;
	int A[mA][nA];
	int B[mB][nB];
	int C[mC][nC];
	int gold_C[mC][nC];
	//generate matrix A
		for(int i = 0; i < mA; i++)
		{
			for(int j = 0; j < nA; j++)
			{
				A[i][j] = rand()%100;
				//printf("%d ", A[i][j]);
			}
			//printf("\n");
		}
		//generate matrix B
		for(int i = 0; i < mB; i++)
		{
			for(int j = 0; j < nB; j++)
			{
				B[i][j] = rand()%100;
				//printf("%d ", B[i][j]);
			}
			//printf("\n");
		}
		//zero out matrix C
		for(int i = 0; i < mC; i++)
			{
				for(int j = 0; j < nC; j++)
				{
					C[i][j] = 0;
				}
			}
		//get gold
		gold((int *)A, (int *)B, (int *)gold_C, mA, nA, mB, nB, mC, nC);
		//hardware out
		unop_mm((int *)A, (int *)B, (int *)C, mA, nA, mB, nB, mC, nC);

		for(int i = 0; i < mC; i++)
		{
			for(int j = 0; j < nC; j++)
			{
				if(C[i][j] != gold_C[i][j])
				{
					printf("%d ", gold_C[i][j]);
					printf("Failed\n");
				}
			}
			//printf("\n");
		}
		printf("Passed A1-1 for mA = %d, nA = %d, nB = %d, \n", mA, nA, nB);

}

void parta1_2_test_func(int rowA, int colA, int colB)
{
	int mA = rowA;
	int nA = colA;
	int mB = nA;
	int nB = colB;
	int mC = mA;
	int nC = nB;
	int A[mA][nA];
	int B[mB][nB];
	int C[mC][nC];
	int gold_C[mC][nC];
	//generate matrix A
		for(int i = 0; i < mA; i++)
		{
			for(int j = 0; j < nA; j++)
			{
				A[i][j] = rand()%100;
				//printf("%d ", A[i][j]);
			}
			//printf("\n");
		}
		//generate matrix B
		for(int i = 0; i < mB; i++)
		{
			for(int j = 0; j < nB; j++)
			{
				B[i][j] = rand()%100;
				//printf("%d ", B[i][j]);
			}
			//printf("\n");
		}
		//zero out matrix C
		for(int i = 0; i < mC; i++)
			{
				for(int j = 0; j < nC; j++)
				{
					C[i][j] = 0;
				}
			}
		//get gold
		gold((int *)A, (int *)B, (int *)gold_C, mA, nA, mB, nB, mC, nC);
		//hardware out
		parta1_2((int *)A, (int *)B, (int *)C, mA, nA, mB, nB, mC, nC);

		for(int i = 0; i < mC; i++)
		{
			for(int j = 0; j < nC; j++)
			{
				if(C[i][j] != gold_C[i][j])
				{
					printf("%d ", gold_C[i][j]);
					printf("Failed\n");
				}
			}
			//printf("\n");
		}
		printf("Passed A1-2 for mA = %d, nA = %d, nB = %d, \n", mA, nA, nB);

}


int main(void)
{
	int t_vector_mA [TEST_VECTORS];
	int t_vector_nA[TEST_VECTORS];
	int t_vector_nB[TEST_VECTORS];

	//fill the test vectors
	for(int i = 0; i < TEST_VECTORS; i++)
	{
		t_vector_mA[i] = rand()%100+1;
		t_vector_nA[i] = rand()%100+1;
		t_vector_nB[i] = rand()%100+1;
	}

	//call the test
	for(int i = 0; i < TEST_VECTORS; i++)
	{
		for(int j = 0; j < TEST_VECTORS; j++)
		{
			for(int k = 0; k < TEST_VECTORS; k++)
			{
				parta1_1_test_func(t_vector_mA[i], t_vector_nA[j], t_vector_nB[k]);
				parta1_2_test_func(t_vector_mA[i], t_vector_nA[j], t_vector_nB[k]);
			}
		}
	}
}
