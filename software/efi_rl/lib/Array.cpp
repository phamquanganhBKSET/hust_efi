#include "Array.hpp"

float* Array::flatten(float** arr, int rows, int cols) {
	float* result = new float[rows * cols];
	int k = 0;

	for (int i = 0; i < rows; i++)
	{
		for (int j = 0; j < cols; j++)
		{
			result[k++] = arr[i][j];
		}
	}
	
	return result;
}

float** Array::create(int rows, int cols) {
	float** arr = new float*[rows];
    for(int i = 0; i < rows; i++) {
        arr[i] = new float[cols];
    }
    return arr;
};

void Array::del(float** arr, int rows) {
	for(int i = 0 ; i < rows ; i++)
    {
        delete[] arr[i];
    }
    delete[] arr;
};

void Array::assign(float* source, float* dest, int n) {
	for (int i = 0; i < n; ++i)
	{
		dest[i] = source[i];
	}
};

void Array::assign(float** source, float** dest, int rows, int cols) {
	for (int i = 0; i < rows; ++i)
	{
		for (int j = 0; j < cols; ++j)
		{
			dest[i][j] = source[i][j];
		}
	}
};

void Array::assign(float** source, float** dest, int rowFrom, int rowTo, int colFrom, int colTo) {
	for (int i = rowFrom; i < rowTo; ++i)
	{
		for (int j = colFrom; j < colTo; ++j)
		{
			dest[i-rowFrom][j-colFrom] = source[i][j];
		}
	}
};