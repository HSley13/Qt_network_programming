#include "main_window.h"
#include <QApplication>

int main(int argc, char **argv)
{
    QApplication app(argc, argv);

    main_window *Main_Window = new main_window();
    Main_Window->show();

    return app.exec();
}