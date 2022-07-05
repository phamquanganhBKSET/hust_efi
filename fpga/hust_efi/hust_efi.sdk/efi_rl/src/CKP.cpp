#include "../include/CKP.hpp"

CKP::CKP() {
	data = 0;
}

void CKP::check() {
	//this->data = this->input->read();
	// Doc gia tri sensor o day






	std::cout << "CKP sensor read, val = " << this->data  << std::endl;
}

bool CKP::getData() {
	return this->data;
}
