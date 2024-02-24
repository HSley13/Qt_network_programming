#pragma once

#include <iostream>
#include <QMainWindow>
#include <QWidget>
#include <QTcpSocket>
#include <QLineEdit>
#include <QSpinBox>

class device_main_window : public QMainWindow
{
    Q_OBJECT

public:
    device_main_window(QWidget *parent = nullptr);
    void connect_to(QString ip, int port);

private:
    QWidget *central_widget;

    QTcpSocket *_socket;

    QString _ip;

    int _port;

signals:
    void connected();
    void disconnected();
    void stateChanged(QAbstractSocket::SocketState);
    void errorOccured(QAbstractSocket::SocketError);

private slots:
};