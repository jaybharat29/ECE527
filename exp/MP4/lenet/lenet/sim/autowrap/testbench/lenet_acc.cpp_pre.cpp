# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP4/ECE527_MP4_Tutorial_Files/Tutorial_Files/accelerator_hls/lenet_acc.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP4/ECE527_MP4_Tutorial_Files/Tutorial_Files/accelerator_hls/lenet_acc.cpp"
# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP4/ECE527_MP4_Tutorial_Files/Tutorial_Files/accelerator_hls/lenet.h" 1
void convolution1(float input[1][32][32], float weights[6][1][5][5], float bias[6], float output[6][28][28]);
int conv1(float input[1][32][32], float weights[6][1][5][5], float bias[6], float output[6][14][14]);
void relu1(float input[6][28][28], float output[6][28][28]);
void max_pooling2(float input[6][28][28],float output[6][14][14]);
void relu2(float input[6][14][14], float output[6][14][14]);
# 2 "C:/Users/Patel/Downloads/ECE527/exp/MP4/ECE527_MP4_Tutorial_Files/Tutorial_Files/accelerator_hls/lenet_acc.cpp" 2

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

void store_bias(float bias[6], float bias_oc[6])
{
 for(int i = 0; i < 6; i++)
  bias_oc[i] = bias[i];
}

void store_output(float output[6][14][14], float output_oc[6][14][14])
{
 for(int i = 0; i < 6; i++)
  for(int j = 0; j < 14; j++)
   for(int k = 0; k < 14; k++)
    output[i][j][k] = output_oc[i][j][k];
}







void convulution1(float input[1][32][32], float weights[6][1][5][5], float bias[6], float output[6][28][28])
{
    for(int co = 0; co < 6; co++)
        for(int h = 0; h < 28; h++)
            for(int w = 0; w < 28; w++)
            {
                float sum = 0;

                for(int m = 0; m < (5); m++)
                {
#pragma HLS unroll factor = 5
                    for(int n = 0; n < 5; n++)
                    {
#pragma HLS PIPELINE II = 5
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


int conv1(float input[1][32][32], float weights[6][1][5][5], float bias[6], float output[6][14][14])
{
#pragma HLS INTERFACE m_axi depth=1024 port=input offset=slave bundle=DATA_INPUT
#pragma HLS INTERFACE m_axi depth=150 port=weights offset=slave bundle=DATA_WEIGHT
#pragma HLS INTERFACE m_axi depth=6 port=bias offset=slave bundle=DATA_BIAS
#pragma HLS INTERFACE m_axi depth=4704 port=output offset=slave bundle=DATA_OUTPUT
#pragma HLS INTERFACE s_axilite register port=return bundle=CTL
 float input_oc[1][32][32];

 store_input(input, input_oc);
 float weights_oc[6][1][5][5];

 store_weights(weights, weights_oc);
 float bias_oc[6];

 store_bias(bias, bias_oc);
 float output1_oc[6][28][28];
 float output2_oc[6][14][14];


 convulution1(input_oc, weights_oc, bias_oc, output1_oc);
 relu_1(output1_oc);


 maxpool_2(output1_oc, output2_oc);
 relu_2(output2_oc);

 store_output(output, output2_oc);
    return 0;
}
