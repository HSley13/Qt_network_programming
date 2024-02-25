#pragma once

#include <iostream>
#include <QMainWindow>
#include <QTcpSocket>

class client_socket_window : public QMainWindow
{
    Q_OBJECT

public:
    client_socket_window(QWidget *parent = nullptr);
    void connect_to_device(QString ip, int port);
    void disconnect();
    QAbstractSocket::SocketState state();
    bool isConnected();
    void send(QString);

private:
    QWidget *central_widget;

    QTcpSocket *_socket;

    QString _ip;

    int _port;

signals:
    void connected();
    void disconnected();
    void state_changed(QAbstractSocket::SocketState);
    void error_occurred(QAbstractSocket::SocketError);
    void data_ready(QByteArray);

private slots:
    void socket_ready_read();
};