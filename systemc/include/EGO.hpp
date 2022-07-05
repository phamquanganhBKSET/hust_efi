#ifndef EGO_H
#define EGO_H

#include <iostream>
#include "GlobalDefines.hpp"
#include "../lib/Array.hpp"
#include "../lib/Math.hpp"

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
	float** EGOSSTable;

public:

	EGO();

	void loadTable(char path[]);

	void check();

	float getData();

};

#endif

//=================================================

#endif
