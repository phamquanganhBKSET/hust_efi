#include "../../include/IgnitionControl.hpp"

// IgnitionControl::IgnitionControl() {
// 	this->ignitionTime = 0;
// 	this->IgnitionTable = Array::create(IGNITION_ROWS, IGNITION_COLS);
// 	this->ColdAdvanceTable = Array::create(COLD_ADVANCE_ROWS, COLD_ADVANCE_COLS);
// }

void IgnitionControl::loadTable(char path[]) {
	string abpath(path);
	abpath = abpath + IGNITION_PATH;
	File::read(abpath.c_str(), this->IgnitionTable, IGNITION_ROWS, IGNITION_COLS);

	abpath = path;
	abpath = abpath + COLD_ADVANCE_PATH;
	File::read(abpath.c_str(), this->ColdAdvanceTable, COLD_ADVANCE_ROWS, COLD_ADVANCE_COLS);
}

void IgnitionControl::ignition() {
	std::cout << "\nIgnite!!!!!!!";
}

float IgnitionControl::getIgnitionTime() {
	return ignitionTime;
}

void IgnitionControl::setIgnitionTime(float ignitionTime) {
	this->ignitionTime = ignitionTime;
}

float IgnitionControl::totalAdvanceCalculation(float CLT, float MAP, float RPM) {
	float* x = new float[IGNITION_COLS];
	float* y = new float[IGNITION_ROWS-2];
	float** z = Array::create(IGNITION_ROWS - 2, IGNITION_COLS);

	Array::assign(this->IgnitionTable[0], x, IGNITION_COLS);
  	Array::assign(this->IgnitionTable[1], y, IGNITION_COLS);
  	Array::assign(this->IgnitionTable, z, 2, IGNITION_ROWS, 0, IGNITION_COLS);

  	float ignitionAdvance = Math::interpolation2d(x, y, z, RPM, MAP, IGNITION_ROWS - 2, IGNITION_COLS);

  	float coldAdvance = Math::interpolation1d(this->ColdAdvanceTable, CLT, COLD_ADVANCE_COLS);

  	if (CLT < MAX_COLD_CLT)
  	{
  		return (ignitionAdvance + coldAdvance);	
  	}
  	return ignitionAdvance;
}
