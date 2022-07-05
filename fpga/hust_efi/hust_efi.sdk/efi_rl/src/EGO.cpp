#include "../include/EGO.hpp"

union {
	float f;
	u32 u;
} voltage;

EGO::EGO() {
	data = 0;
}

void EGO::check() {
	//float voltage = input->read();
	// Doc gia tri sensor o day
	voltage.u = EFI_VIRTUAL_INPUT_mReadReg(VIRTUAL_INPUT_BASE_ADDR, EFI_VIRTUAL_INPUT_S00_AXI_SLV_REG3_OFFSET);
	float** arr = Array::create(EGOSS_ROWS, EGOSS_COLS);
	for (int i = 0; i < EGOSS_ROWS; i++) {
		for (int j = 0; j < EGOSS_COLS; j++) {
			arr[i][j] = EGOSSTable[i][j];
		}
	}
	this->data = Math::interpolation1d(arr, voltage.f, EGOSS_COLS);
	printf("EGO sensor read, voltage = %f -> AFR = %f\n", voltage.f, this->data);
}

float EGO::getData() {
	return this->data;
}
