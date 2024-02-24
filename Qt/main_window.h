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

    QTcpSocket socket;

    QString ip;

    int port;

    QLineEdit *insert_ip;

    QSpinBox *insert_port;

private slots:
    void device_connection(QString ip, int port);
};