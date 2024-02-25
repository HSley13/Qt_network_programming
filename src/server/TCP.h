#pragma once

#include <iostream>
#include <QMainWindow>
#include <QTcpSocket>
#include <QTcpServer>
#include <QSpinBox>
#include <QPushButton>
#include <QListWidget>

class TCP_main_window : public QMainWindow
{
    Q_OBJECT

public:
    TCP_main_window(int port, QWidget *parent = nullptr);
    bool is_started_func() const;
    void send_to_all(QString);

private:
    QTcpServer *_server;
    int _port;

    QWidget *central_widget;

    QList<QTcpSocket *> sockets_list;

    bool is_started;

signals:
    void on_client_connected();
    void data_receive(QString);
    void client_disconnect();

private slots:
    void client_connection();
    void client_data_send();
    void client_disconnection();
};