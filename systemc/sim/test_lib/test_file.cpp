#include <iostream>
#include <string.h>
#include "../../lib/Array.hpp"
#include "../../lib/File.hpp"
#include "../../include/GlobalDefines.hpp"

using namespace std;

int main() {
    float** VETable = Array::create(VE_ROWS, VE_COLS);

    string name = "../../data/initial/";
    string fileName;
    fileName = name + VE_PATH;

    bool empty = File::read(fileName.c_str(), VETable, VE_ROWS, VE_COLS);

    if (!empty)
    {
        cout << "\nEmpty";
    }

    for (int i = 0; i < VE_ROWS; i++) {
        for (int j = 0; j < VE_COLS; j++)
        {
            cout << VETable[i][j] << " ";
        }
        cout << endl;
    }

    string name1 = "../../data/running/";
    string fileName1;
    fileName1 = name1 + VE_PATH;

    File::write(fileName1.c_str(), VETable, VE_ROWS, VE_COLS);

    Array::del(VETable, VE_ROWS);

    return 0;
}