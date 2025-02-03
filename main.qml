import QtQuick 2.15
import QtQuick.Window 2.15
import "ui/BottomBar"

Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("EVA Infortainment")

    BottomBar {
        id: bottomBar
    }

}
