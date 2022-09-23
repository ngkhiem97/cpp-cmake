#include <iostream>
#include <math.h>
#include "CMakeConfig.h"
#include "MathFunctions.h"

int main(int argc, char *argv[]) {
    if (argc < 2) {
        // report version
        std::cout << argv[0] << " Version " << CMake_VERSION_MAJOR << "."
                << CMake_VERSION_MINOR << std::endl;
        std::cout << "Usage: " << argv[0] << " number" << std::endl;
        return 1;
    }

    double inputValue = atof(argv[1]);
    double outputValue = 0;
    #ifdef USE_MYMATH
        outputValue = mysqrt(inputValue);
    #else
        outputValue = sqrt(inputValue);
    #endif
    std::cout << "The square root of " << inputValue << " is "
            << outputValue << std::endl;
    return 0;
}