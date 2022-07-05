#ifndef STROKE_ALGO_H
#define STROKE_ALGO_H

#include <systemc.h>
#include "../../../include/GlobalDefines.hpp"

using namespace sc_core;

SC_MODULE(StrokeAlgo) {
	sc_port<sc_signal_in_if <bool>> ckp;
	sc_port<sc_signal_in_if <bool>> crank_tick;
	sc_port<sc_signal_out_if<int >> stroke;
	sc_port<sc_signal_out_if<bool>> allow_injection;
	sc_port<sc_signal_out_if<bool>> allow_ignition;
	sc_port<sc_signal_out_if<bool>> fic_on;
	sc_port<sc_signal_out_if<bool>> ic_on;
	sc_event e;
	bool ckp_data;
	bool crank_tick_data;

	SC_CTOR(StrokeAlgo) {
		SC_THREAD(strokeAlgo);
	}

	void strokeAlgo();
	void check();
};

#endif