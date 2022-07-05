#include "../../include/CKP.hpp"

// CKP::CKP() {
// 	data = 0;
// }

void CKP::check() {
	this->data = this->input->read();
	std::cout << sc_time_stamp() << ": CKP sensor read, val = " << this->data  << endl;
}

bool CKP::getData() {
	return this->data;
}
