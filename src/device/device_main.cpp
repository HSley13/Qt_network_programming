#include "device_main_window.h"
#include <QApplication>

int main(int argc, char **argv)
{
    QApplication app(argc, argv);

    device_main_window *Main_Window = new device_main_window();
    Main_Window->show();

    return app.exec();
}