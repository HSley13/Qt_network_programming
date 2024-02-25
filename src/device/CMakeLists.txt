qt_add_library(client_socket_library STATIC 
            client_socket.cpp
            client_socket_window.cpp
            )

target_link_libraries(client_socket_library PRIVATE 
                        Qt6::Widgets
                        Qt6::Core
                        Qt6::Network
                    )          

target_include_directories(client_socket_library INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})

