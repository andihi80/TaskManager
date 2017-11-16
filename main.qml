/*
 * first steps see:
 * http://doc.qt.io/qt-4.8/qdeclarativeintroduction.html
 *
 * basic elements see: http://doc.qt.io/qt-4.8/qdeclarativeelements.html
 *
*/
import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import "."

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: "Hello World"

    Text{
        text:txtInpt1.text
        font.family: "Helvetica"
        font.pointSize: 24
        opacity: 0.5
    }
    TextInput{
        id: txtInpt1
        width: 60
        color: Style.mainbg // comes from Style.qml
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("First")
        }
        TabButton {
            text: qsTr("Second")
        }
    }
}
