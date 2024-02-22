#include "main_window.h"
#include <QMainWindow>
#include <QWidget>
#include <QStackedWidget>
#include <QPushButton>
#include <QMessageBox>

main_window::main_window(QWidget *parent)
    : QMainWindow(parent)
{
    stack_window = new QStackedWidget();
    setCentralWidget(stack_window);

    central_widget = new QWidget(this);
}
