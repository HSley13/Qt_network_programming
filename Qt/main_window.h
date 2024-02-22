#pragma once

#include <iostream>
#include <QMainWindow>
#include <QWidget>
#include <QStackedWidget>

class main_window : public QMainWindow
{
    Q_OBJECT

public:
    main_window(QWidget *parent = nullptr);

private:
    QStackedWidget *stack_window;

    QWidget *central_widget;

private slots:
};