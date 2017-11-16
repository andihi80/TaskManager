import QtQuick 2.7

Item {
    id: container
    property alias cellColor: rectangle.color
    signal clicked(color cellColor)

    height: 25; width: 40

    Rectangle{
        id: rectangle
        color:"white"
        anchors.fill: parent
    }

    MouseArea{
        anchors.fill: parent
        onClicked: container.clicked(container.cellColor)
    }
}
