#include "lenet.h"

void store_input(float input[1][32][32], float input_oc[1][32][32])
{
	for(int i = 0; i < 32; i++)
	{
		for(int j = 0; j < 32; j++)
		{
			input_oc[0][i][j] = input[0][i][j];
		}
	}
}

void store_weights(float weights[6][1][5][5], float weights_oc[6][1][5][5])
{
	for(int i = 0; i < 6; i++)
	{
		for(int j = 0; j < 5; j ++)
		{
			for(int k = 0; k < 5; k++)
			{
				weights_oc[i][0][j][k] = weights[i][0][j][k];
			}
		}
	}
}

void store_weights_3(float weights[16][6][5][5], float weights_oc[16][5][5], int input_channel)
{
	for(int i = 0; i < 16; i++)
	{
			for(int j = 0; j < 5; j ++)
			{
				for(int k = 0; k < 5; k++)
				{
					weights_oc[i][j][k] = weights[i][input_channel][j][k];
				}
			}
	}
}

void store_weights_5(float weights[120][16][5][5], float weights_oc[120][5][5], int input_channel)
{
	for(int i = 0; i < 120; i++)
	{
			for(int j = 0; j < 5; j ++)
			{
				for(int k = 0; k < 5; k++)
				{
					#pragma HLS PIPELINE II=1
					weights_oc[i][j][k] = weights[i][input_channel][j][k];
				}
			}
	}
}

void store_bias(float bias[6], float bias_oc[6])
{
	for(int i = 0; i < 6; i++)
		bias_oc[i] = bias[i];
}

void store_bias_3(float bias[16], float bias_oc[16])
{
	for(int i = 0; i < 16; i++)
		bias_oc[i] = bias[i];
}

void store_bias_5(float bias[120], float bias_oc[120])
{
	for(int i = 0; i < 120; i++)
		bias_oc[i] = bias[i];
}

void store_output(float output[10], float output_oc[10])
{
	for(int i = 0; i < 10; i++)
		output[i] = output_oc[i];
}

//#pragma HLS INTERFACE m_axi depth=64 port=input offset=slave bundle=DATA_INPUT
//#pragma HLS INTERFACE m_axi depth=64 port=weights offset=slave bundle=DATA_WEIGHT
//#pragma HLS INTERFACE m_axi depth=64 port=bias offset=slave bundle=DATA_BIAS
//#pragma HLS INTERFACE m_axi depth=64 port=output offset=slave bundle=DATA_OUTPUT
//#pragma HLS INTERFACE s_axilite register port=return bundle=CTL

void convulution1(float input[1][32][32], float weights[6][1][5][5], float bias[6], float output[6][28][28])
{
    for(int co = 0; co < 6; co++)
        for(int h = 0; h < 28; h++)
            for(int w = 0; w < 28; w++)
            {
        		float sum = 0;
                for(int m = 0; m < (5); m++)
                {
					//#pragma HLS unroll factor = 5
                    for(int n = 0; n < 5; n++)
                    {
//						#pragma HLS PIPELINE II = 5
                        sum += weights[co][0][m][n] * input[0][h+m][w+n];
                    }
                }
				#pragma HLS PIPELINE II = 13
				output[co][h][w] = sum + bias[co];
            }

}

void relu_1(float output[6][28][28])
{
	for(int i = 0; i < 6; i++)
		for(int j = 0; j < 28; j++)
			for(int k = 0; k < 28; k++)
				if(output[i][j][k] < 0)
					output[i][j][k] = 0;
}

void maxpool_2(float input[6][28][28],float output[6][14][14])
{
    for(int c = 0;c < 6; c++)
        for(int h = 0; h < 14; h++)
            for(int w = 0; w < 14; w++)
            {
                float max_value=-1000000000000.0;
                for(int i = 0; i < 2; i++)
                {
                    for(int j = 0;j < 2; j++)
                        max_value = (max_value > input[c][h*2+i][w*2+j]) ? max_value:input[c][h*2+i][w*2+j];
                }
                output[c][h][w] = max_value;

            }
}

void relu_2(float output[6][14][14])
{
	for(int i = 0; i < 6; i++)
		for(int j = 0; j < 14; j++)
			for(int k = 0; k < 14; k++)
				if(output[i][j][k] < 0)
					output[i][j][k] = 0;
}

