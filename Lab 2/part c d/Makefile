CXX = g++
CXXFLAGS = -Wall -g

TARGET = student_program
OBJS = main.o student.o

$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $(TARGET)

main.o: main.cpp student.h
	$(CXX) $(CXXFLAGS) -c main.cpp -o main.o

student.o: student.cpp student.h
	$(CXX) $(CXXFLAGS) -c student.cpp -o student.o

clean:
	rm -f $(OBJS) $(TARGET)