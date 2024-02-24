#include "main_window.h"
#include <QMainWindow>
#include <QWidget>
#include <QTcpSocket>
#include <QPushButton>
#include <QMessageBox>
#include <QLabel>
#include <QLineEdit>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QSpinBox>

main_window::main_window(QWidget *parent)
    : QMainWindow(parent)
{

    central_widget = new QWidget(this);
    setCentralWidget(central_widget);

    QLabel *ip_address = new QLabel("Insert the IP Address: ", this);
    insert_ip = new QLineEdit(this);
    insert_ip->setInputMask("000.000.000.000");
    QHBoxLayout *hbox_1 = new QHBoxLayout();
    hbox_1->addWidget(ip_address);
    hbox_1->addWidget(insert_ip);

    QLabel *port_number = new QLabel("Insert the Port Number: ", this);
    insert_port = new QSpinBox(this);
    insert_port->setMinimum(1024);
    insert_port->setMaximum(65535);
    QHBoxLayout *hbox_2 = new QHBoxLayout();
    hbox_2->addWidget(port_number);
    hbox_2->addWidget(insert_port);

    QPushButton *confirm = new QPushButton("Connect", this);
    connect(confirm, &QPushButton::clicked, this, [=]()
            {
            QString device_ip = insert_ip->text();
            int device_port = insert_port->text().toInt();
            device_connection(device_ip, device_port); });

    QVBoxLayout *VBOX = new QVBoxLayout();
    VBOX->addLayout(hbox_1);
    VBOX->addLayout(hbox_2);
    VBOX->addWidget(confirm);
    VBOX->setAlignment(Qt::AlignCenter);

    central_widget->setLayout(VBOX);
}

void main_window::device_connection(QString ip, int port)
{
}