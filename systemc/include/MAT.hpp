#ifndef MAT_H
#define MAT_H

#include <iostream>
#include "GlobalDefines.hpp"
#include "../lib/Array.hpp"
#include "../lib/Math.hpp"

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
	float** MATSSTable;

public:

#ifdef SYSTEMC
	sc_port<sc_signal_in_if<float>> input;
#endif

	MAT();

	void loadTable(char path[]);
	
	void check();

	float getData();

};

#endif

//=================================================

#endif