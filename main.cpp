#include <iostream>
#include "CMakeConfig.h"

int main(int argc, char *argv[]) {
    if (argc < 2) {
        // report version
        std::cout << argv[0] << " Version " << CMake_VERSION_MAJOR << "."
                << CMake_VERSION_MINOR << std::endl;
        std::cout << "Usage: " << argv[0] << std::endl;
        return 1;
    }
}