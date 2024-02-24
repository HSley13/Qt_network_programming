#include "TCP.h"
#include <QMainWindow>
#include <QWidget>
#include <QTcpSocket>
#include <QSpinBox>
#include <QHostAddress>
#include <QAbstractSocket>

TCP_main_window::TCP_main_window(int port, QWidget *parent)
    : QMainWindow(parent), _port(port)
{
    central_widget = new QWidget(this);
    setCentralWidget(central_widget);

    _server = new QTcpServer(this);
    connect(_server, &QTcpServer::newConnection, this, &TCP_main_window::client_connection);

    is_started = _server->listen(QHostAddress::Any, _port);
    if (!is_started)
        qDebug() << "Server connection Error";
}

void TCP_main_window::client_connection()
{
    auto socket = _server->nextPendingConnection();

    sockets_list.append(socket);
    socket->write("Welcome to the Server");
    emit on_client_connected();
}

bool TCP_main_window::is_started_func() const
{
    return is_started;
}
