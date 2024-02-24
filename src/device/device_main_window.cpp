#include "device_main_window.h"
#include <QMainWindow>
#include <QWidget>
#include <QTcpSocket>
#include <QPushButton>
#include <QMessageBox>
#include <QLabel>
#include <QLineEdit>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QStyle>
#include <QSpinBox>
#include <QHostAddress>
#include <QAbstractSocket>

device_main_window::device_main_window(QWidget *parent)
    : QMainWindow(parent)
{

    central_widget = new QWidget(this);
    setCentralWidget(central_widget);

    connect(_socket, &QTcpSocket::connected, this, &device_main_window::connected);
    connect(_socket, &QTcpSocket::disconnected, this, &device_main_window::disconnected);
    connect(_socket, &QTcpSocket::stateChanged, this, &device_main_window::stateChanged);
    connect(_socket, &QTcpSocket::errorOccurred, this, &device_main_window::errorOccured);
}

void device_main_window::connect_to(QString ip, int port)
{
    if (_socket->isOpen())
    {
        if (ip == _ip && port == _port)
            return;

        _socket->close();

        _ip = ip;
        _port = port;
        _socket->connectToHost(_ip, _port);
    }
}