// Convolution Layer 3
void convolution_3(float input[6][14][14], float weights_0[16][5][5], float weights_1[16][5][5],
				   float weights_2[16][5][5], float weights_3[16][5][5],
				   float weights_4[16][5][5], float weights_5[16][5][5],
				   float bias[16], float output[16][10][10])
{
	float sum[6];
    for(int co = 0; co < 16; co++)
//		#pragma HLS unroll factor = 16
        for(int h = 0; h < 10; h++)
            for(int w = 0; w < 10; w++)
            {
                    for(int m = 0; m < 5; m++)
                    {
                    	for(int n = 0; n < 5; n++)
                        {
                    		if(n == 0 && m == 0)
                             {
                    			sum[0] = 0;
                    			sum[1] = 0;
                    			sum[2] = 0;
                    			sum[3] = 0;
                    			sum[4] = 0;
                    			sum[5] = 0;
                             }
							//#pragma HLS unroll factor = 5
#pragma HLS PIPELINE II=5
                                sum[0] += weights_0[co][m][n] * input[0][h+m][w+n];
                                sum[1] += weights_1[co][m][n] * input[1][h+m][w+n];
                                sum[2] += weights_2[co][m][n] * input[2][h+m][w+n];
                                sum[3] += weights_3[co][m][n] * input[3][h+m][w+n];
                                sum[4] += weights_4[co][m][n] * input[4][h+m][w+n];
                                sum[5] += weights_5[co][m][n] * input[5][h+m][w+n];
                                if(n == 4 && m == 4)
                                    output[co][h][w] = sum[0] + sum[1] + sum[2] + sum[3] + sum[4] + sum[5] + bias[co];
                        }
                    }
//					#pragma HLS PIPELINE II=75
//                    output[co][h][w] = sum + bias[co];
            }
}

void relu_3(float output[16][10][10])
{
	for(int i = 0; i < 16; i++)
		for(int j = 0; j < 10; j++)
			for(int k = 0; k < 10; k++)
				if(output[i][j][k] < 0)
					output[i][j][k] = 0;
}

void maxpool_4(float input[16][10][10],float output[16][5][5])
{
    for(int c = 0;c < 16; c++)
        for(int h = 0; h < 5; h++)
            for(int w = 0; w < 5; w++)
            {
                float max_value=-1000000000000.0;
                for(int i = 0; i < 2; i++)
                {
                    for(int j = 0;j < 2; j++)
                        max_value = (max_value > input[c][h*2+i][w*2+j]) ? max_value:input[c][h*2+i][w*2+j];
                }
                output[c][h][w] = max_value;
            }
}

void relu_4(float output[16][5][5])
{
	for(int i = 0; i < 16; i++)
		for(int j = 0; j < 5; j++)
			for(int k = 0; k < 5; k++)
				if(output[i][j][k] < 0)
					output[i][j][k] = 0;
}

