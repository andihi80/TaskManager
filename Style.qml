/*
* https://stackoverflow.com/questions/15257946/declare-global-property-in-qml-for-other-qml-files
* also necessary to include qmldir see: http://doc.qt.io/qt-5/qtqml-modules-qmldir.html
*/

pragma Singleton
import QtQuick 2.7
QtObject {
    property color mainbg: 'red'
}


