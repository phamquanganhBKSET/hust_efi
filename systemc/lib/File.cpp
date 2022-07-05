#include "File.hpp"

bool File::read(const char* path, float** table, int rows, int cols) {
	ifstream file;

	string line;
	int x_axes = 0;
	int y_axes = 0;
	float num;

	file.open(path);
	if (!file.is_open())
	{
		cerr << "Could not open file " << path << endl;
		return 0;
	}

	if (is_empty(file))
	{
		return 0;
	}
	
	while (file.peek() != EOF) {
		file >> num;
		table[x_axes][y_axes] = num;
		x_axes = (y_axes == cols - 1) ? x_axes + 1 : x_axes;
		y_axes = (y_axes == cols - 1) ? 0 : y_axes + 1;
	}

	file.close();

	return 1;
}

bool File::write(const char* path, float** table, int rows, int cols) {
	ofstream file;
	file.open(path);

	if (!file.is_open())
	{
		cerr << "Could not open file " << path << endl;
		return 0;
	}

	for (int x_axes = 0; x_axes < rows; ++x_axes)
	{
		for (int y_axes = 0; y_axes < cols; ++y_axes)
		{
			file << table[x_axes][y_axes];
			if (y_axes != cols - 1)
			{
				file <<  " ";
			}
		}
		if (x_axes != rows - 1)
		{
			file << endl;
		}
	}

	file.close();

	return 1;
}

bool File::is_empty(std::ifstream& pFile) {
    return pFile.peek() == std::ifstream::traits_type::eof();
}