void convolution_5(float input[16][5][5], float weights_0[120][5][5],
	float weights_1[120][5][5], float weights_2[120][5][5], float weights_3[120][5][5],
	float weights_4[120][5][5], float weights_5[120][5][5], float weights_6[120][5][5],
	float weights_7[120][5][5], float weights_8[120][5][5], float weights_9[120][5][5],
	float weights_10[120][5][5], float weights_11[120][5][5], float weights_12[120][5][5],
	float weights_13[120][5][5], float weights_14[120][5][5], float weights_15[120][5][5],
	float bias[120], float output[120][1][1])
{
    for(int co = 0; co < 120; co++)
    {
			float sum[16] = {0};
        for(int i = 0, m = 0; i < 5; i++, m++)
        {
            for(int j = 0, n = 0; j < 5; j++, n++)
            {
            	if(j == 0 && i == 0)
            	{
            		sum[0] = 0;
            		sum[1] = 0;
            		sum[2] = 0;
            		sum[3] = 0;
            		sum[4] = 0;
            		sum[5] = 0;
            		sum[6] = 0;
            		sum[7] = 0;
            		sum[8] = 0;
            		sum[9] = 0;
            		sum[10] = 0;
            		sum[11] = 0;
            		sum[12] = 0;
            		sum[13] = 0;
            		sum[14] = 0;
            		sum[15] = 0;
            	}
				#pragma HLS PIPELINE II=5
				sum[0] += weights_0[co][m][n] * input[0][i][j];
				sum[1] += weights_1[co][m][n] * input[1][i][j];
				sum[2] += weights_2[co][m][n] * input[2][i][j];
				sum[3] += weights_3[co][m][n] * input[3][i][j];
				sum[4] += weights_4[co][m][n] * input[4][i][j];
				sum[5] += weights_5[co][m][n] * input[5][i][j];
				sum[6] += weights_6[co][m][n] * input[6][i][j];
				sum[7] += weights_7[co][m][n] * input[7][i][j];
				sum[8] += weights_8[co][m][n] * input[8][i][j];
				sum[9] += weights_9[co][m][n] * input[9][i][j];
				sum[10] += weights_10[co][m][n] * input[10][i][j];
				sum[11] += weights_11[co][m][n] * input[11][i][j];
				sum[12] += weights_12[co][m][n] * input[12][i][j];
				sum[13] += weights_13[co][m][n] * input[13][i][j];
				sum[14] += weights_14[co][m][n] * input[14][i][j];
				sum[15] += weights_15[co][m][n] * input[15][i][j];

				if(j == 4 && i == 4)
					output[co][0][0] = sum[0] + sum[1] + sum[2] + sum[3] + sum[4] + sum[5] +
					 				   sum[6] + sum[7] + sum[8] + sum[9] + sum[10] + sum[11] +
									   sum[12] + sum[13] + sum[14] + sum[15] + bias[co];

            }
        }
//#pragma HLS PIPELINE II=200
    }
}

void relu_5(float output[120][1][1])
{
	for(int i = 0; i < 120; i++)
		for(int j = 0; j < 1; j++)
			for(int k = 0; k < 1; k++)
				if(output[i][j][k] < 0)
					output[i][j][k] = 0;
}

void fc_6(const float input[120][1][1], const float weights[10][120][1][1], const float bias[10], float output[10])
{
    for(int n = 0; n < 10; n++)
    {
        output[n] = 0;
        for(int c = 0; c < 120; c++)
        {
#pragma HLS PIPELINE II=5
            output[n] += weights[n][c][0][0] * input[c][0][0];
        }
        output[n]+=bias[n];
    }
}

void relu_6(float output[10])
{
	for(int i = 0; i < 10; i++)
	{
		if(output[i] < 0)
			output[i] = 0;
	}
}

