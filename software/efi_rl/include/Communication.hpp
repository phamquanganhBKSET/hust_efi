#ifndef COMMUNICATION_H
#define COMMUNICATION_H

#include <iostream>
#include <vector.h>
#include "GlobalDefines.hpp"

using namespace std;

class Communication {

private:
	vector<char> dataFIFO;

public:
	Communication();

	void tx(char data);

	void rx();

	vector<char> getDataFIFO();

	long getBaudRate();

	void setBaudRate(long baudrate);
	
};

#endif