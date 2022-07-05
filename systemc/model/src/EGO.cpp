#include "../../include/EGO.hpp"

// EGO::EGO() {
// 	float** EGOSSTable = Array::create(EGOSS_ROWS, EGOSS_COLS);
// 	data = 0;
// }

void EGO::loadTable(char path[]) {
    File::read(path, this->EGOSSTable, EGOSS_ROWS, EGOSS_COLS);
}

void EGO::check() {
	float voltage = input->read();
	this->data = Math::interpolation1d(this->EGOSSTable, voltage, EGOSS_COLS);
	std::cout << sc_time_stamp() << ": EGO sensor read, voltage = " << voltage << " -> AFR = " << this->data << endl;
}

float EGO::getData() {
	return this->data;
}
