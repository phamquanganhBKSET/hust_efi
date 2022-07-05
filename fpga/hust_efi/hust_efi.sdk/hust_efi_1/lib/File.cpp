#include "File.hpp"

bool File::read(const char* path, float** table, int rows, int cols) {
	int x_axes = 0;
	int y_axes = 0;

	UINT* br;
	FIL* fptr;
	FRESULT op = f_open(fptr, path, FA_READ);

	if (op != FR_OK) {
		cout << "Could not open file " << path << endl;
		return 0;
	}

	if (fptr->obj.objsize == 0)
	{
		return 0;
	}

	char buff[fptr->obj.objsize + 1];
	f_read(fptr, (void*) buff, fptr->obj.objsize, br);

	float past = 0;
	float result[rows * cols];
	int j = 0;
	for (int i = 0; i < fptr->obj.objsize; i ++) {
		if (buff[i] == ' ' || buff[i] == '\n') {
			result[j++] = past;
			past = 0;
		}
		else if (buff[i] == '.') {
			i++;
			past = past + (float)(buff[i]-'0')/10.0;
		} else {
			past =(float)(buff[i]-'0') + past * 10;
		}
	}

	for (int i = 0; i < rows * cols; i++) {
		table[x_axes][y_axes] = result[i];
		x_axes = (y_axes == cols - 1) ? x_axes + 1 : x_axes;
		y_axes = (y_axes == cols - 1) ? 0 : y_axes + 1;
	}

	cout << "\nSuccessfully read file " << path << endl;
	f_close(fptr);

	return 1;
}

bool File::write(const char* path, float** table, int rows, int cols) {
	FIL* fptr;
	FRESULT op = f_open(fptr, path, FA_CREATE_ALWAYS | FA_WRITE);

	vector<char> v;
	for (int x_axes = 0; x_axes < rows; ++x_axes)
	{
		for (int y_axes = 0; y_axes < cols; ++y_axes)
		{
			stringstream ss;
			ss << table[x_axes][y_axes];
			string str = ss.str();
			for (int i = 0; i < str.length(); i++) {
				v.push_back(str[i]);
			}
			if (y_axes != cols - 1)
			{
				v.push_back(' ');
			}
		}
		v.push_back('\n');
	}

	char arr[v.size() + 1];

	for (int i = 0; i < v.size(); i++) {
		arr[i] = v[i];
	}

	f_write(fptr, (void*) arr, v.size(), NULL);

	f_close(fptr);

	return 1;
}
