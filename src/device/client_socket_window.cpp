#include "client_socket_window.h"
#include <QMainWindow>
#include <QWidget>
#include <QTcpSocket>

client_socket_window::client_socket_window(QWidget *parent)
    : QMainWindow(parent)
{

    _socket = new QTcpSocket(this);

    connect(_socket, &QTcpSocket::connected, this, &client_socket_window::connected);
    connect(_socket, &QTcpSocket::disconnected, this, &client_socket_window::disconnected);
    connect(_socket, &QTcpSocket::stateChanged, this, &client_socket_window::state_changed);
    connect(_socket, &QTcpSocket::errorOccurred, this, &client_socket_window::error_occurred);
    connect(_socket, &QTcpSocket::readyRead, this, &client_socket_window::socket_ready_read);
}

QAbstractSocket::SocketState client_socket_window::state()
{
    return _socket->state();
}

void client_socket_window::disconnect()
{
    _socket->close();
}

bool client_socket_window::isConnected()
{
    return _socket->state() == QAbstractSocket::ConnectedState;
}

void client_socket_window::connect_to_device(QString ip, int port)
{
    if (_socket->isOpen())
    {
        if (ip == _ip && port == _port)
            return;

        _socket->close();
    }

    _ip = ip;
    _port = port;
    _socket->connectToHost(_ip, _port);
}

void client_socket_window::socket_ready_read()
{
    QByteArray data = _socket->readAll();
    emit data_ready(data);
}

void client_socket_window::send(QString message)
{
    _socket->write(message.toUtf8());
}
