#include "IgnitionAlgo.hpp"

void IgnitionAlgo::check() {
	allow_ignition->read();
	stroke->read();
	clt->read();
	map->read();
	RPM->read();
	BTDC->read();
	// std::cout << sc_time_stamp() << ": crank_data sensor read, val = " << this->crank_data << endl;
	e.notify();
}

void IgnitionAlgo::ignitionAlgo() {
	while(1) {
		START:
		cout << "\n" << sc_time_stamp() << ": [IgnitionAlgo] - START\n";
		
		// Calculate ignition time
		ignition_time = IC.totalAdvanceCalculation(clt->read(), map->read(), RPM->read());
		cout << "\n" << sc_time_stamp() << ": [IgnitionAlgo] - Calculate ignition time: ignition time = " << ignition_time << "\n";

		ignite->write(0);

		WAITIGNITE:
		wait(e);
		if ((allow_ignition->read() == 1) && (BTDC->read() - 360.0 / NUM_TEETH <= ignition_time))
		{
			cout << "\n" << sc_time_stamp() << ": [IgnitionAlgo] - Ignite!!!!!!!\n";
			goto IGNITE;
		} else {
			goto WAITIGNITE;
		}

		IGNITE:
		ignite->write(1);
		IC.ignition();

		WAIT:
		wait(e);
		if (stroke->read() == 0)
		{
			goto START;
		} else {
			goto WAIT;
		}
	}
}

