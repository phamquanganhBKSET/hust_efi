#ifndef FUEL_ALGO_H
#define FUEL_ALGO_H

#include <systemc.h>
#include "../../../include/GlobalDefines.hpp"
#include "../../../include/FuelInjectionControl.hpp"
#include "../../../include/EGO.hpp"

using namespace sc_core;

SC_MODULE(FuelAlgo) {
	EGO egoSensor;
	sc_port<sc_signal_in_if<bool >> allow_injection;
	sc_port<sc_signal_in_if<int  >> stroke;
	sc_port<sc_signal_in_if<float>> clt;
	sc_port<sc_signal_in_if<float>> ego;
	sc_port<sc_signal_in_if<float>> mat;
	sc_port<sc_signal_in_if<float>> map;
	sc_port<sc_signal_in_if<float>> RPM;
	sc_port<sc_signal_out_if<bool>> inject;
	sc_port<sc_signal_out_if<bool>> fuel_pump;
	sc_event                        e;
	float                           injection_time;
	FuelInjectionControl            FIC;

	SC_CTOR(FuelAlgo) : injection_time(0), FIC("FIC"), egoSensor("egoSensor") {
		FIC.loadTable("../../../data/initial/");
		egoSensor.loadTable("../../../data/sensors/EGO.txt");
		SC_THREAD(fuelAlgo);
	}

	void fuelAlgo();
	void check();
};

#endif