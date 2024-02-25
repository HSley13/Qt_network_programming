#include "client_socket_window.h"
#include <QApplication>

int main(int argc, char **argv)
{
    QApplication app(argc, argv);

    client_socket_window *Main_Window = new client_socket_window();
    Main_Window->show();

    return app.exec();
}