#include "../include/IgnitionControl.hpp"

IgnitionControl::IgnitionControl() {
	this->ignitionTime = 0;
}

void IgnitionControl::ignition() {
	std::cout << "\nIgnite!!!!!!!";
	usleep(1000);
}

float IgnitionControl::getIgnitionTime() {
	return ignitionTime;
}

void IgnitionControl::setIgnitionTime(float ignitionTime) {
	this->ignitionTime = ignitionTime;
}

float IgnitionControl::totalAdvanceCalculation(float CLT, float MAP, float RPM) {
	float* x = new float[IGNITION_COLS];
	float* y = new float[IGNITION_ROWS];
	float** z = Array::create(IGNITION_ROWS - 2, IGNITION_COLS);

	Array::assign(this->IgnitionTable[0], x, IGNITION_COLS);
	Array::assign(this->IgnitionTable[1], y, IGNITION_COLS);
//	Array::assign(this->IgnitionTable, z, 2, IGNITION_ROWS, 0, IGNITION_COLS);
	for (int i = 2; i < IGNITION_ROWS; ++i)
	{
	    for (int j = 0; j < IGNITION_COLS; ++j)
	    {
	        z[i-2][j-0] = IgnitionTable[i][j];
	    }
	}

	float ignitionAdvance = Math::interpolation2d(x, y, z, RPM, MAP, IGNITION_ROWS - 2, IGNITION_COLS);

	float** arr = Array::create(COLD_ADVANCE_ROWS, COLD_ADVANCE_COLS);
	for (int i = 0; i < COLD_ADVANCE_ROWS; i++) {
		for (int j = 0; j < COLD_ADVANCE_COLS; j++) {
			arr[i][j] = ColdAdvanceTable[i][j];
		}
	}

	float coldAdvance = Math::interpolation1d(arr, CLT, COLD_ADVANCE_COLS);

	if (CLT < MAX_COLD_CLT)
  {
  	return (ignitionAdvance + coldAdvance);	
  }

  return ignitionAdvance;
}
