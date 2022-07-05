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

	float IgnitionTable[IGNITION_ROWS][IGNITION_COLS] = {{500, 600, 900, 1200, 1400, 1700, 2000, 2300, 2600, 2800, 3100, 5200},
																					{25.0, 32.0, 39.0, 46.0, 53.0, 60.0, 66.0, 73.0, 80.0, 87.0, 94.0, 101.0},
																					{13.0, 10.0, 15.9, 19.6, 22.1, 25.7, 29.4, 33.1, 36.8, 39.2, 41.7, 41.7},
																					{13.0, 10.0, 15.7, 19.3, 21.7, 25.3, 28.9, 32.5, 36.1, 38.5, 40.9, 40.9},
																					{13.0, 10.0, 15.4, 18.9, 21.3, 24.8, 28.4, 31.9, 35.5, 37.9, 40.2, 40.2},
																					{13.0, 10.0, 15.1, 18.6, 20.9, 24.4, 27.9, 31.4, 34.9, 37.2, 39.5, 39.5},
																					{13.0, 10.0, 14.8, 18.3, 20.5, 24.0, 27.4, 30.8, 34.2, 36.5, 38.8, 38.8},
																					{13.0, 10.0, 14.6, 17.9, 20.2, 23.5, 26.9, 30.2, 33.6, 35.8, 38.1, 38.1},
																					{13.0, 10.0, 14.3, 17.6, 19.8, 23.1, 26.4, 29.8, 33.1, 35.3, 37.5, 37.5},
																					{13.0, 10.0, 14.1, 17.3, 19.5, 22.7, 25.9, 29.2, 32.4, 34.6, 36.8, 36.8},
																					{13.0, 10.0, 13.8, 17.0, 19.1, 22.3, 25.4, 28.6, 31.8, 33.9, 36.0, 36.0},
																					{13.0, 10.0, 13.5, 16.6, 18.7, 21.8, 24.9, 28.1, 31.2, 33.2, 35.3, 35.3},
																					{5.0, 10.0, 13.2, 16.3, 18.3, 21.4, 24.4, 27.5, 30.5, 32.6, 34.6, 34.6},
																					{5.0, 10.0, 13.0, 16.0, 17.9, 20.9, 23.9, 26.9, 29.9, 31.9, 33.9, 33.9}};

	float ColdAdvanceTable[COLD_ADVANCE_ROWS][COLD_ADVANCE_COLS] = {{-10.0, 0.0, 5.0, 10.0, 15.0, 22.8, 32.6, 49.3, 60.0, 70.0},
																																	{6.0, 5.0, 5.0, 5.0, 4.0, 3.0, 2.0, 1.0, 0.0, 0.0}};

public:
	IgnitionControl();
	
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
