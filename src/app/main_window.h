#pragma once

#include <iostream>
#include <QMainWindow>
#include <QWidget>
#include <QTcpSocket>
#include <QLineEdit>
#include <QSpinBox>

class main_window : public QMainWindow
{
    Q_OBJECT

public:
    main_window(QWidget *parent = nullptr);

private:
    QWidget *central_widget;

    QLineEdit *insert_ip;

    QSpinBox *insert_port;

    void set_device_controller();

private slots:
    void device_connection(QString ip, int port);
    void text_changed(const QString &arg1);

    void device_connected();
    void device_disconnected();
    void device_stateChanged(QAbstractSocket::SocketState);
    void device_errorOccured(QAbstractSocket::SocketError);
};