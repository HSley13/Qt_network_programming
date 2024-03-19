#include "TCP.h"
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

void TCP_main_window::client_data_send()
{
    QTcpSocket *socket = qobject_cast<QTcpSocket *>(sender());
    QString data = socket->readAll();

    emit data_receive(data);
}

void TCP_main_window::client_disconnection()
{
    emit client_disconnect();
}

void TCP_main_window::client_connection()
{
    QTcpSocket *socket = _server->nextPendingConnection();

    connect(socket, &QTcpSocket::readyRead, this, &TCP_main_window::client_data_send);
    connect(socket, &QTcpSocket::disconnected, this, &TCP_main_window::client_disconnection);

    sockets_list << socket;

    socket->write("Welcome to the Server");
    emit on_client_connected();
}

bool TCP_main_window::is_started_func() const
{
    return is_started;
}

void TCP_main_window::send_to_all(QString message)
{
    for (QTcpSocket *socket : sockets_list)
        socket->write(message.toUtf8());
}
