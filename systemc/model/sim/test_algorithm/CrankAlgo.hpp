#ifndef CRANK_ALGO_H
#define CRANK_ALGO_H

#include <systemc.h>
#include "../../../include/GlobalDefines.hpp"

using namespace sc_core;

SC_MODULE(CrankAlgo) {
	sc_port<sc_signal_in_if <bool >> ckp;
	sc_port<sc_signal_out_if<bool >> crank_tick;
	sc_port<sc_signal_out_if<float>> RPM;
	sc_port<sc_signal_out_if<float>> BTDC;
	sc_port<sc_signal_out_if<int  >> crank_count;
	sc_event                         e_read_sensor;
	sc_event                         e_cal_rpm;
	sc_event  						 e_cal_btdc;
	int                              crank_counter;
	bool                             cal_rpm;
	bool                             cal_btdc;
	bool                             last_ckp;
	bool                             crank_data;

	SC_CTOR(CrankAlgo) : crank_counter(0), cal_rpm(0), cal_btdc(0), last_ckp(0) {
		SC_THREAD(crankAlgo);
	}

	void crankAlgo();
	void check();
};

#endif