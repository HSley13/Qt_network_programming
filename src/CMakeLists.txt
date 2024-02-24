cmake_minimum_required(VERSION 3.28.1)
set(CMAKE_CXX_STANDARD 17)
project(network)


find_package(Qt6 COMPONENTS Core Widgets Network REQUIRED)
qt_standard_project_setup()
    
add_subdirectory(app/)
add_subdirectory(device/)