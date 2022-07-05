#include "../../include/CLT.hpp"

// CLT::CLT() {
// 	float** CLTSSTable = Array::create(CLTSS_ROWS, CLTSS_COLS);
// 	data = 0;
// }

void CLT::loadTable(char path[]) {
    File::read(path, this->CLTSSTable, CLTSS_ROWS, CLTSS_COLS);
}

void CLT::check() {
	float voltage = input->read();
	this->data = Math::interpolation1d(this->CLTSSTable, voltage, CLTSS_COLS);
	std::cout << sc_time_stamp() << ": CLT sensor read, voltage = " << voltage << " -> temperature = " << this->data << endl;
}

float CLT::getData() {
	return this->data;
}
