#include "FuelAlgo.hpp"

sc_time start(1, SC_MS);
sc_time stop(1, SC_MS);
sc_time period(1, SC_MS);

void FuelAlgo::check() {
	allow_injection->read();
	stroke->read();
	clt->read();
	ego->read();
	mat->read();
	map->read();
	RPM->read();
	egoSensor.check();
	// std::cout << sc_time_stamp() << ": crank_data sensor read, val = " << this->crank_data << endl;
	e.notify();
}

void FuelAlgo::fuelAlgo() {
	while(1) {
		START:
		wait(e);
		cout << "\n" << sc_time_stamp() << ": [FuelAlgo] - START\n";
		fuel_pump->write(1);
		inject->write(0);

		// Calculate injection time
		injection_time = FIC.pulseWidth(clt->read(), ego->read(), mat->read(), map->read(), RPM->read());
		FIC.setInjectionTime(injection_time);
		cout << "\n" << sc_time_stamp() << ": [FuelAlgo] - Calculate injection time: injection time = " << injection_time << "\n";

		WAITINJECT:
		wait(e);
		if (allow_injection->read())
		{
			cout << "\n" << sc_time_stamp() << ": [FuelAlgo] - Inject!!!!!!\n";
			start = sc_time_stamp();
			inject->write(1);
			WAITDONE:
			wait(e);
			stop = sc_time_stamp();
			period = start - stop;
			if (period.to_seconds() * 1000 >= injection_time)
			{
				inject->write(0);
				goto WAITEXHAUST;
			} else {
				goto WAITDONE;
			}
		} else {
			goto WAITINJECT;
		}

		WAITEXHAUST:
		wait(e);
		if (stroke->read() == 3)
		{
			cout << "\n" << sc_time_stamp() << ": [FuelAlgo] - Update table\n";
			FIC.updateTable("../../../data/backup/", map->read(), RPM->read(), egoSensor.getData());
			goto START;
		} else {
			goto WAITEXHAUST;
		}
	}
}
