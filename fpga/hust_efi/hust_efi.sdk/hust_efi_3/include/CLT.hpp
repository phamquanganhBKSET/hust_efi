#ifndef CLT_H
#define CLT_H

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

class CLT : public sc_module {

private:
	float data;
	float** CLTSSTable;

public:

	sc_port<sc_signal_in_if<float>> input;

	SC_CTOR(CLT) : data(0) {
		CLTSSTable = Array::create(CLTSS_ROWS, CLTSS_COLS);
	};

	void loadTable(char path[]);
	
	void check();

	float getData();

};

//=================================================

#else

class CLT {

private:
	float data;
	float CLTSSTable[CLTSS_ROWS][CLTSS_COLS] = {{0.27, 0.35, 0.46, 0.60, 0.78, 1.02, 1.33, 1.70, 2.13, 2.60, 3.07, 3.51},
												{120, 110, 100, 90, 80, 70, 60, 50, 40, 30, 20, 10}};

public:

	CLT();
	
	void check();

	float getData();

};

#endif

//=================================================

#endif
