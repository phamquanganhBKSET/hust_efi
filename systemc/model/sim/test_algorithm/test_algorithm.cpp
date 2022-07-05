#include <iostream>
#include <systemc.h>
#include <random>
#include "../../../include/CKP.hpp"
#include "../../../include/CLT.hpp"
#include "../../../include/EGO.hpp"
#include "../../../include/MAP.hpp"
#include "../../../include/MAT.hpp"
#include "CrankAlgo.hpp"
#include "FuelAlgo.hpp"
#include "IgnitionAlgo.hpp"
#include "StrokeAlgo.hpp"

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
	MAP          MAPSensor; sc_port<sc_signal_out_if<float>> map_rs;
	MAT          MATSensor; sc_port<sc_signal_out_if<float>> mat_rs;
	CLT          CLTSensor; sc_port<sc_signal_out_if<float>> clt_rs;
	EGO          EGOSensor; sc_port<sc_signal_out_if<float>> ego_rs;
	CKP          CKPSensor; sc_port<sc_signal_out_if<bool>>  ckp_rs;
	CrankAlgo    crank    ;
	StrokeAlgo   stroke   ;
	FuelAlgo     fuel     ;
	IgnitionAlgo ignition ;

	SC_CTOR(EFI) : MAPSensor("MAPSensor"),
				   MATSensor("MATSensor"),
				   CLTSensor("CLTSensor"),
				   EGOSensor("EGOSensor"),
				   CKPSensor("CKPSensor"),
				   crank 	("crank"	),
				   stroke   ("stroke"   ),
				   fuel     ("fuel"     ),
				   ignition ("ignition" )
	{
		MAPSensor.loadTable("../../../data/sensors/MAP.txt");
		MATSensor.loadTable("../../../data/sensors/MAT.txt");
		CLTSensor.loadTable("../../../data/sensors/CLT.txt");
		EGOSensor.loadTable("../../../data/sensors/EGO.txt");

		SC_THREAD(checkMAP);
		SC_THREAD(checkMAT);
		SC_THREAD(checkCLT);
		SC_THREAD(checkEGO);
		SC_THREAD(checkCKP);
		SC_THREAD(checkAlgo);
	}

	void checkMAP() {
		while(1) {
			wait(SC_ZERO_TIME);
			MAPSensor.check();
			map_rs->write(MAPSensor.getData());
			wait(2.5, SC_MS);
		}
	}

	void checkMAT() {
		while(1) {
			wait(SC_ZERO_TIME);
			MATSensor.check();
			mat_rs->write(MATSensor.getData());
			wait(2.5, SC_MS);
		}
	}
	
	void checkCLT() {
		while(1) {
			wait(SC_ZERO_TIME);
			CLTSensor.check();
			clt_rs->write(CLTSensor.getData());
			wait(2.5, SC_MS);
		}
	}
	
	void checkEGO() {
		while(1) {
			wait(SC_ZERO_TIME);
			EGOSensor.check();
			ego_rs->write(EGOSensor.getData());
			wait(2.5, SC_MS);
		}
	}
	
	void checkCKP() {
		while(1) {
			wait(SC_ZERO_TIME);
			CKPSensor.check();
			ckp_rs->write(CKPSensor.getData());
			wait(2.5, SC_MS);
		}
	}
	
	void checkAlgo() {
		while(1) {
			wait(SC_ZERO_TIME);
			crank.check();
			stroke.check();
			fuel.check();
			ignition.check();
			wait(2.5, SC_MS);
			crank.e_read_sensor.cancel();
			stroke.e.cancel();
			fuel.e.cancel();
			ignition.e.cancel();
		}
	}
};

