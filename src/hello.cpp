#include <QApplication>
#include <QLabel>
#include <QtDebug>
#include <iostream>
#include <QDate>
#include <QString>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QLabel *label = new QLabel("Hello Qt!");
    std::cout << "Hello Qt from std::cout" << std::endl; // OK
    qDebug() << QDate::currentDate(); // OK
    qDebug() << "Hello Qt from QDebug"; // NOK
    label->show();
    return app.exec();
}
