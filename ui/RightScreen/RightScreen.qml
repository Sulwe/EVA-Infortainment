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

    width: parent.width * 2/3
}
