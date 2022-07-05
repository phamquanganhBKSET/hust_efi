#include "../../include/EFI.hpp"

EFI::EFI(sc_module_name name) : MAPSensor("MAPSensor"),
				   MATSensor("MATSensor"),
				   CLTSensor("CLTSensor"),
				   TPSSensor("TPSSensor"),
				   EGOSensor("EGOSensor"),
				   CKPSensor("CKPSensor") 
{
	string fileName = PROJ_DIR;
	fileName = fileName + "trunk/data/sensors/MAP.txt";
	MAPSensor.loadTable((char*)fileName.c_str());
	fileName = PROJ_DIR;
	fileName = fileName + "trunk/data/sensors/MAT.txt";
	MATSensor.loadTable((char*)fileName.c_str());
	fileName = PROJ_DIR;
	fileName = fileName + "trunk/data/sensors/CLT.txt";
	CLTSensor.loadTable((char*)fileName.c_str());
	fileName = PROJ_DIR;
	fileName = fileName + "trunk/data/sensors/TPS.txt";
	TPSSensor.loadTable((char*)fileName.c_str());
	fileName = PROJ_DIR;
	fileName = fileName + "trunk/data/sensors/EGO.txt";
	EGOSensor.loadTable((char*)fileName.c_str());
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

float EFI::getIgnitionTime() {
	return this->ignitionTime;
}

void EFI::setIgnitionTime(float ignitionTime) {
	this->ignitionTime = ignitionTime;
}

float EFI::getInjectionTime() {
	return this->injectionTime;
}

void EFI::setInjectionTime(float injectionTime) {
	this->injectionTime = injectionTime;
}

float EFI::getRPM() {
	return this->RPM;
}

void EFI::setRPM(float rpm) {
	this->RPM = rpm;
}

float EFI::calculateRPM(uint32_t crank_cycle_counter) // crank_cycle_counter is from output_reg in RTL
{
	return 1.0 / (crank_cycle_counter * NUM_TEETH * (1.0 / CLK_FREQ));
}

float EFI::calculateBTDC(uint8_t crank_counter) // crank_counter is from hust_efi
{
	return  (NUM_TEETH - crank_counter) * 360 / NUM_TEETH;
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
	CKPSensor.check();
}

void EFI::updateTable(char path[], int cylinder_order) {
	FIC[cylinder_order].updateTable(path, MAPSensor.getData(), RPM, EGOSensor.getData());
};
