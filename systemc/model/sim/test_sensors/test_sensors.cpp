#include <iostream>
#include <systemc.h>
#include <random>
#include "../../../include/CKP.hpp"
#include "../../../include/CLT.hpp"
#include "../../../include/EGO.hpp"
#include "../../../include/MAP.hpp"
#include "../../../include/MAT.hpp"
#include "../../../include/FuelInjectionControl.hpp"
#include "../../../include/IgnitionControl.hpp"

using namespace sc_core;

SC_MODULE(TestSensors) {
	sc_port<sc_signal_out_if<float>> map;
	sc_port<sc_signal_out_if<float>> mat;
	sc_port<sc_signal_out_if<float>> clt;
	sc_port<sc_signal_out_if<float>> ego;
	sc_port<sc_signal_out_if<bool>> ckp;

	SC_CTOR(TestSensors) {
		SC_THREAD(simulate_map);
		SC_THREAD(simulate_mat);
		SC_THREAD(simulate_clt);
		SC_THREAD(simulate_ego);
		SC_THREAD(simulate_ckp);
	}

	void simulate_map() {
		int i = 0;
		while(true) {
			if (i < 20)
			{
				float value = MAP_DECEL_VFROM + static_cast<float>(rand()) * static_cast<float>(MAP_DECEL_VTO - MAP_DECEL_VFROM) / RAND_MAX;
				map->write(value);
				i++;
				wait(2, SC_MS);
			}
			else if (i < 40) {
				float value = MAP_IDLE_VFROM + static_cast<float>(rand()) * static_cast<float>(MAP_IDLE_VTO - MAP_IDLE_VFROM) / RAND_MAX;
				map->write(value);
				i++;
				wait(2, SC_MS);
			}
			else {
				float value = MAP_ACCEL_VFROM + static_cast<float>(rand()) * static_cast<float>(MAP_ACCEL_VTO - MAP_ACCEL_VFROM) / RAND_MAX;
				map->write(value);
				i++;
				wait(2, SC_MS);
			}
		}
	}

	void simulate_mat() {
		int i = 0;
		while(true) {
			if (i < 20)
			{
				float value = MAT_DECEL_VFROM + static_cast<float>(rand()) * static_cast<float>(MAT_DECEL_VTO - MAT_DECEL_VFROM) / RAND_MAX;
				mat->write(value);
				i++;
				wait(2, SC_MS);
			}
			else if (i < 40) {
				float value = MAT_IDLE_VFROM + static_cast<float>(rand()) * static_cast<float>(MAT_IDLE_VTO - MAT_IDLE_VFROM) / RAND_MAX;
				mat->write(value);
				i++;
				wait(2, SC_MS);
			}
			else {
				float value = MAT_ACCEL_VFROM + static_cast<float>(rand()) * static_cast<float>(MAT_ACCEL_VTO - MAT_ACCEL_VFROM) / RAND_MAX;
				mat->write(value);
				i++;
				wait(2, SC_MS);
			}
		}
	}

	void simulate_clt() {
		int i = 0;
		while(true) {
			if (i < 20)
			{
				float value = CLT_DECEL_VFROM + static_cast<float>(rand()) * static_cast<float>(CLT_DECEL_VTO - CLT_DECEL_VFROM) / RAND_MAX;
				clt->write(value);
				i++;
				wait(2, SC_MS);
			}
			else if (i < 40) {
				float value = CLT_IDLE_VFROM + static_cast<float>(rand()) * static_cast<float>(CLT_IDLE_VTO - CLT_IDLE_VFROM) / RAND_MAX;
				clt->write(value);
				i++;
				wait(2, SC_MS);
			}
			else {
				float value = CLT_ACCEL_VFROM + static_cast<float>(rand()) * static_cast<float>(CLT_ACCEL_VTO - CLT_ACCEL_VFROM) / RAND_MAX;
				clt->write(value);
				i++;
				wait(2, SC_MS);
			}
		}
	}

	void simulate_ego() {
		while(true) {
			float value = EGO_VFROM + static_cast<float>(rand()) * static_cast<float>(EGO_VTO - EGO_VFROM) / RAND_MAX;
			ego->write(value);
			wait(2, SC_MS);
		}
	}

	void simulate_ckp() {
		while(true) {
			bool value = rand() % 2;
			ckp->write(value);
			wait(2, SC_MS);
		}
	}
};

