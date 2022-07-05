# The compiler: gcc for C program, define as g++ for C++
CC = g++

# Compiler flags:
#  -g     - this flag adds debugging information to the executable file
#  -Wall  - this flag is used to turn on most compiler warnings
CFLAGS  = -Wall -g

# The build target
TARGET_TEST_FILE = test_file
TARGET_TEST_MATH = test_math

# Library source
FILE = ../../lib/File.cpp
MATH = ../../lib/Math.cpp
ARRAY = ../../lib/Array.cpp

# Targets needed to bring the executable up to date
file: test_file.o Array.o File.o
	$(CC) $(CFLAGS) -o $(TARGET_TEST_FILE) test_file.o Array.o File.o

math: test_math.o Math.o Array.o File.o
	$(CC) $(CFLAGS) -o $(TARGET_TEST_MATH) test_math.o Math.o Array.o File.o

File.o: ../../lib/File.hpp
	$(CC) $(CFLAGS) -o File.o -c $(FILE)

Math.o: ../../lib/Math.hpp
	$(CC) $(CFLAGS) -o Math.o -c $(MATH)

Array.o: ../../lib/Array.hpp
	$(CC) $(CFLAGS) -o Array.o -c $(ARRAY)

run_file:
	chmod +x test_file
	./test_file

run_math:
	chmod +x test_math
	./test_math

cleanf:
	rm -rf test_file *.o

cleanm:
	rm -rf test_math *.o
