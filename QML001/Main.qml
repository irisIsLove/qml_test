import QtQuick
import QtQuick.Window
import Qt5Compat.GraphicalEffects

Window {
    id: body
    width: 640
    height: 480
    visible: true
    title: "Hello World"
    color: "#f2f2f2"

    Rectangle {
        id: frame
        width: 400
        height: 400
        radius: 2
        anchors.centerIn: parent
        layer.enabled: true
        layer.effect: DropShadow {
            horizontalOffset: 1
            verticalOffset: 2
            samples: 10
            color: "#4d000000"
        }
        LinearGradient {
            anchors.fill: parent
            start: Qt.point(0, height)
            end: Qt.point(width, 0)
            gradient: Gradient {
                GradientStop {
                    position: 0.0
                    color: "#7841c1"
                }
                GradientStop {
                    position: 1.0
                    color: "#35e1dc"
                }
            }
        }

        Rectangle {
            id: center
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.top
            anchors.verticalCenterOffset: (parent.height - childrenRect.height) / 2

            Rectangle {
                id: number
                width: 200
                height: 100
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: center.top
                color: "#00ffffff"

                Rectangle {
                    id: one_1
                    width: 20
                    height: 40
                    radius: 3
                    z: 1
                    color: "#ffffff"
                    transform: Rotation {
                        angle: 50
                    }

                    layer.enabled: true
                    layer.effect: DropShadow {
                        samples: 13
                        color: "#51000000"
                    }
                }

                Rectangle {
                    id: one_2
                    width: 24
                    height: 100
                    radius: 3
                    z: 10
                    color: "#ffffff"
                    layer.enabled: true
                    layer.effect: DropShadow {
                        samples: 13
                        color: "#51000000"
                    }
                }

                Rectangle {
                    id: zero_1
                    width: 100
                    height: 100
                    z: 8
                    color: "transparent"
                    border.color: "#fff"
                    border.width: 24
                    radius: zero_1.width / 2
                    transform: Translate {
                        x: 17
                    }
                    layer.enabled: true
                    layer.effect: DropShadow {
                        samples: 13
                        color: "#51000000"
                    }
                }

                Rectangle {
                    id: zero_2
                    width: 100
                    height: 100
                    z: 6
                    color: "transparent"
                    border.color: "#fff"
                    border.width: 24
                    radius: zero_1.width / 2
                    transform: Translate {
                        x: 100
                    }
                    layer.enabled: true
                    layer.effect: DropShadow {
                        samples: 13
                        color: "#51000000"
                    }
                }
            }

            Text {
                id: big
                height: 66
                anchors.left: number.left
                anchors.top: number.bottom
                verticalAlignment: Text.AlignVCenter
                font {
                    family: "Courier New"
                    pixelSize: 82
                    weight: 700
                }
                color: "#fff"
                text: "DAYS"
            }

            Text {
                id: small
                height: 20
                anchors.left: big.left
                anchors.top: big.bottom
                verticalAlignment: Text.AlignVCenter
                font {
                    family: "Courier New"
                    pixelSize: 24
                    weight: 700
                    letterSpacing: 0.48
                }
                color: "#fff"
                text: "QML CHANLLENGE"
            }
        }
    }
}
