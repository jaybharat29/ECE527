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

void store_weights_3(float weights[16][6][5][5], float weights_oc[16][6][5][5])
{
	for(int i = 0; i < 16; i++)
	{
		for(int l = 0; l < 6; l++)
			for(int j = 0; j < 5; j ++)
			{
				for(int k = 0; k < 5; k++)
				{
					weights_oc[i][l][j][k] = weights[i][l][j][k];
				}
			}
	}
}

void store_weights_5(float weights[120][16][5][5], float weights_oc[120][16][5][5])
{
	for(int i = 0; i < 120; i++)
	{
		for(int l = 0; l < 16; l++)
			for(int j = 0; j < 5; j ++)
			{
				for(int k = 0; k < 5; k++)
				{
					#pragma HLS PIPELINE II=1
					weights_oc[i][l][j][k] = weights[i][l][j][k];
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
						//#pragma HLS PIPELINE II = 5
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
void convolution_3(float input[6][14][14], float weights[16][6][5][5], float bias[16], float output[16][10][10])
{
    for(int co = 0; co < 16; co++)
        for(int h = 0; h < 10; h++)
            for(int w = 0; w < 10; w++)
            {
                    float sum = 0;
                    for(int m = 0; m < 5; m++)
                    {
                        for(int n = 0; n < 5; n++)
                        {
							//#pragma HLS unroll factor = 5
                            for (int ci = 0; ci < 6; ci++)
                            {
								//#pragma HLS PIPELINE II=5
                                sum += weights[co][ci][m][n] * input[ci][h+m][w+n];
                            }
                        }
                    }
					#pragma HLS PIPELINE II=75
                    output[co][h][w] = sum + bias[co];
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

void convolution_5(float input[16][5][5], float weights[120][16][5][5], float bias[120], float output[120][1][1])
{
    for(int co = 0; co < 120; co++)
    {
        float sum = 0;
        for(int i = 0, m = 0; i < 5; i++, m++)
        {
            for(int j = 0, n = 0; j < 5; j++, n++)
            {
                for (int ci = 0; ci < 16; ci++)
                {
					#pragma HLS PIPELINE II=5
                    sum += weights[co][ci][m][n] * input[ci][i][j];
                }
            }
        }
        output[co][0][0] = sum + bias[co];
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
		#pragma HLS unroll factor = 120
        for(int c = 0; c < 120; c++)
        {
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
	float weights_3_oc[16][6][5][5];
	float weights_5_oc[120][16][5][5];
	//store weights on chip
	store_weights(weights, weights_oc);
	store_weights_3(weights_3, weights_3_oc);
	store_weights_5(weights_5, weights_5_oc);
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
	relu_1(output1_oc);

	//second layer
	maxpool_2(output1_oc, output2_oc);
	relu_2(output2_oc);

	//third layer
	convolution_3(output2_oc, weights_3_oc, bias_3_oc, output3_oc);
	relu_3(output3_oc);

	//fourth layer
	maxpool_4(output3_oc, output4_oc);
	relu_4(output4_oc);

	//fifth layer
	convolution_5(output4_oc, weights_5_oc, bias_5_oc, output5_oc);
	relu_5(output5_oc);

	//sixth layer
	fc_6(output5_oc, weights_6, bias_6, output6_oc);
	relu_6(output6_oc);
	//store output on chip
	store_output(output, output6_oc);
    return 0;
}

