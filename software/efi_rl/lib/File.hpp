#ifndef FILE_H
#define FILE_H

#include <iostream>
#include <string>
#include <stdlib.h>
#include <vector>
#include <sstream>
#include "ff.h"
#include "../include/GlobalDefines.hpp"

using namespace std;

class File {

public:
	static bool read(const char* path, float** table, int rows, int cols);
	
	static bool write(const char* path, float** table, int rows, int cols);

};

#endif
