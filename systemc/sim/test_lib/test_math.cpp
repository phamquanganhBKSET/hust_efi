#include <iostream>
#include <string.h>
#include "../../lib/Array.hpp"
#include "../../lib/File.hpp"
#include "../../lib/Math.hpp"
#include "../../include/GlobalDefines.hpp"

using namespace std;

int main() {
    float** AccelTable = Array::create(ACCEL_ROWS, ACCEL_COLS);

    string name = "../../data/initial/";
    char fileName[name.length() + 1];
    strcpy(fileName, name.c_str());
    strcat(fileName, ACCEL_PATH);

    File::read(fileName, AccelTable, ACCEL_ROWS, ACCEL_COLS);

    cout << "Acceleration table: " << endl;
    for (int i = 0; i < ACCEL_ROWS; i++) {
        for (int j = 0; j < ACCEL_COLS; j++)
        {
            cout << AccelTable[i][j] << " ";
        }
        cout << endl;
    }

    float result = Math::interpolation1d(AccelTable, 1200, ACCEL_COLS);
    cout << "\nMath::interpolation1d(AccelTable, 1200, ACCEL_COLS): " << result << endl;


    float** VETable = Array::create(VE_ROWS, VE_COLS);

    strcpy(fileName, name.c_str());
    strcat(fileName, VE_PATH);

    File::read(fileName, VETable, VE_ROWS, VE_COLS);

    cout << "\nVE table: " << endl;
    for (int i = 0; i < VE_ROWS; i++) {
        for (int j = 0; j < VE_COLS; j++)
        {
            cout << VETable[i][j] << " ";
        }
        cout << endl;
    }

    float* x = new float[VE_COLS];
    float* y = new float[VE_ROWS];
    float** z = Array::create(VE_ROWS - 2, VE_COLS);

    Array::assign(VETable[0], x, VE_COLS);
    Array::assign(VETable[1], y, VE_COLS);
    Array::assign(VETable, z, 2, VE_ROWS, 0, VE_COLS);

    cout << "\nx: " << endl;
    for (int i = 0; i < VE_COLS; i++) {
        cout << x[i] << " ";
    }
    cout << endl;

    cout << "\ny: " << endl;
    for (int i = 0; i < VE_COLS; i++) {
        cout << y[i] << " ";
    }
    cout << endl;

    cout << "\nz: " << endl;
    for (int i = 0; i < VE_ROWS - 2; i++) {
        for (int j = 0; j < VE_COLS; j++)
        {
            cout << z[i][j] << " ";
        }
        cout << endl;
    }

    result = Math::interpolation2d(x, y, z, 5400, 100, VE_ROWS - 2, VE_COLS);

    cout << "\nMath::interpolation2d(x, y, z, 5400, 110, VE_COLS, VE_COLS): " << result << endl;

    Array::del(AccelTable, ACCEL_ROWS);
    Array::del(VETable, VE_ROWS);

    return 0;
}