import QtQuick 2.0
import QtPositioning 6.8
import QtLocation


Rectangle {
    id: rightScreen

    anchors {
        top: parent.top
        bottom: bottomBar.top
        right: parent.right
    }

    Plugin {
            id: mapPlugin
            name: "osm"
        }

    Map {
         id: map
         anchors.fill: parent
         plugin: mapPlugin
         center: QtPositioning.coordinate(37.46, -122.14) // Palo Alto
         zoomLevel: 14
     }

    Image {
        id: lockIcon
        anchors {
            left: parent.left
            top: parent.top
            margins: 20
        }

        width: parent.width / 40
        fillMode: Image.PreserveAspectFit
        source: (systemHandler.carLocked ? "/ui/assets/lock.png" : "/ui/assets/unlock.png")
        MouseArea {
            anchors.fill: parent
            onClicked: systemHandler.setCarLocked(!systemHandler.carLocked)
        }
    }

    Text {
        id: dateTimeDisplay
        anchors {
            left: lockIcon.right
            leftMargin: 40
            bottom: lockIcon.bottom
        }
        font.pixelSize: 14
        font.bold: true
        color: "black"

        text: systemHandler.currentTime
    }

    Text {
        id: outdoorTemperatureDisplay
        anchors {
            left: dateTimeDisplay.right
            leftMargin: 40
            bottom: lockIcon.bottom
        }
        font.pixelSize: 14
        font.bold: true
        color: "black"

        text: systemHandler.outdoorTemp + "°F"
    }

    Image {
        id: userIcon
        anchors {
            right: userNameDisplay.left
            bottom: userNameDisplay.bottom
            rightMargin: 5
        }

        width: parent.width / 40
        fillMode: Image.PreserveAspectFit
        source: "/ui/assets/user.png"
    }

    Text {
        id: userNameDisplay
        anchors {
            left: outdoorTemperatureDisplay.right
            leftMargin: 55
            bottom: lockIcon.bottom
        }
        font.pixelSize: 14
        font.bold: true
        color: "black"

        text: systemHandler.userName
    }

    width: parent.width * 2/3
}
