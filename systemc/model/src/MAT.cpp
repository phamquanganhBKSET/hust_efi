#include "../../include/MAT.hpp"

// MAT::MAT() {
// 	float** MATSSTable = Array::create(MATSS_ROWS, MATSS_COLS);
// 	data = 0;
// }

void MAT::loadTable(char path[]) {
    File::read(path, this->MATSSTable, MATSS_ROWS, MATSS_COLS);
}

void MAT::check() {
	float voltage = input->read();
	this->data = Math::interpolation1d(this->MATSSTable, voltage, MATSS_COLS);
	std::cout << sc_time_stamp() << ": MAT sensor read, voltage = " << voltage << " -> MAT = " << this->data << endl;
}

float MAT::getData() {
	return this->data;
}
