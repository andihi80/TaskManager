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
    id: appWindow
    visible: true
    width: 640
    height: 480
    title: "Hello World"

    Rectangle{
        id: rect
        anchors.fill: parent

        Column{
            anchors.top: rect.top; anchors.topMargin: 4
            TextInput {
                id: txtInpt1
                width:100
                color: Style.mainbg // comes from Style.qml
            }

            Text{
                id:helloText
                text:txtInpt1.text
                font.family: "Helvetica"
                font.pointSize: 24
                opacity: 0.5
            }            
        }

        Grid{
            id:colorGrid
            x:4; anchors.bottom: rect.bottom; anchors.bottomMargin: 4;
            rows: 3; columns: 3; spacing: 3

            Cell { cellColor: "red"; onClicked: helloText.color = cellColor }
            Cell { cellColor: "green"; onClicked: helloText.color = cellColor }
            Cell { cellColor: "blue"; onClicked: helloText.color = cellColor }
            Cell { cellColor: "yellow"; onClicked: helloText.color = cellColor }
            Cell { cellColor: "steelblue"; onClicked: helloText.color = cellColor }
            Cell { cellColor: "black"; onClicked: helloText.color = cellColor }
        }
    }



/*
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

    Grid{
        id:colorGrid
        x:4; anchors.top: appWindow.top; anchors.topMargin: 4;
        rows: 3; columns: 3; spacing: 3

        Cell { cellColor: "red"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "green"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "blue"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "yellow"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "steelblue"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "black"; onClicked: helloText.color = cellColor }
    }
*/
    footer: TabBar {
        id: tabBar        
        TabButton {
            text: qsTr("First")
        }
        TabButton {
            text: qsTr("Second")
        }
    }
}
