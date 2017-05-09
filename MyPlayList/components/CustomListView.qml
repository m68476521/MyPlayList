import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.1

FocusScope {
    id: root

    property alias model: listView.model
    property alias delegate: listView.delegate

    ScrollView {
        anchors.fill: parent

        style: ScrollViewStyle {
                transientScrollBars: true
                handle: Item {
                    implicitWidth: 14
                    implicitHeight: 26
                    Rectangle {
                        color: "#E2EAD9"
                        radius: width / 2
                        anchors.fill: parent
                        anchors.topMargin: 6
                        anchors.leftMargin: 4
                        anchors.rightMargin: 4
                        anchors.bottomMargin: 6
                    }
                }
                scrollBarBackground: Item {
                    implicitWidth: 14
                    implicitHeight: 26
                }
            }

        ListView {
            id: listView

            anchors.fill: parent
            snapMode: ListView.SnapOneItem

            spacing: 5
        }
    }
}
