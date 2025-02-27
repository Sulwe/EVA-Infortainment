import QtQuick 2.0

Rectangle {
    id: navSearchBox
    radius: 5
    color: "#f0f0f0"

    Image {
        id: searchIcon

        anchors {
            left: parent.left
            leftMargin: 25
            verticalCenter: parent.verticalCenter
        }
        height: parent.height * .45
        fillMode: Image.PreserveAspectFit
        source: "/ui/assets/search.png"
    }
    Text  {
        id: navigationPlaceholderText
        color: "#8B8B8B"
        text: "Navigate"
        anchors {
            verticalCenter: parent.verticalCenter
            left: searchIcon.right
            leftMargin: 20
        }
    }
}

