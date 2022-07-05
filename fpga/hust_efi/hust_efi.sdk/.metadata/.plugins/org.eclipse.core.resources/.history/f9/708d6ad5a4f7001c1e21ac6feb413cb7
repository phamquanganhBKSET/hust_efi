#ifndef MATH_H
#define MATH_H

#include <iostream>
#include <math.h>
#include <string>
#include "../include/GlobalDefines.hpp"
#include "File.hpp"
#include "Array.hpp"

using namespace std;

class Math {

public:
	static float lagrange_basis_function_1d(int mx, float* xd, int i, float xi);

	static float interpolation1d(float** table, float x, int cols);

	static float interpolation2d(float* x, float* y, float** z, float xi, float yi, int rows, int cols);
	
};

#endif