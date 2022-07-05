#include "../../include/FuelInjectionControl.hpp"

// FuelInjectionControl::FuelInjectionControl() {
// 	this->injectionTime = 0;
// 	this->on = 0;
// }

bool FuelInjectionControl::loadTable(char path[]) {
	bool success;
	string abpath(path);
	abpath = abpath + AFR_PATH;
	bool empty = File::read(abpath.c_str(), this->AFRTable, AFR_ROWS, AFR_COLS);
	if (!empty)
	{
		success = 0;
	}

	abpath = path;
	abpath = abpath + VE_PATH;
	empty = File::read(abpath.c_str(), this->VETable, VE_ROWS, VE_COLS);
	if (!empty)
	{
		success = 0;
	}

	abpath = path;
	abpath = abpath + WARM_UP_PATH;
	File::read(abpath.c_str(), this->WarmUpTable, WARM_UP_ROWS, WARM_UP_COLS);

	abpath = path;
	abpath = abpath + EGO_LOOP_PATH;
	File::read(abpath.c_str(), this->OxygenLoopTable, EGO_ROWS, EGO_COLS);

	abpath = path;
	abpath = abpath + ACCEL_PATH;
	File::read(abpath.c_str(), this->AccelerationTable, ACCEL_ROWS, ACCEL_COLS);

	return success;
}

void FuelInjectionControl::updateTable(char path[], float MAP, float RPM, float EGO) {
	string abpath(path);
	abpath = abpath + AFR_PATH;
	int col = 0;
	int row = 0;
	float colOffset = fabs(RPM - AFRTable[0][0]);
	float rowOffset = fabs(MAP - AFRTable[1][0]);
	for (int i = 0; i < AFR_COLS; ++i)
	{
		if (fabs(RPM - AFRTable[0][i]) < colOffset)
		{
			col = i;
			colOffset = fabs(RPM - AFRTable[0][i]);
		}
	}
	for (int i = 0; i < AFR_ROWS; ++i)
	{
		if (abs(MAP - AFRTable[1][i]) < rowOffset)
		{
			row = i;
			rowOffset = fabs(MAP - AFRTable[1][i]);
		}
	}
	AFRTable[row][col] = EGO;
	File::write(abpath.c_str(), AFRTable, AFR_ROWS, AFR_COLS);
}

void FuelInjectionControl::inject() {
	std::cout << "\nInjection on!!!!!!!" << endl;
	wait(injectionTime, SC_MS);
	std::cout << "\nInjection off after " << this->injectionTime <<"ms!!!!!!!" << endl;
}

float FuelInjectionControl::getInjectionTime() {
	return this->injectionTime;
}

void FuelInjectionControl::setInjectionTime(float injectionTime) {
	this->injectionTime = injectionTime;
}

float FuelInjectionControl::airDensity(float MAT, float MAP) {
	return 0.0391568* (MAP*10-31.0)/((MAT * 1.8 + 32 + 459.7) * 1728);
}

float FuelInjectionControl::requiredFuel(float MAT, float MAP, float RPM) {
	float* x = new float[AFR_COLS];
	float* y = new float[AFR_ROWS-2];
	float** z = Array::create(AFR_ROWS - 2, AFR_COLS);

	Array::assign(this->AFRTable[0], x, AFR_COLS);
    Array::assign(this->AFRTable[1], y, AFR_COLS);
    Array::assign(this->AFRTable, z, 2, AFR_ROWS, 0, AFR_COLS);

    float AFR = Math::interpolation2d(x, y, z, RPM, MAP, AFR_ROWS - 2, AFR_COLS);

	return 3600000 * CID * airDensity(MAT, MAP) / (CYLINDERS * AFR * INJ_FLOW) * (1 / DIVIDE_PULSE);
}

float FuelInjectionControl::gammaEnrichment(float CLT, float EGO, float MAP, float RPM) {
	// E = gamma_Enrich = (Warmup/100) * (O2_Closed Loop/100) * (AirCorr/100) * (BaroCorr/100)

	float result = 1;
	float* x = new float[EGO_COLS];
	float* y = new float[EGO_ROWS-2];
	float** z = Array::create(EGO_ROWS - 2, EGO_COLS);

	Array::assign(this->OxygenLoopTable[0], x, EGO_COLS);
    Array::assign(this->OxygenLoopTable[1], y, EGO_COLS);
    Array::assign(this->OxygenLoopTable, z, 2, EGO_ROWS, 0, EGO_COLS);

    float O2ClosedLoop = 100.0 - Math::interpolation2d(x, y, z, RPM, MAP, EGO_ROWS - 2, EGO_COLS);

	float warmUp = Math::interpolation1d(this->WarmUpTable, CLT, WARM_UP_COLS);

	if (O2ClosedLoop > 0 && O2ClosedLoop <= 2)
	{
		result = result * (O2ClosedLoop / 100);
	}

	if (warmUp > 0 && warmUp <= 2)
	{
		result = result * (warmUp / 100);
	}

	return result;

}

float FuelInjectionControl::pulseWidth(float CLT, float EGO, float MAT, float MAP, float RPM) {
	float* x = new float[VE_COLS];
	float* y = new float[VE_ROWS];
	float** z = Array::create(VE_ROWS - 2, VE_COLS);

	Array::assign(this->VETable[0], x, VE_COLS);
    Array::assign(this->VETable[1], y, VE_COLS);
    Array::assign(this->VETable, z, 2, VE_ROWS, 0, VE_COLS);

    float VE = Math::interpolation2d(x, y, z, RPM, MAP, VE_ROWS - 2, VE_COLS);

	return requiredFuel(MAT, MAP, RPM) * (VE / 100.0) * (MAP / 100.0) * gammaEnrichment(CLT, EGO, MAP, RPM) + INJ_OPEN_TIME;
}