SC_MODULE(EFI) {
	MAP MAPSensor           ; sc_port<sc_signal_out_if<float>> map_rs;
	MAT MATSensor           ; sc_port<sc_signal_out_if<float>> mat_rs;
	CLT CLTSensor           ; sc_port<sc_signal_out_if<float>> clt_rs;
	EGO EGOSensor           ; sc_port<sc_signal_out_if<float>> ego_rs;
	CKP CKPSensor           ; sc_port<sc_signal_out_if<bool>>  ckp_rs;
	FuelInjectionControl FIC; sc_port<sc_signal_out_if<float>> pulse_width;
	IgnitionControl IC      ; sc_port<sc_signal_out_if<float>> total_advance;

	SC_CTOR(EFI) : MAPSensor("MAPSensor"),
				   MATSensor("MATSensor"),
				   CLTSensor("CLTSensor"),
				   EGOSensor("EGOSensor"),
				   CKPSensor("CKPSensor"),
				   FIC("FIC"),
				   IC("IC") 
	{
		MAPSensor.loadTable("../../../data/sensors/MAP.txt");
		MATSensor.loadTable("../../../data/sensors/MAT.txt");
		CLTSensor.loadTable("../../../data/sensors/CLT.txt");
		EGOSensor.loadTable("../../../data/sensors/EGO.txt");
		FIC.loadTable("../../../data/initial/");
		IC.loadTable("../../../data/initial/");

		SC_THREAD(checkMAP);
		SC_THREAD(checkMAT);
		SC_THREAD(checkCLT);
		SC_THREAD(checkEGO);
		SC_THREAD(checkCKP);
		SC_THREAD(pulse);
		SC_THREAD(totalAdvance);
	}

	void checkMAP() {
		while(1) {
			wait(SC_ZERO_TIME);
			MAPSensor.check();
			map_rs->write(MAPSensor.getData());
			wait(2, SC_SEC);
		}
	}

	void checkMAT() {
		while(1) {
			wait(SC_ZERO_TIME);
			MATSensor.check();
			mat_rs->write(MATSensor.getData());
			wait(2, SC_SEC);
		}
	}
	
	void checkCLT() {
		while(1) {
			wait(SC_ZERO_TIME);
			CLTSensor.check();
			clt_rs->write(CLTSensor.getData());
			wait(2, SC_SEC);
		}
	}
	
	void checkEGO() {
		while(1) {
			wait(SC_ZERO_TIME);
			EGOSensor.check();
			ego_rs->write(EGOSensor.getData());
			wait(2, SC_SEC);
		}
	}
	
	void checkCKP() {
		while(1) {
			wait(SC_ZERO_TIME);
			CKPSensor.check();
			ckp_rs->write(CKPSensor.getData());
			wait(2, SC_SEC);
		}
	}

	void pulse() {
		while(1) {
			wait(SC_ZERO_TIME);
			wait(2, SC_SEC);
			float pw;
			pw = FIC.pulseWidth(CLTSensor.getData(), EGOSensor.getData(), MATSensor.getData(), MAPSensor.getData(), 1000.0);
			cout << sc_time_stamp() << ": Pulse width: " << pw << "ms" << endl << endl;
			pulse_width->write(pw);
		}
	}

	void totalAdvance() {
		while(1) {
			wait(SC_ZERO_TIME);
			wait(2, SC_SEC);
			float ta = IC.totalAdvanceCalculation(CLTSensor.getData(), MAPSensor.getData(), 1000.0);
			cout << sc_time_stamp() << ": Total advance: " << ta << endl << endl;
			total_advance->write(ta);
		}
	}
};

int sc_main(int, char*[]) {
	TestSensors test("test");
	EFI DUT("DUT");

	sc_signal<float> s_map; test.map(s_map); DUT.MAPSensor.input(s_map);
	sc_signal<float> s_mat; test.mat(s_mat); DUT.MATSensor.input(s_mat);
	sc_signal<float> s_clt; test.clt(s_clt); DUT.CLTSensor.input(s_clt);
	sc_signal<float> s_ego; test.ego(s_ego); DUT.EGOSensor.input(s_ego);
	sc_signal<bool> s_ckp; test.ckp(s_ckp); DUT.CKPSensor.input(s_ckp);

	sc_signal<float> s_map_rs       ; DUT.map_rs(s_map_rs)              ;
	sc_signal<float> s_mat_rs       ; DUT.mat_rs(s_mat_rs)              ;
	sc_signal<float> s_clt_rs       ; DUT.clt_rs(s_clt_rs)              ;
	sc_signal<float> s_ego_rs       ; DUT.ego_rs(s_ego_rs)              ;
	sc_signal<bool>  s_ckp_rs       ; DUT.ckp_rs(s_ckp_rs)              ;
	sc_signal<float> s_pulse_width  ; DUT.pulse_width(s_pulse_width)    ;
	sc_signal<float> s_total_advance; DUT.total_advance(s_total_advance);

	sc_trace_file* file = sc_create_vcd_trace_file("test_sensors");
	sc_trace(file, s_map          , "s_map"          );
	sc_trace(file, s_mat          , "s_mat"          );
	sc_trace(file, s_clt          , "s_clt"          );
	sc_trace(file, s_ego          , "s_ego"          );
	sc_trace(file, s_ckp          , "s_ckp"          );
	sc_trace(file, s_map_rs       , "s_map_rs"       );
	sc_trace(file, s_mat_rs       , "s_mat_rs"       );
	sc_trace(file, s_clt_rs       , "s_clt_rs"       );
	sc_trace(file, s_ego_rs       , "s_ego_rs"       );
	sc_trace(file, s_ckp_rs       , "s_ckp_rs"       );
	sc_trace(file, s_pulse_width  , "s_pulse_width"  );
	sc_trace(file, s_total_advance, "s_total_advance");

	sc_start(100, SC_SEC);

	sc_close_vcd_trace_file(file);

	return 0;
}