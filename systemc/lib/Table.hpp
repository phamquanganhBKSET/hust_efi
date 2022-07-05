#ifndef TABLE_H
#define TABLE_H

#include <iostream>
#include <math.h>
#include <string>
#include "../include/GlobalDefines.hpp"

using namespace std;

class Table {

public:
	static void updateTable1d(const char* path, float* newTable);

	static void updateTable2d(const char* path, float** newTable);

	static void loadTable1d(const char*path, float* table);

	static void loadTable2d(const char* path, float** table);
	
};

#endif