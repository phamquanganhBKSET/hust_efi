#ifndef MAP_H
#define MAP_H

#include <iostream>
#include "GlobalDefines.hpp"
#include "../lib/Array.hpp"
#include "../lib/Math.hpp"

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
	float** MAPSSTable;

public:

	MAP();

	void loadTable(char path[]);
	
	void check();

	float getData();

};

#endif

//=================================================

#endif