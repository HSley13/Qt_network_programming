#pragma once

#include "TCP.h"
#include <iostream>
#include <QMainWindow>
#include <QWidget>
#include <QTcpSocket>
#include <QTcpServer>
#include <QSpinBox>
#include <QPushButton>
#include <QListWidget>
#include <QLabel>

class server_main_window : public QMainWindow
{
    Q_OBJECT

public:
    server_main_window(QWidget *parent = nullptr);

private:
    QWidget *central_widget;

    QSpinBox *insert_port;

    QPushButton *confirm_button;

    QListWidget *list;

    TCP_main_window *_server;

    QLabel *LED;
    QString state = 0;

private slots:
    void
    server_func();
    void client_connected();
};