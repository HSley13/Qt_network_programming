qt_add_executable(network
                    main.cpp
                    main_window.cpp
                    )


target_link_libraries(network PRIVATE
                        Qt6::Core
                        Qt6::Widgets
                        Qt6::Network
                        device_library
                        )    

set_target_properties(network PROPERTIES MACOSX_BUNDLE ON)
