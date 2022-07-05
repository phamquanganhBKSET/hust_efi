#include "CrankAlgo.hpp"

sc_time start_(1, SC_MS);
sc_time stop_(1, SC_MS);
sc_time period_(1, SC_MS);

void CrankAlgo::check() {
	this->crank_data = this->ckp->read();
	std::cout << sc_time_stamp() << ": crank_data sensor read, val = " << this->crank_data << endl;
	e_read_sensor.notify();
}

void CrankAlgo::crankAlgo() {
	while(1) {
		bool last_ckp = 0;
		wait(e_read_sensor);
		if (crank_data == 0)
		{
			cout << "\n" << sc_time_stamp() << ": [CrankAlgo] - RESETTDC\n";
			crank_tick->write(0);
			crank_counter = NUM_LOST_TEETH;
			crank_count->write(crank_counter);
			cal_rpm = 0;
			cal_btdc = 0;
			start_ = sc_time_stamp();
		} else {
			cout << "\n" << sc_time_stamp() << ": [CrankAlgo] - RESETBDC\n";
			crank_tick->write(0);
			crank_counter = NUM_TEETH / 2;
			crank_count->write(crank_counter);
			cal_rpm = 0;
			cal_btdc = 0;
			start_ = sc_time_stamp();
		}

		WAIT:
		wait(e_read_sensor);
		if (last_ckp != crank_data)
		{
			if (crank_counter == NUM_TEETH)
			{
				crank_counter = NUM_LOST_TEETH;
				crank_count->write(crank_counter);
			} else {
				crank_counter = crank_data ? crank_counter + 1 : crank_counter;
				crank_count->write(crank_counter);
			}
			cout << "\n" << sc_time_stamp() << ": [CrankAlgo] - Increase crank_counter: crank_counter = " << crank_counter << "\n";

			stop_ = sc_time_stamp();
			period_ = stop_ - start_;
			start_ = sc_time_stamp();
			// Calculate RPM
			float rpm = (1.0 / (period_.to_seconds() * NUM_TEETH)) * 60;
			cout << "\n" << sc_time_stamp() << ": [CrankAlgo] - Calculate RPM: RPM = " << rpm << "\n";
			RPM->write(rpm);

			// Calculate BTDC
			float btdc = (NUM_TEETH - crank_counter) * 360.0 / NUM_TEETH;
			cout << "\n" << sc_time_stamp() << ": [CrankAlgo] - Calculate BTDC: BTDC = " << btdc << "\n";
			BTDC->write(btdc);

			if (crank_counter == NUM_TEETH / 2 || crank_counter == NUM_TEETH)
			{
				cout << "\n" << sc_time_stamp() << ": [CrankAlgo] - Crank tick!!!!!!!\n";
				crank_tick->write(1);
				cal_rpm = 0;
				cal_btdc = 0;
			} else {
				crank_tick->write(0);
				cal_rpm = 0;
				cal_btdc = 0;
			}
			last_ckp = crank_data;
			goto WAIT;
		} else {
			last_ckp = crank_data;
			goto WAIT;
		}
	}
}