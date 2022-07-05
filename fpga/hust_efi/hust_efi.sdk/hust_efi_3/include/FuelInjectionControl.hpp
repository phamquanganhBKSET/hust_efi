#ifndef FIC_H
#define FIC_H

#include <iostream>
#include <string.h>
#include <unistd.h>
#include <math.h>
#include "GlobalDefines.hpp"
#include "../lib/Array.hpp"
#include "../lib/Math.hpp"

//=================================================

#ifdef SYSTEMC
#include <systemc.h>

using namespace sc_core;

class FuelInjectionControl : public sc_module {

private:
	float injectionTime; // in ms

	bool on;

	float** AFRTable;

	float** VETable;

	float** WarmUpTable;

	float** OxygenLoopTable;

	float** AccelerationTable;

public:
	SC_CTOR(FuelInjectionControl) : injectionTime(0) {
		AFRTable = Array::create(AFR_ROWS, AFR_COLS);
		VETable = Array::create(VE_ROWS, VE_COLS);
		WarmUpTable = Array::create(WARM_UP_ROWS, WARM_UP_COLS);
		OxygenLoopTable = Array::create(EGO_ROWS, EGO_COLS);
		AccelerationTable = Array::create(ACCEL_ROWS, ACCEL_COLS);
	}

	bool loadTable(char path[]);

	void updateTable(char path[], float MAP, float RPM, float EGO);

	void inject();

	float getInjectionTime();

	void setInjectionTime(float injectionTime);

	float airDensity(float MAT, float MAP);

	float requiredFuel(float MAT, float MAP, float RPM);

	float gammaEnrichment(float CLT, float EGO, float MAP, float RPM);

	float pulseWidth(float CLT, float EGO, float MAT, float MAP, float RPM);
	
};

//=================================================

#else

class FuelInjectionControl {

private:
	float injectionTime; // in ms

	bool on;

	float** AFRTable;

	float VETable[VE_ROWS][VE_COLS] = {{500, 1000, 1700, 2400, 3100, 3800, 4500, 5200},
	   		 							{20, 30, 45, 55, 65, 80, 90, 100},
	   		 							{32, 39, 47, 51, 53, 52, 49, 47},
	   		 							{34, 42, 50, 55, 57, 56, 53, 50},
	   		 							{38, 46, 55, 60, 63, 61, 58, 55},
	   		 							{40, 49, 58, 64, 66, 65, 62, 59},
	   		 							{42, 52, 61, 68, 70, 69, 66, 63},
	   		 							{46, 56, 66, 73, 76, 74, 70, 67},
	   		 							{48, 58, 70, 77, 79, 78, 74, 70},
	   		 							{50, 61, 73, 80, 83, 81, 77, 73}};

	float WarmUpTable[WARM_UP_ROWS][WARM_UP_COLS] = {{-30, -18, -5, 1, 5, 15, 30, 41, 70, 90},
													{220, 211, 194, 167, 151, 135, 124, 117, 106, 100}};

	float OxygenLoopTable[EGO_ROWS][EGO_COLS] = {{500, 800, 1100, 1400, 2000, 2600, 3100, 3700, 4300, 5000, 7000, 9000},
												{30, 40, 50, 55, 60, 70, 80, 90, 100, 200, 300, 400},
												{5.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0 },
												{5.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0 },
												{5.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0 },
												{5.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0 },
												{5.0, 5.0 , 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0 },
												{5.0, 5.0 , 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0 },
												{5.0, 5.0 , 6.7 , 6.7 , 6.7 , 6.7 , 6.7 , 6.7 , 6.7 , 6.7 , 6.7 , 6.7},
												{5.0, 5.0 , 8.3 , 8.3 , 8.3 , 8.3 , 8.3 , 8.3 , 8.3 , 8.3 , 8.3 , 8.3},
												{5.0, 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0},
												{5.0, 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0},
												{5.0, 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0},
												{5.0, 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0 , 5.0}};

public:
	FuelInjectionControl();

	bool loadTable(char path[]);

	void updateTable(char path[], float MAP, float RPM, float EGO);
	
	void inject();

	bool getOn();

	void turnOn();

	void turnOff();

	float getInjectionTime();

	void setInjectionTime(float injectionTime);

	float airDensity(float MAT, float MAP);

	float requiredFuel(float MAT, float MAP, float RPM);

	float gammaEnrichment(float CLT, float EGO, float MAP, float RPM);

	float pulseWidth(float CLT, float EGO, float MAT, float MAP, float RPM);
	
};

#endif

//=================================================

#endif
