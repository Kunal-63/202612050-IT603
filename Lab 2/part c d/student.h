#ifndef STUDENT_H
#define STUDENT_H

#include <string>
using namespace std;

class Student {
private:
    string name;
    int marks;

public:
    Student(string n, int m);

    void display();
    bool isPassed();
};

#endif