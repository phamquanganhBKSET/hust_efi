#include "../include/CLT.hpp"

union {
	float f;
	u32 u;
} voltage;

CLT::CLT() {
	data = 0;
}

void CLT::check() {
	voltage.u = EFI_VIRTUAL_INPUT_mReadReg(VIRTUAL_INPUT_BASE_ADDR, EFI_VIRTUAL_INPUT_S00_AXI_SLV_REG2_OFFSET);
	float** arr = Array::create(CLTSS_ROWS, CLTSS_COLS);
	for (int i = 0; i < CLTSS_ROWS; i++) {
		for (int j = 0; j < CLTSS_COLS; j++) {
			arr[i][j] = CLTSSTable[i][j];
		}
	}
	this->data = Math::interpolation1d(arr, voltage.f, CLTSS_COLS);
	std::cout << "CLT sensor read, voltage = " << voltage.f << " -> temperature = " << this->data << std::endl;
}

float CLT::getData() {
	return this->data;
}