int conv1(float input[1][32][32],
		float weights[6][1][5][5], float weights_3[16][6][5][5],
		float weights_5[120][16][5][5], float weights_6[10][120][1][1],
		float bias[6], float bias_3[16], float bias_5[120], float bias_6[10],
		float output[10])
{
#pragma HLS INTERFACE m_axi depth=1024 port=input offset=slave bundle=DATA_INPUT

#pragma HLS INTERFACE m_axi depth=150 port=weights offset=slave bundle=DATA_WEIGHT
#pragma HLS INTERFACE m_axi depth=2400 port=weights_3 offset=slave bundle=DATA_WEIGHT
#pragma HLS INTERFACE m_axi depth=48000 port=weights_5 offset=slave bundle=DATA_WEIGHT
#pragma HLS INTERFACE m_axi depth=1200 port=weights_6 offset=slave bundle=DATA_WEIGHT


#pragma HLS INTERFACE m_axi depth=6 port=bias offset=slave bundle=DATA_BIAS
#pragma HLS INTERFACE m_axi depth=16 port=bias_3 offset=slave bundle=DATA_BIAS
#pragma HLS INTERFACE m_axi depth=120 port=bias_5 offset=slave bundle=DATA_BIAS
#pragma HLS INTERFACE m_axi depth=120 port=bias_6 offset=slave bundle=DATA_BIAS


#pragma HLS INTERFACE m_axi depth=10 port=output offset=slave bundle=DATA_OUTPUT

#pragma HLS INTERFACE s_axilite register port=return bundle=CTL
	float input_oc[1][32][32];
	//store input on chip
	store_input(input, input_oc);
	float weights_oc[6][1][5][5];
	float weights_3_0_oc[16][5][5];
	float weights_3_1_oc[16][5][5];
	float weights_3_2_oc[16][5][5];
	float weights_3_3_oc[16][5][5];
	float weights_3_4_oc[16][5][5];
	float weights_3_5_oc[16][5][5];
	float weights_5_0_oc[120][5][5];
	float weights_5_1_oc[120][5][5];
	float weights_5_2_oc[120][5][5];
	float weights_5_3_oc[120][5][5];
	float weights_5_4_oc[120][5][5];
	float weights_5_5_oc[120][5][5];
	float weights_5_6_oc[120][5][5];
	float weights_5_7_oc[120][5][5];
	float weights_5_8_oc[120][5][5];
	float weights_5_9_oc[120][5][5];
	float weights_5_10_oc[120][5][5];
	float weights_5_11_oc[120][5][5];
	float weights_5_12_oc[120][5][5];
	float weights_5_13_oc[120][5][5];
	float weights_5_14_oc[120][5][5];
	float weights_5_15_oc[120][5][5];
	//store weights on chip
	store_weights(weights, weights_oc);
	store_weights_3(weights_3, weights_3_0_oc, 0);
	store_weights_3(weights_3, weights_3_1_oc, 1);
	store_weights_3(weights_3, weights_3_2_oc, 2);
	store_weights_3(weights_3, weights_3_3_oc, 3);
	store_weights_3(weights_3, weights_3_4_oc, 4);
	store_weights_3(weights_3, weights_3_5_oc, 5);
	store_weights_5(weights_5, weights_5_0_oc, 0);
	store_weights_5(weights_5, weights_5_1_oc, 1);
	store_weights_5(weights_5, weights_5_2_oc, 2);
	store_weights_5(weights_5, weights_5_3_oc, 3);
	store_weights_5(weights_5, weights_5_4_oc, 4);
	store_weights_5(weights_5, weights_5_5_oc, 5);
	store_weights_5(weights_5, weights_5_6_oc, 6);
	store_weights_5(weights_5, weights_5_7_oc, 7);
	store_weights_5(weights_5, weights_5_8_oc, 8);
	store_weights_5(weights_5, weights_5_9_oc, 9);
	store_weights_5(weights_5, weights_5_10_oc, 10);
	store_weights_5(weights_5, weights_5_11_oc, 11);
	store_weights_5(weights_5, weights_5_12_oc, 12);
	store_weights_5(weights_5, weights_5_13_oc, 13);
	store_weights_5(weights_5, weights_5_14_oc, 14);
	store_weights_5(weights_5, weights_5_15_oc, 15);
	float bias_oc[6];
	float bias_3_oc[16];
	float bias_5_oc[120];
	//store bias on chip
	store_bias(bias, bias_oc);
	store_bias_3(bias_3, bias_3_oc);
	store_bias_5(bias_5, bias_5_oc);
	float output1_oc[6][28][28];
	float output2_oc[6][14][14];
	float output3_oc[16][10][10];
	float output4_oc[16][5][5];
	float output5_oc[120][1][1];
	float output6_oc[10];
	//first layer conv
	convulution1(input_oc, weights_oc, bias_oc, output1_oc);
//	relu_1(output1_oc);

	//second layer
	maxpool_2(output1_oc, output2_oc);
	relu_2(output2_oc);

	//third layer
	convolution_3(output2_oc, weights_3_0_oc, weights_3_1_oc,
							  weights_3_2_oc, weights_3_3_oc,
							  weights_3_4_oc, weights_3_5_oc,
							  bias_3_oc, output3_oc);
//	relu_3(output3_oc);

	//fourth layer
	maxpool_4(output3_oc, output4_oc);
	relu_4(output4_oc);

	//fifth layer
	convolution_5(output4_oc, weights_5_0_oc, weights_5_1_oc,
							  weights_5_2_oc, weights_5_3_oc,
							  weights_5_4_oc, weights_5_5_oc,
								weights_5_6_oc, weights_5_7_oc,
							  weights_5_8_oc, weights_5_9_oc,
								weights_5_10_oc, weights_5_11_oc,
								weights_5_12_oc, weights_5_13_oc,
								weights_5_14_oc, weights_5_15_oc,
								bias_5_oc, output5_oc);
	relu_5(output5_oc);

	//sixth layer
	fc_6(output5_oc, weights_6, bias_6, output6_oc);
	relu_6(output6_oc);
	//store output on chip
	store_output(output, output6_oc);
    return 0;
}
