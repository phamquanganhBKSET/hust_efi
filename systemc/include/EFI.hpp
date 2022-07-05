#ifndef EFI_H
#define EFI_H

#ifdef SYSTEMC
#include <systemc.h>
#endif

#include <iostream>
#include <string>
#include "FreeRTOS.h"
#include "GlobalDefines.hpp"
#include "FuelInjectionControl.hpp"
#include "IgnitionControl.hpp"
#include "Engine.hpp"
#include "CKP.hpp"
#include "CLT.hpp"
#include "EGO.hpp"
#include "MAP.hpp"
#include "MAT.hpp"

//=================================================

#ifdef SYSTEMC
#include <systemc.h>

using namespace sc_core;

class EFI : public sc_module {

private:

	bool checkEngineLight;
	float RPM;
	float ignitionTime;
	float injectionTime;
	float BTDC;

public:
	FuelInjectionControl FIC;
	IgnitionControl IC;

	// Sensors
	MAP MAPSensor;
	MAT MATSensor;
	CLT CLTSensor;
	EGO EGOSensor;
	CKP CKPSensor;

	SC_CTOR(EFI);

	bool getCheckEngineLight();

	bool setCheckEngineLight(bool checkEngineLight);

	float getBTDC();

	void setBTDC(float btdc);

	float getIgnitionTime();

	void setIgnitionTime(float ignitionTime);

	float getInjectionTime();

	void setInjectionTime(float injectionTime);

	float getRPM();

	void setRPM(float rpm);

	float calculateRPM(uint32_t crank_cycle_counter); // crank_cycle_counter is from output_reg in RTL

	float calculateBTDC(uint8_t crank_counter); // crank_counter is from hust_efi

	float calculateIgnitionTime(float CLT, float MAP, float RPM);

	float calculateInjectionTime(float CLT, float EGO, float MAT, float MAP, float RPM);

	void checkSensor();

	void updateTable(char path[], int cylinder_order);

};

//=================================================

#else

using namespace std;

class EFI {

private:

	bool checkEngineLight;
	float RPM;
	float ignitionTime;
	float injectionTime;
	float BTDC;

public:
	FuelInjectionControl FIC[CYLINDERS];
	IgnitionControl IC[CYLINDERS];

	// Sensors
	MAP MAPSensor;
	MAT MATSensor;
	CLT CLTSensor;
	EGO EGOSensor;
	CKP CKPSensor;

	EFI();

	bool getCheckEngineLight();

	bool setCheckEngineLight(bool checkEngineLight);

	float getBTDC();

	void setBTDC(float btdc);

	float getIgnitionTime();

	void setIgnitionTime(float ignitionTime);

	float getInjectionTime();

	void setInjectionTime(float injectionTime);

	float getRPM();

	void setRPM(float rpm);

	float calculateRPM(uint32_t crank_cycle_counter); // crank_cycle_counter is from output_reg in RTL

	float calculateBTDC(uint8_t crank_counter); // crank_counter is from hust_efi

	float calculateIgnitionTime(float CLT, float MAP, float RPM);

	float calculateInjectionTime(float CLT, float EGO, float MAT, float MAP, float RPM);

	void checkSensor();

	void updateTable(int cylinder_order);

};

#endif

//=================================================

#endif
