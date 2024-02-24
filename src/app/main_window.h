#pragma once

#include <device_main_window.h>
#include <iostream>
#include <QMainWindow>
#include <QWidget>
#include <QTcpSocket>
#include <QLineEdit>
#include <QSpinBox>
#include <QListWidget>

class main_window : public QMainWindow
{
    Q_OBJECT

public:
    main_window(QWidget *parent = nullptr);

private:
    QWidget *central_widget;

    QLineEdit *insert_ip;
    QSpinBox *insert_port;
    QListWidget *list;

    device_main_window *_controller;

private slots:
    void device_connection();
    void text_changed(const QString &arg1);

    void device_connected();
    void device_disconnected();
    void device_stateChanged(QAbstractSocket::SocketState);
    void device_errorOccurred(QAbstractSocket::SocketError);
};