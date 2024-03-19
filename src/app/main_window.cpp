#include "main_window.h"
#include <client_socket_window.h>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QStyle>
#include <QHostAddress>
#include <QAbstractSocket>
#include <QLabel>

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

    QLabel *port_number = new QLabel("Port Number: ", this);
    insert_port = new QSpinBox(this);
    insert_port->setMinimum(1024);
    insert_port->setMaximum(65535);
    QHBoxLayout *hbox_2 = new QHBoxLayout();
    hbox_2->addWidget(port_number);
    hbox_2->addWidget(insert_port);

    confirm_button = new QPushButton("Connect", this);
    connect(confirm_button, &QPushButton::clicked, this, &main_window::device_connection);

    list = new QListWidget();
    QPushButton *clear_button = new QPushButton("clear", this);
    connect(clear_button, &QPushButton::clicked, this, [=]()
            { list->clear(); });

    QLabel *message = new QLabel("Insert Message", this);
    insert_message = new QLineEdit();
    QHBoxLayout *hbox_3 = new QHBoxLayout();
    QPushButton *send = new QPushButton("Send", this);
    connect(send, &QPushButton::clicked, this, &main_window::send_func);
    hbox_3->addWidget(message);
    hbox_3->addWidget(insert_message);
    hbox_3->addWidget(send);

    group = new QGroupBox();
    group->setLayout(hbox_3);
    group->setEnabled(false);

    _controller = new client_socket_window();
    connect(_controller, &client_socket_window::connected, this, &main_window::device_connected);
    connect(_controller, &client_socket_window::disconnected, this, &main_window::device_disconnected);
    connect(_controller, &client_socket_window::data_ready, this, &main_window::device_data_ready);

    QVBoxLayout *VBOX = new QVBoxLayout();
    VBOX->addLayout(hbox_1);
    VBOX->addLayout(hbox_2);
    VBOX->addWidget(confirm_button);
    VBOX->addWidget(list);
    VBOX->addWidget(clear_button);
    VBOX->addWidget(group);
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
    if (_controller->isConnected())
        _controller->disconnect();

    else
    {
        QString ip = insert_ip->text();
        int port = insert_port->value();

        _controller->connect_to_device(ip, port);
    }
}

void main_window::device_connected()
{
    list->addItem("Connected to Device");
    confirm_button->setText("Disconnect");

    group->setEnabled(true);
}

void main_window::device_disconnected()
{
    list->addItem("Disconnected to Device");
    confirm_button->setText("Connect");

    group->setEnabled(false);
}

void main_window::send_func()
{
    QString message = insert_message->text().trimmed();

    _controller->send(message);
    insert_message->clear();
}

void main_window::device_data_ready(QByteArray data)
{
    list->addItem(QString(data));
}
