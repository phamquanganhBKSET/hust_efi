#ifndef MAP_H
#define MAP_H

#include <iostream>
#include "GlobalDefines.hpp"
#include "../lib/Array.hpp"
#include "../lib/Math.hpp"
#include "efi_virtual_input.h"
#include "xparameters.h"
#include "xgpio.h"

//=================================================

#ifdef SYSTEMC
#include <systemc.h>

using namespace sc_core;

class MAP : public sc_module {

private:
	float data;
	float** MAPSSTable;

public:

	sc_port<sc_signal_in_if<float>> input;

	SC_CTOR(MAP) : data(0) {
		MAPSSTable = Array::create(MAPSS_ROWS, MAPSS_COLS);
	}

	void loadTable(char path[]);
	
	void check();

	float getData();

};

//=================================================

#else

class MAP {

private:
	float data;
	float MAPSSTable[MAPSS_ROWS][MAPSS_COLS] = {{5.0, 4.4, 3.8, 3.3, 2.7, 2.2, 1.7, 1.1, 0.6, 0.3, 0.0},
												{100, 90, 80, 70, 60, 50, 40, 30, 20, 10, 0.0}};

public:

	MAP();
	
	void check();

	float getData();

};

#endif

//=================================================

#endif