int sc_main(int, char*[]) {
	TestSensors test("test");
	EFI DUT("DUT");

	sc_signal<float> s_map; test.map(s_map); DUT.MAPSensor.input(s_map);
	sc_signal<float> s_mat; test.mat(s_mat); DUT.MATSensor.input(s_mat);
	sc_signal<float> s_clt; test.clt(s_clt); DUT.CLTSensor.input(s_clt);
	sc_signal<float> s_ego; test.ego(s_ego); DUT.EGOSensor.input(s_ego); DUT.fuel.egoSensor.input(s_ego);
	sc_signal<bool>  s_ckp; test.ckp(s_ckp); DUT.CKPSensor.input(s_ckp);

	// Crank Algorithm
	DUT.crank.ckp(s_ckp);
	sc_signal<bool > s_crank_tick ; DUT.crank.crank_tick(s_crank_tick);
	sc_signal<float> s_RPM        ; DUT.crank.RPM(s_RPM);
	sc_signal<float> s_BTDC       ; DUT.crank.BTDC(s_BTDC);
	sc_signal<int  > s_crank_count; DUT.crank.crank_count(s_crank_count);

	// Stroke Algorithm
	DUT.stroke.ckp(s_ckp);
	DUT.stroke.crank_tick(s_crank_tick);
	sc_signal<int>  s_stroke         ; DUT.stroke.stroke(s_stroke);
	sc_signal<bool> s_allow_injection; DUT.stroke.allow_injection(s_allow_injection);
	sc_signal<bool> s_allow_ignition ; DUT.stroke.allow_ignition(s_allow_ignition);
	sc_signal<bool> s_fic_on         ; DUT.stroke.fic_on(s_fic_on);
	sc_signal<bool> s_ic_on          ; DUT.stroke.ic_on(s_ic_on);

	// Fuel Algorithm
	DUT.fuel.allow_injection(s_allow_injection);
	DUT.fuel.stroke(s_stroke);
	DUT.fuel.clt(s_clt);
	DUT.fuel.ego(s_ego);
	DUT.fuel.mat(s_mat);
	DUT.fuel.map(s_map);
	DUT.fuel.RPM(s_RPM);
	sc_signal<bool> s_inject   ; DUT.fuel.inject(s_inject);
	sc_signal<bool> s_fuel_pump; DUT.fuel.fuel_pump(s_fuel_pump);

	// Ignition Algorithm
	DUT.ignition.allow_ignition(s_allow_ignition);
	DUT.ignition.stroke(s_stroke);
	DUT.ignition.clt(s_clt);
	DUT.ignition.map(s_map);
	DUT.ignition.RPM(s_RPM);
	DUT.ignition.BTDC(s_BTDC);
	sc_signal<bool> s_ignite; DUT.ignition.ignite(s_ignite);

	sc_signal<float> s_map_rs; DUT.map_rs(s_map_rs);
	sc_signal<float> s_mat_rs; DUT.mat_rs(s_mat_rs);
	sc_signal<float> s_clt_rs; DUT.clt_rs(s_clt_rs);
	sc_signal<float> s_ego_rs; DUT.ego_rs(s_ego_rs);
	sc_signal<bool>  s_ckp_rs; DUT.ckp_rs(s_ckp_rs);

	sc_trace_file* file = sc_create_vcd_trace_file("test_algorithm");
	sc_trace(file, s_map   , "s_map"   );
	sc_trace(file, s_mat   , "s_mat"   );
	sc_trace(file, s_clt   , "s_clt"   );
	sc_trace(file, s_ego   , "s_ego"   );
	sc_trace(file, s_ckp   , "s_ckp"   );
	sc_trace(file, s_map_rs, "s_map_rs");
	sc_trace(file, s_mat_rs, "s_mat_rs");
	sc_trace(file, s_clt_rs, "s_clt_rs");
	sc_trace(file, s_ego_rs, "s_ego_rs");
	sc_trace(file, s_ckp_rs, "s_ckp_rs");

	// Crank Algorithm
	sc_trace(file, s_crank_tick , "s_crank_tick" );
	sc_trace(file, s_RPM        , "s_RPM"        );
	sc_trace(file, s_BTDC       , "s_BTD"        );
	sc_trace(file, s_crank_count, "s_crank_count");

	// Stroke Algorithm
	sc_trace(file, s_stroke         , "s_stroke"         );
	sc_trace(file, s_allow_injection, "s_allow_injection");
	sc_trace(file, s_allow_ignition , "s_allow_ignition ");
	sc_trace(file, s_fic_on         , "s_fic_on"         );
	sc_trace(file, s_ic_on          , "s_ic_on "         );

	// Fuel Algorithm
	sc_trace(file, s_inject   , "s_inject   ");
	sc_trace(file, s_fuel_pump, "s_fuel_pump");

	// Ignition Algorithm
	sc_trace(file, s_ignite, "s_ignite");

	sc_start(1000, SC_MS);

	sc_close_vcd_trace_file(file);

	return 0;
}