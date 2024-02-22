cmake_minimum_required(VERSION 3.28.1)
set(CMAKE_CXX_STANDARD 17)
project(network)

find_package(Qt6 COMPONENTS Core Widgets Quick REQUIRED)
qt_standard_project_setup()

qt_add_executable(network
                    main.cpp
                    main_window.cpp
                    main_window.h
                    )

target_link_libraries(network PRIVATE
                        Qt6::Core
                        Qt6::Widgets
                        Qt6::Quick
                        )           

set_target_properties(network PROPERTIES MACOSX_BUNDLE ON)
