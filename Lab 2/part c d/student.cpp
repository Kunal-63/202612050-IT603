#include <iostream>
#include "student.h"

using namespace std;

Student::Student(string n, int m) {
    name = n;
    marks = m;
}

void Student::display() {
    cout << "Name: " << name << endl;
    cout << "Student Marks: " << marks << endl;
}

bool Student::isPassed() {
    return marks >= 35;
}