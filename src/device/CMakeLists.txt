qt_add_library(device_library STATIC 
            device_main.cpp
            device_main_window.cpp
            )

target_link_libraries(device_library PRIVATE 
                        Qt6::Widgets
                        Qt6::Core
                        Qt6::Network
                    )          

target_include_directories(device_library INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})