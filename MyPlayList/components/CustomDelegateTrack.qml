import QtQuick 2.0
import QtQuick.Controls 1.4

FocusScope {
    id: root

    property alias artist: artist.text
    property alias trackName: trackName.text
    property alias category: category.text
    property alias duration: duration.text
    property alias rights: rights.text

    property alias image: poster.source

    Rectangle {
        anchors.fill: parent

        color: "#C0410A"
    }

    Label {
        id: artist

        width: 300
        height: 20
        color: "black"
        textFormat: Text.PlainText
    }

    Image {
        id: poster

        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
    }

    Label {
        id: trackName

        width: 200
        height: 20

        anchors.top: artist.bottom
        wrapMode: Text.Wrap
        color: "black"
        textFormat: Text.PlainText
    }

    Label {
        id: category

        width: 200
        height: 20

        anchors.top: trackName.bottom
        wrapMode: Text.Wrap
        color: "black"
        textFormat: Text.PlainText
    }

    Label {
        id: duration

        width: 200
        height: 20

        anchors.top: category.bottom
        color: "black"
        textFormat: Text.PlainText
    }

    Label {
        id: rights

        width: 200
        height: 20

        anchors.top: duration.bottom
//        wrapMode: Text.Wrap
        color: "black"
        textFormat: Text.PlainText
    }
}
