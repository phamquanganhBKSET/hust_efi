#include "../include/MAT.hpp"

union {
	float f;
	u32 u;
} voltage;

MAT::MAT() {
	data = 0;
}

void MAT::check() {
	//float voltage = input->read();
	// Doc gia tri sensor o day
	voltage.u = EFI_VIRTUAL_INPUT_mReadReg(VIRTUAL_INPUT_BASE_ADDR, EFI_VIRTUAL_INPUT_S00_AXI_SLV_REG1_OFFSET);
	float** arr = Array::create(MATSS_ROWS, MATSS_COLS);
	for (int i = 0; i < MATSS_ROWS; i++) {
		for (int j = 0; j < MATSS_COLS; j++) {
			arr[i][j] = MATSSTable[i][j];
		}
	}
	this->data = Math::interpolation1d(arr, voltage.f, MATSS_COLS);
	printf("MAT sensor read, voltage = %f -> MAT = %f\n", voltage.f, this->data);
}

float MAT::getData() {
	return this->data;
}
