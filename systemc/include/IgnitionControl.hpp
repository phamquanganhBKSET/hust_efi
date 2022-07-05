#ifndef IC_H
#define IC_H

#include <iostream>
#include "GlobalDefines.hpp"
#include "../lib/Array.hpp"
#include "../lib/Math.hpp"

//=================================================

#ifdef SYSTEMC
#include <systemc.h>

using namespace sc_core;

class IgnitionControl : public sc_module {

private:
	float ignitionTime;

	float** IgnitionTable;

	float** ColdAdvanceTable;

public:
	SC_CTOR(IgnitionControl) : ignitionTime(0) {
		IgnitionTable = Array::create(IGNITION_ROWS, IGNITION_COLS);
		ColdAdvanceTable = Array::create(COLD_ADVANCE_ROWS, COLD_ADVANCE_COLS);
	}

	void loadTable(char path[]);

	void ignition();

	float getIgnitionTime();

	void setIgnitionTime(float ignitionTime);

	float totalAdvanceCalculation(float CLT, float MAP, float RPM);

};

//=================================================

#else

class IgnitionControl {

private:
	float ignitionTime;

	bool on;

	float** IgnitionTable;

	float** ColdAdvanceTable;

public:
	IgnitionControl();

	void loadTable(char path[]);
	
	void ignition();

	bool getOn();

	void turnOn();

	void turnOff();

	float getIgnitionTime();

	void setIgnitionTime(float ignitionTime);

	float totalAdvanceCalculation(float CLT, float MAP, float RPM);

};

#endif

#endif
