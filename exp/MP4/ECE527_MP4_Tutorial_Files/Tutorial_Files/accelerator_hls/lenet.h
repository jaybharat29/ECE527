void convolution1(float input[1][32][32], float weights[6][1][5][5], float bias[6], float output[6][28][28]);
void relu1(float input[6][28][28], float output[6][28][28]);
void max_pooling2(float input[6][28][28],float output[6][14][14]);
void relu2(float input[6][14][14], float output[6][14][14]);
void convolution3(float input[6][14][14], float weights[16][6][5][5], float bias[16], float output[16][10][10]);
void relu3(float input[16][10][10], float output[16][10][10]);
void max_pooling4(float input[16][10][10],float output[16][5][5]);
void relu4(float input[16][5][5], float output[16][5][5]);
void convolution5(float input[16][5][5], float weights[120][16][5][5], float bias[120], float output[120][1][1]);
void relu5(float input[120][1][1], float output[120][1][1]);
void fc6(const float input[120][1][1], const float weights[10][120][1][1], const float bias[10], float output[10]);
void relu6(float input[10], float output[10]);

int conv1(float input[1][32][32],
		float weights[6][1][5][5], float weights_3[16][6][5][5],
		float weights_5[120][16][5][5], float weights_6[10][120][1][1],
		float bias[6], float bias_3[16], float bias_5[120], float bias_6[10],
		float output[10]);
