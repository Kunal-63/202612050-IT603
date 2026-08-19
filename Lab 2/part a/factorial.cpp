#include <iostream>

int factorial(int number) {
    int result = 1;
    for (int value = 2; value <= number; ++value) {
        result *= value;
    }
    return result;
}

int main() {
    int number;
    std::cout << "Enter a non-negative integer: ";
    std::cin >> number;

    if (number < 0) {
        std::cout << "Factorial is not defined for negative numbers.\n";
        return 1;
    }

    std::cout << number << "! = " << factorial(number) << '\n';
    return 0;
}
