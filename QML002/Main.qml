import QtQuick
import QtQuick.Window
import Qt5Compat.GraphicalEffects

Window {
    id: body
    width: 640
    height: 480
    visible: true
    title: "QML002"
    color: "#f2f2f2"

    Rectangle {
        id: frame
        width: 400
        height: 400
        anchors.centerIn: parent
        layer.enabled: true
        layer.effect: DropShadow {
            horizontalOffset: 1
            verticalOffset: 2
            samples: 10
            color: "#4d000000"
        }
        color: "#fb7299"

        Rectangle {
            id: center
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.top
            anchors.verticalCenterOffset: (parent.height - childrenRect.height) / 2

            Rectangle {
                id: menu_icon
                width: 80
                height: 80
                color: "#33ffffff"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: center.top

                property real line1_y: anchors.topMargin + 12
                property real line1_rotate: 0
                Rectangle {
                    id: line1
                    width: menu_icon.width
                    height: 8
                    y: menu_icon.line1_y
                    color: "#fff"
                    radius: 3
                    layer.enabled: true
                    layer.effect: DropShadow {
                        verticalOffset: 2
                        samples: 10
                        color: "#4d000000"
                    }
                    transform: Rotation {
                        origin.x: line1.width / 2
                        origin.y: line1.height / 2
                        angle: menu_icon.line1_rotate
                    }
                }

                SequentialAnimation {
                    id: anim_1
                    loops: 1

                    PropertyAnimation {
                        target: line1
                        property: "y"
                        from: line1.y
                        to: line1.y + 24
                        duration: 350
                        easing.type: Easing.InOutQuad
                    }

                    PropertyAnimation {
                        target: line1
                        property: "rotation"
                        from: 0
                        to: 45
                        duration: 350
                        easing.type: Easing.InOutQuad
                    }

                    onRunningChanged: {
                        if (!running) {
                            menu_icon.line1_y -= 12;
                            menu_icon.line1_rotate = 0;
                        }
                    }
                }

                Rectangle {
                    id: line2
                    width: menu_icon.width
                    height: 8
                    anchors.top: line1.bottom
                    anchors.topMargin: 16
                    color: "#fff"
                    radius: 3
                    layer.enabled: true
                    layer.effect: DropShadow {
                        verticalOffset: 2
                        samples: 10
                        color: "#4d000000"
                    }
                }

                Rectangle {
                    id: line3
                    width: menu_icon.width
                    height: 8
                    anchors.top: line2.bottom
                    anchors.topMargin: 16
                    color: "#fff"
                    radius: 3
                    layer.enabled: true
                    layer.effect: DropShadow {
                        verticalOffset: 2
                        samples: 10
                        color: "#4d000000"
                    }
                }

                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor

                    onClicked: {
                        anim_1.start();
                    }
                }
            }
        }
    }
}
