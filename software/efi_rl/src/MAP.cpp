#include "../include/MAP.hpp"

union {
	float f;
	u32 u;
} voltage;

MAP::MAP() {
	data = 0;
}

void MAP::check() {
	//float voltage = input->read();
	// Doc gia tri sensor o day
	voltage.u = EFI_VIRTUAL_INPUT_mReadReg(VIRTUAL_INPUT_BASE_ADDR, EFI_VIRTUAL_INPUT_S00_AXI_SLV_REG0_OFFSET);
	float** arr = Array::create(MAPSS_ROWS, MAPSS_COLS);
	for (int i = 0; i < MAPSS_ROWS; i++) {
		for (int j = 0; j < MAPSS_COLS; j++) {
			arr[i][j] = MAPSSTable[i][j];
		}
	}
	this->data = Math::interpolation1d(arr, voltage.f, MAPSS_COLS);
	printf("MAP sensor read, voltage = %f -> MAP = %f \n", voltage.f, this->data);
}

float MAP::getData() {
	return this->data;
}
