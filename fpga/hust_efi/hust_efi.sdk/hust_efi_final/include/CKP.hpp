#ifndef CKP_H
#define CKP_H

#include <iostream>
#include "GlobalDefines.hpp"

//=================================================

#ifdef SYSTEMC
#include <systemc.h>

using namespace sc_core;

class CKP : public sc_module {

private:
	bool data;

public:

	sc_port<sc_signal_in_if<bool>> input;

	SC_CTOR(CKP) : data(0) {};

	void check();

	bool getData();

};

//=================================================

#else

class CKP {

private:
	bool data;

public:

	CKP();

	void check();

	bool getData();

};

#endif

//=================================================

#endif