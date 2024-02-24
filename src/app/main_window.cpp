#include "main_window.h"
#include <device_main_window.h>
#include <QMainWindow>
#include <QWidget>
#include <QTcpSocket>
#include <QPushButton>
#include <QMessageBox>
#include <QLabel>
#include <QLineEdit>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QStyle>
#include <QSpinBox>
#include <QHostAddress>
#include <QAbstractSocket>
#include <QListWidget>
#include <QMetaEnum>

main_window::main_window(QWidget *parent)
    : QMainWindow(parent)
{

    central_widget = new QWidget(this);
    setCentralWidget(central_widget);

    QLabel *ip_address = new QLabel("Insert the IP Address: ", this);
    insert_ip = new QLineEdit(this);
    insert_ip->setInputMask("000.000.000.000;_");
    insert_ip->setClearButtonEnabled(true);
    insert_ip->setObjectName("ip");
    insert_ip->setStyleSheet(R"(
                            #ip[state = "0"] {border: 1px solid red;}
                            #ip[state = "1"] {border: 1px solid gray;}
                            )");

    connect(insert_ip, &QLineEdit::textChanged, this, &main_window::text_changed);
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
    connect(confirm, &QPushButton::clicked, this, &main_window::device_connection);

    list = new QListWidget();

    _controller = new device_main_window();
    connect(_controller, &device_main_window::connected, this, &main_window::device_connected);
    connect(_controller, &device_main_window::disconnected, this, &main_window::device_disconnected);
    connect(_controller, &device_main_window::stateChanged, this, &main_window::device_stateChanged);
    connect(_controller, &device_main_window::errorOccurred, this, &main_window::device_errorOccurred);

    QVBoxLayout *VBOX = new QVBoxLayout();
    VBOX->addLayout(hbox_1);
    VBOX->addLayout(hbox_2);
    VBOX->addWidget(confirm);
    VBOX->addWidget(list);
    VBOX->setAlignment(Qt::AlignCenter);

    central_widget->setLayout(VBOX);
}

void main_window::text_changed(const QString &arg1)
{
    QString state = "0";
    if (arg1 == "...")
        state = "";

    else
    {
        QHostAddress address(arg1);

        if (!address.isNull() && address.protocol() == QAbstractSocket::IPv4Protocol)
            state = "1";
    }

    insert_ip->setProperty("state", state);
    insert_ip->style()->polish(insert_ip);
}

void main_window::device_connection()
{
    QString ip = insert_ip->text();
    int port = insert_port->value();

    _controller->connect_to_device(ip, port);
}

void main_window::device_connected()
{
    list->addItem("Connected to Device");
}

void main_window::device_disconnected()
{
    list->addItem("Disconnected to Device");
}

void main_window::device_stateChanged(QAbstractSocket::SocketState state)
{
    QMetaEnum meta_enum = QMetaEnum::fromType<QAbstractSocket::SocketState>();
    list->addItem(meta_enum.valueToKey(state));
}

void main_window::device_errorOccurred(QAbstractSocket::SocketError error)
{
    QMetaEnum meta_enum = QMetaEnum::fromType<QAbstractSocket::SocketError>();
    list->addItem(meta_enum.valueToKey(error));
}