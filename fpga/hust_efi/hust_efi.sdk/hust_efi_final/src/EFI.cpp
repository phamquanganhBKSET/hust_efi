#include "../include/EFI.hpp"

EFI::EFI() {
	checkEngineLight = false;
	RPM = 0;
	BTDC = 0;

	for (int i = 0; i < CYLINDERS; i++) {
		cout << "\nLoad table for FIC[" << i << "]: ";
		bool empty = FIC[i].loadTable("data/backup/");
		if (!empty)
		{
			FIC[i].loadTable("data/initial/");
		}
	}
};

bool EFI::getCheckEngineLight() {
	return checkEngineLight;
}

bool EFI::setCheckEngineLight(bool checkEngineLight) {
	this->checkEngineLight = checkEngineLight;
}

float EFI::getBTDC() {
	return BTDC;
}

void EFI::setBTDC(float btdc) {
	this->BTDC = btdc;
}

float EFI::getRPM() {
	return this->RPM;
}

void EFI::setRPM(float rpm) {
	this->RPM = rpm;
}

float EFI::calculateRPM(uint32_t crank_cycle_counter) // crank_cycle_counter is from output_reg in RTL
{
	return (1.0 / (crank_cycle_counter * NUM_TEETH * (1.0 / CLK_FREQ))) * 60.0;
}

float EFI::calculateBTDC(uint8_t crank_counter) // crank_counter is from hust_efi
{
	return  (NUM_TEETH - crank_counter) * 360.0 / NUM_TEETH;
}

float EFI::calculateIgnitionTime(float CLT, float MAP, float RPM) {
	return IC[0].totalAdvanceCalculation(CLT, MAP, RPM);
}

float EFI::calculateInjectionTime(float CLT, float EGO, float MAT, float MAP, float RPM) {
	return FIC[0].pulseWidth(CLT, EGO, MAT, MAP, RPM);
}

void EFI::checkSensor() {
	MAPSensor.check();
	MATSensor.check();
	CLTSensor.check();
	EGOSensor.check();
}

void EFI::updateTable(int cylinder_order) {
	FIC[cylinder_order].updateTable("", MAPSensor.getData(), RPM, EGOSensor.getData());
};


