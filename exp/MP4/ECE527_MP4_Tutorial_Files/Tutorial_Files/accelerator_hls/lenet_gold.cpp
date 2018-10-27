// ECE527 Fall 2017
// University of Illinois, Urbana-Champaign
// Author - Sitao Huang, Ashutosh Dhar
// Demo code of LeNet Convolutional Neural Network
// *****************************************
// Before running the code make that the following files are on the SD card
// 1. images.bin
// 2. labels.bin
// 3. params.bin
// This code demos inference on the MNIST dataset with a LeNet CNN
// Provided network parameters have been training already and should give an accuracy of ~98.39%

#include <iostream>
#include "lenet.h"
using namespace std;

// Start function definitions of different layers
inline float relu(float input)
{
    return (input > 0)? input:0;
}

// Convolution Layer 1
void convolution1(float input[1][32][32], float weights[6][1][5][5], float bias[6], float output[6][28][28])
{
    for(int co = 0; co < 6; co++)
        for(int h = 0; h < 28; h++)
            for(int w = 0; w < 28; w++)
            {
                float sum = 0;
                for(int i = h, m = 0; i < (h + 5); i++, m++)
                {
                    for(int j = w, n = 0; j < (w + 5); j++, n++)
                        sum += weights[co][0][m][n] * input[0][i][j];
                }
                output[co][h][w] = sum + bias[co];
            }
}

// Relu Layer 1
void relu1(float input[6][28][28], float output[6][28][28])
{
    for(int i = 0; i < 6; i++)
        for(int j = 0; j < 28; j++)
            for(int k = 0; k < 28; k++)
                output[i][j][k] = relu(input[i][j][k]);
}

// Pooling Layer 2
void max_pooling2(float input[6][28][28],float output[6][14][14])
{
    for(int c = 0;c < 6; c++)
        for(int h = 0; h < 14; h++)
            for(int w = 0; w < 14; w++)
            {
                float max_value=-1000000000000.0;
                for(int i = h*2; i < h*2+2; i++)
                {
                    for(int j = w*2;j < w*2+2; j++)
                        max_value = (max_value > input[c][i][j]) ? max_value:input[c][i][j];
                }
                output[c][h][w] = max_value;

            }
}

// Relu Layer 2
void relu2(float input[6][14][14], float output[6][14][14])
{
    for(int i = 0; i < 6; i++)
        for(int j = 0; j < 14; j++)
            for(int k = 0; k < 14; k++)
                output[i][j][k] = relu(input[i][j][k]);
}

// Convolution Layer 3
void convolution3(float input[6][14][14], float weights[16][6][5][5], float bias[16], float output[16][10][10])
{
    for(int co = 0; co < 16; co++)
        for(int h = 0; h < 10; h++)
            for(int w = 0; w < 10; w++)
            {
                    float sum = 0;
                    for(int i = h, m = 0; i < (h+5); i++, m++)
                    {
                        for(int j = w, n = 0; j < (w+5); j++, n++)
                            for (int ci = 0; ci < 6; ci++)
                                sum += weights[co][ci][m][n] * input[ci][i][j];
                    }
                    output[co][h][w] = sum + bias[co];
            }
}

// Relu Layer 3
void relu3(float input[16][10][10], float output[16][10][10])
{
    for(int i = 0; i < 16; i++)
        for(int j = 0; j < 10; j++)
            for(int k = 0; k < 10; k++)
                output[i][j][k] = relu(input[i][j][k]);
}

// Pooling Layer 4
void max_pooling4(float input[16][10][10],float output[16][5][5])
{
    for(int c = 0;c < 16; c++)
        for(int h = 0; h < 5; h++)
            for(int w = 0; w < 5; w++)
            {
                float max_value=-1000000000000.0;
                for(int i = h*2; i < h*2+2; i++)
                {
                    for(int j = w*2;j < w*2+2; j++)
                        max_value = (max_value > input[c][i][j]) ? max_value:input[c][i][j];
                }
                output[c][h][w] = max_value;
            }
}

// Relu Layer 4
void relu4(float input[16][5][5], float output[16][5][5])
{
    for(int i = 0; i < 16; i++)
        for(int j = 0; j < 5; j++)
            for(int k = 0; k < 5; k++)
                output[i][j][k] = relu(input[i][j][k]);
}

// Convolution Layer 5
void convolution5(float input[16][5][5], float weights[120][16][5][5], float bias[120], float output[120][1][1])
{
    for(int co = 0; co < 120; co++)
    {
        float sum = 0;
        for(int i = 0, m = 0; i < 5; i++, m++)
        {
            for(int j = 0, n = 0; j < 5; j++, n++)
            {
                for (int ci = 0; ci < 16; ci++)
                    sum += weights[co][ci][m][n] * input[ci][i][j];
            }
        }
        output[co][0][0] = sum + bias[co];
    }
}

// Relu Layer 5
void relu5(float input[120][1][1], float output[120][1][1])
{
    for(int i = 0; i < 120; i++)
        output[i][0][0] = relu(input[i][0][0]);
}

// Fully connected Layer 6
void fc6(const float input[120][1][1], const float weights[10][120][1][1], const float bias[10], float output[10])
{
    for(int n = 0; n < 10; n++)
    {
        output[n] = 0;
        for(int c = 0; c < 120; c++)
        {
            output[n] += weights[n][c][0][0] * input[c][0][0];
        }
        output[n]+=bias[n];
    }
}

// Relu Layer 6
void relu6(float input[10], float output[10])
{
    for(int i = 0; i < 10; i++)
        output[i] = relu(input[i]);
}
// *****************************************
// End declaration of layers functions
// *****************************************

