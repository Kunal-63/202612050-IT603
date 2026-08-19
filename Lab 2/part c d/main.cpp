#include <iostream>
#include "student.h"

using namespace std;

int main() {
    Student s("Kunal Adwani", 85);

    s.display();

    if (s.isPassed()) {
        cout << "Result: Passed" << endl;
    } else {
        cout << "Result: Failed" << endl;
    }

    return 0;
}