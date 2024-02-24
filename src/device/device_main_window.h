#pragma once

#include <iostream>
#include <QMainWindow>
#include <QTcpSocket>

class device_main_window : public QMainWindow
{
    Q_OBJECT

public:
    device_main_window(QWidget *parent = nullptr);
    void connect_to_device(QString ip, int port);
    void disconnect();
    QAbstractSocket::SocketState state();
    bool isConnected();

private:
    QWidget *central_widget;

    QTcpSocket *_socket;

    QString _ip;

    int _port;

signals:
    void connected();
    void disconnected();
    void stateChanged(QAbstractSocket::SocketState);
    void errorOccurred(QAbstractSocket::SocketError);
};