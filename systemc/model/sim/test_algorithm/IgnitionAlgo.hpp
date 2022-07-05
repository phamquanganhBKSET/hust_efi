#ifndef IGNITION_ALGO_H
#define IGNITION_ALGO_H

#include <systemc.h>
#include "../../../include/GlobalDefines.hpp"
#include "../../../include/IgnitionControl.hpp"

using namespace sc_core;

SC_MODULE(IgnitionAlgo) {
	sc_port<sc_signal_in_if<bool >> allow_ignition;
	sc_port<sc_signal_in_if<int  >> stroke;
	sc_port<sc_signal_in_if<float>> clt;
	sc_port<sc_signal_in_if<float>> map;
	sc_port<sc_signal_in_if<float>> RPM;
	sc_port<sc_signal_in_if<float>> BTDC;
	sc_port<sc_signal_out_if<bool>> ignite;
	sc_event                        e;
	float                           ignition_time;
	IgnitionControl                 IC;

	SC_CTOR(IgnitionAlgo) : ignition_time(0), IC("IC") {
		IC.loadTable("../../../data/initial/");
		SC_THREAD(ignitionAlgo);
	}

	void ignitionAlgo();
	void check();
};

#endif