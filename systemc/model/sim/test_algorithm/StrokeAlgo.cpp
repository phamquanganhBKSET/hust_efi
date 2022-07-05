#include "StrokeAlgo.hpp"

void StrokeAlgo::check() {
	this->ckp_data = this->ckp->read();
	this->crank_tick_data = this->crank_tick->read();
	std::cout << sc_time_stamp() << ": ckp_data sensor read, val = " << this->ckp_data << endl;
	std::cout << sc_time_stamp() << ": crank_tick_data read, val = " << this->crank_tick_data << endl;
	e.notify();
}

void StrokeAlgo::strokeAlgo() {
	while(1) {
		bool last_crank_tick = 0;
		wait(e);
		if (ckp->read() == 1)
		{
			INTAKE:
			cout << "\n" << sc_time_stamp() << ": [StrokeAlgo] - INTAKE: FIC on, IC on, allow injection\n";
			fic_on->write(1);
			ic_on->write(1);
			stroke->write(0);
			allow_injection->write(1);
			allow_ignition->write(0);
			goto WAITINTAKE;
		} else {
			WAITEXHAUST:
			cout << "\n" << sc_time_stamp() << ": [StrokeAlgo] - EXHAUST\n";
			stroke->write(3);
			wait(e);
			if (crank_tick->read() && (last_crank_tick != crank_tick->read()))
			{
				last_crank_tick = crank_tick->read();
				goto INTAKE;
			} else {
				last_crank_tick = crank_tick->read();
				goto WAITEXHAUST;
			}
		}

		WAITINTAKE:
		wait(e);
		if (crank_tick->read() && (last_crank_tick != crank_tick->read()))
		{
			cout << "\n" << sc_time_stamp() << ": [StrokeAlgo] - COMPRESSION\n";
			stroke->write(1);
			allow_injection->write(0);
			last_crank_tick = crank_tick->read();
			goto WAITCOMPRESSION;
		} else {
			last_crank_tick = crank_tick->read();
			goto WAITINTAKE;
		}

		WAITCOMPRESSION:
		wait(e);
		if (crank_tick->read() && (last_crank_tick != crank_tick->read()))
		{
			cout << "\n" << sc_time_stamp() << ": [StrokeAlgo] - COMBUSTION\n";
			stroke->write(2);
			allow_ignition->write(1);
			last_crank_tick = crank_tick->read();
			goto WAITEXHAUST;
		} else {
			last_crank_tick = crank_tick->read();
			goto WAITCOMPRESSION;
		}
	}
}