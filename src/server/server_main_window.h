#pragma once

#include "TCP.h"
#include <iostream>
#include <QMainWindow>
#include <QWidget>
#include <QSpinBox>
#include <QPushButton>
#include <QLabel>
#include <QLineEdit>

class server_main_window : public QMainWindow
{
    Q_OBJECT

public:
    server_main_window(QWidget *parent = nullptr);

private:
    QWidget *central_widget;

    QSpinBox *insert_port;

    QPushButton *confirm_button;
    QPushButton *send;

    QListWidget *list;

    TCP_main_window *_server;

    QLineEdit *insert_message;

    QLabel *LED;
    QString state = 0;

private slots:
    void
    server_func();
    void client_connected();
    void send_func();

    void client_data_receive(QString);
    void client_disconnected();
};