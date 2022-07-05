#ifndef EGO_H
#define EGO_H

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

class EGO : public sc_module {

private:
	float data;
	float** EGOSSTable;

public:

	sc_port<sc_signal_in_if<float>> input;

	SC_CTOR(EGO) : data(0) {
		EGOSSTable = Array::create(EGOSS_ROWS, EGOSS_COLS);
	};

	void loadTable(char path[]);

	void check();

	float getData();

};

//=================================================

#else

class EGO {

private:
	float data;
	float EGOSSTable[EGOSS_ROWS][EGOSS_COLS] = {{0.88, 0.875, 0.87, 0.85, 0.79, 0.70, 0.68, 0.66, 0.64, 0.62, 0.55, 0.44, 0.33, 0.24, 0.2, 0.18, 0.17, 0.08, 0.05, 0.04, 0.03, 0.025},
												{9, 10, 11, 12, 13, 14, 14.1, 14.2, 14.3, 14.4, 14.5, 14.6, 14.7, 14.8, 14.9, 15.0, 15.1, 16, 17, 18, 19, 20}};

public:

	EGO();

	void check();

	float getData();

};

#endif

//=================================================

#endif
