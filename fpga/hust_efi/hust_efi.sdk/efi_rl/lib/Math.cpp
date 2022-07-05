#include "Math.hpp"

float Math::lagrange_basis_function_1d(int mx, float* xd, int i, float xi) {
    int j;
    float yi;

    yi = 1.0;

    if ( xi != xd[i] )
    {
        for ( j = 0; j < mx; j++ )
        {
            if ( j != i )
            {
            yi = yi * ( xi - xd[j] ) / ( xd[i] - xd[j] );
            }
        }
    }

    return yi;
}

// Lagrange's interpolation
// function to interpolate the given data points using Lagrange's formula
// x corresponds to the new data point whose value is to be obtained
// cols represents the number of known data points
float Math::interpolation1d(float** table, float x, int cols) {
	float result = 0;

	for (int i = 0; i < cols; i++)
    {
        // Compute individual terms of above formula
        float term = table[1][i];
        for (int j = 0; j < cols; j++)
        {
            if (j!=i)
                term = term*(x - table[0][j])/(table[0][i] - table[0][j]);
        }
 
        // Add current term to result
        result += term;
    }
 
    return result;

}

// Lagrange's interpolation2d
// function to interpolate the given data points using Lagrange's formula for 2d array
// x[cols] is the 1d data array
// y[rows] is the 1d data array
// z[rows][cols] is the array of data values, z[i][j] = p(x[j], y[i])
// xi, yi are the 2D interpolation points
// rows is the polynomial degree in y
// cols is the polynomial degree in x
// Output interpolation2d is the interpolated values
float Math::interpolation2d(float* x, float* y, float** z, float xi, float yi, int rows, int cols) {
	float zi = 0.0;
    float lx, ly; // Lagrange x and y
    int l = 0;
    float* z_flatt = Array::flatten(z, rows, cols);

    for (int j = 0; j < rows; j++)
    {
        for (int i = 0; i < cols; i++)
        {
            lx = Math::lagrange_basis_function_1d(cols, x, i, xi);
            ly = Math::lagrange_basis_function_1d(rows, y, j, yi);
            zi = zi + z_flatt[l++] * lx *ly;
        } 
    }
    return zi;
}
