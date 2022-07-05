#include "../../include/MAP.hpp"

// MAP::MAP() {
// 	float** MAPSSTable = Array::create(MAPSS_ROWS, MAPSS_COLS);
// 	data = 0;
// }

void MAP::loadTable(char path[]) {
    File::read(path, this->MAPSSTable, MAPSS_ROWS, MAPSS_COLS);
}

void MAP::check() {
	float voltage = input->read();
	this->data = Math::interpolation1d(this->MAPSSTable, voltage, MAPSS_COLS);
	std::cout << sc_time_stamp() << ": MAP sensor read, voltage = " << voltage << " -> MAP = " << this->data << endl;
}

float MAP::getData() {
	return this->data;
}
