#ifndef ARRAY_H
#define ARRAY_H

#include <iostream>
#include <math.h>
#include <string>
#include "../include/GlobalDefines.hpp"

using namespace std;

class Array {

public:
	static float* flatten(float** arr, int rows, int cols);

	static float** create(int rows, int cols);

	static void del(float** arr, int rows);

	static void assign(float* source, float* dest, int n);

	static void assign(float** source, float** dest, int rows, int cols);

	static void assign(float** source, float** dest, int rowFrom, int rowTo, int colFrom, int colTo);
	
};

#endif