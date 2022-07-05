#ifndef MAT_H
#define MAT_H

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

class MAT : public sc_module {

private:
	float data;
	float** MATSSTable;

public:

	sc_port<sc_signal_in_if<float>> input;

	SC_CTOR(MAT) : data(0) {
		MATSSTable = Array::create(MATSS_ROWS, MATSS_COLS);
	};

	void loadTable(char path[]);
	
	void check();

	float getData();

};

//=================================================

#else

class MAT {

private:
	float data;
	float MATSSTable[MATSS_ROWS][MATSS_COLS] = {{0.0, 0.28, 0.36, 0.47, 0.61, 0.80, 1.04, 1.35, 1.72, 2.16, 2.62, 3.06, 3.52, 3.766, 4.105, 4.44, 4.758, 5.0},
												{120, 119, 110, 100, 90, 80, 70, 60, 50, 40, 30, 20, 10, 1.0, -8.0, -18.0, -28.0, -32.0}};

public:

	MAT();
	
	void check();

	float getData();

};

#endif

//=================================================

#endif
