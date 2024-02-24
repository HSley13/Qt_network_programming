#include "server_main_window.h"
#include "TCP.h"
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

server_main_window::server_main_window(QWidget *parent)
    : QMainWindow(parent)
{
    central_widget = new QWidget(this);
    setCentralWidget(central_widget);

    QLabel *port_number = new QLabel("Port Number: ", this);
    insert_port = new QSpinBox(this);
    insert_port->setMinimum(1024);
    insert_port->setMaximum(65535);
    QHBoxLayout *hbox_1 = new QHBoxLayout();
    hbox_1->addWidget(port_number);
    hbox_1->addWidget(insert_port);

    confirm_button = new QPushButton("Start Sever", this);
    connect(confirm_button, &QPushButton::clicked, this, &server_main_window::server_func);

    LED = new QLabel(this);
    LED->setObjectName("button");
    LED->setProperty("state", "0");
    LED->setStyleSheet(R"(
                            #button[state = "0"] {background-color: red;}
                            #button[state = "1"] {background-color: green;}
                            )");
    QHBoxLayout *hbox_2 = new QHBoxLayout();
    hbox_2->addWidget(LED);
    hbox_2->addWidget(confirm_button);

    list = new QListWidget();
    QPushButton *clear_button = new QPushButton("clear", this);
    connect(clear_button, &QPushButton::clicked, this, [=]()
            { list->clear(); });

    QVBoxLayout *VBOX = new QVBoxLayout();
    VBOX->addLayout(hbox_1);
    VBOX->addLayout(hbox_2);
    VBOX->addWidget(list);
    VBOX->addWidget(clear_button);

    central_widget->setLayout(VBOX);
}

void server_main_window::server_func()
{
    int port = insert_port->value();

    _server = new TCP_main_window(port);
    connect(_server, &TCP_main_window::on_client_connected, this, &server_main_window::client_connected);

    state = (_server->is_started_func()) ? "1" : "0";

    LED->setProperty("state", state);
    LED->style()->polish(LED);
}

void server_main_window::client_connected()
{
    list->addItem("New Client Connected");
}
