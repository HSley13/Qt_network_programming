#pragma once

#include <client_socket_window.h>
#include <QMainWindow>
#include <QWidget>
#include <QTcpSocket>
#include <QLineEdit>
#include <QSpinBox>
#include <QListWidget>
#include <QPushButton>
#include <QGroupBox>

class main_window : public QMainWindow
{
    Q_OBJECT

public:
    main_window(QWidget *parent = nullptr);

private:
    QWidget *central_widget;

    QLineEdit *insert_ip;
    QLineEdit *insert_message;

    QSpinBox *insert_port;
    QListWidget *list;

    QPushButton *confirm_button;

    client_socket_window *_controller;

    QGroupBox *group;

private slots:
    void device_connection();
    void text_changed(const QString &arg1);
    void send_func();

    void device_connected();
    void device_disconnected();
    void device_data_ready(QByteArray);
};